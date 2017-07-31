-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2017 a las 07:35:59
-- Versión del servidor: 5.5.54-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `innova`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cuit` bigint(15) NOT NULL,
  `iva_id` int(5) NOT NULL,
  `iibb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `international` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `customer` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `provider` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `balance` decimal(30,2) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `company`
--

INSERT INTO `company` (`company_id`, `type_id`, `name`, `cuit`, `iva_id`, `iibb`, `vat`, `international`, `customer`, `provider`, `logo`, `status`, `balance`, `creation_date`, `last_update`, `created_by`, `updated_by`, `organization_id`) VALUES
(1, 2, 'Prueba', 12331231322, 9, '123121321123123', '', 'N', 'Y', 'Y', '../../../skin/images/customers/default/default.png', 'A', '0.00', '2017-02-02 17:38:37', '2017-07-26 18:52:53', 8, 8, 1),
(2, 1, 'Simple', 12312312312, 5, '123123123123', '', 'N', 'N', 'Y', '../../../skin/images/customers/default/default.png', 'A', '-80000.00', '2017-02-07 18:47:00', '2017-07-26 18:47:44', 8, 8, 1),
(3, 2, 'Test', 12312312312, 1, '12312332112321', '', 'N', 'Y', 'N', '../../../skin/images/customers/default/default.png', 'A', '-123.00', '2017-02-07 19:29:28', '2017-07-26 18:47:49', 8, 8, 1),
(4, 1, 'Prueba Ale', 12123123123, 12, '123132123132', '', 'N', 'N', 'Y', '../../../skin/images/customers/4/customer759055106.jpeg', 'A', '8987.12', '2017-06-16 23:12:33', '2017-07-26 18:47:58', 8, 8, 1),
(5, 2, 'Customer', 20392392910, 1, '121676776767612', '', 'N', 'Y', 'Y', '../../../skin/images/customers/default/default.png', 'A', '5678.90', '2017-06-19 05:31:14', '2017-07-26 18:48:05', 8, 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company_agent`
--

CREATE TABLE IF NOT EXISTS `company_agent` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `charge` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `extra` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Volcado de datos para la tabla `company_agent`
--

INSERT INTO `company_agent` (`agent_id`, `company_id`, `branch_id`, `name`, `charge`, `email`, `phone`, `extra`, `creation_date`, `created_by`, `organization_id`) VALUES
(53, 1, 71, 'Julieta Ramirez', 'Prueba', 'julieta@mail.com', '12333213123', 'Info extra', '2017-06-22 11:38:48', 8, 0),
(52, 1, 70, 'Carlos Marcogliese', 'Director', 'carlos@mail.com', '123211', 'Muy atento', '2017-06-22 11:38:48', 8, 0),
(51, 1, 69, 'Fernando Fernandez', 'Gerente Regional', 'fer@mail.com', '1233123123', '', '2017-06-22 11:38:48', 8, 0),
(50, 1, 69, 'Horge', 'Dueño', '', '1233213321', 'info extra', '2017-06-22 11:38:48', 8, 0),
(55, 4, 74, 'Pepe', 'Dueño', 'pepe@mail.com', '123456722', 'Info Extra', '2017-06-22 11:38:58', 8, 0),
(49, 5, 68, 'Jhjhjh', 'Ghfgfhg', 'fgf@hghgs.cn', 'ssdfdfs', 'sdffdsfds', '2017-06-22 11:38:33', 8, 0),
(48, 5, 67, 'Carlos', 'Cargo', 'mail@mail.com', '123312', 'asdasdaads', '2017-06-22 11:38:33', 8, 0),
(54, 1, 72, 'Carla', 'Gerente', '', '123123', '', '2017-06-22 11:38:48', 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company_branch`
--

CREATE TABLE IF NOT EXISTS `company_branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
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
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=77 ;

--
-- Volcado de datos para la tabla `company_branch`
--

INSERT INTO `company_branch` (`branch_id`, `company_id`, `country_id`, `province_id`, `region_id`, `zone_id`, `name`, `address`, `postal_code`, `phone`, `email`, `website`, `fax`, `main_branch`, `lat`, `lng`, `creation_date`, `created_by`, `organization_id`) VALUES
(72, 1, 1, 6, 5, 5, 'Bernal', 'Av. Dardo Rocha 527', '', '12312312', 'mail@mail.com', '', '', 'N', '-34.7170068000000000', '-58.2946951000000100', '2017-06-22 11:38:48', 8, 0),
(71, 1, 1, 1, 4, 4, 'Palermo', 'Paraguay 5001', '', '123123312', 'palermo@mail.com', '', '123123FAX', 'N', '-34.5806891000000000', '-58.4291276000000150', '2017-06-22 11:38:48', 8, 0),
(70, 1, 1, 1, 3, 3, 'Floresta', 'Pergamino 211', '', '1233123', 'pergamino@mail.com', 'www.pergamino.prueba.com', '', 'N', '-34.6349545000000000', '-58.4733529999999750', '2017-06-22 11:38:48', 8, 0),
(69, 1, 1, 1, 1, 1, 'Central', 'Robertson 1031', '', '12333213', 'mail@sucursal.com', '', '', 'Y', '-34.6401673000000000', '-58.4542731999999900', '2017-06-22 11:38:48', 8, 0),
(75, 2, 1, 6, 6, 6, 'Central', 'Malvinas Argentinas 123', '1644', '', '', '', '', 'Y', '-34.4691908000000000', '-58.5700952999999900', '2017-06-22 11:39:21', 8, 0),
(74, 4, 1, 1, 1, 1, 'Ale', 'Bacacay 2122', 'C1406', '', '', '', '', 'N', '-34.6253789000000000', '-58.4602452000000300', '2017-06-22 11:38:58', 8, 0),
(73, 4, 1, 1, 19, 20, 'Central', 'Av. Coronel Ramón Lorenzo Falcón 1000', '', '', '', '', '', 'Y', '-34.6239147000000000', '-58.4470274999999900', '2017-06-22 11:38:58', 8, 0),
(68, 5, 1, 1, 17, 18, 'Estadio', 'Juana Azurduy 1000', 'C1429', '312132', 'mail@maillc.accas', '132123wdasd', '123132dsdfs', 'N', '-34.5460349000000000', '-58.4581757999999900', '2017-06-22 11:38:33', 8, 0),
(67, 5, 1, 1, 16, 17, 'Central', 'Malabia 333', 'C1414', '123131321', 'mail@mail.com', 'sitioweb', '123123', 'Y', '-34.5995308000000000', '-58.4404509999999960', '2017-06-22 11:38:33', 8, 0),
(76, 3, 1, 1, 1, 1, 'Central', 'Don Segundo Sombra 1300', 'C1406', '', '', '', '', 'Y', '-34.6475512000000000', '-58.4622028999999660', '2017-06-22 11:39:34', 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company_type`
--

CREATE TABLE IF NOT EXISTS `company_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `company_type`
--

INSERT INTO `company_type` (`type_id`, `name`, `status`, `creation_date`, `created_by`, `last_update`, `updated_by`, `organization_id`) VALUES
(1, 'Revendedor/Colega', 'A', '2017-01-18 10:07:08', 28, '2017-01-18 00:00:00', 0, 0),
(2, 'Industria', 'A', '2017-01-18 10:07:00', 28, '2017-01-18 12:57:23', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_country`
--

CREATE TABLE IF NOT EXISTS `core_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `core_country`
--

INSERT INTO `core_country` (`country_id`, `name`, `short_name`, `lat`, `lng`) VALUES
(1, 'Argentina', 'AR', -38.4161, -63.6167),
(3, '', '', 0, 0),
(4, 'Uruguay', 'UY', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_group`
--

CREATE TABLE IF NOT EXISTS `core_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `last_modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `core_group`
--

INSERT INTO `core_group` (`group_id`, `organization_id`, `title`, `image`, `status`, `creation_date`, `last_modification`, `created_by`) VALUES
(1, 1, 'prueba', '../../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-04-20 03:23:03', '2016-04-20 06:23:03', 0),
(2, 1, 'test ale', '../../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-04-20 19:19:17', '2016-04-20 22:19:17', 0),
(3, 1, 'pepepepe', '../../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-04-20 19:28:40', '2016-04-20 22:28:40', 0),
(4, 1, 'osa', '../../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-04-20 19:51:46', '2016-04-20 22:51:46', 0),
(5, 1, 'Pepsi', '../../../../skin/images/groups/5/img5426380480.jpeg', 'A', '2016-04-20 20:35:39', '2016-04-20 23:35:39', 0),
(6, 1, 'Coca Cola', '../../../../skin/images/groups/6/img601643968.jpeg', 'A', '2016-04-25 03:09:11', '2016-04-25 06:09:11', 0),
(7, 1, 'Sprite', '../../../../skin/images/groups/7/img393144030.jpeg', 'A', '2016-04-25 03:09:19', '2016-04-25 06:09:19', 0),
(8, 1, '7UP', '../../../../skin/images/groups/default/groupgen.jpg', 'A', '2016-04-25 03:09:27', '2016-04-25 06:09:27', 0),
(9, 1, 'Fanta', '../../../../skin/images/groups/9/img891009154.png', 'A', '2016-04-25 03:09:35', '2016-04-25 06:09:35', 0),
(10, 1, 'Cheketo', '../../../../skin/images/groups/default/groupgen.jpg', 'I', '2016-10-24 21:53:42', '2016-10-24 21:53:42', 0),
(11, 1, 'Manaos', '../../../../skin/images/groups/11/img671812767.jpeg', 'A', '2016-10-25 01:10:05', '2016-10-25 01:10:05', 0),
(12, 1, 'Mirinda', '../../../../skin/images/groups/12/img601173992.jpeg', 'A', '2016-10-25 01:11:06', '2016-10-25 01:11:06', 0),
(13, 1, 'Familia', '../../../../skin/images/groups/13/img1858540103.jpeg', 'A', '2017-06-19 14:41:41', '2017-06-19 14:41:41', 0),
(14, 1, 'Almacén', '../../../../skin/images/groups/group1065666482.jpeg', 'A', '2017-07-07 23:21:12', '2017-07-07 23:21:12', 0),
(15, 1, 'Almacén 2', '../../../../skin/images/groups/group371665875.png', 'A', '2017-07-07 23:25:31', '2017-07-07 23:25:31', 0),
(16, 1, 'Almacenero', '../../../../skin/images/groups/group2774159538.png', 'A', '2017-07-07 23:31:50', '2017-07-07 23:31:50', 0),
(17, 1, 'Grupo2.0', '../../../../skin/images/groups/17/img1174666529.png', 'A', '2017-07-15 21:09:24', '2017-07-15 21:09:24', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_log_error`
--

CREATE TABLE IF NOT EXISTS `core_log_error` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `error` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=372 ;

--
-- Volcado de datos para la tabla `core_log_error`
--

INSERT INTO `core_log_error` (`log_id`, `error`, `type`, `description`, `created_by`, `creation_date`) VALUES
(1, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=1', 8, '2017-07-07 06:57:57'),
(2, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=1', 8, '2017-07-07 06:57:57'),
(3, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=4', 8, '2017-07-07 06:57:57'),
(4, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=1', 8, '2017-07-07 06:57:57'),
(5, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=3', 8, '2017-07-07 06:57:57'),
(6, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=1', 8, '2017-07-07 06:57:57'),
(7, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=1', 8, '2017-07-07 06:57:57'),
(8, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=4', 8, '2017-07-07 06:57:57'),
(9, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=1', 8, '2017-07-07 06:57:57'),
(10, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT a.*,b.short_name as province FROM provider a LEFT JOIN geolocation_province b ON (b.province_id=a.province_id) WHERE a.provider_id=3', 8, '2017-07-07 06:57:57'),
(11, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''= 44'' at line 1', '', 'DELETE FROM admin_id = 44', 8, '2017-07-07 19:42:26'),
(12, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''= 44'' at line 1', '', 'DELETE FROM admin_id = 44', 8, '2017-07-07 19:42:26'),
(13, 'Column count doesn''t match value count at row 1', '', 'INSERT INTO relation_admin_group (admin_id,group_id)VALUES()', 8, '2017-07-07 19:42:26'),
(14, 'Column count doesn''t match value count at row 1', '', 'INSERT INTO relation_admin_group (admin_id,group_id)VALUES()', 8, '2017-07-07 19:45:18'),
(15, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', '', 'SELECT profile_id,title FROM admin_profile WHERE status=''A'' AND organization_id=', 8, '2017-07-07 20:55:26'),
(16, 'Column count doesn''t match value count at row 1', '', 'INSERT INTO relation_admin_group (group_id,admin_id)VALUES()', 8, '2017-07-07 23:25:31'),
(17, 'Column count doesn''t match value count at row 1', '', 'INSERT INTO relation_group_profile (group_id,profile_id)VALUES()', 8, '2017-07-07 23:31:50'),
(18, 'Column count doesn''t match value count at row 1', '', 'INSERT INTO relation_admin_group (group_id,admin_id)VALUES()', 8, '2017-07-07 23:31:50'),
(19, 'Table ''innova.configuration_company'' doesn''t exist', '', 'SELECT * FROM configuration_company WHERE configuration_id=1', 8, '2017-07-07 23:38:25'),
(20, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT c.*,a.name as agent_name, a.phone as agent_phone, a.email as agent_email, a.charge as agent_charge FROM provider c LEFT JOIN provider_agent a ON (a.provider_id) WHERE c.organization_id=1 AND c.status = ''A'' GROUP BY c.provider_id ORDER BY name', 8, '2017-07-07 23:51:31'),
(21, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT c.*,a.name as agent_name, a.phone as agent_phone, a.email as agent_email, a.charge as agent_charge FROM provider c LEFT JOIN provider_agent a ON (a.provider_id) WHERE c.organization_id=1 AND c.status = ''A'' GROUP BY c.provider_id ORDER BY name LIMIT 0, 0', 8, '2017-07-07 23:51:31'),
(22, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT c.*,a.name as agent_name, a.phone as agent_phone, a.email as agent_email, a.charge as agent_charge FROM provider c LEFT JOIN provider_agent a ON (a.provider_id) WHERE c.organization_id=1 AND c.status = ''A'' GROUP BY c.provider_id ORDER BY name', 8, '2017-07-07 23:51:31'),
(23, 'Table ''innova.provider'' doesn''t exist', '', 'SELECT c.*,a.name as agent_name, a.phone as agent_phone, a.email as agent_email, a.charge as agent_charge FROM provider c LEFT JOIN provider_agent a ON (a.provider_id) WHERE c.organization_id=1 AND c.status = ''A'' GROUP BY c.provider_id ORDER BY name LIMIT 0, 0', 8, '2017-07-07 23:51:31'),
(24, 'Table ''innova.provider_order'' doesn''t exist', '', 'SELECT a.order_id,a.type,a.total,a.extra,a.status,a.payment_status,a.delivery_status,d.name as provider,SUM(b.quantity) as quantity FROM provider_order a LEFT JOIN provider_order_item b ON (b.order_id=a.order_id) LEFT JOIN product c ON (b.product_id = c.product_id) LEFT JOIN provider d ON (d.provider_id=a.provider_id) WHERE c.organization_id=1 AND (a.delivery_status = ''A'' OR a.delivery_status = ''P'') AND a.status = ''A'' GROUP BY a.order_id ORDER BY a.delivery_date ASC', 8, '2017-07-08 04:08:04'),
(25, 'Table ''innova.provider_order'' doesn''t exist', '', 'SELECT a.order_id,a.type,a.total,a.extra,a.status,a.payment_status,a.delivery_status,d.name as provider,SUM(b.quantity) as quantity FROM provider_order a LEFT JOIN provider_order_item b ON (b.order_id=a.order_id) LEFT JOIN product c ON (b.product_id = c.product_id) LEFT JOIN provider d ON (d.provider_id=a.provider_id) WHERE c.organization_id=1 AND (a.delivery_status = ''A'' OR a.delivery_status = ''P'') AND a.status = ''A'' GROUP BY a.order_id ORDER BY a.delivery_date ASC LIMIT 0, 0', 8, '2017-07-08 04:08:04'),
(26, 'Table ''innova.provider_order'' doesn''t exist', '', 'SELECT a.order_id,a.type,a.total,a.extra,a.status,a.payment_status,a.delivery_status,d.name as provider,SUM(b.quantity) as quantity FROM provider_order a LEFT JOIN provider_order_item b ON (b.order_id=a.order_id) LEFT JOIN product c ON (b.product_id = c.product_id) LEFT JOIN provider d ON (d.provider_id=a.provider_id) WHERE c.organization_id=1 AND (a.delivery_status = ''A'' OR a.delivery_status = ''P'') AND a.status = ''A'' GROUP BY a.order_id ORDER BY a.delivery_date ASC', 8, '2017-07-08 04:08:04'),
(27, 'Table ''innova.provider_order'' doesn''t exist', '', 'SELECT a.order_id,a.type,a.total,a.extra,a.status,a.payment_status,a.delivery_status,d.name as provider,SUM(b.quantity) as quantity FROM provider_order a LEFT JOIN provider_order_item b ON (b.order_id=a.order_id) LEFT JOIN product c ON (b.product_id = c.product_id) LEFT JOIN provider d ON (d.provider_id=a.provider_id) WHERE c.organization_id=1 AND (a.delivery_status = ''A'' OR a.delivery_status = ''P'') AND a.status = ''A'' GROUP BY a.order_id ORDER BY a.delivery_date ASC LIMIT 0, 0', 8, '2017-07-08 04:08:04'),
(28, 'Table ''innova.provider_order'' doesn''t exist', '', 'SELECT a.order_id,a.type,a.total,a.extra,a.status,a.payment_status,a.delivery_status,d.name as provider,SUM(b.quantity) as quantity FROM provider_order a LEFT JOIN provider_order_item b ON (b.order_id=a.order_id) LEFT JOIN product c ON (b.product_id = c.product_id) LEFT JOIN provider d ON (d.provider_id=a.provider_id) WHERE c.organization_id=1 AND (a.delivery_status = ''A'' OR a.delivery_status = ''P'') AND a.status = ''A'' GROUP BY a.order_id ORDER BY a.delivery_date ASC', 8, '2017-07-08 13:52:19'),
(29, 'Table ''innova.provider_order'' doesn''t exist', '', 'SELECT a.order_id,a.type,a.total,a.extra,a.status,a.payment_status,a.delivery_status,d.name as provider,SUM(b.quantity) as quantity FROM provider_order a LEFT JOIN provider_order_item b ON (b.order_id=a.order_id) LEFT JOIN product c ON (b.product_id = c.product_id) LEFT JOIN provider d ON (d.provider_id=a.provider_id) WHERE c.organization_id=1 AND (a.delivery_status = ''A'' OR a.delivery_status = ''P'') AND a.status = ''A'' GROUP BY a.order_id ORDER BY a.delivery_date ASC LIMIT 0, 0', 8, '2017-07-08 13:52:19'),
(30, 'Table ''innova.provider_order'' doesn''t exist', '', 'SELECT a.order_id,a.type,a.total,a.extra,a.status,a.payment_status,a.delivery_status,d.name as provider,SUM(b.quantity) as quantity FROM provider_order a LEFT JOIN provider_order_item b ON (b.order_id=a.order_id) LEFT JOIN product c ON (b.product_id = c.product_id) LEFT JOIN provider d ON (d.provider_id=a.provider_id) WHERE c.organization_id=1 AND (a.delivery_status = ''A'' OR a.delivery_status = ''P'') AND a.status = ''A'' GROUP BY a.order_id ORDER BY a.delivery_date ASC', 8, '2017-07-08 13:52:19'),
(31, 'Table ''innova.provider_order'' doesn''t exist', '', 'SELECT a.order_id,a.type,a.total,a.extra,a.status,a.payment_status,a.delivery_status,d.name as provider,SUM(b.quantity) as quantity FROM provider_order a LEFT JOIN provider_order_item b ON (b.order_id=a.order_id) LEFT JOIN product c ON (b.product_id = c.product_id) LEFT JOIN provider d ON (d.provider_id=a.provider_id) WHERE c.organization_id=1 AND (a.delivery_status = ''A'' OR a.delivery_status = ''P'') AND a.status = ''A'' GROUP BY a.order_id ORDER BY a.delivery_date ASC LIMIT 0, 0', 8, '2017-07-08 13:52:19'),
(32, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''(p.profile_id=a.profile_id) WHERE a.organization_id=1 AND a.status = ''A'' GROUP B'' at line 1', 'MySQL', 'SELECT a.*,p.title as profile, g.title as group_title FROM core_user a LEFT JOIN core_relation_user_group r ON (r.user_id=a.user_id) LEFT JOIN core_group g ON (r.group_id=g.group_id) LEFT JOIN core_profile p (p.profile_id=a.profile_id) WHERE a.organization_id=1 AND a.status = ''A'' GROUP BY a.user_id ORDER BY first_name', 8, '2017-07-10 22:14:31'),
(33, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''(p.profile_id=a.profile_id) WHERE a.organization_id=1 AND a.status = ''A'' GROUP B'' at line 1', 'MySQL', 'SELECT a.*,p.title as profile, g.title as group_title FROM core_user a LEFT JOIN core_relation_user_group r ON (r.user_id=a.user_id) LEFT JOIN core_group g ON (r.group_id=g.group_id) LEFT JOIN core_profile p (p.profile_id=a.profile_id) WHERE a.organization_id=1 AND a.status = ''A'' GROUP BY a.user_id ORDER BY first_name LIMIT 0, 0', 8, '2017-07-10 22:14:31'),
(34, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''(p.profile_id=a.profile_id) WHERE a.organization_id=1 AND a.status = ''A'' GROUP B'' at line 1', 'MySQL', 'SELECT a.*,p.title as profile, g.title as group_title FROM core_user a LEFT JOIN core_relation_user_group r ON (r.user_id=a.user_id) LEFT JOIN core_group g ON (r.group_id=g.group_id) LEFT JOIN core_profile p (p.profile_id=a.profile_id) WHERE a.organization_id=1 AND a.status = ''A'' GROUP BY a.user_id ORDER BY first_name', 8, '2017-07-10 22:14:31'),
(35, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''(p.profile_id=a.profile_id) WHERE a.organization_id=1 AND a.status = ''A'' GROUP B'' at line 1', 'MySQL', 'SELECT a.*,p.title as profile, g.title as group_title FROM core_user a LEFT JOIN core_relation_user_group r ON (r.user_id=a.user_id) LEFT JOIN core_group g ON (r.group_id=g.group_id) LEFT JOIN core_profile p (p.profile_id=a.profile_id) WHERE a.organization_id=1 AND a.status = ''A'' GROUP BY a.user_id ORDER BY first_name LIMIT 0, 0', 8, '2017-07-10 22:14:31'),
(36, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' LIMIT 0, ', 8, '2017-07-11 01:40:29'),
(37, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' LIMIT 0, ', 8, '2017-07-11 01:40:29'),
(38, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = 1 AND status LIKE ''%A%'' LIMIT 0, ', 8, '2017-07-11 01:44:02'),
(39, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = 1 AND status LIKE ''%A%'' LIMIT 0, ', 8, '2017-07-11 01:44:02'),
(40, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13) AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (,13) AND status = ''A''', 8, '2017-07-11 19:41:25'),
(41, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13) AND status = ''A'' LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (,13) AND status = ''A'' LIMIT 0, 0', 8, '2017-07-11 19:41:25'),
(42, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13) AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (,13) AND status = ''A''', 8, '2017-07-11 19:41:25'),
(43, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13) AND status = ''A'' LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (,13) AND status = ''A'' LIMIT 0, 0', 8, '2017-07-11 19:41:25'),
(44, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13,9) AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (,13,9) AND status = ''A''', 8, '2017-07-11 19:41:38'),
(45, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13,9) AND status = ''A'' LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (,13,9) AND status = ''A'' LIMIT 0, 0', 8, '2017-07-11 19:41:38'),
(46, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13,9) AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (,13,9) AND status = ''A''', 8, '2017-07-11 19:41:38'),
(47, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13,9) AND status = ''A'' LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (,13,9) AND status = ''A'' LIMIT 0, 0', 8, '2017-07-11 19:41:38'),
(48, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''group desc'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY group desc', 8, '2017-07-11 20:00:52'),
(49, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''group desc LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY group desc LIMIT 0, 0', 8, '2017-07-11 20:00:52'),
(50, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''group desc'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY group desc', 8, '2017-07-11 20:00:52'),
(51, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''group desc LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY group desc LIMIT 0, 0', 8, '2017-07-11 20:00:52'),
(52, 'Unknown column ''group_id'' in ''where clause''', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (13) AND status = ''A'' ORDER BY profile desc', 8, '2017-07-11 20:01:15'),
(53, 'Unknown column ''group_id'' in ''where clause''', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (13) AND status = ''A'' ORDER BY profile desc LIMIT 0, 0', 8, '2017-07-11 20:01:16'),
(54, 'Unknown column ''group_id'' in ''where clause''', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (13) AND status = ''A'' ORDER BY profile desc', 8, '2017-07-11 20:01:16'),
(55, 'Unknown column ''group_id'' in ''where clause''', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (13) AND status = ''A'' ORDER BY profile desc LIMIT 0, 0', 8, '2017-07-11 20:01:16'),
(56, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''group desc'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (13) AND status = ''A'' ORDER BY group desc', 8, '2017-07-11 20:05:51'),
(57, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''group desc LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (13) AND status = ''A'' ORDER BY group desc LIMIT 0, 0', 8, '2017-07-11 20:05:51'),
(58, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''group desc'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (13) AND status = ''A'' ORDER BY group desc', 8, '2017-07-11 20:05:51'),
(59, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''group desc LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM core_view_user_list WHERE 1=1 AND organization_id = ''1'' AND group_id IN (13) AND status = ''A'' ORDER BY group desc LIMIT 0, 0', 8, '2017-07-11 20:05:51'),
(60, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_profile WHERE  profile_id = ', 0, '2017-07-12 05:00:20'),
(61, 'Column count doesn''t match value count at row 1', 'MySQL', 'INSERT INTO core_relation_user_group (user_id,group_id)VALUES()', 8, '2017-07-13 06:58:03'),
(62, 'Column count doesn''t match value count at row 1', 'MySQL', 'INSERT INTO core_relation_user_menu (user_id,menu_id)VALUES()', 8, '2017-07-13 06:58:03'),
(63, 'Column count doesn''t match value count at row 1', 'MySQL', 'INSERT INTO core_relation_user_group (user_id,group_id)VALUES()', 8, '2017-07-13 06:59:29'),
(64, 'Column count doesn''t match value count at row 1', 'MySQL', 'INSERT INTO core_relation_user_menu (user_id,menu_id)VALUES()', 8, '2017-07-13 06:59:29'),
(65, 'Table ''innova.admin_menu'' doesn''t exist', 'MySQL', 'SELECT a.menu_id,COALESCE(CONCAT(b.title,''/'',a.title), a.title) as title FROM admin_menu a LEFT JOIN admin_menu b ON (a.parent_id=b.menu_id OR b.menu_id=0) WHERE status<>''I'' AND menu_id <>2', 8, '2017-07-13 10:27:45'),
(66, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT profile_id,title FROM admin_profile WHERE status<>''I'' AND organization_id = 1', 8, '2017-07-13 10:27:45'),
(67, 'Table ''innova.admin_group'' doesn''t exist', 'MySQL', 'SELECT group_id,title FROM admin_group WHERE status<>''I'' AND organization_id = 1', 8, '2017-07-13 10:27:45'),
(68, 'Table ''innova.admin_menu'' doesn''t exist', 'MySQL', 'SELECT a.menu_id,COALESCE(CONCAT(b.title,''/'',a.title), a.title) as title FROM admin_menu a LEFT JOIN admin_menu b ON (a.parent_id=b.menu_id OR b.menu_id=0) WHERE status<>''I'' AND menu_id <>1', 8, '2017-07-13 10:27:56'),
(69, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT profile_id,title FROM admin_profile WHERE status<>''I'' AND organization_id = 1', 8, '2017-07-13 10:27:56'),
(70, 'Table ''innova.admin_group'' doesn''t exist', 'MySQL', 'SELECT group_id,title FROM admin_group WHERE status<>''I'' AND organization_id = 1', 8, '2017-07-13 10:27:56'),
(71, 'Unknown column ''profile'' in ''order clause''', 'MySQL', 'SELECT * FROM core_menu WHERE 1=1 AND status = ''A'' AND organization_id = ''1'' ORDER BY profile desc', 8, '2017-07-13 10:39:05'),
(72, 'Unknown column ''profile'' in ''order clause''', 'MySQL', 'SELECT * FROM core_menu WHERE 1=1 AND status = ''A'' AND organization_id = ''1'' ORDER BY profile desc LIMIT 0, 0', 8, '2017-07-13 10:39:05'),
(73, 'Unknown column ''profile'' in ''order clause''', 'MySQL', 'SELECT * FROM core_menu WHERE 1=1 AND status = ''A'' AND organization_id = ''1'' ORDER BY profile desc', 8, '2017-07-13 10:39:05'),
(74, 'Unknown column ''profile'' in ''order clause''', 'MySQL', 'SELECT * FROM core_menu WHERE 1=1 AND status = ''A'' AND organization_id = ''1'' ORDER BY profile desc LIMIT 0, 0', 8, '2017-07-13 10:39:05'),
(75, 'FUNCTION innova.1AND does not exist', 'MySQL', 'SELECT * FROM core_view_menu_list WHERE 1=1AND (359 OR profile_id=360) AND status = ''A'' AND organization_id = ''1''', 8, '2017-07-13 11:39:48'),
(76, 'FUNCTION innova.1AND does not exist', 'MySQL', 'SELECT * FROM core_view_menu_list WHERE 1=1AND (359 OR profile_id=360) AND status = ''A'' AND organization_id = ''1'' LIMIT 0, 0', 8, '2017-07-13 11:39:48'),
(77, 'FUNCTION innova.1AND does not exist', 'MySQL', 'SELECT * FROM core_view_menu_list WHERE 1=1AND (359 OR profile_id=360) AND status = ''A'' AND organization_id = ''1''', 8, '2017-07-13 11:39:48'),
(78, 'FUNCTION innova.1AND does not exist', 'MySQL', 'SELECT * FROM core_view_menu_list WHERE 1=1AND (359 OR profile_id=360) AND status = ''A'' AND organization_id = ''1'' LIMIT 0, 0', 8, '2017-07-13 11:39:48'),
(79, 'FUNCTION innova.1AND does not exist', 'MySQL', 'SELECT * FROM core_view_menu_list WHERE 1=1AND (profile_id=359 OR profile_id=360) AND status = ''A'' AND organization_id = ''1''', 8, '2017-07-13 11:40:17'),
(80, 'FUNCTION innova.1AND does not exist', 'MySQL', 'SELECT * FROM core_view_menu_list WHERE 1=1AND (profile_id=359 OR profile_id=360) AND status = ''A'' AND organization_id = ''1'' LIMIT 0, 0', 8, '2017-07-13 11:40:17'),
(81, 'FUNCTION innova.1AND does not exist', 'MySQL', 'SELECT * FROM core_view_menu_list WHERE 1=1AND (profile_id=359 OR profile_id=360) AND status = ''A'' AND organization_id = ''1''', 8, '2017-07-13 11:40:17'),
(82, 'FUNCTION innova.1AND does not exist', 'MySQL', 'SELECT * FROM core_view_menu_list WHERE 1=1AND (profile_id=359 OR profile_id=360) AND status = ''A'' AND organization_id = ''1'' LIMIT 0, 0', 8, '2017-07-13 11:40:17'),
(83, 'Column count doesn''t match value count at row 1', 'MySQL', 'INSERT INTO core_relation_user_group (user_id,group_id)VALUES()', 8, '2017-07-13 20:36:05'),
(84, 'Column count doesn''t match value count at row 1', 'MySQL', 'INSERT INTO core_relation_user_group (user_id,group_id)VALUES()', 8, '2017-07-13 20:39:35'),
(85, 'Column count doesn''t match value count at row 1', 'MySQL', 'INSERT INTO core_relation_user_group (user_id,group_id)VALUES()', 8, '2017-07-13 20:51:10'),
(86, 'Column count doesn''t match value count at row 1', 'MySQL', 'INSERT INTO core_relation_user_group (user_id,group_id)VALUES()', 8, '2017-07-13 20:51:49'),
(87, 'Column count doesn''t match value count at row 1', 'MySQL', 'INSERT INTO core_relation_user_group (user_id,group_id)VALUES()', 8, '2017-07-13 20:57:33'),
(88, 'Table ''innova.admin_menu'' doesn''t exist', 'MySQL', 'SELECT a.menu_id,COALESCE(CONCAT(b.title,''/'',a.title), a.title) AS title FROM admin_menu a LEFT JOIN admin_menu b ON (a.parent_id=b.menu_id OR b.menu_id=0) WHERE a.status<>''I''', 8, '2017-07-13 21:15:49'),
(89, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT profile_id,title FROM admin_profile WHERE status<>''I'' AND organization_id = 1', 8, '2017-07-13 21:15:49'),
(90, 'Table ''innova.admin_group'' doesn''t exist', 'MySQL', 'SELECT group_id,title FROM admin_group WHERE status<>''I'' AND organization_id = 1', 8, '2017-07-13 21:15:49'),
(91, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''(title,link,position,icon,parent_id,view_status,public)VALUES(''Alejandro'',''../..'' at line 1', 'MySQL', 'INSERT INTO  (title,link,position,icon,parent_id,view_status,public)VALUES(''Alejandro'',''../../../core/modules/user/list.php'',5,''fa-graduation-cap'',0,''A'',''N'')', 8, '2017-07-14 08:08:06'),
(92, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''(title,link,position,icon,parent_id,view_status,public)VALUES(''Alejandro'',''../..'' at line 1', 'MySQL', 'INSERT INTO  (title,link,position,icon,parent_id,view_status,public)VALUES(''Alejandro'',''../../../core/modules/user/list.php'',5,''fa-graduation-cap'',0,''A'',''N'')', 8, '2017-07-14 08:08:38'),
(93, 'Column ''status'' in where clause is ambiguous', 'MySQL', 'SELECT a.menu_id,COALESCE(CONCAT(b.title,''/'',a.title), a.title) as title FROM core_menu a LEFT JOIN core_menu b ON (a.parent_id=b.menu_id OR b.menu_id=0) WHERE status<>''I'' AND menu_id <>1', 8, '2017-07-14 08:19:25'),
(94, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '') AND organization_id = 1 ORDER BY title'' at line 1', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM core_relation_menu_group WHERE menu_id=) AND organization_id = 1 ORDER BY title', 8, '2017-07-14 08:32:04'),
(95, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '') AND organization_id = 1 ORDER BY title'' at line 1', 'MySQL', 'SELECT * FROM core_profile WHERE status = ''A'' AND profile_id IN (SELECT profile_id FROM core_relation_menu_profile WHERE menu_id=) AND organization_id = 1 ORDER BY title', 8, '2017-07-14 08:32:04'),
(96, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '') AND organization_id = 1 ORDER BY title'' at line 1', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM core_relation_menu_group WHERE menu_id=) AND organization_id = 1 ORDER BY title', 8, '2017-07-14 08:35:41'),
(97, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '') AND organization_id = 1 ORDER BY title'' at line 1', 'MySQL', 'SELECT * FROM core_profile WHERE status = ''A'' AND profile_id IN (SELECT profile_id FROM core_relation_menu_profile WHERE menu_id=) AND organization_id = 1 ORDER BY title', 8, '2017-07-14 08:35:41'),
(98, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''=1'' at line 1', 'MySQL', 'UPDATE core_menu SET title=''Administraci?n'',link=''#'',position=''9999'',icon=''fa-desktop'',view_status=''A'',parent_id=0,public=''N'' WHERE =1', 8, '2017-07-14 08:42:31'),
(99, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''dc76bf5ba6fdcbfb710a7d8842d867bad54 AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM core_user WHERE  (user = ''cheketo'' OR email=''cheketo'' ) AND password=49e09dc76bf5ba6fdcbfb710a7d8842d867bad54 AND status = ''A''', 8, '2017-07-14 22:23:51'),
(100, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''dc76bf5ba6fdcbfb710a7d8842d867bad54 AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM core_user WHERE  (user = ''cheketo'' OR email=''cheketo'' ) AND password=49e09dc76bf5ba6fdcbfb710a7d8842d867bad54 AND status = ''A''', 8, '2017-07-14 22:34:09'),
(101, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''dc76bf5ba6fdcbfb710a7d8842d867bad54 AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM core_user WHERE  (user = ''cheketo'' OR email=''cheketo'' ) AND password=49e09dc76bf5ba6fdcbfb710a7d8842d867bad54 AND status = ''A''', 8, '2017-07-14 22:34:57'),
(102, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 12 AND profile_id = ', 90, '2017-07-14 22:40:11'),
(103, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:11'),
(104, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:12'),
(105, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:12'),
(106, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:12'),
(107, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:13'),
(108, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:13'),
(109, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:13'),
(110, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:14'),
(111, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:14'),
(112, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:14'),
(113, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:15'),
(114, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:15'),
(115, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:15'),
(116, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:16'),
(117, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:16'),
(118, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:16'),
(119, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:17'),
(120, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:17'),
(121, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:18'),
(122, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:18'),
(123, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:23'),
(124, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:24'),
(125, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:24'),
(126, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:25'),
(127, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:25'),
(128, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:25'),
(129, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:26'),
(130, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:26'),
(131, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:26'),
(132, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:27'),
(133, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:27'),
(134, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:27'),
(135, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:28'),
(136, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:28'),
(137, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:29'),
(138, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:29'),
(139, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:30'),
(140, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:30'),
(141, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:30'),
(142, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:31'),
(143, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:31'),
(144, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:57'),
(145, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:58'),
(146, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:58'),
(147, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:59'),
(148, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:40:59'),
(149, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:00'),
(150, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:00'),
(151, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:00'),
(152, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:01'),
(153, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:01'),
(154, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:01'),
(155, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:02'),
(156, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:02'),
(157, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:02'),
(158, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:03'),
(159, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:03'),
(160, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:03'),
(161, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:04'),
(162, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:04'),
(163, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:04'),
(164, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_menu_profile WHERE menu_id = 13 AND profile_id = ', 90, '2017-07-14 22:41:04'),
(165, 'Table ''innova.admin_group'' doesn''t exist', 'MySQL', 'SELECT group_id,title FROM admin_group WHERE organization_id=1 AND status=''A'' ORDER BY title', 8, '2017-07-15 21:11:24'),
(166, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT p.*,g.title AS group_title FROM admin_profile AS p,admin_group AS g, relation_group_profile AS r WHERE p.organization_id = 1 AND p.status = ''A'' GROUP BY p.profile_id ORDER BY title', 8, '2017-07-15 21:11:24'),
(167, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT p.*,g.title AS group_title FROM admin_profile AS p,admin_group AS g, relation_group_profile AS r WHERE p.organization_id = 1 AND p.status = ''A'' GROUP BY p.profile_id ORDER BY title LIMIT 0, 0', 8, '2017-07-15 21:11:24'),
(168, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT p.*,g.title AS group_title FROM admin_profile AS p,admin_group AS g, relation_group_profile AS r WHERE p.organization_id = 1 AND p.status = ''A'' GROUP BY p.profile_id ORDER BY title', 8, '2017-07-15 21:11:24'),
(169, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT p.*,g.title AS group_title FROM admin_profile AS p,admin_group AS g, relation_group_profile AS r WHERE p.organization_id = 1 AND p.status = ''A'' GROUP BY p.profile_id ORDER BY title LIMIT 0, 0', 8, '2017-07-15 21:11:24'),
(170, 'Table ''innova.core_view_profile_list'' doesn''t exist', 'MySQL', 'DESCRIBE core_view_profile_list', 8, '2017-07-15 22:18:45'),
(171, 'Table ''innova.core_view_profile_list'' doesn''t exist', 'MySQL', 'DESCRIBE core_view_profile_list', 8, '2017-07-15 22:18:45'),
(172, 'Table ''innova.core_view_profile_list'' doesn''t exist', 'MySQL', 'SELECT * FROM core_view_profile_list WHERE 1=1', 8, '2017-07-15 22:18:45'),
(173, 'Table ''innova.core_view_profile_list'' doesn''t exist', 'MySQL', 'SELECT * FROM core_view_profile_list WHERE 1=1 LIMIT 0, 0', 8, '2017-07-15 22:18:45'),
(174, 'Table ''innova.core_view_profile_list'' doesn''t exist', 'MySQL', 'SELECT * FROM core_view_profile_list WHERE 1=1', 8, '2017-07-15 22:18:45'),
(175, 'Table ''innova.core_view_profile_list'' doesn''t exist', 'MySQL', 'SELECT * FROM core_view_profile_list WHERE 1=1 LIMIT 0, 0', 8, '2017-07-15 22:18:45'),
(176, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=359', 8, '2017-07-15 22:26:00');
INSERT INTO `core_log_error` (`log_id`, `error`, `type`, `description`, `created_by`, `creation_date`) VALUES
(177, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=359) ORDER BY title', 8, '2017-07-15 22:26:00'),
(178, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=361', 8, '2017-07-15 22:26:00'),
(179, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=361) ORDER BY title', 8, '2017-07-15 22:26:00'),
(180, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=360', 8, '2017-07-15 22:26:00'),
(181, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=360) ORDER BY title', 8, '2017-07-15 22:26:00'),
(182, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=362', 8, '2017-07-15 22:26:00'),
(183, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=362) ORDER BY title', 8, '2017-07-15 22:26:00'),
(184, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=364', 8, '2017-07-15 22:26:00'),
(185, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=364) ORDER BY title', 8, '2017-07-15 22:26:00'),
(186, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=333', 8, '2017-07-15 22:26:00'),
(187, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=333) ORDER BY title', 8, '2017-07-15 22:26:00'),
(188, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=359', 8, '2017-07-15 22:26:00'),
(189, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=359) ORDER BY title', 8, '2017-07-15 22:26:00'),
(190, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=361', 8, '2017-07-15 22:26:00'),
(191, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=361) ORDER BY title', 8, '2017-07-15 22:26:00'),
(192, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=360', 8, '2017-07-15 22:26:00'),
(193, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=360) ORDER BY title', 8, '2017-07-15 22:26:00'),
(194, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=362', 8, '2017-07-15 22:26:00'),
(195, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=362) ORDER BY title', 8, '2017-07-15 22:26:00'),
(196, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=364', 8, '2017-07-15 22:26:00'),
(197, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=364) ORDER BY title', 8, '2017-07-15 22:26:00'),
(198, 'Table ''innova.admin_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_profile WHERE profile_id=333', 8, '2017-07-15 22:26:00'),
(199, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=333) ORDER BY title', 8, '2017-07-15 22:26:00'),
(200, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=359) ORDER BY title', 8, '2017-07-15 22:28:33'),
(201, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=361) ORDER BY title', 8, '2017-07-15 22:28:33'),
(202, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=360) ORDER BY title', 8, '2017-07-15 22:28:33'),
(203, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=362) ORDER BY title', 8, '2017-07-15 22:28:33'),
(204, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=364) ORDER BY title', 8, '2017-07-15 22:28:33'),
(205, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=333) ORDER BY title', 8, '2017-07-15 22:28:33'),
(206, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=359) ORDER BY title', 8, '2017-07-15 22:28:33'),
(207, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=361) ORDER BY title', 8, '2017-07-15 22:28:33'),
(208, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=360) ORDER BY title', 8, '2017-07-15 22:28:33'),
(209, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=362) ORDER BY title', 8, '2017-07-15 22:28:33'),
(210, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=364) ORDER BY title', 8, '2017-07-15 22:28:33'),
(211, 'Table ''innova.relation_group_profile'' doesn''t exist', 'MySQL', 'SELECT * FROM core_group WHERE status = ''A'' AND group_id IN (SELECT group_id FROM relation_group_profile WHERE profile_id=333) ORDER BY title', 8, '2017-07-15 22:28:33'),
(212, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:04'),
(213, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:05'),
(214, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:05'),
(215, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:06'),
(216, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:07'),
(217, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:08'),
(218, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:09'),
(219, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:10'),
(220, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:11'),
(221, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:11'),
(222, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:12'),
(223, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:17'),
(224, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:18'),
(225, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:18'),
(226, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:18'),
(227, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:19'),
(228, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:19'),
(229, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:20'),
(230, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:21'),
(231, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:21'),
(232, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:21'),
(233, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:22'),
(234, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:22'),
(235, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:22'),
(236, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:23'),
(237, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:23'),
(238, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:23'),
(239, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:24'),
(240, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:24'),
(241, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:25'),
(242, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:25'),
(243, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:25'),
(244, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:30'),
(245, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:31'),
(246, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:31'),
(247, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:31'),
(248, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:32'),
(249, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:32'),
(250, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:32'),
(251, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:32'),
(252, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:33'),
(253, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:33'),
(254, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:33'),
(255, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:34'),
(256, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:34'),
(257, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:34'),
(258, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:35'),
(259, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:35'),
(260, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:36'),
(261, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:36'),
(262, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:45:36'),
(263, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:46:21'),
(264, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:46:22'),
(265, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:46:23'),
(266, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:46:24'),
(267, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:46:25'),
(268, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:46:25'),
(269, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:46:26'),
(270, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:46:27'),
(271, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:46:29'),
(272, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:47:01'),
(273, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:47:01'),
(274, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 18:52:53'),
(275, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:51'),
(276, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:52'),
(277, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:53'),
(278, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:54'),
(279, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:54'),
(280, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:55'),
(281, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:56'),
(282, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:57'),
(283, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:57'),
(284, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:58'),
(285, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:14:59'),
(286, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:26'),
(287, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:27'),
(288, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:27'),
(289, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:28'),
(290, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:28'),
(291, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:28'),
(292, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:29'),
(293, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:29'),
(294, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:29'),
(295, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:30'),
(296, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:30'),
(297, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:30'),
(298, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:31'),
(299, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:31'),
(300, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:31'),
(301, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:32'),
(302, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:32'),
(303, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:33'),
(304, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:33'),
(305, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:15:33'),
(306, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:41'),
(307, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:42'),
(308, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:43'),
(309, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:44'),
(310, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:45'),
(311, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:46'),
(312, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:46'),
(313, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:47'),
(314, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:48'),
(315, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:48'),
(316, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 86, '2017-07-16 19:23:49'),
(317, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = ', 91, '2017-07-16 19:25:11'),
(318, 'Unknown column ''lamelena'' in ''where clause''', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = lamelena', 91, '2017-07-16 19:26:42'),
(319, 'Unknown column ''lamelena'' in ''where clause''', 'MySQL', 'SELECT * FROM core_relation_user_menu WHERE menu_id = 13 AND user_id = lamelena', 91, '2017-07-16 19:26:55'),
(320, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM core_view_menu_list WHERE link LIKE ''%core/modules/login/login.php%'' AND organization_id=', 0, '2017-07-17 13:18:37'),
(321, 'Table ''innova.core_menua'' doesn''t exist', 'MySQL', 'SELECT a.menu_id,COALESCE(CONCAT(b.title,''/'',a.title), a.title) AS title FROM core_menua LEFT JOIN core_menu b ON (a.parent_id=b.menu_id OR a.parent_id=0) WHERE a.status<>''I'' AND a.organization_id IN (0,1)', 8, '2017-07-17 13:57:32'),
(322, 'Column ''parent_id'' in order clause is ambiguous', 'MySQL', 'SELECT a.menu_id,COALESCE(CONCAT(b.title,''/'',a.title), a.title) AS title FROM core_menu a LEFT JOIN core_menu b ON ((a.parent_id=b.menu_id OR b.menu_id=0) AND a.link<>''#'') WHERE a.status<>''I'' AND a.organization_id IN (0,1) ORDER BY parent_id', 8, '2017-07-17 14:03:57'),
(323, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM product_category WHERE category_id=', 8, '2017-07-18 17:09:57'),
(324, 'Table ''innova.view_category_list'' doesn''t exist', 'MySQL', 'DESCRIBE view_category_list', 8, '2017-07-18 17:09:57'),
(325, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT * FROM product_category WHERE category_id=', 8, '2017-07-18 17:35:51'),
(326, 'Table ''innova.view_product_list'' doesn''t exist', 'MySQL', 'DESCRIBE view_product_list', 8, '2017-07-19 15:10:44'),
(327, 'Unknown column ''title'' in ''order clause''', 'MySQL', 'SELECT brand_id,name FROM product_brand WHERE status=''A'' AND organization_id=1 ORDER BY title', 8, '2017-07-19 15:10:44'),
(328, 'Table ''innova.view_product_list'' doesn''t exist', 'MySQL', 'DESCRIBE view_product_list', 8, '2017-07-19 15:10:44'),
(329, 'Table ''innova.view_product_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1', 8, '2017-07-19 15:10:44'),
(330, 'Table ''innova.view_product_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 LIMIT 0, 0', 8, '2017-07-19 15:10:44'),
(331, 'Table ''innova.view_product_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1', 8, '2017-07-19 15:10:44'),
(332, 'Table ''innova.view_product_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 LIMIT 0, 0', 8, '2017-07-19 15:10:44'),
(333, 'Unknown column ''title'' in ''order clause''', 'MySQL', 'SELECT brand_id,name FROM product_brand WHERE status=''A'' AND organization_id=1 ORDER BY title', 8, '2017-07-19 15:13:03'),
(334, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''=<100 AND organization_id = ''1'' AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND price=<100 AND organization_id = ''1'' AND status = ''A''', 8, '2017-07-19 16:40:09'),
(335, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''=<100 AND organization_id = ''1'' AND status = ''A'' LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND price=<100 AND organization_id = ''1'' AND status = ''A'' LIMIT 0, 0', 8, '2017-07-19 16:40:09'),
(336, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''=<100 AND organization_id = ''1'' AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND price=<100 AND organization_id = ''1'' AND status = ''A''', 8, '2017-07-19 16:40:09'),
(337, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''=<100 AND organization_id = ''1'' AND status = ''A'' LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND price=<100 AND organization_id = ''1'' AND status = ''A'' LIMIT 0, 0', 8, '2017-07-19 16:40:09'),
(338, 'Unknown column ''price_to'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_to desc', 8, '2017-07-19 17:41:25'),
(339, 'Unknown column ''price_to'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_to desc LIMIT 0, 0', 8, '2017-07-19 17:41:25'),
(340, 'Unknown column ''price_to'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_to desc', 8, '2017-07-19 17:41:25'),
(341, 'Unknown column ''price_to'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_to desc LIMIT 0, 0', 8, '2017-07-19 17:41:25'),
(342, 'Unknown column ''price_from'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_from desc', 8, '2017-07-19 17:42:03'),
(343, 'Unknown column ''price_from'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_from desc LIMIT 0, 0', 8, '2017-07-19 17:42:03'),
(344, 'Unknown column ''price_from'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_from desc', 8, '2017-07-19 17:42:03'),
(345, 'Unknown column ''price_from'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_from desc LIMIT 0, 0', 8, '2017-07-19 17:42:03'),
(346, 'Unknown column ''price_from'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_from asc', 8, '2017-07-19 17:42:05'),
(347, 'Unknown column ''price_from'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_from asc LIMIT 0, 0', 8, '2017-07-19 17:42:05'),
(348, 'Unknown column ''price_from'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_from asc', 8, '2017-07-19 17:42:05'),
(349, 'Unknown column ''price_from'' in ''order clause''', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND organization_id = ''1'' AND status = ''A'' ORDER BY price_from asc LIMIT 0, 0', 8, '2017-07-19 17:42:05'),
(350, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''AND organization_id = ''1'' AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND stock<= AND organization_id = ''1'' AND status = ''A''', 8, '2017-07-19 18:09:12'),
(351, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''AND organization_id = ''1'' AND status = ''A'' LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND stock<= AND organization_id = ''1'' AND status = ''A'' LIMIT 0, 0', 8, '2017-07-19 18:09:12'),
(352, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''AND organization_id = ''1'' AND status = ''A'''' at line 1', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND stock<= AND organization_id = ''1'' AND status = ''A''', 8, '2017-07-19 18:09:12'),
(353, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''AND organization_id = ''1'' AND status = ''A'' LIMIT 0, 0'' at line 1', 'MySQL', 'SELECT * FROM view_product_list WHERE 1=1 AND stock<= AND organization_id = ''1'' AND status = ''A'' LIMIT 0, 0', 8, '2017-07-19 18:09:12'),
(354, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ORDER BY parent_id,title'' at line 1', 'MySQL', 'SELECT * FROM product_category WHERE status=''A'' AND organization_id =  ORDER BY parent_id,title', 0, '2017-07-23 21:10:07'),
(355, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT brand_id,name FROM product_brand WHERE status=''A'' AND organization_id=', 0, '2017-07-23 21:10:07'),
(356, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'DESCRIBE view_company_list', 8, '2017-07-26 17:45:06'),
(357, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'DESCRIBE view_company_list', 8, '2017-07-26 17:45:06'),
(358, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_company_list WHERE 1=1', 8, '2017-07-26 17:45:06'),
(359, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_company_list WHERE 1=1 LIMIT 0, 0', 8, '2017-07-26 17:45:06'),
(360, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_company_list WHERE 1=1', 8, '2017-07-26 17:45:06'),
(361, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_company_list WHERE 1=1 LIMIT 0, 0', 8, '2017-07-26 17:45:06'),
(362, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'DESCRIBE view_company_list', 8, '2017-07-26 17:47:29'),
(363, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'DESCRIBE view_company_list', 8, '2017-07-26 17:47:29'),
(364, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_company_list WHERE 1=1', 8, '2017-07-26 17:47:29'),
(365, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_company_list WHERE 1=1 LIMIT 0, 0', 8, '2017-07-26 17:47:29'),
(366, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_company_list WHERE 1=1', 8, '2017-07-26 17:47:29'),
(367, 'Table ''innova.view_company_list'' doesn''t exist', 'MySQL', 'SELECT * FROM view_company_list WHERE 1=1 LIMIT 0, 0', 8, '2017-07-26 17:47:29'),
(368, 'Table ''innova.admin_menu'' doesn''t exist', 'MySQL', 'SELECT * FROM admin_menu WHERE status = ''A'' AND menu_id IN (SELECT menu_id FROM core_relation_user_menu WHERE user_id = 8)', 8, '2017-07-29 04:52:42'),
(369, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '') ORDER BY a.parent_id'' at line 1', 'MySQL', 'SELECT a.menu_id,COALESCE(CONCAT(b.title,''/'',a.title), a.title) AS title FROM core_menu a LEFT JOIN core_menu b ON ((a.parent_id=b.menu_id OR b.menu_id=0) AND a.link<>''#'') WHERE a.status<>''I'' AND a.organization_id IN (0,) ORDER BY a.parent_id', 0, '2017-07-29 07:13:48'),
(370, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT profile_id,title FROM core_profile WHERE status<>''I'' AND organization_id = ', 0, '2017-07-29 07:13:48'),
(371, 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '''' at line 1', 'MySQL', 'SELECT group_id,title FROM core_group WHERE status<>''I'' AND organization_id = ', 0, '2017-07-29 07:13:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_log_login`
--

CREATE TABLE IF NOT EXISTS `core_log_login` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ip` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tries` int(11) NOT NULL,
  `event` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=111 ;

--
-- Volcado de datos para la tabla `core_log_login`
--

INSERT INTO `core_log_login` (`log_id`, `user`, `password`, `ip`, `tries`, `event`, `date`) VALUES
(1, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-07 05:37:38'),
(2, 'cheketo', '', '10.240.1.64', 0, 'OK', '2017-07-07 05:48:37'),
(3, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-07 07:10:48'),
(4, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-07-07 19:36:01'),
(5, 'Cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-07 20:55:49'),
(6, 'cheketo', '', '10.240.0.182', 0, 'OK', '2017-07-07 20:56:06'),
(7, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-08 00:21:44'),
(8, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-08 04:06:08'),
(9, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-07-08 13:52:14'),
(10, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-07-09 07:36:44'),
(11, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-07-09 19:45:23'),
(12, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-09 20:29:49'),
(13, 'cheketo', '', '10.240.0.182', 0, 'OK', '2017-07-09 20:30:05'),
(14, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-10 11:53:18'),
(15, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-10 13:15:18'),
(16, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-10 16:50:54'),
(17, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-07-10 17:25:19'),
(18, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-10 18:19:35'),
(19, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-10 21:00:31'),
(20, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-10 21:20:49'),
(21, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-11 01:40:02'),
(22, 'hernan', '', '10.240.1.32', 0, 'OK', '2017-07-11 18:03:35'),
(23, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-11 18:24:20'),
(24, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-07-11 19:38:51'),
(25, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-11 22:19:30'),
(26, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-07-12 03:06:38'),
(27, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-07-12 05:09:49'),
(28, 'cheketo', '', '10.240.1.64', 0, 'OK', '2017-07-12 07:50:24'),
(29, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-12 19:04:27'),
(30, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-13 01:10:40'),
(31, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-13 03:23:48'),
(32, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-07-13 05:20:10'),
(33, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-07-13 06:06:23'),
(34, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-13 07:28:47'),
(35, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-13 07:52:57'),
(36, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-13 08:03:22'),
(37, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-07-13 08:07:01'),
(38, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-13 20:08:39'),
(39, 'cheketo', '', '10.240.1.64', 0, 'OK', '2017-07-13 21:17:03'),
(40, 'cheketo', '', '10.240.0.182', 0, 'OK', '2017-07-13 22:48:34'),
(41, 'cheketo', '', '10.240.0.182', 0, 'OK', '2017-07-14 02:33:49'),
(42, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-14 08:05:26'),
(43, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-07-14 19:05:31'),
(44, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-07-14 19:07:02'),
(46, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-07-14 22:36:52'),
(47, 'cheketo', '1234', '10.240.1.19', 1, 'Clave Incorrecta', '2017-07-14 22:38:32'),
(48, 'cheketo', '1234', '10.240.0.204', 1, 'Clave Incorrecta', '2017-07-14 22:39:02'),
(49, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-14 22:39:58'),
(50, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-14 22:48:55'),
(51, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-14 22:49:36'),
(52, 'cheketo', '1111', '10.240.1.32', 1, 'Clave Incorrecta', '2017-07-14 22:52:51'),
(53, 'cheketo', '', '10.240.1.64', 0, 'OK', '2017-07-14 22:52:55'),
(54, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-14 22:53:09'),
(55, 'cheketo', '', '10.240.0.182', 0, 'OK', '2017-07-15 17:42:40'),
(56, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-07-16 18:43:21'),
(57, 'lamelena', '', '10.240.0.204', 0, 'OK', '2017-07-16 18:45:04'),
(58, 'lamelena', '', '10.240.0.186', 0, 'OK', '2017-07-16 18:46:16'),
(59, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-16 19:00:12'),
(60, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-16 19:01:08'),
(61, 'lamelena', '', '10.240.0.69', 0, 'OK', '2017-07-16 19:14:51'),
(62, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-07-16 19:16:33'),
(63, 'jonix', '', '10.240.0.186', 0, 'OK', '2017-07-16 19:23:41'),
(64, 'hernan', '', '10.240.0.69', 0, 'OK', '2017-07-16 19:24:19'),
(65, 'lamelena', '', '10.240.1.60', 0, 'OK', '2017-07-16 19:25:10'),
(66, 'jonix', '', '10.240.1.19', 0, 'OK', '2017-07-16 19:30:20'),
(67, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-16 19:30:37'),
(68, 'jonix', '', '10.240.0.204', 0, 'OK', '2017-07-16 20:04:50'),
(69, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-07-17 13:07:41'),
(70, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-07-17 13:20:57'),
(71, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-17 13:25:51'),
(72, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-17 13:28:59'),
(73, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-07-17 13:32:12'),
(74, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-07-17 13:43:07'),
(75, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-07-17 14:10:48'),
(76, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-07-17 14:11:01'),
(77, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-17 14:13:41'),
(78, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-17 14:20:22'),
(79, 'cheketo', '', '10.240.0.182', 0, 'OK', '2017-07-17 14:22:48'),
(80, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-17 14:40:30'),
(81, 'cheketo', '', '10.240.1.64', 0, 'OK', '2017-07-17 14:45:28'),
(82, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-17 14:48:43'),
(83, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-17 14:51:52'),
(84, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-07-17 15:14:15'),
(85, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-18 15:20:27'),
(86, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-07-18 22:25:55'),
(87, 'cheketo', '', '10.240.1.32', 0, 'OK', '2017-07-18 22:27:04'),
(88, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-18 22:27:13'),
(89, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-07-19 13:47:52'),
(90, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-07-19 16:21:43'),
(91, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-07-19 19:43:11'),
(92, 'cheketo', '', '10.240.1.64', 0, 'OK', '2017-07-21 19:38:08'),
(93, 'contador', '1234', '10.240.0.204', 1, 'Clave Incorrecta', '2017-07-21 19:39:44'),
(94, 'cheketo', '', '10.240.1.17', 0, 'OK', '2017-07-21 19:39:51'),
(95, 'contador', '', '10.240.1.17', 0, 'OK', '2017-07-21 19:40:35'),
(96, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-21 19:41:26'),
(97, 'cheketo', '', '10.240.1.15', 0, 'OK', '2017-07-21 19:41:37'),
(98, 'hernan', '', '10.240.1.32', 0, 'OK', '2017-07-21 19:43:21'),
(99, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-21 19:44:03'),
(100, 'hernan', '', '10.240.1.20', 0, 'OK', '2017-07-21 19:44:58'),
(101, 'contador', '', '10.240.0.204', 0, 'OK', '2017-07-21 19:48:03'),
(102, 'cheketo', '', '10.240.0.186', 0, 'OK', '2017-07-21 19:49:52'),
(103, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-07-23 18:27:16'),
(104, 'cheketo', '', '10.240.1.20', 0, 'OK', '2017-07-23 21:25:52'),
(105, 'lamelena', '', '10.240.1.17', 0, 'OK', '2017-07-23 21:28:55'),
(106, 'cheketo', '', '10.240.1.60', 0, 'OK', '2017-07-23 21:30:52'),
(107, 'cheketo', '', '10.240.0.204', 0, 'OK', '2017-07-26 17:44:12'),
(108, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-28 16:33:30'),
(109, 'cheketo', '', '10.240.1.19', 0, 'OK', '2017-07-29 04:49:26'),
(110, 'cheketo', '', '10.240.0.69', 0, 'OK', '2017-07-29 07:14:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_menu`
--

CREATE TABLE IF NOT EXISTS `core_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position` int(11) NOT NULL,
  `public` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'Y',
  `status` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'A',
  `view_status` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'A',
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=106 ;

--
-- Volcado de datos para la tabla `core_menu`
--

INSERT INTO `core_menu` (`menu_id`, `parent_id`, `title`, `link`, `icon`, `position`, `public`, `status`, `view_status`, `organization_id`) VALUES
(1, 0, 'Administración', '#', 'fa-desktop', 9999, 'N', 'A', 'A', 0),
(2, 53, 'Artículos', '#', 'fa-cube', 2, 'N', 'A', 'A', 1),
(3, 53, 'Líneas', '#', 'fa-sitemap', 3, 'N', 'A', 'A', 1),
(4, 6, 'Listado de Perfiles', '../../../core/modules/profile/list.php', 'fa-list-ul', 1, 'N', 'A', 'A', 0),
(5, 1, 'Usuarios', '#', 'fa-user', 1, 'N', 'A', 'A', 0),
(6, 1, 'Perfiles', '#', 'fa-lock', 2, 'N', 'A', 'A', 0),
(7, 1, 'Grupos', '#', 'fa-users', 3, 'N', 'A', 'A', 0),
(8, 1, 'Menúes', '#', 'fa-align-left', 4, 'N', 'A', 'A', 0),
(9, 8, 'Nuevo Menú', '../../../core/modules/menu/new.php', 'fa-plus-square', 1, 'N', 'A', 'A', 0),
(10, 8, 'Listado de Menúes', '../../../core/modules/menu/list.php', 'fa-list-ul', 1, 'N', 'A', 'A', 0),
(11, 5, 'Nuevo Usuario', '../../../core/modules/user/new.php', 'fa-user-plus', 1, 'N', 'A', 'A', 0),
(12, 5, 'Listado de Usuarios', '../../../core/modules/user/list.php', 'fa-list-ul', 2, 'N', 'A', 'A', 0),
(13, 0, 'Inicio', '../../../core/modules/main/main.php', 'fa-home', -100, 'N', 'A', 'A', 0),
(16, 5, 'Editar Usuario', '../../../core/modules/user/edit.php', 'fa-edit', 3, 'N', 'A', 'O', 0),
(17, 8, 'Editar Menú', '../../../core/modules/menu/edit.php', 'fa-edit', 3, 'N', 'A', 'O', 0),
(18, 2, 'Listado de Artículos', '../../../project/modules/product/list.php', 'fa-list-ul', 3, 'N', 'A', 'A', 1),
(19, 2, 'Crear Artículo', '../../../project/modules/product/new.php', 'fa-plus-square', 0, 'N', 'A', 'A', 1),
(20, 5, 'Usuarios Eliminados', '../user/list.php?status=I', 'fa-trash', 4, 'N', 'A', 'A', 0),
(21, 6, 'Nuevo Perfil', '../profile/new.php', 'fa-plus-square', 1, 'N', 'A', 'A', 0),
(22, 3, 'Listado de Líneas', '../../../project/modules/category/list.php', 'fa-list-ul', 2, 'N', 'A', 'A', 1),
(23, 3, 'Nueva Línea', '../../../project/modules/category/new.php', 'fa-plus-square', 1, 'N', 'A', 'A', 1),
(24, 3, 'Líneas Eliminadas', '../../../project/modules/category/list.php?status=I', 'fa-trash', 9, 'N', 'A', 'A', 1),
(25, 2, 'Artículos Eliminados', '../../../project/modules/product/list.php?status=I', 'fa-trash', 9, 'N', 'A', 'A', 1),
(26, 7, 'Nuevo Grupo', '../../../core/modules/group/new.php', 'fa-plus-square', 1, 'N', 'A', 'A', 0),
(27, 7, 'Listado de Grupos', '../../../core/modules/group/list.php', 'fa-list-ul', 2, 'N', 'A', 'A', 0),
(28, 7, 'Editar Grupo', '../../../core/modules/group/edit.php', 'fa-pencil', 3, 'N', 'A', 'A', 0),
(29, 8, 'Switcher', '../menu/switcher.php', '', 9, 'N', 'A', 'O', 0),
(30, 0, 'Pepepito', '../modulo/pepe2php', 'fa-magic', 678, 'Y', 'A', 'O', 1),
(31, 6, 'Perfiles Eliminados', '../profile/list.php?status=I', 'fa-trash', 3, 'N', 'A', 'A', 0),
(32, 8, 'Menúes Eliminados', '../menu/list.php?status=I', 'fa-trash', 3, 'N', 'A', 'A', 0),
(33, 7, 'Grupos Eliminados', '../../../core/modules/group/list.php?status=I', 'fa-trash', 3, 'N', 'A', 'A', 0),
(34, 5, 'Mi Perfil', '../user/profile.php', 'fa-child', 4, 'Y', 'A', 'O', 0),
(35, 6, 'Editar Perfil', '../profile/edit.php', 'fa-pencil', 3, 'N', 'A', 'O', 0),
(36, 61, 'Clientes Prueba', '#', 'fa-suitcase', 90, 'N', 'A', 'A', 1),
(37, 36, 'Nuevo Cliente', '../customer_test/new.php', 'fa-plus', 1, 'N', 'A', 'A', 1),
(38, 36, 'Listado de Clientes', '../customer_test/list.php', 'fa-bars', 2, 'N', 'A', 'A', 1),
(39, 36, 'Cuenta Corriente', '../customer_test/account.php', 'fa-dollar', 3, 'N', 'A', 'A', 1),
(40, 1, 'Geolocalización', '#', 'fa-globe', 5, 'N', 'A', 'A', 1),
(41, 40, 'Países', '#', 'fa-flag', 1, 'N', 'A', 'A', 1),
(42, 40, 'Provincias', '#', 'fa-flag-checkered', 2, 'N', 'A', 'A', 1),
(43, 40, 'Zonas', '#', 'fa-flag-o', 3, 'N', 'A', 'A', 1),
(44, 41, 'Listado de Países', '../geolocation_country/list.php', 'fa-list-ul', 1, 'N', 'A', 'A', 1),
(45, 41, 'Nuevo País', '../geolocation_country/new.php', 'fa-plus-square', 0, 'N', 'A', 'A', 1),
(46, 36, 'Nueva Cuenta Corriente', '../customer_test/new-account.php', 'fa-calculator', 3, 'N', 'A', 'A', 1),
(47, 0, 'Empresas', '#', 'fa-building', 4, 'N', 'A', 'O', 1),
(48, 47, 'Nueva Empresa', '../company/new.php', 'fa-plus-square', 1, 'N', 'A', 'A', 1),
(49, 0, 'Prueba', '#', 'fa-university', 9, 'N', 'I', 'A', 1),
(54, 0, 'Proveedores', '#', 'fa-building', 6, 'N', 'A', 'A', 1),
(50, 53, 'Marcas', '#', 'fa-trademark', 4, 'N', 'A', 'A', 1),
(51, 50, 'Listado de Marcas', '../../../project/modules/brand/list.php', 'fa-list-ul', 2, 'N', 'A', 'A', 1),
(52, 50, 'Nueva Marca', '../../../project/modules/brand/new.php', 'fa-plus-square', 1, 'N', 'A', 'A', 1),
(53, 0, 'Productos', '#', 'fa-cubes', 0, 'N', 'A', 'A', 1),
(55, 54, 'Nacionales', '#', 'fa-flag', 1, 'N', 'A', 'A', 1),
(56, 54, 'Internacionales', '#', 'fa-globe', 2, 'N', 'A', 'A', 1),
(57, 2, 'Editar Artículo', '../../../project/modules/product/edit.php', 'fa-pencil', 3, 'N', 'A', 'A', 1),
(58, 55, 'Crear Proveedor', '../provider_national/new.php', 'fa-plus-square', 1, 'N', 'A', 'A', 1),
(59, 55, 'Editar Proveedor', '../provider_national/edit.php', 'fa-pencil-square', 4, 'N', 'A', 'O', 1),
(60, 55, 'Listado de Proveedores', '../provider_national/list.php', 'fa-list-ul', 2, 'N', 'A', 'A', 1),
(61, 0, 'Pruebas', '#', 'fa-bug', 9999, 'N', 'A', 'O', 1),
(62, 61, 'Listado', '../prueba/list.php', 'fa-bed', 3, 'N', 'A', 'A', 1),
(63, 0, 'Clientes', '#', 'fa-industry', 3, 'N', 'A', 'A', 1),
(64, 67, 'Nuevo Cliente', '../customer_national/new.php', 'fa-plus-square', 1, 'N', 'A', 'A', 1),
(65, 67, 'Listado de Clientes', '../customer_national/list.php', 'fa-align-justify', 2, 'N', 'A', 'A', 1),
(66, 67, 'Editar Cliente', '../customer_national/edit.php', 'fa-pencil', 0, 'N', 'A', 'O', 1),
(67, 63, 'Nacionales', '#', 'fa-flag', 1, 'N', 'A', 'A', 1),
(68, 63, 'Internacionales', '#', 'fa-globe', 2, 'N', 'A', 'A', 1),
(69, 0, 'Ventas', '#', 'fa-dollar', 2, 'N', 'A', 'A', 1),
(70, 0, 'Estadísticas', '#', 'fa-area-chart', 15, 'N', 'A', 'A', 1),
(71, 53, 'Stock', '#', 'fa-th', 0, 'N', 'A', 'A', 1),
(72, 71, 'Modificar Stock', '#', 'fa-qrcode', 0, 'N', 'A', 'A', 1),
(73, 76, 'Nueva Orden', '../provider_national_order/new.php?status=A', 'fa-ambulance', 1, 'N', 'A', 'A', 1),
(74, 76, 'Ordenes Sin Confirmar', '../provider_national_order/list.php?status=P', 'fa-shopping-cart', 2, 'N', 'I', 'A', 1),
(75, 76, 'Editar', '../provider_national_order/edit.php', 'fa-cart-arrow-down', 0, 'N', 'A', 'O', 1),
(76, 55, 'Ordenes de Compra', '#', 'fa-truck', 10, 'N', 'A', 'A', 1),
(77, 76, 'Ordenes Pedidas', '../provider_national_order/list.php?status=A', 'fa-truck', 3, 'N', 'A', 'A', 1),
(78, 76, 'Historial de Ordenes', '../provider_national_order/list.php?status=F', 'fa-hourglass-half', 6, 'N', 'A', 'A', 1),
(79, 71, 'Ingresos Pendientes', '../stock/stock_pending.php?status=A', 'fa-sign-in', 5, 'N', 'A', 'A', 1),
(80, 76, 'Generar Factura', '../provider_national_order/invoice.php', 'fa-file-text', 99, 'N', 'A', 'A', 1),
(81, 76, 'Ordenes a Controlar', '../provider_national_order/list.php?status=S', 'fa-list-alt', 4, 'N', 'I', 'A', 1),
(82, 76, 'Ordenes Pend. Ingreso', '../provider_national_order/list.php?status=C', 'fa-sign-in', 4, 'N', 'I', 'A', 1),
(83, 0, 'Facturación', '#', 'fa-file-text', 2, 'N', 'A', 'A', 1),
(84, 83, 'A Proveedores', '#', 'fa-building', 2, 'N', 'A', 'A', 1),
(85, 84, 'Pendientes', '../provider_national_invoice/list.php?status=P&operation=2', 'fa-exclamation-circle', 1, 'N', 'A', 'A', 1),
(86, 84, 'En Proceso', '../provider_national_invoice/list.php?status=A&operation=2', 'fa-inbox', 2, 'N', 'A', 'A', 1),
(87, 84, 'Archivo', '../provider_national_invoice/list.php?status=F&operation=2', 'fa-archive', 3, 'N', 'A', 'A', 1),
(88, 71, 'Ingreso de Stock', '../stock/stock_entrance.php', 'fa-sign-in', 5, 'N', 'A', 'O', 1),
(89, 55, 'Cotizaciones', '#', 'fa-shopping-cart', 3, 'N', 'A', 'A', 1),
(90, 89, 'Nueva Cotización', '../provider_national_order/new.php?status=P', 'fa-cart-plus', 1, 'N', 'A', 'A', 1),
(91, 89, 'Cotizaciones Activas', '../provider_national_order/list.php?status=P', 'fa-shopping-cart', 2, 'N', 'A', 'A', 1),
(92, 89, 'Cotizaciones Archivadas', '../provider_national_order/list.php?status=Z', 'fa-archive', 5, 'N', 'A', 'A', 1),
(93, 76, 'Ver Detalle', '../provider_national_order/view.php', 'fa-eye', 99, 'N', 'A', 'O', 1),
(94, 1, 'Configuración', '#', 'fa-cogs', 90, 'N', 'A', 'A', 0),
(95, 94, 'Datos de la Empresa', '../configuration_company/edit.php?id=1', 'fa-home', 1, 'N', 'A', 'A', 0),
(96, 84, 'Cargar Factura', '../provider_national_invoice/fill.php', 'fa-download', 99, 'N', 'A', 'O', 1),
(97, 0, 'Alejandro', '../../../core/modules/user/list.php', 'fa-graduation-cap', 5, 'N', 'I', 'A', 1),
(98, 0, 'Empresas', '#', 'fa-building', 5, 'N', 'A', 'A', 1),
(99, 98, 'Todas las Empresas', '../../../project/modules/company/list.php', 'fa-book', 0, 'N', 'A', 'A', 1),
(100, 98, 'Proveedores', '../../../project/modules/company/list.php?provider=Y', 'fa-shopping-cart', 2, 'N', 'A', 'A', 1),
(101, 98, 'Clientes', '../../../project/modules/company/list.php?customer=Y', 'fa-group', 3, 'N', 'A', 'A', 1),
(102, 0, 'Cotizaciones', '#', 'fa-list', 6, 'N', 'A', 'A', 1),
(103, 102, 'De Proveedores', '#', 'fa-shopping-cart', 1, 'N', 'A', 'A', 1),
(104, 102, 'A Clientes', '#', 'fa-users', 2, 'N', 'A', 'A', 1),
(105, 98, 'Nueva Empresa', '../../../project/modules/company/new.php', 'fa-plus-square', 9, 'N', 'A', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_organization`
--

CREATE TABLE IF NOT EXISTS `core_organization` (
  `organization_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `corporate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zone_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `lat` decimal(30,28) NOT NULL,
  `lng` decimal(30,28) NOT NULL,
  `cuit` bigint(15) NOT NULL,
  `gross_income_tax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iva` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loader_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `core_organization`
--

INSERT INTO `core_organization` (`organization_id`, `name`, `corporate_name`, `logo`, `icon`, `address`, `postal_code`, `zone_id`, `region_id`, `province_id`, `country_id`, `lat`, `lng`, `cuit`, `gross_income_tax`, `iva`, `email`, `phone`, `fax`, `website`, `loader_text`) VALUES
(1, 'innova Service', '', '../../../../skin/images/configuration/company/company.jpeg', 'cog', 'Av. Caseros 3217', 'C1437', 10, 10, 6, 1, '-34.6376643999999900000000000000', '-58.4095608999999740000000000000', 33647656779, '33647656779', 1, 'ventas@innovaservice.com.ar', '(54 11) 4912-1100 (L. Rotativas)', '(54 11) 4912-1100', 'www.innovaservice.com.ar', 'innova <i class="fa fa-cog animated faa-spin faa-fast"></i> Service'),
(2, 'Pepe Autos', '', '', 'car', '', '', 0, 0, 0, 0, '0.0000000000000000000000000000', '0.0000000000000000000000000000', 0, '', 0, '', '', '', '', 'Pepe <i class="fa fa-car faa-tada animated"></i> Autos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_profile`
--

CREATE TABLE IF NOT EXISTS `core_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` char(1) CHARACTER SET latin1 DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `last_modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=366 ;

--
-- Volcado de datos para la tabla `core_profile`
--

INSERT INTO `core_profile` (`profile_id`, `organization_id`, `title`, `image`, `status`, `creation_date`, `last_modification`, `created_by`) VALUES
(333, 1, 'Superadministrador', '../../../../skin/images/profiles/333/img2664104487.jpeg', 'A', '2013-03-03 03:03:03', '2017-07-16 19:56:37', 0),
(350, 1, 'Prueba', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-06 20:03:28', '2016-10-25 01:35:58', 0),
(351, 1, 'Pepe', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-06 20:05:21', '2016-10-25 01:35:58', 0),
(352, 1, 'Joni', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-08 00:10:19', '2016-10-25 01:35:58', 0),
(353, 1, 'Pruebas Administrador', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-11 02:56:59', '2016-11-24 14:41:21', 0),
(354, 1, 'Asd', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-04-11 04:29:43', '2016-10-25 01:35:58', 0),
(355, 1, 'Pruebas', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-10-21 09:02:22', '2016-10-25 19:38:15', 0),
(356, 1, 'Grupo de Prueba', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-10-24 21:38:49', '2016-10-25 01:35:58', 0),
(357, 1, 'Grupo de Prueba', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-10-24 21:44:29', '2016-10-25 19:34:16', 0),
(358, 1, 'Perfil de Prueba', '../../../skin/images/profiles/default/profilegen.jpg', 'I', '2016-10-25 01:34:23', '2016-10-25 19:37:53', 0),
(359, 1, 'Contador', '../../../../skin/images/profiles/359/img854718760.png', 'A', '2016-11-11 19:56:40', '2017-07-16 19:55:08', 0),
(360, 1, 'Dueño', '../../../../skin/images/profiles/360/img2753993.png', 'A', '2016-11-24 14:42:53', '2017-07-16 19:54:10', 0),
(361, 1, 'Corredor', '../../../../skin/images/profiles/361/img379997310.png', 'A', '2017-01-18 14:25:14', '2017-07-16 19:58:02', 0),
(362, 1, 'Empleado', '../../../../skin/images/profiles/362/img2068641655.jpeg', 'A', '2017-06-19 15:27:23', '2017-07-16 19:54:53', 0),
(363, 1, 'Externo', '', 'I', '2017-07-07 23:15:45', '2017-07-07 23:17:45', 0),
(364, 1, 'Externo2', '../../../skin/images/profiles/profile109244029.png', 'A', '2017-07-07 23:17:35', '2017-07-07 23:17:35', 0),
(365, 1, 'TestAle', '../../../../skin/images/profiles/365/img1023976385.png', 'A', '2017-07-15 23:04:19', '2017-07-16 19:57:11', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_province`
--

CREATE TABLE IF NOT EXISTS `core_province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `core_province`
--

INSERT INTO `core_province` (`province_id`, `country_id`, `name`, `short_name`, `lat`, `lng`) VALUES
(1, 1, 'Ciudad Autónoma de Buenos Aires', 'CABA', -34.6037, -58.3816),
(2, 1, 'Córdoba', 'Córdoba', -31.4201, -64.1888),
(3, 1, 'Santa Fe', 'Santa Fe', -31.6107, -60.6973),
(4, 1, 'Tucumán', 'Tucumán', -26.8083, -65.2176),
(6, 1, 'Buenos Aires', 'Bs. As.', 0, 0),
(9, 1, 'Ciudad Autónoma de Buenos Aires', '', 0, 0),
(10, 4, 'Montevideo', 'Montevideo', 0, 0),
(11, 4, 'Montevideo', '', 0, 0),
(12, 1, 'Buenos Aires', 'Buenos Aires', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_region`
--

CREATE TABLE IF NOT EXISTS `core_region` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' ',
  `province_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `core_region`
--

INSERT INTO `core_region` (`region_id`, `province_id`, `country_id`, `name`, `short_name`) VALUES
(1, 1, 1, 'Comuna 7', 'Com. 7'),
(3, 1, 1, 'Comuna 10', 'Com. 10'),
(4, 1, 1, 'Comuna 14', 'Com. 14'),
(5, 6, 1, 'Quilmes', 'Quilmes'),
(6, 6, 1, 'San Fernando', 'San Fernando'),
(7, 1, 1, 'Comuna 9', 'Com. 9'),
(9, 6, 1, 'Esteban Echeverría', 'Esteban Echeverría'),
(10, 1, 1, 'Comuna 4', 'Comuna 4'),
(11, 8, 3, '', ''),
(12, 9, 1, 'Comuna 9', ''),
(13, 10, 4, '', ''),
(14, 11, 4, '', ''),
(15, 9, 1, 'Comuna 7', ''),
(16, 1, 1, 'Comuna 15', 'Comuna 15'),
(17, 1, 1, 'Comuna 13', 'Comuna 13'),
(18, 12, 1, 'Junín', 'Junín'),
(19, 1, 1, 'Comuna 6', 'Comuna 6'),
(20, 0, 0, 'Comuna 3', 'Comuna 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_relation_group_profile`
--

CREATE TABLE IF NOT EXISTS `core_relation_group_profile` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=154 ;

--
-- Volcado de datos para la tabla `core_relation_group_profile`
--

INSERT INTO `core_relation_group_profile` (`relation_id`, `group_id`, `profile_id`) VALUES
(150, 12, 365),
(149, 11, 365),
(27, 10, 355),
(148, 7, 365),
(139, 17, 362),
(135, 17, 360),
(146, 17, 333),
(129, 5, 364),
(119, 6, 364),
(131, 7, 364),
(145, 13, 333),
(138, 15, 362),
(137, 11, 362),
(144, 11, 333),
(153, 17, 359),
(134, 13, 360),
(151, 17, 361),
(136, 9, 362),
(74, 17, 364),
(147, 6, 365),
(143, 9, 333),
(142, 7, 333),
(141, 6, 333);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_relation_menu_group`
--

CREATE TABLE IF NOT EXISTS `core_relation_menu_group` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci AUTO_INCREMENT=220 ;

--
-- Volcado de datos para la tabla `core_relation_menu_group`
--

INSERT INTO `core_relation_menu_group` (`relation_id`, `menu_id`, `group_id`) VALUES
(216, 13, 5),
(219, 19, 5),
(87, 7, 10),
(208, 7, 12),
(207, 29, 11),
(206, 17, 11),
(205, 10, 11),
(204, 9, 11),
(203, 8, 11),
(199, 7, 11),
(218, 18, 5),
(213, 30, 5),
(198, 13, 9),
(217, 25, 5),
(132, 13, 8),
(197, 65, 13),
(196, 64, 13),
(195, 66, 13),
(194, 67, 13),
(193, 63, 13),
(153, 53, 15),
(154, 71, 15),
(155, 79, 15),
(156, 88, 15),
(161, 71, 14),
(162, 79, 14),
(163, 88, 14),
(164, 91, 8),
(165, 92, 8),
(166, 97, 8),
(192, 30, 6),
(191, 13, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_relation_menu_profile`
--

CREATE TABLE IF NOT EXISTS `core_relation_menu_profile` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=311 ;

--
-- Volcado de datos para la tabla `core_relation_menu_profile`
--

INSERT INTO `core_relation_menu_profile` (`relation_id`, `menu_id`, `profile_id`) VALUES
(9, 4, 351),
(10, 21, 351),
(16, 5, 352),
(17, 11, 352),
(18, 12, 352),
(19, 16, 352),
(20, 20, 352),
(273, 36, 333),
(306, 12, 359),
(107, 7, 357),
(307, 16, 359),
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
(305, 11, 359),
(308, 20, 359),
(304, 5, 359),
(129, 8, 353),
(130, 9, 353),
(131, 10, 353),
(132, 17, 353),
(133, 32, 353),
(134, 29, 353),
(303, 1, 359),
(148, 6, 353),
(149, 13, 353),
(251, 97, 360),
(250, 92, 360),
(249, 91, 360),
(248, 94, 360),
(247, 36, 360),
(246, 46, 360),
(245, 39, 360),
(244, 38, 360),
(243, 37, 360),
(282, 51, 360),
(283, 52, 360),
(240, 50, 360),
(310, 24, 360),
(272, 46, 333),
(302, 92, 359),
(309, 23, 360),
(271, 39, 333),
(301, 91, 359),
(236, 3, 360),
(270, 38, 333),
(284, 25, 360),
(269, 37, 333),
(300, 89, 359),
(285, 18, 360),
(268, 30, 333),
(286, 19, 360),
(190, 53, 364),
(191, 71, 364),
(192, 72, 364),
(193, 79, 364),
(260, 97, 362),
(259, 92, 362),
(258, 91, 362),
(257, 59, 362),
(256, 60, 362),
(255, 58, 362),
(299, 55, 359),
(232, 2, 360),
(281, 97, 361),
(254, 55, 362),
(205, 91, 364),
(298, 54, 359),
(231, 53, 360),
(280, 92, 361),
(253, 54, 362),
(210, 92, 364),
(297, 13, 359),
(230, 13, 360),
(279, 91, 361),
(252, 13, 362),
(215, 97, 364),
(278, 63, 365),
(277, 83, 365),
(276, 69, 365),
(275, 53, 365),
(274, 13, 365);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_relation_user_group`
--

CREATE TABLE IF NOT EXISTS `core_relation_user_group` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`),
  KEY `admin_id` (`user_id`,`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=162 ;

--
-- Volcado de datos para la tabla `core_relation_user_group`
--

INSERT INTO `core_relation_user_group` (`relation_id`, `user_id`, `group_id`) VALUES
(5, 39, 4),
(13, 43, 4),
(21, 48, 4),
(27, 55, 4),
(35, 64, 4),
(155, 83, 17),
(160, 91, 6),
(159, 80, 11),
(161, 91, 11),
(148, 82, 13),
(147, 81, 13),
(158, 80, 13),
(153, 88, 7),
(152, 87, 5),
(144, 88, 6),
(149, 8, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_relation_user_menu`
--

CREATE TABLE IF NOT EXISTS `core_relation_user_menu` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=568 ;

--
-- Volcado de datos para la tabla `core_relation_user_menu`
--

INSERT INTO `core_relation_user_menu` (`relation_id`, `menu_id`, `user_id`) VALUES
(399, 19, 66),
(400, 18, 66),
(401, 25, 66),
(408, 1, 81),
(409, 5, 81),
(410, 11, 81),
(411, 12, 81),
(412, 16, 81),
(413, 20, 81),
(556, 53, 8),
(555, 2, 8),
(554, 19, 8),
(553, 18, 8),
(552, 54, 8),
(551, 55, 8),
(550, 58, 8),
(549, 60, 8),
(548, 59, 8),
(423, 13, 86),
(424, 83, 86),
(425, 84, 86),
(426, 85, 86),
(427, 86, 86),
(428, 87, 86),
(429, 69, 86),
(450, 13, 44),
(451, 69, 44),
(560, 13, 91),
(538, 53, 87),
(537, 71, 87),
(536, 72, 87),
(535, 79, 87),
(534, 88, 87),
(559, 30, 83),
(558, 13, 83),
(533, 47, 89),
(532, 48, 89),
(509, 62, 88),
(508, 61, 88),
(561, 1, 91),
(562, 5, 91),
(563, 11, 91),
(564, 12, 91),
(565, 16, 91),
(566, 20, 91),
(567, 34, 91);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user`
--

CREATE TABLE IF NOT EXISTS `core_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL,
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
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

--
-- Volcado de datos para la tabla `core_user`
--

INSERT INTO `core_user` (`user_id`, `organization_id`, `user`, `password`, `first_name`, `last_name`, `email`, `profile_id`, `img`, `status`, `tries`, `meli`, `meli_code`, `meli_access_token`, `meli_refresh_token`, `meli_expires_in`, `last_access`, `creation_date`, `creator_id`) VALUES
(3, 1, 'javzero', 'a01610228fe998f515a72dd730294d87', 'Leandro', 'Andrade', 'javzero1@gmail.com', 333, '../../../skin/images/users/3//user17324__3.jpeg', 'I', 0, 0, '', '', '', 0, '2016-11-09 19:34:17', '0000-00-00 00:00:00', 0),
(8, 1, 'cheketo', '49e09dc76bf5ba6fdcbfb710a7d8842d867bad54', 'Alejandro', 'Romero', 'romero.m.alejandro@gmail.com', 333, '../../../../skin/images/users/default/default21.png', 'A', 0, 1, 'TG-57a3c1b8e4b0cd959dc5d629-42005580', 'APP_USR-1204162705833882-111711-d69cdda6ff6f221a81da45cf6ca4f3bd__H_D__-42005580', 'TG-582dd1d6e4b074472bddac1a-42005580', 1479419446, '2017-07-29 07:14:23', '0000-00-00 00:00:00', 0),
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
(44, 1, 'baltazar', '81dc9bdb52d04dc20036dbd8313ed055', 'Nicolás', 'Vallejos', 'nicov@gmail.com', 360, '../../../skin/images/users/44/user41851733__8.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-09-18 08:09:29', 8),
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
(85, 1, 'mramirez', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Marcos', 'Ramirez', 'mramirez@innovaservice.com.ar', 361, '../../../skin/images/users/default/default15.png', 'A', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2017-01-18 14:28:37', 8),
(84, 1, 'jordoñez', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Jorge', 'Ordoñez', 'jordonez@innovaservice.com.ar', 361, '../../../skin/images/users/default/default12.png', 'A', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2017-01-18 14:27:24', 8),
(83, 1, 'carchundia', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Carlos', 'Archundia', 'carchundia@innovaservice.com.ar', 361, '../../../../skin/images/users/8/img251180822__8.png', 'A', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2017-01-18 14:26:25', 8),
(78, 1, 'toni', '81dc9bdb52d04dc20036dbd8313ed055', 'Antonio', 'Anthony', 'toni@toni.com.ar', 353, '../../../skin/images/users/default/default22.png', 'I', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2016-10-24 15:52:16', 8),
(79, 1, 'contador', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Contador', 'Contador', 'asdsadad@asdasd.com', 359, '../../../../skin/images/users/8/img1040821104__8.jpeg', 'A', 0, 0, '', '', '', 0, '2017-07-21 19:48:03', '2016-11-11 20:00:45', 8),
(80, 1, 'hernan', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Hernan', 'Balboa', 'hernanbalboa@gmail.com', 333, '../../../../skin/images/users/80/img251180822__8.png', 'A', 0, 0, '', '', '', 0, '2017-07-21 19:44:58', '2016-11-17 20:52:43', 8),
(81, 1, 'pablo', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Pablo', 'Balboa', 'pablo.balboa@innovaservice.com.ar', 360, '../../../skin/images/users/default/default11.png', 'A', 0, 0, '', '', '', 0, '2016-12-02 14:19:22', '2016-11-24 14:43:55', 8),
(82, 1, 'gonza', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Gonzalo', 'Balboa', 'gonzalobalboa@gmail.com', 360, '../../../skin/images/users/default/default13.png', 'A', 0, 0, '', '', '', 0, '2016-11-30 01:11:49', '2016-11-24 14:50:14', 8),
(86, 1, 'jonix', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Joni', 'Lopez', 'mail@joni.com', 359, '../../../skin/images/users/86/user1217933092__8.png', 'A', 0, 0, '', '', '', 0, '2017-07-16 20:04:50', '2017-06-16 03:30:43', 8),
(87, 1, 'marito', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Mario', 'Baracus', 'maritobaracus2@innova.com', 364, '../../../../skin/images/users/8/user493106204__8.jpeg', 'A', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2017-07-10 18:13:31', 8),
(88, 1, 'chato2', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'José2', 'Monchato2', 'chato2@mail.com', 364, '../../../../skin/images/users/8/img991861406__8.jpeg', 'A', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2017-07-13 06:24:35', 8),
(89, 1, 'user123', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Usuario', '123', 'user123@mail.com', 364, '../../../../skin/images/users/8/img251180822__8.png', 'A', 0, 0, '', '', '', 0, '0000-00-00 00:00:00', '2017-07-13 20:35:21', 8),
(90, 2, 'cheketo', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Alejandro', 'Romero', 'romero.m.alejandro@gmail.com', 333, '', 'A', 0, 0, '', '', '', 0, '2017-07-29 07:14:23', '2017-07-14 11:29:34', 0),
(91, 1, 'lamelena', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Román', 'Mercado', 'melenita@melena.mel', 365, '../../../../skin/images/users/91/img753134867__8.jpeg', 'A', 0, 0, '', '', '', 0, '2017-07-23 21:28:55', '2017-07-16 18:44:49', 8);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `core_view_group_list`
--
CREATE TABLE IF NOT EXISTS `core_view_group_list` (
`group_id` int(11)
,`title` varchar(255)
,`organization_id` int(11)
,`image` varchar(255)
,`status` char(1)
,`created_by` int(11)
,`creation_date` datetime
,`profile_id` int(11)
,`profile` varchar(255)
,`last_modification` timestamp
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `core_view_menu_list`
--
CREATE TABLE IF NOT EXISTS `core_view_menu_list` (
`menu_id` int(11)
,`parent_id` int(11)
,`icon` varchar(255)
,`title` varchar(255)
,`link` varchar(255)
,`link_text` varchar(246)
,`position` int(11)
,`public` char(1)
,`public_text` varchar(7)
,`view_status` char(1)
,`view_status_text` varchar(7)
,`status` char(1)
,`organization_id` int(11)
,`profile` varchar(255)
,`group_title` varchar(255)
,`profile_id` int(11)
,`group_id` int(11)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `core_view_profile_list`
--
CREATE TABLE IF NOT EXISTS `core_view_profile_list` (
`profile_id` int(11)
,`organization_id` int(11)
,`title` varchar(255)
,`status` char(1)
,`image` varchar(255)
,`creation_date` datetime
,`created_by` int(11)
,`last_modification` timestamp
,`group_id` int(11)
,`group_title` varchar(255)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `core_view_user_list`
--
CREATE TABLE IF NOT EXISTS `core_view_user_list` (
`user_id` int(11)
,`organization_id` int(11)
,`user` varchar(255)
,`password` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`full_name` varchar(511)
,`full_user_name` text
,`email` varchar(255)
,`profile_id` int(11)
,`img` varchar(255)
,`status` char(1)
,`tries` int(11)
,`last_access` datetime
,`creation_date` datetime
,`creator_id` int(11)
,`profile` varchar(255)
,`group_title` varchar(255)
,`group_id` bigint(11)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_zone`
--

CREATE TABLE IF NOT EXISTS `core_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `core_zone`
--

INSERT INTO `core_zone` (`zone_id`, `region_id`, `province_id`, `country_id`, `name`, `short_name`) VALUES
(1, 1, 1, 1, 'Flores', 'Flores'),
(3, 3, 1, 1, 'Floresta', 'Floresta'),
(4, 4, 1, 1, 'Palermo', 'Palermo'),
(5, 5, 6, 1, 'Bernal Oeste', 'Bernal Oeste'),
(6, 6, 6, 1, 'Victoria', 'Victoria'),
(7, 7, 1, 1, 'Parque Avellaneda', 'Parque Avellaneda'),
(9, 9, 6, 1, 'Luis Guillon', 'Luis Guillon'),
(10, 10, 1, 1, 'Parque Patricios', 'Parque Patricios'),
(11, 10, 1, 1, 'Nueva Pompeya', 'Nueva Pompeya'),
(12, 11, 8, 3, '', ''),
(13, 12, 9, 1, 'Parque Avellaneda', ''),
(14, 13, 10, 4, 'Montevideo', 'Montevideo'),
(15, 14, 11, 4, 'Montevideo', ''),
(16, 15, 9, 1, 'Flores', ''),
(17, 16, 1, 1, 'Villa Crespo', 'Villa Crespo'),
(18, 17, 1, 1, 'Núñez', 'Núñez'),
(19, 18, 12, 1, 'Junín', 'Junín'),
(20, 19, 1, 1, 'Caballito', 'Caballito'),
(21, 0, 0, 0, 'San Cristobal', 'San Cristobal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `currency`
--

INSERT INTO `currency` (`currency_id`, `title`, `prefix`) VALUES
(1, 'Dolar', 'U$D'),
(2, 'Peso', '$');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `entity_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency_id` int(11) NOT NULL,
  `total` decimal(20,2) NOT NULL,
  `subtotal` decimal(20,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `exchange_rate` decimal(10,2) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `prefix` int(11) NOT NULL,
  `number` bigint(11) NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `type_id`, `entity_id`, `operation_id`, `entity_name`, `currency_id`, `total`, `subtotal`, `tax`, `exchange_rate`, `issue_date`, `due_date`, `prefix`, `number`, `status`, `created_by`, `creation_date`, `updated_by`, `modification_date`, `organization_id`) VALUES
(1, 0, 6, 2, '', 2, '361.50', '361.50', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 12312, 'I', 8, '2017-06-22 17:01:49', 0, '2017-07-03 18:19:36', 1),
(2, 0, 3, 2, 'A Rodar SRL', 2, '241.76', '199.80', '41.96', '0.00', '0000-00-00', '0000-00-00', 0, 1332, 'P', 8, '2017-06-22 17:35:09', 0, '2017-06-22 17:35:09', 1),
(3, 0, 6, 2, '', 2, '79.53', '79.53', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 1233, 'I', 8, '2017-06-22 20:16:59', 0, '2017-07-03 18:23:44', 1),
(4, 0, 6, 2, '', 2, '46.89', '46.89', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 3123, 'I', 8, '2017-06-22 20:20:41', 0, '2017-07-03 18:24:30', 1),
(5, 0, 4, 2, 'TecnoPeg', 2, '117.90', '97.44', '20.46', '0.00', '0000-00-00', '0000-00-00', 0, 12334, 'I', 8, '2017-07-03 18:30:46', 0, '2017-07-03 18:31:31', 1),
(6, 0, 1, 2, '', 2, '820.80', '820.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 123031, 'I', 8, '2017-07-03 18:35:20', 0, '2017-07-03 18:35:33', 1),
(7, 0, 2, 2, 'Cebrián Hnos SA', 2, '19.02', '15.72', '3.30', '0.00', '0000-00-00', '0000-00-00', 0, 12313, 'I', 8, '2017-07-03 18:38:06', 0, '2017-07-03 18:38:14', 1),
(8, 0, 1, 2, '', 2, '820.80', '820.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 12312, 'I', 8, '2017-07-03 18:42:00', 0, '2017-07-03 18:52:33', 1),
(9, 0, 1, 2, '', 2, '820.80', '820.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 12329, 'I', 8, '2017-07-03 18:54:34', 0, '2017-07-03 18:56:06', 1),
(10, 0, 1, 2, '', 2, '820.80', '820.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 123213, 'I', 8, '2017-07-03 18:56:17', 0, '2017-07-03 18:56:43', 1),
(11, 0, 1, 2, '', 2, '820.80', '820.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 12332, 'I', 8, '2017-07-03 18:59:32', 0, '2017-07-03 19:00:03', 1),
(12, 0, 1, 2, '', 2, '273.60', '273.60', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 11111, 'I', 8, '2017-07-03 19:00:40', 0, '2017-07-03 19:01:47', 1),
(13, 0, 1, 2, '', 2, '273.60', '273.60', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 12123, 'I', 8, '2017-07-03 19:01:21', 0, '2017-07-03 19:06:49', 1),
(14, 0, 1, 2, '', 2, '273.60', '273.60', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 10101, 'I', 8, '2017-07-03 19:01:35', 0, '2017-07-03 19:10:24', 1),
(15, 0, 1, 2, '', 2, '273.60', '273.60', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 90091243, 'I', 8, '2017-07-03 19:06:27', 0, '2017-07-03 19:15:54', 1),
(16, 0, 1, 2, '', 2, '273.60', '273.60', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 11122, 'I', 8, '2017-07-03 19:10:12', 0, '2017-07-03 19:16:09', 1),
(17, 0, 1, 2, '', 2, '273.60', '273.60', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 12211, 'I', 8, '2017-07-03 19:15:34', 0, '2017-07-03 19:16:23', 1),
(18, 0, 1, 2, '', 2, '820.80', '820.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 13212, 'I', 8, '2017-07-03 19:17:48', 0, '2017-07-03 19:22:01', 1),
(19, 0, 1, 2, '', 2, '820.80', '820.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 12323, 'I', 8, '2017-07-03 19:25:47', 0, '2017-07-03 19:28:49', 1),
(20, 0, 1, 2, '', 2, '820.80', '820.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 99009909, 'I', 8, '2017-07-03 19:31:13', 0, '2017-07-03 19:32:08', 1),
(21, 0, 1, 2, '', 2, '820.80', '820.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 3344, 'I', 8, '2017-07-03 19:47:55', 0, '2017-07-03 20:08:22', 1),
(22, 0, 1, 2, '', 2, '364.80', '364.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 5555, 'P', 8, '2017-07-04 03:18:45', 0, '2017-07-04 03:18:45', 1),
(23, 0, 1, 2, '', 2, '364.80', '364.80', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 6666, 'P', 8, '2017-07-04 03:19:19', 0, '2017-07-04 03:19:19', 1),
(24, 0, 1, 2, '', 2, '91.20', '91.20', '0.00', '0.00', '0000-00-00', '0000-00-00', 0, 98765, 'P', 8, '2017-07-04 03:26:12', 0, '2017-07-04 03:26:12', 1),
(25, 1, 4, 2, 'TecnoPeg', 2, '117.90', '97.44', '20.46', '0.00', '0000-00-00', '0000-00-00', 0, 9876009, 'P', 8, '2017-07-05 11:24:22', 0, '2017-07-05 11:24:22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_detail`
--

CREATE TABLE IF NOT EXISTS `invoice_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `invoice_detail`
--

INSERT INTO `invoice_detail` (`detail_id`, `invoice_id`, `product_id`, `description`, `quantity`, `price`, `total`, `creation_date`, `created_by`, `updated_by`, `modification_date`, `organization_id`) VALUES
(1, 1, 4, '9981', 25, '7.23', '361.50', '2017-06-22 17:01:49', 8, 0, '2017-06-22 17:01:49', 1),
(2, 2, 1, '2333', 20, '9.99', '199.80', '2017-06-22 17:35:09', 8, 0, '2017-06-22 17:35:09', 1),
(3, 3, 4, '9981', 5, '7.29', '36.45', '2017-06-22 20:16:59', 8, 0, '2017-06-22 20:16:59', 1),
(4, 3, 4, '9981', 4, '10.77', '43.08', '2017-06-22 20:16:59', 8, 0, '2017-06-22 20:16:59', 1),
(5, 4, 4, '9981', 2, '7.29', '14.58', '2017-06-22 20:20:41', 8, 0, '2017-06-22 20:20:41', 1),
(6, 4, 4, '9981', 3, '10.77', '32.31', '2017-06-22 20:20:41', 8, 0, '2017-06-22 20:20:41', 1),
(7, 5, 3, '6203 DDU', 12, '8.12', '97.44', '2017-07-03 18:30:46', 8, 0, '2017-07-03 18:30:46', 1),
(8, 6, 2, 'NKI 15/16', 90, '9.12', '820.80', '2017-07-03 18:35:20', 8, 0, '2017-07-03 18:35:20', 1),
(9, 7, 3, '6203 DDU', 12, '1.31', '15.72', '2017-07-03 18:38:06', 8, 0, '2017-07-03 18:38:06', 1),
(10, 8, 2, 'NKI 15/16', 90, '9.12', '820.80', '2017-07-03 18:42:00', 8, 0, '2017-07-03 18:42:00', 1),
(11, 9, 2, 'NKI 15/16', 90, '9.12', '820.80', '2017-07-03 18:54:34', 8, 0, '2017-07-03 18:54:34', 1),
(12, 10, 2, 'NKI 15/16', 90, '9.12', '820.80', '2017-07-03 18:56:17', 8, 0, '2017-07-03 18:56:17', 1),
(13, 11, 2, 'NKI 15/16', 90, '9.12', '820.80', '2017-07-03 18:59:32', 8, 0, '2017-07-03 18:59:32', 1),
(14, 12, 2, 'NKI 15/16', 30, '9.12', '273.60', '2017-07-03 19:00:40', 8, 0, '2017-07-03 19:00:40', 1),
(15, 13, 2, 'NKI 15/16', 30, '9.12', '273.60', '2017-07-03 19:01:21', 8, 0, '2017-07-03 19:01:21', 1),
(16, 14, 2, 'NKI 15/16', 30, '9.12', '273.60', '2017-07-03 19:01:35', 8, 0, '2017-07-03 19:01:35', 1),
(17, 15, 2, 'NKI 15/16', 30, '9.12', '273.60', '2017-07-03 19:06:27', 8, 0, '2017-07-03 19:06:27', 1),
(18, 16, 2, 'NKI 15/16', 30, '9.12', '273.60', '2017-07-03 19:10:12', 8, 0, '2017-07-03 19:10:12', 1),
(19, 17, 2, 'NKI 15/16', 30, '9.12', '273.60', '2017-07-03 19:15:34', 8, 0, '2017-07-03 19:15:34', 1),
(20, 18, 2, 'NKI 15/16', 90, '9.12', '820.80', '2017-07-03 19:17:48', 8, 0, '2017-07-03 19:17:48', 1),
(21, 19, 2, 'NKI 15/16', 90, '9.12', '820.80', '2017-07-03 19:25:47', 8, 0, '2017-07-03 19:25:47', 1),
(22, 20, 2, 'NKI 15/16', 90, '9.12', '820.80', '2017-07-03 19:31:13', 8, 0, '2017-07-03 19:31:13', 1),
(23, 21, 2, 'NKI 15/16', 90, '9.12', '820.80', '2017-07-03 19:47:55', 8, 0, '2017-07-03 19:47:55', 1),
(24, 22, 2, 'NKI 15/16', 40, '9.12', '364.80', '2017-07-04 03:18:45', 8, 0, '2017-07-04 03:18:45', 1),
(25, 23, 2, 'NKI 15/16', 40, '9.12', '364.80', '2017-07-04 03:19:19', 8, 0, '2017-07-04 03:19:19', 1),
(26, 24, 2, 'NKI 15/16', 10, '9.12', '91.20', '2017-07-04 03:26:12', 8, 0, '2017-07-04 03:26:12', 1),
(27, 25, 3, '6203 DDU', 12, '8.12', '97.44', '2017-07-05 11:24:22', 8, 0, '2017-07-05 11:24:22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_operation`
--

CREATE TABLE IF NOT EXISTS `invoice_operation` (
  `operation_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operation` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`operation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `invoice_operation`
--

INSERT INTO `invoice_operation` (`operation_id`, `name`, `operation`) VALUES
(1, 'Venta de Mercadería', 'O'),
(2, 'Compra de Mercadería', 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_type`
--

CREATE TABLE IF NOT EXISTS `invoice_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `letter` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(4) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `invoice_type`
--

INSERT INTO `invoice_type` (`type_id`, `name`, `short_name`, `letter`, `code`) VALUES
(1, 'Factura A', 'Fact. A', 'A', 1),
(2, 'Nota de Débito A', 'Nota Deb. A', 'A', 2),
(3, 'Nota de Crédito A', 'Nota Cred. A', 'A', 3),
(4, 'Recibo A', 'Rec. A', 'A', 4),
(5, 'Nota de Venta al Contado A', 'Nota Vent. Cont. A', 'A', 5),
(6, 'Factura B', 'Fact. B', 'B', 6),
(7, 'Nota de Débito B', 'Nota Deb. B', 'B', 7),
(8, 'Nota de Crédito B', 'Nota Cred. B', 'B', 8),
(9, 'Recibo B', 'Rec. B', 'B', 9),
(10, 'Nota de Venta al Contado B', 'Nota Vent. Cont. B', 'B', 10),
(11, 'Factura C', 'Fact. C', 'C', 11),
(12, 'Nota de Débito C', 'Nota Deb. C', 'C', 12),
(13, 'Nota de Crédito C', 'Nota Cred. C', 'C', 13),
(14, 'Documento Aduanero', 'Doc. Aduanero', '', 14),
(15, 'Recibo C', 'Rec. C', 'C', 15),
(16, 'Nota de Venta al Contado C', 'Nota Vent. Cont. C', 'C', 16),
(17, 'Factura de Exportación', 'Fact. Expo.', '', 19),
(18, 'Nota de Débito por Operaciones con el Exterior', 'Nta. Deb. Op. Ext.', '', 20),
(19, 'Nota de Crédito por Operaciones con el Exterior', 'Nta. Cred. Op. Ext.', '', 21),
(20, 'Factura - Permiso Exportación simplificado - Dto.855/97', 'Fact. Perm. Exp. Simp.', '', 22),
(21, 'Comprobante de Compra de Bienes Usados', 'Comp. Compra Bienes Usados', '', 30),
(22, 'Comprobante A del art.3 inc.e) R.G. N° 3419', 'Comp. A', '', 34),
(23, 'Comprobantes B del art.3 inc.e) R.G. N° 3419', 'Comp. B', '', 35),
(24, 'Comprobantes C del art.3 inc.e) R.G. N° 3419', 'Comp. C', '', 36),
(25, 'Remito', 'Rem.', 'R', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
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
  `organization_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `order`
--

INSERT INTO `order` (`order_id`, `company_id`, `agent_id`, `currency_id`, `type`, `total`, `delivery_date`, `actual_delivery_date`, `extra`, `status`, `payment_status`, `delivery_status`, `organization_id`, `creation_date`, `created_by`, `modification_date`, `updated_by`) VALUES
(1, 3, 0, 2, 'N', '199.80', '2017-06-28 00:00:00', '0000-00-00 00:00:00', '', 'A', 'A', 'A', 1, '2017-06-22 16:24:07', 8, '2017-06-22 17:37:42', 8),
(2, 6, 26, 2, 'N', '415.20', '2017-06-30 00:00:00', '0000-00-00 00:00:00', '', 'A', 'A', 'A', 1, '2017-06-22 17:00:58', 8, '2017-06-22 20:16:37', 8),
(3, 4, 0, 2, 'N', '97.44', '2017-07-12 00:00:00', '0000-00-00 00:00:00', '', 'A', 'F', 'P', 1, '2017-07-03 18:30:26', 8, '2017-07-05 11:24:22', 0),
(4, 1, 0, 2, 'N', '820.80', '2017-07-04 00:00:00', '2017-07-03 19:18:03', '', 'F', 'F', 'F', 1, '2017-07-03 18:35:02', 8, '2017-07-04 03:26:12', 8),
(5, 2, 0, 2, 'N', '15.72', '2017-07-28 00:00:00', '0000-00-00 00:00:00', '', 'A', 'P', 'P', 1, '2017-07-03 18:37:51', 8, '2017-07-03 18:40:21', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_item`
--

CREATE TABLE IF NOT EXISTS `order_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `quantity` bigint(15) NOT NULL,
  `quantity_received` bigint(15) NOT NULL,
  `quantity_paid` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `delivery_status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `payment_status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `delivery_date` datetime NOT NULL,
  `actual_delivery_date` datetime NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `order_item`
--

INSERT INTO `order_item` (`item_id`, `order_id`, `company_id`, `product_id`, `currency_id`, `quantity`, `quantity_received`, `quantity_paid`, `price`, `delivery_status`, `payment_status`, `delivery_date`, `actual_delivery_date`, `creation_date`, `created_by`, `organization_id`) VALUES
(9, 1, 3, 1, 2, 20, 6, 20, '9.99', 'A', 'A', '2017-06-28 00:00:00', '0000-00-00 00:00:00', '2017-06-22 16:24:07', 8, 1),
(12, 2, 6, 4, 2, 15, 0, 0, '10.77', 'P', 'P', '2017-06-27 00:00:00', '0000-00-00 00:00:00', '2017-06-22 20:16:38', 8, 1),
(11, 2, 6, 4, 2, 10, 0, 0, '7.29', 'P', 'P', '2017-06-30 00:00:00', '0000-00-00 00:00:00', '2017-06-22 20:16:38', 8, 1),
(10, 2, 6, 4, 2, 25, 25, 0, '7.23', 'F', 'P', '2017-06-27 00:00:00', '0000-00-00 00:00:00', '2017-06-22 17:00:59', 8, 1),
(13, 3, 4, 3, 2, 12, 0, 12, '8.12', 'P', 'F', '2017-07-12 00:00:00', '0000-00-00 00:00:00', '2017-07-03 18:30:26', 8, 1),
(14, 4, 1, 2, 2, 90, 90, 90, '9.12', 'F', 'F', '2017-07-04 00:00:00', '2017-07-03 19:18:03', '2017-07-03 18:35:02', 8, 1),
(15, 5, 2, 3, 2, 12, 0, 0, '1.31', 'P', 'P', '2017-07-28 00:00:00', '0000-00-00 00:00:00', '2017-07-03 18:37:51', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
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
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`product_id`, `organization_id`, `category_id`, `brand_id`, `rack`, `code`, `stock`, `stock_min`, `stock_max`, `size`, `price`, `price_fob`, `price_dispatch`, `dispatch`, `description`, `status`, `modification_date`, `creation_date`, `created_by`, `updated_by`) VALUES
(1, 1, 11, 2, 'A4', '2333', 1103, 15, 60, '122x45', '122.34', '0.00', '0.00', '', 'Descripción: este es un producto de prueba', 'A', '2016-12-13 19:19:36', '2016-12-13 19:19:36', 8, 0),
(2, 1, 28, 1, '2AJ5', 'NKI 15/16', 2621, 10, 100, '14x19x16', '23.00', '0.00', '0.00', '', '', 'A', '2016-12-13 20:17:17', '2016-12-13 20:17:17', 8, 8),
(3, 1, 26, 2, '', '6203 DDU', 346, 0, 0, '', '238.41', '0.00', '0.00', '', '', 'A', '2016-12-14 18:17:30', '2016-12-14 18:17:30', 80, 8),
(4, 1, 17, 3, 'B14', '9981', 130, 100, 1000, '4x4', '44.00', '0.00', '0.00', '', '', 'A', '2017-06-19 15:23:44', '2017-06-19 15:23:44', 8, 0),
(5, 1, 19, 5, 'B14', 'DXU824', 0, 20, 1500, '22x14x105', '512.33', '0.00', '0.00', '', 'Vara metálica rectangular', 'A', '2017-07-19 18:03:43', '2017-07-19 18:03:43', 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_brand`
--

CREATE TABLE IF NOT EXISTS `product_brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `product_brand`
--

INSERT INTO `product_brand` (`brand_id`, `organization_id`, `name`, `country_id`, `status`, `creation_date`) VALUES
(1, 1, 'C&B', 52, 'A', '2016-11-24 13:54:23'),
(2, 1, 'VK', 7, 'A', '2016-11-30 11:55:49'),
(3, 1, 'Tonkien', 81, 'A', '2017-06-17 00:27:34'),
(4, 1, 'RKB', 49, 'A', '2017-06-19 04:42:46'),
(5, 1, 'innova', 0, 'A', '2017-07-17 17:45:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `category_id` int(5) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL,
  `parent_id` int(5) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_title` varchar(25) NOT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_modification` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `product_category`
--

INSERT INTO `product_category` (`category_id`, `organization_id`, `parent_id`, `title`, `short_title`, `status`, `creation_date`, `created_by`, `last_modification`, `updated_by`) VALUES
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
(28, 1, 1, 'Rodamientos de Agujas', '', 'A', '2016-12-01 18:24:08', 81, '0000-00-00 00:00:00', 0),
(29, 1, 0, 'Ale', 'Al', 'I', '2017-06-17 00:33:28', 8, '0000-00-00 00:00:00', 8),
(30, 1, 29, 'Ale2', 'Al2', 'I', '2017-06-19 04:47:31', 8, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `product_image`
--

INSERT INTO `product_image` (`image_id`, `product_id`, `src`, `position`) VALUES
(1, 1, '../../../skin/images/products/02.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation_company_broker`
--

CREATE TABLE IF NOT EXISTS `relation_company_broker` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `broker_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=153 ;

--
-- Volcado de datos para la tabla `relation_company_broker`
--

INSERT INTO `relation_company_broker` (`relation_id`, `company_id`, `branch_id`, `broker_id`, `organization_id`) VALUES
(147, 1, 72, 84, 1),
(146, 1, 71, 83, 1),
(145, 1, 70, 85, 1),
(144, 1, 70, 84, 1),
(143, 1, 70, 83, 1),
(142, 1, 69, 84, 1),
(141, 1, 69, 83, 1),
(152, 4, 74, 85, 1),
(151, 4, 74, 83, 1),
(150, 4, 73, 85, 1),
(149, 4, 73, 84, 1),
(148, 4, 73, 83, 1),
(140, 5, 68, 85, 1),
(139, 5, 67, 84, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation_cuit_tax`
--

CREATE TABLE IF NOT EXISTS `relation_cuit_tax` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `cuit` bigint(15) NOT NULL,
  `percentage` decimal(5,3) NOT NULL,
  `base_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `relation_cuit_tax`
--

INSERT INTO `relation_cuit_tax` (`relation_id`, `tax_id`, `cuit`, `percentage`, `base_amount`) VALUES
(28, 1, 12331231322, '0.000', '0.00'),
(29, 1, 12123123123, '0.000', '0.00'),
(27, 1, 20392392910, '21.000', '0.00'),
(25, 1, 30333444119, '21.000', '0.00'),
(23, 1, 30707152563, '21.000', '0.00'),
(24, 1, 33569655779, '21.000', '0.00'),
(26, 1, 30708842911, '21.000', '0.00'),
(31, 1, 12312312312, '21.000', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation_invoice_order`
--

CREATE TABLE IF NOT EXISTS `relation_invoice_order` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `relation_invoice_order`
--

INSERT INTO `relation_invoice_order` (`relation_id`, `invoice_id`, `order_id`, `amount`) VALUES
(1, 1, 2, '361.50'),
(2, 2, 1, '199.80'),
(3, 3, 2, '79.53'),
(4, 4, 2, '46.89'),
(5, 5, 3, '97.44'),
(6, 6, 4, '820.80'),
(7, 7, 5, '15.72'),
(8, 8, 4, '820.80'),
(9, 9, 4, '820.80'),
(10, 10, 4, '820.80'),
(11, 11, 4, '820.80'),
(12, 12, 4, '273.60'),
(13, 13, 4, '273.60'),
(14, 14, 4, '273.60'),
(15, 15, 4, '273.60'),
(16, 16, 4, '273.60'),
(17, 17, 4, '273.60'),
(18, 18, 4, '820.80'),
(19, 19, 4, '820.80'),
(20, 20, 4, '820.80'),
(21, 21, 4, '820.80'),
(22, 22, 4, '364.80'),
(23, 23, 4, '364.80'),
(24, 24, 4, '91.20'),
(25, 25, 3, '97.44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation_invoice_payment`
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
-- Estructura de tabla para la tabla `relation_invoice_tax`
--

CREATE TABLE IF NOT EXISTS `relation_invoice_tax` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `percentage` decimal(5,3) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `relation_invoice_tax`
--

INSERT INTO `relation_invoice_tax` (`relation_id`, `invoice_id`, `tax_id`, `amount`, `percentage`) VALUES
(1, 2, 1, '41.96', '21.000'),
(2, 5, 1, '20.46', '21.000'),
(3, 7, 1, '3.30', '21.000'),
(4, 25, 1, '20.46', '21.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation_operation_tax`
--

CREATE TABLE IF NOT EXISTS `relation_operation_tax` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `relation_operation_tax`
--

INSERT INTO `relation_operation_tax` (`relation_id`, `operation_id`, `tax_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 1, 4),
(5, 2, 3),
(6, 2, 5),
(7, 1, 6),
(8, 2, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_entrance`
--

CREATE TABLE IF NOT EXISTS `stock_entrance` (
  `entrance_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `quantity` bigint(15) NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`entrance_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `stock_entrance`
--

INSERT INTO `stock_entrance` (`entrance_id`, `order_id`, `company_id`, `quantity`, `creation_date`, `created_by`, `organization_id`) VALUES
(1, 2, 6, 40, '2017-06-22 17:02:10', 8, 1),
(2, 1, 3, 1, '2017-06-22 17:10:01', 8, 1),
(3, 2, 6, 20, '2017-06-22 17:11:15', 8, 1),
(4, 1, 3, 5, '2017-06-22 17:40:45', 8, 1),
(5, 4, 1, 90, '2017-07-03 19:18:03', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_entrance_item`
--

CREATE TABLE IF NOT EXISTS `stock_entrance_item` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `entrance_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` bigint(15) NOT NULL,
  `creation_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `stock_entrance_item`
--

INSERT INTO `stock_entrance_item` (`stock_id`, `entrance_id`, `item_id`, `order_id`, `company_id`, `product_id`, `quantity`, `creation_date`, `created_by`, `organization_id`) VALUES
(1, 1, 2, 2, 6, 4, 40, '2017-06-22 17:02:10', 8, 1),
(2, 2, 1, 1, 3, 1, 1, '2017-06-22 17:10:01', 8, 1),
(3, 3, 8, 2, 6, 4, 10, '2017-06-22 17:11:15', 8, 1),
(4, 3, 7, 2, 6, 4, 10, '2017-06-22 17:11:15', 8, 1),
(5, 4, 9, 1, 3, 1, 5, '2017-06-22 17:40:45', 8, 1),
(6, 5, 14, 4, 1, 2, 90, '2017-07-03 19:18:03', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax`
--

CREATE TABLE IF NOT EXISTS `tax` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `base_amount` decimal(10,2) NOT NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `modification_dated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tax_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tax`
--

INSERT INTO `tax` (`tax_id`, `name`, `type_id`, `base_amount`, `created_by`, `creation_date`, `updated_by`, `modification_dated`) VALUES
(1, 'IVA', 1, '0.00', 0, '0000-00-00 00:00:00', 0, '2017-06-08 20:20:34'),
(2, 'Percepción CABA', 2, '3000.00', 0, '0000-00-00 00:00:00', 0, '2017-06-08 20:20:34'),
(3, 'Retención CABA', 2, '4500.00', 0, '0000-00-00 00:00:00', 0, '2017-06-08 20:22:08'),
(4, 'Percepción Bs. As.', 2, '1500.00', 0, '0000-00-00 00:00:00', 0, '2017-06-08 20:22:08'),
(5, 'Retención Bs. As.', 2, '1400.00', 0, '0000-00-00 00:00:00', 0, '2017-06-08 20:23:08'),
(6, 'Percepción Misiones', 2, '0.00', 0, '0000-00-00 00:00:00', 0, '2017-06-08 20:38:05'),
(7, 'Retención Misiones', 2, '0.00', 0, '0000-00-00 00:00:00', 0, '2017-06-08 20:43:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_iva_type`
--

CREATE TABLE IF NOT EXISTS `tax_iva_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `percentage` decimal(5,3) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=141 ;

--
-- Volcado de datos para la tabla `tax_iva_type`
--

INSERT INTO `tax_iva_type` (`type_id`, `name`, `status`, `percentage`) VALUES
(1, 'IVA Responsable Inscripto', 'A', '21.000'),
(2, 'IVA Responsable No Inscripto', 'A', '21.000'),
(4, 'IVA Sujeto Excento', 'A', '0.000'),
(5, 'Consumidor Final', 'A', '21.000'),
(6, 'Sujeto No Categorizado', 'A', '21.000'),
(7, 'Proveedor de Exterior', 'A', '0.000'),
(8, 'Cliente del Exterior', 'A', '21.000'),
(9, 'IVA Liberado – Ley Nº 19.640', 'A', '0.000'),
(10, 'IVA Responsable Inscripto – Agente de Percepción', 'A', '21.000'),
(11, 'Pequeño Contribuyente Eventual', 'A', '10.500'),
(12, 'Responsable Monotributo', 'A', '0.000'),
(13, 'Monotributista Social', 'A', '0.000'),
(14, 'Pequeño Contribuyente Eventual Social', 'A', '0.000'),
(3, 'IVA No Responsable', 'A', '0.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_type`
--

CREATE TABLE IF NOT EXISTS `tax_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tax_type`
--

INSERT INTO `tax_type` (`type_id`, `name`) VALUES
(1, 'Nacional'),
(2, 'Provincial'),
(3, 'Municipal');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_brand_list`
--
CREATE TABLE IF NOT EXISTS `view_brand_list` (
`brand_id` int(11)
,`product_id` int(11)
,`category_id` int(5)
,`organization_id` int(11)
,`name` varchar(255)
,`code` varchar(255)
,`status` char(1)
,`creation_date` datetime
,`category` varchar(255)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_category_list`
--
CREATE TABLE IF NOT EXISTS `view_category_list` (
`category_id` int(5)
,`organization_id` int(11)
,`parent_id` int(5)
,`title` varchar(255)
,`short_title` varchar(25)
,`status` char(1)
,`creation_date` datetime
,`created_by` int(11)
,`updated_by` int(11)
,`last_modification` datetime
,`parent` varchar(255)
,`parent_short` varchar(25)
,`code` varchar(255)
,`brand_id` int(11)
,`brand` varchar(255)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_company_list`
--
CREATE TABLE IF NOT EXISTS `view_company_list` (
`company_id` int(11)
,`branch_id` int(11)
,`broker_id` int(11)
,`type_id` int(11)
,`organization_id` int(11)
,`name` varchar(255)
,`type` varchar(255)
,`cuit` bigint(15)
,`iva_id` int(5)
,`iva` varchar(255)
,`iibb` varchar(255)
,`international` char(1)
,`international_text` varchar(10)
,`vat` varchar(255)
,`customer` char(1)
,`provider` char(1)
,`relation_text` varchar(19)
,`logo` varchar(255)
,`status` char(1)
,`balance` decimal(30,2)
,`branch` varchar(150)
,`address` varchar(255)
,`postal_code` varchar(150)
,`phone` varchar(150)
,`email` varchar(255)
,`website` varchar(255)
,`fax` varchar(150)
,`main_branch` char(1)
,`country_id` int(11)
,`country` varchar(255)
,`country_short` varchar(50)
,`province_id` int(11)
,`province` varchar(255)
,`province_short` varchar(50)
,`region_id` int(11)
,`region` varchar(255)
,`region_short` varchar(50)
,`zone_id` int(11)
,`zone` varchar(255)
,`zone_short` varchar(50)
,`lat` decimal(18,16)
,`lng` decimal(18,16)
,`broker` varchar(511)
,`broker_email` varchar(255)
,`broker_img` varchar(255)
,`creation_date` datetime
,`last_update` timestamp
,`created_by` int(11)
,`updated_by` int(11)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_cuit_operation_tax`
--
CREATE TABLE IF NOT EXISTS `view_cuit_operation_tax` (
`operation_id` int(11)
,`tax_id` int(11)
,`operation_name` varchar(255)
,`cuit` bigint(15)
,`name` varchar(255)
,`percentage` decimal(5,3)
,`base_amount` decimal(10,2)
,`operation` char(1)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_product_list`
--
CREATE TABLE IF NOT EXISTS `view_product_list` (
`product_id` int(11)
,`organization_id` int(11)
,`category_id` int(11)
,`brand_id` int(11)
,`rack` varchar(255)
,`code` varchar(255)
,`stock` int(11)
,`stock_min` int(11)
,`stock_max` int(11)
,`size` varchar(255)
,`price` decimal(10,2)
,`price_fob` decimal(10,2)
,`price_dispatch` decimal(10,2)
,`dispatch` varchar(255)
,`description` text
,`status` char(1)
,`creation_date` datetime
,`modification_date` timestamp
,`created_by` int(11)
,`updated_by` int(11)
,`category` varchar(255)
,`brand` varchar(255)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_provider_list`
--
CREATE TABLE IF NOT EXISTS `view_provider_list` (
`company_id` int(11)
,`branch_id` int(11)
,`broker_id` int(11)
,`type_id` int(11)
,`organization_id` int(11)
,`name` varchar(255)
,`type` varchar(255)
,`cuit` bigint(15)
,`iva_id` int(5)
,`iva` varchar(255)
,`iibb` varchar(255)
,`international` char(1)
,`international_text` varchar(10)
,`vat` varchar(255)
,`customer` char(1)
,`provider` char(1)
,`relation_text` varchar(19)
,`logo` varchar(255)
,`status` char(1)
,`balance` decimal(30,2)
,`branch` varchar(150)
,`address` varchar(255)
,`postal_code` varchar(150)
,`phone` varchar(150)
,`email` varchar(255)
,`website` varchar(255)
,`fax` varchar(150)
,`main_branch` char(1)
,`country_id` int(11)
,`country` varchar(255)
,`country_short` varchar(50)
,`province_id` int(11)
,`province` varchar(255)
,`province_short` varchar(50)
,`region_id` int(11)
,`region` varchar(255)
,`region_short` varchar(50)
,`zone_id` int(11)
,`zone` varchar(255)
,`zone_short` varchar(50)
,`lat` decimal(18,16)
,`lng` decimal(18,16)
,`broker` varchar(511)
,`broker_email` varchar(255)
,`broker_img` varchar(255)
,`creation_date` datetime
,`last_update` timestamp
,`created_by` int(11)
,`updated_by` int(11)
);
-- --------------------------------------------------------

--
-- Estructura para la vista `core_view_group_list`
--
DROP TABLE IF EXISTS `core_view_group_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `core_view_group_list` AS select `a`.`group_id` AS `group_id`,`a`.`title` AS `title`,`a`.`organization_id` AS `organization_id`,`a`.`image` AS `image`,`a`.`status` AS `status`,`a`.`created_by` AS `created_by`,`a`.`creation_date` AS `creation_date`,`b`.`profile_id` AS `profile_id`,`c`.`title` AS `profile`,`a`.`last_modification` AS `last_modification` from ((`core_group` `a` join `core_relation_group_profile` `b` on((`a`.`group_id` = `b`.`group_id`))) join `core_profile` `c` on((`b`.`profile_id` = `c`.`profile_id`))) group by `a`.`group_id` order by `a`.`title`;

-- --------------------------------------------------------

--
-- Estructura para la vista `core_view_menu_list`
--
DROP TABLE IF EXISTS `core_view_menu_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `core_view_menu_list` AS select `a`.`menu_id` AS `menu_id`,`a`.`parent_id` AS `parent_id`,`a`.`icon` AS `icon`,`a`.`title` AS `title`,`a`.`link` AS `link`,if((`a`.`link` = '#'),'Sin link',substr(`a`.`link`,10)) AS `link_text`,`a`.`position` AS `position`,`a`.`public` AS `public`,if((`a`.`public` = 'Y'),'Público','Privado') AS `public_text`,`a`.`view_status` AS `view_status`,if((`a`.`view_status` = 'O'),'Oculto','Visible') AS `view_status_text`,`a`.`status` AS `status`,`a`.`organization_id` AS `organization_id`,`d`.`title` AS `profile`,`e`.`title` AS `group_title`,`b`.`profile_id` AS `profile_id`,`c`.`group_id` AS `group_id` from ((((`core_menu` `a` left join `core_relation_menu_profile` `b` on((`a`.`menu_id` = `b`.`menu_id`))) left join `core_relation_menu_group` `c` on((`a`.`menu_id` = `c`.`menu_id`))) left join `core_profile` `d` on((`d`.`profile_id` = `b`.`profile_id`))) left join `core_group` `e` on((`e`.`group_id` = `c`.`group_id`))) where (1 = 1) group by `a`.`menu_id` order by `a`.`title`;

-- --------------------------------------------------------

--
-- Estructura para la vista `core_view_profile_list`
--
DROP TABLE IF EXISTS `core_view_profile_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `core_view_profile_list` AS select `a`.`profile_id` AS `profile_id`,`a`.`organization_id` AS `organization_id`,`a`.`title` AS `title`,`a`.`status` AS `status`,`a`.`image` AS `image`,`a`.`creation_date` AS `creation_date`,`a`.`created_by` AS `created_by`,`a`.`last_modification` AS `last_modification`,`b`.`group_id` AS `group_id`,`c`.`title` AS `group_title` from ((`core_profile` `a` join `core_relation_group_profile` `b` on((`a`.`profile_id` = `b`.`profile_id`))) join `core_group` `c` on((`b`.`group_id` = `c`.`group_id`))) group by `a`.`profile_id` order by `a`.`title`;

-- --------------------------------------------------------

--
-- Estructura para la vista `core_view_user_list`
--
DROP TABLE IF EXISTS `core_view_user_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `core_view_user_list` AS select `a`.`user_id` AS `user_id`,`a`.`organization_id` AS `organization_id`,`a`.`user` AS `user`,`a`.`password` AS `password`,`a`.`first_name` AS `first_name`,`a`.`last_name` AS `last_name`,concat(`a`.`first_name`,' ',`a`.`last_name`) AS `full_name`,concat(`a`.`first_name`,' ',`a`.`last_name`,' (',`a`.`user`,')') AS `full_user_name`,`a`.`email` AS `email`,`a`.`profile_id` AS `profile_id`,`a`.`img` AS `img`,`a`.`status` AS `status`,`a`.`tries` AS `tries`,`a`.`last_access` AS `last_access`,`a`.`creation_date` AS `creation_date`,`a`.`creator_id` AS `creator_id`,`p`.`title` AS `profile`,coalesce(`g`.`title`,'') AS `group_title`,coalesce(`g`.`group_id`,0) AS `group_id` from (((`core_user` `a` left join `core_relation_user_group` `r` on((`r`.`user_id` = `a`.`user_id`))) left join `core_group` `g` on((`r`.`group_id` = `g`.`group_id`))) left join `core_profile` `p` on((`p`.`profile_id` = `a`.`profile_id`))) where (1 = 1) group by `a`.`user_id` order by `a`.`first_name`;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_brand_list`
--
DROP TABLE IF EXISTS `view_brand_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `view_brand_list` AS select `a`.`brand_id` AS `brand_id`,`b`.`product_id` AS `product_id`,`c`.`category_id` AS `category_id`,`a`.`organization_id` AS `organization_id`,`a`.`name` AS `name`,`b`.`code` AS `code`,`a`.`status` AS `status`,`a`.`creation_date` AS `creation_date`,`c`.`title` AS `category` from ((`product_brand` `a` left join `product` `b` on((`b`.`brand_id` = `a`.`brand_id`))) left join `product_category` `c` on((`c`.`category_id` = `b`.`category_id`))) order by `a`.`name`;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_category_list`
--
DROP TABLE IF EXISTS `view_category_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `view_category_list` AS select `a`.`category_id` AS `category_id`,`a`.`organization_id` AS `organization_id`,`a`.`parent_id` AS `parent_id`,`a`.`title` AS `title`,`a`.`short_title` AS `short_title`,`a`.`status` AS `status`,`a`.`creation_date` AS `creation_date`,`a`.`created_by` AS `created_by`,`a`.`updated_by` AS `updated_by`,`a`.`last_modification` AS `last_modification`,coalesce(`b`.`title`,'Sin Padre') AS `parent`,coalesce(`b`.`short_title`,'Sin Padre') AS `parent_short`,`c`.`code` AS `code`,`c`.`brand_id` AS `brand_id`,`d`.`name` AS `brand` from (((`product_category` `a` left join `product_category` `b` on((`a`.`parent_id` = `b`.`category_id`))) left join `product` `c` on((`c`.`category_id` = `a`.`category_id`))) left join `product_brand` `d` on((`c`.`brand_id` = `d`.`brand_id`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `view_company_list`
--
DROP TABLE IF EXISTS `view_company_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `view_company_list` AS select `a`.`company_id` AS `company_id`,`b`.`branch_id` AS `branch_id`,`e`.`broker_id` AS `broker_id`,`a`.`type_id` AS `type_id`,`a`.`organization_id` AS `organization_id`,`a`.`name` AS `name`,`d`.`name` AS `type`,`a`.`cuit` AS `cuit`,`a`.`iva_id` AS `iva_id`,`t`.`name` AS `iva`,`a`.`iibb` AS `iibb`,`a`.`international` AS `international`,if((`a`.`international` = 'N'),'Nacional','Extranjero') AS `international_text`,`a`.`vat` AS `vat`,`a`.`customer` AS `customer`,`a`.`provider` AS `provider`,if(((`a`.`customer` = 'Y') and (`a`.`provider` = 'Y')),'Cliente y Proveedor',if((`a`.`customer` = 'Y'),'Cliente','Proveedor')) AS `relation_text`,`a`.`logo` AS `logo`,`a`.`status` AS `status`,`a`.`balance` AS `balance`,`b`.`name` AS `branch`,`b`.`address` AS `address`,`b`.`postal_code` AS `postal_code`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`website` AS `website`,`b`.`fax` AS `fax`,`b`.`main_branch` AS `main_branch`,`b`.`country_id` AS `country_id`,`g`.`name` AS `country`,`g`.`short_name` AS `country_short`,`b`.`province_id` AS `province_id`,`h`.`name` AS `province`,`h`.`short_name` AS `province_short`,`b`.`region_id` AS `region_id`,`i`.`name` AS `region`,`i`.`short_name` AS `region_short`,`b`.`zone_id` AS `zone_id`,`j`.`name` AS `zone`,`j`.`short_name` AS `zone_short`,`b`.`lat` AS `lat`,`b`.`lng` AS `lng`,coalesce(`f`.`full_name`,'Sin Corredor') AS `broker`,coalesce(`f`.`email`,'') AS `broker_email`,coalesce(`f`.`img`,'') AS `broker_img`,`a`.`creation_date` AS `creation_date`,`a`.`last_update` AS `last_update`,`a`.`created_by` AS `created_by`,`a`.`updated_by` AS `updated_by` from (((((((((`company` `a` join `tax_iva_type` `t` on((`t`.`type_id` = `a`.`iva_id`))) join `company_type` `d` on((`d`.`type_id` = `a`.`type_id`))) join `company_branch` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `relation_company_broker` `e` on((`e`.`branch_id` = `b`.`branch_id`))) left join `core_view_user_list` `f` on((`f`.`user_id` = `e`.`broker_id`))) left join `core_country` `g` on((`g`.`country_id` = `b`.`country_id`))) left join `core_province` `h` on((`h`.`province_id` = `b`.`province_id`))) left join `core_region` `i` on((`i`.`region_id` = `b`.`region_id`))) left join `core_zone` `j` on((`j`.`zone_id` = `b`.`zone_id`))) where (1 = 1) order by `a`.`name`;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_cuit_operation_tax`
--
DROP TABLE IF EXISTS `view_cuit_operation_tax`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `view_cuit_operation_tax` AS select `c`.`operation_id` AS `operation_id`,`b`.`tax_id` AS `tax_id`,`d`.`name` AS `operation_name`,`a`.`cuit` AS `cuit`,`b`.`name` AS `name`,`a`.`percentage` AS `percentage`,`b`.`base_amount` AS `base_amount`,`d`.`operation` AS `operation` from (((`relation_cuit_tax` `a` join `tax` `b` on((`a`.`tax_id` = `b`.`tax_id`))) join `relation_operation_tax` `c` on((`b`.`tax_id` = `c`.`tax_id`))) join `invoice_operation` `d` on((`c`.`operation_id` = `d`.`operation_id`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `view_product_list`
--
DROP TABLE IF EXISTS `view_product_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `view_product_list` AS select `a`.`product_id` AS `product_id`,`a`.`organization_id` AS `organization_id`,`a`.`category_id` AS `category_id`,`a`.`brand_id` AS `brand_id`,`a`.`rack` AS `rack`,`a`.`code` AS `code`,`a`.`stock` AS `stock`,`a`.`stock_min` AS `stock_min`,`a`.`stock_max` AS `stock_max`,`a`.`size` AS `size`,`a`.`price` AS `price`,`a`.`price_fob` AS `price_fob`,`a`.`price_dispatch` AS `price_dispatch`,`a`.`dispatch` AS `dispatch`,`a`.`description` AS `description`,`a`.`status` AS `status`,`a`.`creation_date` AS `creation_date`,`a`.`modification_date` AS `modification_date`,`a`.`created_by` AS `created_by`,`a`.`updated_by` AS `updated_by`,`b`.`title` AS `category`,`c`.`name` AS `brand` from ((`product` `a` join `product_category` `b` on((`a`.`category_id` = `b`.`category_id`))) join `product_brand` `c` on((`a`.`brand_id` = `c`.`brand_id`))) order by `a`.`code`;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_provider_list`
--
DROP TABLE IF EXISTS `view_provider_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`r0000188`@`%` SQL SECURITY DEFINER VIEW `view_provider_list` AS select `a`.`company_id` AS `company_id`,`b`.`branch_id` AS `branch_id`,`e`.`broker_id` AS `broker_id`,`a`.`type_id` AS `type_id`,`a`.`organization_id` AS `organization_id`,`a`.`name` AS `name`,`d`.`name` AS `type`,`a`.`cuit` AS `cuit`,`a`.`iva_id` AS `iva_id`,`t`.`name` AS `iva`,`a`.`iibb` AS `iibb`,`a`.`international` AS `international`,if((`a`.`international` = 'N'),'Nacional','Extranjero') AS `international_text`,`a`.`vat` AS `vat`,`a`.`customer` AS `customer`,`a`.`provider` AS `provider`,if(((`a`.`customer` = 'Y') and (`a`.`provider` = 'Y')),'Cliente y Proveedor',if((`a`.`customer` = 'Y'),'Cliente','Proveedor')) AS `relation_text`,`a`.`logo` AS `logo`,`a`.`status` AS `status`,`a`.`balance` AS `balance`,`b`.`name` AS `branch`,`b`.`address` AS `address`,`b`.`postal_code` AS `postal_code`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`website` AS `website`,`b`.`fax` AS `fax`,`b`.`main_branch` AS `main_branch`,`b`.`country_id` AS `country_id`,`g`.`name` AS `country`,`g`.`short_name` AS `country_short`,`b`.`province_id` AS `province_id`,`h`.`name` AS `province`,`h`.`short_name` AS `province_short`,`b`.`region_id` AS `region_id`,`i`.`name` AS `region`,`i`.`short_name` AS `region_short`,`b`.`zone_id` AS `zone_id`,`j`.`name` AS `zone`,`j`.`short_name` AS `zone_short`,`b`.`lat` AS `lat`,`b`.`lng` AS `lng`,coalesce(`f`.`full_name`,'Sin Corredor') AS `broker`,coalesce(`f`.`email`,'') AS `broker_email`,coalesce(`f`.`img`,'') AS `broker_img`,`a`.`creation_date` AS `creation_date`,`a`.`last_update` AS `last_update`,`a`.`created_by` AS `created_by`,`a`.`updated_by` AS `updated_by` from (((((((((`company` `a` join `tax_iva_type` `t` on((`t`.`type_id` = `a`.`iva_id`))) join `company_type` `d` on((`d`.`type_id` = `a`.`type_id`))) join `company_branch` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `relation_company_broker` `e` on((`e`.`branch_id` = `b`.`branch_id`))) left join `core_view_user_list` `f` on((`f`.`user_id` = `e`.`broker_id`))) left join `core_country` `g` on((`g`.`country_id` = `b`.`country_id`))) left join `core_province` `h` on((`h`.`province_id` = `b`.`province_id`))) left join `core_region` `i` on((`i`.`region_id` = `b`.`region_id`))) left join `core_zone` `j` on((`j`.`zone_id` = `b`.`zone_id`))) where (`a`.`provider` = 'Y') order by `a`.`name`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
