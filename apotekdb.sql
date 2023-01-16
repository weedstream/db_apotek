-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2023 at 12:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotekdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `AgentTbl`
--

CREATE TABLE `AgentTbl` (
  `Aid` int(11) NOT NULL,
  `Aname` varchar(100) NOT NULL,
  `Aage` int(11) NOT NULL,
  `Aphone` varchar(50) NOT NULL,
  `Apass` varchar(50) NOT NULL,
  `Agender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AgentTbl`
--

INSERT INTO `AgentTbl` (`Aid`, `Aname`, `Aage`, `Aphone`, `Apass`, `Agender`) VALUES
(1, 'ipang', 21, '88', '123', 'Male'),
(2, 'tecto', 19, '088', '123', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `CompanyTbl`
--

CREATE TABLE `CompanyTbl` (
  `CompId` int(11) NOT NULL,
  `CompName` varchar(50) NOT NULL,
  `CompAdd` varchar(50) NOT NULL,
  `CompExp` int(11) NOT NULL,
  `CompPhone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CompanyTbl`
--

INSERT INTO `CompanyTbl` (`CompId`, `CompName`, `CompAdd`, `CompExp`, `CompPhone`) VALUES
(1, 'Kimia Farma', 'Purwokerto', 1, '0888');

-- --------------------------------------------------------

--
-- Table structure for table `MedicineTbl`
--

CREATE TABLE `MedicineTbl` (
  `MedID` int(11) NOT NULL,
  `MedName` varchar(50) NOT NULL,
  `MedPrice` int(11) NOT NULL,
  `MedQty` int(11) NOT NULL,
  `MedFab` date NOT NULL,
  `MedExp` date NOT NULL,
  `MedCom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MedicineTbl`
--

INSERT INTO `MedicineTbl` (`MedID`, `MedName`, `MedPrice`, `MedQty`, `MedFab`, `MedExp`, `MedCom`) VALUES
(4, 'paracetamol', 500, 12, '2023-01-06', '2023-01-07', 'Kimia Farma'),
(5, 'paracetamol', 500, -10, '2023-01-12', '2023-01-28', 'Item 1'),
(6, 'paracetamol', 500, -2, '2023-01-12', '2023-01-28', 'Item 1'),
(7, 'ciprofloxacin', 6000, -10, '2023-01-01', '2028-01-01', 'Item 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AgentTbl`
--
ALTER TABLE `AgentTbl`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `CompanyTbl`
--
ALTER TABLE `CompanyTbl`
  ADD PRIMARY KEY (`CompId`);

--
-- Indexes for table `MedicineTbl`
--
ALTER TABLE `MedicineTbl`
  ADD PRIMARY KEY (`MedID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
