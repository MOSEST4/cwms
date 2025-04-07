-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2025 at 03:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cwmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-12-10 08:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblcarwashbooking`
--

CREATE TABLE `tblcarwashbooking` (
  `id` int(11) NOT NULL,
  `bookingId` bigint(10) DEFAULT NULL,
  `packageType` varchar(120) DEFAULT NULL,
  `carWashPoint` int(11) DEFAULT NULL,
  `fullName` varchar(150) DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `washDate` date DEFAULT NULL,
  `washTime` time DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  `adminRemark` mediumtext DEFAULT NULL,
  `paymentMode` varchar(120) DEFAULT NULL,
  `txnNumber` varchar(120) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcarwashbooking`
--

INSERT INTO `tblcarwashbooking` (`id`, `bookingId`, `packageType`, `carWashPoint`, `fullName`, `mobileNumber`, `washDate`, `washTime`, `message`, `status`, `adminRemark`, `paymentMode`, `txnNumber`, `postingDate`, `lastUpdationDate`) VALUES
(9, 319876603, '1', 1, 'moses', 788474686, '2025-03-19', '07:26:00', 'Wash it well please', 'New', NULL, NULL, NULL, '2025-03-19 01:24:03', NULL),
(10, 626481540, '1', 1, 'Turinayo', 758356480, '2025-03-25', '13:58:00', 'hello', 'New', NULL, NULL, NULL, '2025-03-25 10:56:27', NULL),
(11, 176033046, '1', 1, 'Turinayo', 758356480, '2025-03-25', '15:00:00', 'hello', 'New', NULL, NULL, NULL, '2025-03-25 10:57:42', NULL),
(12, 544333491, '2', 1, 'Turinayo', 758356480, '2025-04-07', '12:12:00', 'Hello', 'New', NULL, NULL, NULL, '2025-04-07 09:12:29', NULL),
(13, 411020710, '1', 1, 'Moses Turinayo ', 758356480, '2025-04-07', '12:25:00', 'Hi', 'New', NULL, NULL, NULL, '2025-04-07 09:25:34', NULL),
(14, 411761096, '2', 1, 'Turinayo', 394754414, '2025-04-07', '13:20:00', 'hello', 'New', NULL, NULL, NULL, '2025-04-07 10:20:38', NULL),
(15, 254280909, '2', 6, 'Turinayo', 758356480, '2025-04-07', '13:23:00', 'HI', 'New', NULL, NULL, NULL, '2025-04-07 10:23:33', NULL),
(16, 498262309, '1', 1, 'Aman', 394754414, '2025-04-07', '13:27:00', '', 'New', NULL, NULL, NULL, '2025-04-07 10:27:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(6, 'Turinayo turinayo', 'turinayomoses9@gmail.com', 'hello team', 'hello', '2025-03-19 01:14:13', 1),
(7, 'Turinayo turinayo', 'turinayomoses9@gmail.com', 'hello team', 'hi', '2025-04-07 11:12:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL,
  `openignHrs` varchar(255) DEFAULT NULL,
  `phoneNumber` bigint(20) DEFAULT NULL,
  `emailId` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`, `openignHrs`, `phoneNumber`, `emailId`) VALUES
(3, 'aboutus', '																				<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\">CAr Wash Management System is a brand which is literally going to change the way people think about car cleaning. It is a unique mechanized car cleaning concept where cars are getting pampered by the latest equipments including high pressure cleaning machines, spray injection and extraction machines, high powered vacuum cleaners, steam cleaners and so on.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px;\">Car Wash&nbsp; Management System is a brand that is literally going to change the way people think about car cleaning. It is a unique mechanized car cleaning concept where cars are getting pampered by the latest equipments including high pressure cleaning machines, spray injection and extraction machines, high powered vacuum cleaners, steam cleaners and so on.&nbsp;</span><br></div><div></div>\r\n										\r\n										', NULL, NULL, NULL),
(11, 'contact', 'Mbarara-Uganda ', 'Mon - Fri, 8:00 AM - 7:00 PM', 256394754414, 'info@jetwash.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblwashingpoints`
--

CREATE TABLE `tblwashingpoints` (
  `id` int(11) NOT NULL,
  `washingPointName` varchar(255) DEFAULT NULL,
  `washingPointAddress` varchar(255) DEFAULT NULL,
  `contactNumber` bigint(20) DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblwashingpoints`
--

INSERT INTO `tblwashingpoints` (`id`, `washingPointName`, `washingPointAddress`, `contactNumber`, `creationDate`) VALUES
(1, 'JET WASHING BAY', 'Mbarara-Kabale Road,  Opposite Mbarara University of Science &Technology', 256394754414, '2021-12-13 13:21:20'),
(6, 'JET WASHING BAY Kizungu Branch', 'Mbarara Uganda, Opposite Day to Day Supermarket ', 256394754414, '2025-03-19 01:19:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcarwashbooking`
--
ALTER TABLE `tblcarwashbooking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carWashPoint` (`carWashPoint`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwashingpoints`
--
ALTER TABLE `tblwashingpoints`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcarwashbooking`
--
ALTER TABLE `tblcarwashbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblwashingpoints`
--
ALTER TABLE `tblwashingpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcarwashbooking`
--
ALTER TABLE `tblcarwashbooking`
  ADD CONSTRAINT `washingpointid` FOREIGN KEY (`carWashPoint`) REFERENCES `tblwashingpoints` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
