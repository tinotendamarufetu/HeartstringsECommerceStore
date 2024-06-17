-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 08:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heartstrings_apparel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'Tinotenda', 'Muchenje', 'tino', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `user_id`, `product_name`, `unit_price`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(37, 11, 3, 'Anonaka', 123.00, 1, 'Switches.png', '2024-04-26 17:48:37', '2024-04-26 17:48:37'),
(38, 12, 3, 'nhasi', 123.00, 1, 'm3.1.png', '2024-04-26 17:48:39', '2024-04-26 17:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `status`) VALUES
(1, 'BROWN', 1),
(4, 'LacksED', 1),
(5, 'food', 1),
(6, 'mazepe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'guest', 'guest', 'guest', 'guest'),
(2, 'guest', 'guest', 'guest', 'guest'),
(4, 'hureguest', 'guest@hure.com', 'guest@hure', 'guest hure'),
(5, 'hureguest', 'guest@hure.com', 'guest@hure', 'guest hure'),
(6, 'hure', 'hure', 'mahure', 'mahure aya siyanai nawo');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `address`, `city`, `state`, `zipcode`, `phone`, `email`, `password`, `status`) VALUES
(2, 'Tinotenda', 'Muchenje', '828 Stoneridge Park', 'Harare', 'New Jersey', '07109', '0771369637', 'tinotendamarufetu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(3, 'Tinotenda', 'Muchenje', '828 Stoneridge Park', 'Harare -> Harare : HRE', 'New Jersey', '07109', '0771369637', 'user@user.com', '$2y$10$WHlzNxtQQ8BaYZeSbh5Ycum4jQbnCQsMhNToXCiLTTGkAkpUUG5T.', 1),
(5, 'Tawonga', 'Muchenje', '828 Stoneridge Park', 'Harare -> Harare : HRE', 'New Jersey', '07109', '0771369637', 'tawonga@tawonga', '$2y$10$zo0YFtUOcX.fLF1ml3UHiuViLyKellxKodj2.R750wCZb3KOoZYpK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `total_price`, `created_at`, `status`, `name`, `email`, `phone`, `address`, `state`, `zipcode`) VALUES
(6, 3, 1357.00, '2024-04-26 13:20:32', 0, '', '', '', '', '', ''),
(7, 5, 1111.00, '2024-04-26 13:22:01', 0, '', '', '', '', '', ''),
(8, 5, 123321.00, '2024-04-26 13:40:02', 0, '', '', '', '', '', ''),
(9, 5, 111100.00, '2024-04-26 13:41:18', 0, '', '', '', '', '', ''),
(10, 5, 3353415.00, '2024-04-26 13:42:39', 1, '', '', '', '', '', ''),
(11, 5, 246.00, '2024-04-26 14:16:21', 0, '', '', '', '', '', ''),
(12, 5, 246.00, '2024-04-26 14:17:46', 0, '', '', '', '', '', ''),
(13, 5, 246.00, '2024-04-26 14:20:35', 1, '', '', '', '', '', ''),
(14, 3, 1357.00, '2024-04-26 16:26:16', 0, '', '', '', '', '', ''),
(15, 3, 123.00, '2024-04-26 16:58:43', 0, 'tanaka', 'tanaka', 'tanaka', 'tanaka', 'tanaka', 'tanaka'),
(16, 3, 1111.00, '2024-04-26 17:06:31', 0, 'TREK', 'TERK', 'THD', 'UIEU', 'E898', 'HJDHDJ'),
(17, 3, 99999999.99, '2024-04-26 17:08:48', 0, 'hello', 'hello', 'hello', 'hello', 'hello', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `product_name`, `unit_price`, `quantity`) VALUES
(4, 6, 12, 'nhasi', 123.00, 1),
(5, 6, 11, 'Anonaka', 123.00, 1),
(6, 6, 10, 'Bread Updated', 1111.00, 1),
(7, 7, 10, 'Bread Updated', 1111.00, 1),
(8, 8, 10, 'Bread Updated', 1111.00, 111),
(9, 9, 10, 'Bread Updated', 1111.00, 100),
(10, 10, 8, 'tunga', 23.00, 2450),
(11, 10, 6, 'TinoUpdated', 1343.00, 2455),
(12, 13, 12, 'nhasi', 123.00, 1),
(13, 13, 11, 'Anonaka', 123.00, 1),
(14, 14, 12, 'nhasi', 123.00, 1),
(15, 14, 11, 'Anonaka', 123.00, 1),
(16, 14, 10, 'Bread Updated', 1111.00, 1),
(17, 15, 12, 'nhasi', 123.00, 1),
(18, 16, 10, 'Bread Updated', 1111.00, 1),
(19, 17, 11, 'Anonaka', 123.00, 1),
(20, 17, 10, 'Bread Updated', 1111.00, 1),
(21, 17, 9, 'Tired Updated 2', 99999999.99, 1),
(22, 17, 12, 'nhasi', 123.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `description`, `price`, `stock_quantity`, `image`, `status`) VALUES
(1, 0, 'SadzaEdited', 'this is sadza Edited', 23, 42, 'Logo2.png', 1),
(5, 0, 'tariEdited', 'Edited Decsripiton', 1343330000000, 2147483647, 'Logo1.png', 1),
(6, 0, 'TinoUpdated', '87878Updated', 1343, 10000, 'Logo3.png', 1),
(7, 0, 'tawo', 'yugjh', 1343, 1234, 'Logo3.png', 1),
(8, 0, 'tunga', '4rtfhgj33333333333333333', 23, 10000, 'Logo2.png', 1),
(9, 0, 'Tired Updated 2', 'I am tired of updating now working', 123444000000000, 2147483642, 'Heartstrings Logo.png', 1),
(10, 5, 'Bread Updated', 'This is bread updated', 1111, 857, 'Logo3.png', 1),
(11, 4, 'Anonaka', 'Hello mazepe aya anonak', 123, 195, 'Switches.png', 1),
(12, 0, 'nhasi', 'hgghgjhj', 123, 189, 'm3.1.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
