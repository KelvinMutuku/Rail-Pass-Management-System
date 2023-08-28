-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 02:30 PM
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
-- Database: `rpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8855223366, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-03-25 06:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(13, 'Duty Pass', '2023-03-27 14:03:02'),
(14, 'Pass On Privilege Account', '2023-03-27 14:03:16'),
(15, 'School Pass', '2023-03-27 14:03:30'),
(16, 'Post Retirement Complimentary Passes', '2023-03-27 14:03:44'),
(18, 'Residential Card Pass', '2023-03-27 14:04:10'),
(19, 'Special Passes', '2023-03-27 14:04:23'),
(20, 'Senior Citizens', '2023-03-30 10:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Solomon Vandy', 'solov@gmail.com', 'hfgghfghf', '2023-03-28 06:31:26', 1),
(2, 'Test', 'test@gmail.com', 'sample message', '2023-03-28 06:32:55', 1),
(3, 'Dr. Keith', 'drkeith@gmail.com', 'This is testing purpose', '2023-03-30 12:20:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<div style=\"text-align: left;\"><b style=\"font-size: 13px; color: rgb(116, 116, 116); font-family: Roboto, sans-serif, arial;\">The rail pass management system is a web-based application. It&nbsp;</b><font color=\"#747474\" face=\"Roboto, sans-serif, arial\"><span style=\"font-size: 13px;\"><b>streamlines rail pass and ticket management for passengers and operators. Passengers easily buy, customize and reserve passes. Real-time updates and electronic pass validation improve the journey experience. Furthermore, it enhances efficiency, revenue and sustainability, making rail travel more convenient and eco-friendly.</b></span></font></div>', NULL, NULL, '2023-08-28 12:09:36'),
(2, 'contactus', 'Contact Us', '                Nairobi Railway Station', 'nbirailwaystation@gmail.com', 254714820808, '2023-08-28 12:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblpass`
--

CREATE TABLE `tblpass` (
  `ID` int(10) NOT NULL,
  `PassNumber` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ProfileImage` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `IdentityCardno` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `TrainClass` varchar(250) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `wayType` varchar(120) DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `PasscreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpass`
--

INSERT INTO `tblpass` (`ID`, `PassNumber`, `FullName`, `ProfileImage`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `Source`, `Destination`, `TrainClass`, `FromDate`, `ToDate`, `wayType`, `Cost`, `PasscreationDate`) VALUES
(1, '984463487', 'Kelvin Ouma', 'fc5bf5c9948c416f7c1046c8f91ba9a91679925964.png', 6446465464, 'ouma@gmail.com', 'visa Card', 'uyuiy78979789', 'Pass On Privilege Account', 'Nairobi Pipeline', 'Uganda', 'II Class', '2023-03-28', '2023-04-27', 'Single Way', 200, '2023-03-27 14:06:04'),
(2, '837149403', 'Winnie Mwangi', '3dfb1c8dbdcc05745b5fefc573a2a85f1679980708.png', 8979797979, 'mwangiw@gmail.com', 'Master Card', 'ui7894ko45', 'Pass On Privilege Account', 'Kisumu', 'Mombasa', 'Slepper', '2023-03-28', '2023-04-30', 'Two Way', 1500, '2023-03-28 05:18:28'),
(3, '305788314', 'Kelvin Mutuku', '779b7513263ef185b6d094af290ef5401680178696.png', 785412600, 'km@test.com', 'Paypal', 'NHJB4342485', 'Senior Citizens', 'Nairobi', 'Chad', 'General', '2023-04-01', '2023-10-31', 'Two Way', 1500, '2023-03-30 12:18:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpass`
--
ALTER TABLE `tblpass`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpass`
--
ALTER TABLE `tblpass`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
