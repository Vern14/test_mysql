-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2015 at 01:48 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturer_id` int(255) NOT NULL DEFAULT '0',
  `manufacturer_name` varchar(255) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_name`) VALUES
(101, 'Nissan'),
(102, 'Honda'),
(103, 'Subaru'),
(104, 'Honda'),
(105, 'Subaru'),
(106, 'Nissan'),
(107, 'Ford'),
(108, 'Mazda'),
(109, 'Ford'),
(110, 'Toyota'),
(111, 'Toyota'),
(112, 'Mazda'),
(113, 'Jeep'),
(114, 'Honda'),
(115, 'BMW'),
(116, 'Toyota'),
(117, 'Honda'),
(118, 'Honda'),
(119, 'Ford'),
(120, 'Ford'),
(121, 'Acura'),
(122, 'Hyundai'),
(123, 'Ram'),
(124, 'Ford'),
(125, 'Toyota'),
(126, 'Lexus'),
(127, 'Jeep'),
(128, 'Audi'),
(129, 'Toyota'),
(130, 'Mercedez'),
(131, 'Mazda'),
(132, 'Jeep'),
(133, 'Nissan'),
(134, 'Ford'),
(135, 'Acura'),
(136, 'Honda'),
(137, 'Chevrolet'),
(138, 'Volkswagen'),
(139, 'Subaru'),
(140, 'Toyota'),
(141, 'Subaru'),
(142, 'Nissan'),
(143, 'Chevrolet'),
(144, 'Chevrolet'),
(145, 'Audi'),
(146, 'Honda'),
(147, 'Volkswagen'),
(148, 'BMW'),
(149, 'Volkswagen'),
(150, 'Hyundai');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(255) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(500) NOT NULL,
  `manufacturer_id` int(255) NOT NULL,
  `product_date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `manufacturer_id`, `product_date`) VALUES
(1, 'Nissan Pathfinder', 101, '2015-01-07 00:00:00'),
(2, 'Honda CR-V', 102, '2014-12-01 00:00:00'),
(3, 'Subaru Outback', 103, '2014-11-25 00:00:00'),
(4, 'Honda Accord', 104, '2015-01-30 00:00:00'),
(5, 'Subaru Forester', 105, '2015-03-10 00:00:00'),
(6, 'Nissan Altima', 106, '2015-04-19 00:00:00'),
(7, 'Ford F-150', 107, '2015-01-31 00:00:00'),
(8, 'Mazda CX-5', 108, '2014-09-15 00:00:00'),
(9, 'Ford Mustang', 109, '2014-06-16 00:00:00'),
(10, 'Toyota Highlander', 110, '2015-01-04 00:00:00'),
(11, 'Toyota Camry', 111, '2015-02-09 00:00:00'),
(12, 'Mazda MAZDA3', 112, '2015-02-18 00:00:00'),
(13, 'Jeep Grand Cherokee', 113, '2015-03-16 00:00:00'),
(14, 'Honda HR-V', 114, '2015-05-21 00:00:00'),
(15, 'BMW 3 Series', 115, '2015-06-25 00:00:00'),
(16, 'Toyota RAV4', 116, '2015-07-14 00:00:00'),
(17, 'Honda Civic', 117, '2015-07-22 00:00:00'),
(18, 'Honda Pilot', 118, '2015-09-08 00:00:00'),
(19, 'Ford Escape', 119, '2015-08-20 00:00:00'),
(20, 'Ford Explorer', 120, '2015-05-19 00:00:00'),
(21, 'Acura TLX ', 121, '2015-01-08 16:35:25'),
(22, 'Hyundai Sonata', 122, '2014-09-22 00:00:00'),
(23, 'Ram 1500', 123, '2014-02-10 00:00:00'),
(24, 'Ford Edge', 124, '2014-01-14 00:00:00'),
(25, 'Toyota Tacoma', 125, '2013-11-19 00:00:00'),
(26, 'Lexus RX 350', 126, '2016-01-12 00:00:00'),
(27, 'Jeep Cherokee', 127, '2016-05-12 00:00:00'),
(28, 'Audi Q5', 128, '2015-02-20 00:00:00'),
(29, 'Toyota Corolla', 129, '2016-06-17 00:00:00'),
(30, 'Mercedes-Benz C-Class', 130, '2016-03-22 00:00:00'),
(31, 'Mazda MAZDA6', 131, '2017-03-17 00:00:00'),
(32, 'Jeep Wrangler', 132, '2016-08-30 00:00:00'),
(33, 'Nissan Rogue', 133, '2012-04-24 00:00:00'),
(34, 'Ford Fusion', 134, '2013-12-22 00:00:00'),
(35, 'Acura MDX', 135, '2016-08-18 00:00:00'),
(36, 'Honda Odyssey', 136, '2015-07-31 00:00:00'),
(37, 'Chevrolet Colorado', 137, '2017-04-19 00:00:00'),
(38, 'Volkswagen Jetta', 138, '2017-06-17 00:00:00'),
(39, 'Subaru Legacy', 139, '2015-05-31 00:00:00'),
(40, 'Toyota Sienna', 140, '2018-03-22 00:00:00'),
(41, 'Subaru XV Crosstrek', 141, '2015-01-01 00:00:00'),
(42, 'Nissan Murano', 142, '2015-02-26 00:00:00'),
(43, 'Ford Focus', 143, '2015-05-30 00:00:00'),
(44, 'Chevrolet Silverado 1500', 144, '2015-04-25 00:00:00'),
(45, 'Audi A3', 145, '2015-05-31 00:00:00'),
(46, 'Honda Fit', 146, '2015-06-22 00:00:00'),
(47, 'Volkswagen Golf', 147, '2015-08-09 00:00:00'),
(48, 'BMW X5', 148, '2015-08-04 00:00:00'),
(49, 'Volkswagen Passat', 149, '2014-04-16 00:00:00'),
(50, 'Hyundai Elantra', 150, '2013-11-15 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
