-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2021 at 04:33 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sign_up`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `PHONE_NUMBER` int(11) NOT NULL,
  `CARD_NUMBER` int(11) NOT NULL,
  `FIRST_PURCHASE` datetime NOT NULL,
  `AMOUNT_SPENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(11) NOT NULL,
  `SMARTPHONES_SOLD` int(11) NOT NULL,
  `SALES_FROM_SMARTPHONES` int(11) NOT NULL,
  `TELEVISIONS_SOLD` int(11) NOT NULL,
  `SALES_FROM_TELEVISIONS` int(11) NOT NULL,
  `FRIDGES_SOLD` int(11) NOT NULL,
  `SALES_FROM_FRIDGES` int(11) NOT NULL,
  `TOTAL_SALES` int(11) NOT NULL,
  `RETURNED_PRODUCTS` varchar(30) NOT NULL,
  `DEFECTIVE_PRODUCTS` varchar(30) NOT NULL,
  `PRODUCTS_OUT_OF_STOCK` varchar(30) NOT NULL,
  `PRE_ORDERS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `PRODUCT` varchar(20) NOT NULL,
  `QUANTITY` int(10) NOT NULL,
  `CATEGORY` varchar(20) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `ID` int(11) NOT NULL,
  `DATE` datetime NOT NULL,
  `PRODUCT` varchar(20) NOT NULL,
  `CATEGORY` varchar(20) NOT NULL,
  `STORE` varchar(30) NOT NULL,
  `TRACKING_NUMBER` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sign_ups`
--

CREATE TABLE `sign_ups` (
  `ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` int(15) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign_ups`
--

INSERT INTO `sign_ups` (`ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `USERNAME`, `PASSWORD`) VALUES
(1, 'BRIAN', 'OTIENO', 'brianibrahimotieno@gmail.com', 758258419, 'illicit_frost', 'brian10927');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sign_ups`
--
ALTER TABLE `sign_ups`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sign_ups`
--
ALTER TABLE `sign_ups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
