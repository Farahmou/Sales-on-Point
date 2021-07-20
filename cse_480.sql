-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 04:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse_480`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `age` int(30) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`, `age`, `gender`) VALUES
(1, 'mou', 'mou@gmail.com', '12345', 1747799176, 24, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id`, `name`, `user_name`, `email`, `password`, `contact_no`, `address`, `status`) VALUES
(4, 'mou', 'mou', 'mou.farah.14@gmail.com', '12345', 1720446761, 'Dhaka', 'Active'),
(2, 'farah', 'farah', 'farah@gmail.com', '123456', 172676990, 'Dhaka', 'DeActive'),
(3, 'farzana', 'far', 'farzana@gmail.com', '12345', 199235454, 'Dhaka', 'DeActive');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `warenty` int(11) NOT NULL,
  `price_cost` int(30) NOT NULL,
  `price_retail` int(30) NOT NULL,
  `barcode` int(30) NOT NULL,
  `reorder_level` int(11) NOT NULL,
  `quantity` int(30) NOT NULL,
  `product_date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `description`, `catagory`, `warenty`, `price_cost`, `price_retail`, `barcode`, `reorder_level`, `quantity`, `product_date`, `status`) VALUES
(1, 'mi 9 lite', 'it is a m,obile ', 'mobile       ', 1, 20000, 1500, 11111, 3, 16, '2020-08-28', 'Active'),
(4, 'realme 7 pro', 'flagship mobile  ', 'mobile     ', 1, 20000, 24000, 22222, 1, 97, '2020-09-14', 'Active'),
(5, 'realm 6', ' mobile  ', '', 1, 20000, 24000, 33333, 1, 0, '2020-09-12', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item`
--

CREATE TABLE `purchase_item` (
  `purrchase_id` int(30) NOT NULL,
  `product_code` int(30) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_item`
--

INSERT INTO `purchase_item` (`purrchase_id`, `product_code`, `product_name`, `price`, `quantity`, `amount`) VALUES
(6, 11111, ' mi 9 lite', 15000, 4, 60000),
(7, 11111, ' mi 9 lite', 15000, 30, 450000),
(11, 22222, ' realme 7 pro', 24000, 100, 2400000),
(12, 11111, ' mi 9 lite', 15000, 2, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_report`
--

CREATE TABLE `purchase_report` (
  `pur_report_id` int(30) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(30) NOT NULL,
  `total` int(100) NOT NULL,
  `payment` int(100) NOT NULL,
  `date` date NOT NULL,
  `pay_status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_report`
--

INSERT INTO `purchase_report` (`pur_report_id`, `product_name`, `quantity`, `total`, `payment`, `date`, `pay_status`) VALUES
(6, 'realme 7 pro', 2, 48000, 40000, '2020-09-29', 'Card'),
(3, ' mi 9 lite', 1, 24000, 20000, '2020-09-14', 'Cash'),
(4, 'realme 7 pro', 2, 48000, 20000, '2020-09-14', 'Cash'),
(5, 'mi 8 pro', 1, 24000, 20000, '2020-09-14', 'Card'),
(7, 'mi 9 lite', 2, 30000, 20000, '2020-12-28', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `sales_item`
--

CREATE TABLE `sales_item` (
  `sales_id` int(30) NOT NULL,
  `product_code` int(30) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_item`
--

INSERT INTO `sales_item` (`sales_id`, `product_code`, `product_name`, `price`, `quantity`, `amount`) VALUES
(5, 11111, ' mi 9 lite', 15000, 3, 45000),
(7, 11111, ' mi 9 lite', 15000, 1, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `sales_report`
--

CREATE TABLE `sales_report` (
  `sale_report_id` int(30) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `payment` int(100) NOT NULL,
  `date` date NOT NULL,
  `pay_status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_report`
--

INSERT INTO `sales_report` (`sale_report_id`, `product_name`, `quantity`, `total`, `payment`, `date`, `pay_status`) VALUES
(1, 'mi 9 lite', 3, 45000, 40000, '2020-09-14', 'Cash'),
(2, 'mi 9 lite', 1, 15000, 15000, '2020-12-28', 'Cash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD PRIMARY KEY (`purrchase_id`);

--
-- Indexes for table `purchase_report`
--
ALTER TABLE `purchase_report`
  ADD PRIMARY KEY (`pur_report_id`);

--
-- Indexes for table `sales_item`
--
ALTER TABLE `sales_item`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_report`
--
ALTER TABLE `sales_report`
  ADD PRIMARY KEY (`sale_report_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_item`
--
ALTER TABLE `purchase_item`
  MODIFY `purrchase_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchase_report`
--
ALTER TABLE `purchase_report`
  MODIFY `pur_report_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales_item`
--
ALTER TABLE `sales_item`
  MODIFY `sales_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales_report`
--
ALTER TABLE `sales_report`
  MODIFY `sale_report_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
