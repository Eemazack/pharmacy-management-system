-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2020 at 08:00 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` int(12) NOT NULL,
  `Illness` varchar(255) NOT NULL,
  `Medicine_Name` varchar(255) NOT NULL,
  `Medicine_Quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Name`, `Phone`, `Illness`, `Medicine_Name`, `Medicine_Quantity`) VALUES
(1, 'Ima', 172066195, 'Fever', 'Paracetamol', 2),
(7, 'Lee', 176478942, 'Cough', 'Dextromethorphan', 1),
(11, 'David', 129836466, 'Colds', 'Acetaminophen', 1),
(13, 'Charlie', 162938475, 'Fever', 'Paracetamol', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `ID` int(11) NOT NULL,
  `Medicine_Name` varchar(255) NOT NULL,
  `Prescribed_for` varchar(255) NOT NULL,
  `Dose_mg` varchar(255) NOT NULL,
  `Daily_Dose` varchar(255) NOT NULL,
  `Duration` varchar(255) NOT NULL,
  `Exp_Date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`ID`, `Medicine_Name`, `Prescribed_for`, `Dose_mg`, `Daily_Dose`, `Duration`, `Exp_Date`) VALUES
(4, 'Paracetamol', 'Fever and Headache', '125', '2', '3 years', 'Julai 2022'),
(7, 'Insulin Injection', 'Insulins', '40', '1', '2 years', 'Jan 2020'),
(13, 'Iodine', 'Vitamin and mineral', '200', '2', '3 years', 'December 2024'),
(14, 'Folic acid', 'Medicine affecting coagulation', '5', '1', '5 years', 'May 2025');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `ID` int(11) NOT NULL,
  `Supplier_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `EmailAddress` varchar(255) NOT NULL,
  `PhoneNo` int(15) NOT NULL,
  `FaxNo` int(15) NOT NULL,
  `SalesTax` int(3) NOT NULL,
  `Service` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`ID`, `Supplier_Name`, `Address`, `ContactName`, `EmailAddress`, `PhoneNo`, `FaxNo`, `SalesTax`, `Service`) VALUES
(8, 'MGI Healthcare', 'Cheras,Kuala Lumpur', 'Siti', 'siti@gmail.com', 38257463, 5551234, 8, 'Medications'),
(9, 'Pharma Company', 'Ipoh,Perak', 'Lee', 'Pharma@gmail.com', 19234627, 4441235, 7, 'Technology');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
