-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para comercializadora_la_45
CREATE DATABASE IF NOT EXISTS `comercializadora_la_45` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `comercializadora_la_45`;

-- Volcando estructura para tabla comercializadora_la_45.carrier
CREATE TABLE IF NOT EXISTS `carrier` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `carrier` varchar(50) NOT NULL,
  `carrier_car` varchar(50) NOT NULL,
  `carrier_driver` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla comercializadora_la_45.carrier: ~3 rows (aproximadamente)
DELETE FROM `carrier`;
INSERT INTO `carrier` (`id`, `carrier`, `carrier_car`, `carrier_driver`) VALUES
	(1, 'servientrega', 'foton', 'jhon jaramillo'),
	(2, 'speedway', 'chevrolet', 'Carlos Andres Cardona'),
	(3, 'Usa postal', 'renault', 'Santiago rúa');

-- Volcando estructura para tabla comercializadora_la_45.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `products` varchar(50) NOT NULL,
  `cost` float(12,2) NOT NULL,
  `product_measurement` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla comercializadora_la_45.products: ~3 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `products`, `cost`, `product_measurement`) VALUES
	(1, 'Old par', 75000.00, '1500ml'),
	(2, 'Jose cuervo', 95000.00, '2800ml'),
	(3, 'Buchanans', 120000.00, '1000ml');

-- Volcando estructura para tabla comercializadora_la_45.providers
CREATE TABLE IF NOT EXISTS `providers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `providers` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla comercializadora_la_45.providers: ~3 rows (aproximadamente)
DELETE FROM `providers`;
INSERT INTO `providers` (`id`, `providers`) VALUES
	(1, 'G&L Ron'),
	(2, 'Licores NEM'),
	(3, 'Licores Bianco');

-- Volcando estructura para tabla comercializadora_la_45.purshases
CREATE TABLE IF NOT EXISTS `purshases` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `product_cost` float(12,2) NOT NULL,
  `carrier_cost` float(12,2) NOT NULL,
  `amount` mediumint(9) NOT NULL,
  `purshase_date` datetime NOT NULL,
  `providers_id` smallint(6) NOT NULL DEFAULT 0,
  `products_id` smallint(6) NOT NULL DEFAULT 0,
  `carrier_id` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla comercializadora_la_45.purshases: ~3 rows (aproximadamente)
DELETE FROM `purshases`;
INSERT INTO `purshases` (`id`, `product_cost`, `carrier_cost`, `amount`, `purshase_date`, `providers_id`, `products_id`, `carrier_id`) VALUES
	(1, 2800000.00, 1500000.00, 3, '2001-02-06 12:20:00', 2, 1, 3),
	(2, 3000000.00, 1800000.00, 2, '2022-06-10 18:47:26', 1, 2, 1),
	(3, 2500000.00, 2000000.00, 4, '2015-09-12 22:30:00', 3, 3, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
