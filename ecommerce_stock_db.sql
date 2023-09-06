-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2023 at 08:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_stock_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Hardware'),
(2, 'Software'),
(3, 'memoryunit'),
(4, 'Input unit'),
(5, 'output unit');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `address`) VALUES
(2, 'riya', 'tiwari', 'riya@gmail.com', 99988878, 'mumbai'),
(3, 'rohit', 'singh', 'rohit@gmail.com', 99988822, 'jammu'),
(4, 'mohit', 'singh', 'mohit@gmail.com', 99988833, 'madhya pradesh'),
(5, 'sagar', 'gupta', 'sagar@gmail.com', 99988844, 'uttarpradesh'),
(6, 'john', 'doe', 'john@gmail.com', 99988855, 'kerala'),
(7, 'mario', 'mark', 'mario@gmail.com', 99988866, 'tamilnadu'),
(8, 'james', 'joe', 'james@gmail.com', 99988877, 'bengaluru'),
(9, 'dev', 'tiwari', 'dev@gmail.com', 99988888, 'rajasthan'),
(10, 'sachin', 'dubey', 'sachin@gmail.com', 99988899, 'maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `description`, `price`, `category_id`, `stock_quantity`) VALUES
(67, 'motherboard', 'item1', 2.345, 1, 2300),
(68, 'keyboard', 'item2', 5.678, 2, 2500),
(69, 'mouse', 'item3', 1.345, 3, 3500),
(72, 'drive', 'item4', 4.678, 4, 3900),
(73, 'CD Drive', 'item5', 3.345, 5, 4000),
(79, 'Printer', 'item6', 6.678, 5, 4200),
(80, 'zipdrive', 'item7', 7.345, 3, 4700),
(81, 'monitor', 'item8', 8.678, 1, 3477),
(82, 'speaker', 'item9', 9.345, 2, 5300),
(83, 'DVDdrive', 'item10', 10.678, 5, 5700),
(84, 'Refill cartridge', 'item11', 11.345, 4, 5900),
(85, 'cpu', 'item12', 12.678, 5, 6000),
(86, 'memory', 'item13', 13.345, 3, 6200),
(87, 'RAM', 'item14', 14.678, 4, 6500),
(88, 'rom', 'item15', 15.345, 3, 6700),
(89, 'laptop', 'item16', 16.678, 1, 6900),
(90, 'desktop', 'item17', 17.345, 1, 70000),
(91, 'tab', 'item18', 18.678, 2, 78000),
(92, 'soundcard', 'item19', 19.345, 4, 88000),
(93, 'videocard', 'item20', 20.678, 1, 98000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `total_amount`) VALUES
(91, 2, '2020-09-09', 20),
(92, 4, '2020-09-12', 21),
(93, 6, '2020-09-20', 22),
(94, 7, '2020-09-25', 23),
(95, 3, '2020-09-30', 24),
(97, 8, '2020-10-15', 26),
(98, 9, '2020-10-20', 27),
(109, 10, '2020-10-25', 28),
(167, 2, '2020-11-06', 30),
(168, 3, '2020-11-11', 31),
(169, 4, '2020-11-14', 32),
(170, 8, '2020-11-19', 33),
(171, 8, '2020-11-24', 34),
(172, 9, '2020-11-29', 35),
(173, 9, '2020-12-05', 36),
(174, 7, '2020-12-10', 37),
(175, 7, '2020-12-15', 38),
(176, 5, '2020-12-18', 39),
(177, 5, '2020-12-19', 40),
(179, 9, '2020-12-22', 42),
(180, 4, '2020-12-25', 43),
(181, 8, '2020-12-26', 44),
(182, 7, '2020-12-30', 45),
(183, 4, '2021-01-01', 46),
(184, 5, '2021-01-05', 47),
(185, 6, '2021-01-10', 48),
(186, 3, '2021-01-15', 49);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
