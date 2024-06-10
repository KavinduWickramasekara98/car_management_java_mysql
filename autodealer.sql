-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 06:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autodealer`
--

-- --------------------------------------------------------

--
-- Table structure for table `customertbl`
--

CREATE TABLE `customertbl` (
  `CustId` int(11) NOT NULL,
  `CustName` varchar(50) NOT NULL,
  `CustAd` varchar(100) NOT NULL,
  `CustPhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customertbl`
--

INSERT INTO `customertbl` (`CustId`, `CustName`, `CustAd`, `CustPhone`) VALUES
(1, 'Kavindu', 'Galle', '12345'),
(2, 'Wick', 'Colombo07', '123456'),
(3, 'Kavindu Wick', 'Colombo05', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `ordertbl`
--

CREATE TABLE `ordertbl` (
  `OrderId` int(11) NOT NULL,
  `OrderDate` varchar(100) DEFAULT current_timestamp(),
  `CustId` int(11) NOT NULL,
  `CustName` varchar(30) NOT NULL,
  `PayMethod` varchar(30) NOT NULL,
  `Price` varchar(11) NOT NULL,
  `CarId` int(4) NOT NULL,
  `carYear` int(4) NOT NULL,
  `CarName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordertbl`
--

INSERT INTO `ordertbl` (`OrderId`, `OrderDate`, `CustId`, `CustName`, `PayMethod`, `Price`, `CarId`, `carYear`, `CarName`) VALUES
(1, '2023-11-12 15:18:46', 2, 'Kamal', 'card', '300', 999, 2023, 'lambo'),
(10, '2023-11-12 17:16:14', 3, 'Kavindu Wick', 'Credit Card', '1234', 2, 1234, 'subra'),
(10, '2023-11-12 17:31:27', 1, 'Kavindu', 'Credit Card', '123', 1, 12, 'dsaf'),
(10, '2023-11-12 17:38:28', 1, 'Kavindu', 'Credit Card', '123', 1, 12, 'dsaf'),
(10, '2023-11-12 17:38:53', 2, 'Wick', 'Credit Card', '1230', 1, 12, 'dsaf'),
(10, '2023-11-12 17:41:54', 1, 'Kavindu', 'Credit Card', '246', 1, 12, 'dsaf'),
(10, '2023-11-12 17:42:51', 1, 'Kavindu', 'Credit Card', '246', 1, 12, 'dsaf'),
(10, '2023-11-12 18:01:13', 2, 'Wick', 'Credit Card', '615', 1, 12, 'dsaf'),
(10, '2023-11-12 18:02:21', 1, 'Kavindu', 'Credit Card', '246', 1, 12, 'dsaf'),
(10, '2023-11-12 18:10:26', 1, 'Kavindu', 'Credit Card', '246', 1, 12, 'dsaf');

-- --------------------------------------------------------

--
-- Table structure for table `producttbl`
--

CREATE TABLE `producttbl` (
  `CarId` int(11) NOT NULL,
  `CarName` varchar(50) NOT NULL,
  `carYear` int(4) DEFAULT 9999,
  `CarCategory` varchar(10) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `SuplierId` int(11) NOT NULL,
  `SuplierName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producttbl`
--

INSERT INTO `producttbl` (`CarId`, `CarName`, `carYear`, `CarCategory`, `Price`, `Quantity`, `SuplierId`, `SuplierName`) VALUES
(1, 'dsaf', 12, 'Toyota', 123, 1, 1, 'kavindu'),
(2, 'subra', 1234, 'Toyota', 1234, 2, 1, 'kavindu'),
(9, 'subru', 1998, 'Toyota', 21, 1, 4, 'kaviWIck');

-- --------------------------------------------------------

--
-- Table structure for table `suppliertb`
--

CREATE TABLE `suppliertb` (
  `SupId` int(11) NOT NULL,
  `SupName` varchar(50) NOT NULL,
  `SupAddress` varchar(100) NOT NULL,
  `SupPhone` varchar(15) NOT NULL,
  `SupRemarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliertb`
--

INSERT INTO `suppliertb` (`SupId`, `SupName`, `SupAddress`, `SupPhone`, `SupRemarks`) VALUES
(1, 'kavindu', 'asfdsaf', 'adfs', 'aswf'),
(2, 'Wick', 'Colombo05', '123456', 'Nice '),
(4, 'kaviWIck', 'col', '123456', 'aswf'),
(6, 'kavin', 'col5', '123456', 'aswf'),
(7, 'kavin', 'col5', '123456', 'aswf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customertbl`
--
ALTER TABLE `customertbl`
  ADD PRIMARY KEY (`CustId`);

--
-- Indexes for table `producttbl`
--
ALTER TABLE `producttbl`
  ADD PRIMARY KEY (`CarId`);

--
-- Indexes for table `suppliertb`
--
ALTER TABLE `suppliertb`
  ADD PRIMARY KEY (`SupId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
