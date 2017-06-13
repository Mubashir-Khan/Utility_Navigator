-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2017 at 05:30 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utility`
--

-- --------------------------------------------------------

--
-- Table structure for table `box1_equip_tbl`
--

CREATE TABLE `box1_equip_tbl` (
  `Box1_prod_ID` int(100) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Desc` text,
  `IsInclude` tinyint(1) DEFAULT NULL,
  `IsShow` tinyint(1) DEFAULT NULL,
  `Tv_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `box1_equip_tbl`
--

INSERT INTO `box1_equip_tbl` (`Box1_prod_ID`, `Name`, `Price`, `Desc`, `IsInclude`, `IsShow`, `Tv_ID`) VALUES
(11, 'High Definition1', 22.2, 'testing', 1, 1, 10),
(12, 'High Definition + over', 33.3, 'testing', 0, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `box2_equip_tbl`
--

CREATE TABLE `box2_equip_tbl` (
  `Box2_prod_ID` int(100) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Desc` text,
  `IsInclude` tinyint(1) DEFAULT NULL,
  `IsShow` tinyint(1) DEFAULT NULL,
  `Tv_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `box2_equip_tbl`
--

INSERT INTO `box2_equip_tbl` (`Box2_prod_ID`, `Name`, `Price`, `Desc`, `IsInclude`, `IsShow`, `Tv_ID`) VALUES
(10, 'High Definition2', 22.2, 'testing', 1, 1, 10),
(11, 'High Definition 2 + over', 22.2, 'testing', 0, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `box3_equip_tbl`
--

CREATE TABLE `box3_equip_tbl` (
  `Box3_prod_ID` int(100) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Desc` text,
  `IsInclude` tinyint(1) DEFAULT NULL,
  `IsShow` tinyint(1) DEFAULT NULL,
  `Tv_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `box3_equip_tbl`
--

INSERT INTO `box3_equip_tbl` (`Box3_prod_ID`, `Name`, `Price`, `Desc`, `IsInclude`, `IsShow`, `Tv_ID`) VALUES
(15, 'HBO', 22.2, 'testing', 0, 1, 10),
(16, 'MGM', 33.3, 'testing', 0, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `internet_tbl`
--

CREATE TABLE `internet_tbl` (
  `Internet_ID` int(100) NOT NULL,
  `Int_heading` varchar(100) NOT NULL,
  `Int_desc` text NOT NULL,
  `Pack_Pro_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internet_tbl`
--

INSERT INTO `internet_tbl` (`Internet_ID`, `Int_heading`, `Int_desc`, `Pack_Pro_ID`) VALUES
(4, 'Super duper Package', 'testing', 10),
(5, 'Primary Internet', 'testing', 11);

-- --------------------------------------------------------

--
-- Table structure for table `int_equip_tbl`
--

CREATE TABLE `int_equip_tbl` (
  `Int_equip_ID` int(100) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Desc` text,
  `IsInclude` tinyint(1) DEFAULT NULL,
  `IsShow` tinyint(1) DEFAULT NULL,
  `Internet_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `int_equip_tbl`
--

INSERT INTO `int_equip_tbl` (`Int_equip_ID`, `Name`, `Price`, `Desc`, `IsInclude`, `IsShow`, `Internet_ID`) VALUES
(5, 'Connect 2 Mb', 22.2, 'testing', 1, 1, 4),
(6, 'Delta', 22.2, 'testing', 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_tbl`
--

CREATE TABLE `mobile_tbl` (
  `Mobile_ID` int(100) NOT NULL,
  `Mob_heading` varchar(100) NOT NULL,
  `Mob_desc` text NOT NULL,
  `Pack_Pro_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile_tbl`
--

INSERT INTO `mobile_tbl` (`Mobile_ID`, `Mob_heading`, `Mob_desc`, `Pack_Pro_ID`) VALUES
(4, 'Primary Mobile Package', 'testing', 11);

-- --------------------------------------------------------

--
-- Table structure for table `mob_equip_tbl`
--

CREATE TABLE `mob_equip_tbl` (
  `Mob_equip_ID` int(100) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Desc` text,
  `IsInclude` tinyint(1) DEFAULT NULL,
  `IsShow` tinyint(1) DEFAULT NULL,
  `Mobile_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mob_equip_tbl`
--

INSERT INTO `mob_equip_tbl` (`Mob_equip_ID`, `Name`, `Price`, `Desc`, `IsInclude`, `IsShow`, `Mobile_ID`) VALUES
(4, 'Motorola', 22.3, 'testing', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `package_product_tbl`
--

CREATE TABLE `package_product_tbl` (
  `Pack_Pro_ID` int(100) NOT NULL,
  `TV` tinyint(1) NOT NULL,
  `Internet` tinyint(1) NOT NULL,
  `Mobile` tinyint(1) NOT NULL,
  `PackageID` int(100) NOT NULL,
  `ProviderID` int(100) NOT NULL,
  `Package_count` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_product_tbl`
--

INSERT INTO `package_product_tbl` (`Pack_Pro_ID`, `TV`, `Internet`, `Mobile`, `PackageID`, `ProviderID`, `Package_count`) VALUES
(10, 0, 1, 0, 29, 1, 1),
(11, 1, 1, 1, 30, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `package_tbl`
--

CREATE TABLE `package_tbl` (
  `PackageID` int(100) NOT NULL,
  `Pack_Name` varchar(100) NOT NULL,
  `Plan_Details` text NOT NULL,
  `Pack_Description` text NOT NULL,
  `Pack_info_promo` text NOT NULL,
  `Promo_Price` float NOT NULL,
  `Orignal_Price` float NOT NULL,
  `Pack_Type` varchar(100) NOT NULL,
  `ProviderID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_tbl`
--

INSERT INTO `package_tbl` (`PackageID`, `Pack_Name`, `Plan_Details`, `Pack_Description`, `Pack_info_promo`, `Promo_Price`, `Orignal_Price`, `Pack_Type`, `ProviderID`) VALUES
(29, 'Standard Internet', 'testing', 'testing', 'Per Month', 55.55, 49.99, 'singleplay', 1),
(30, 'Tv + Internet + Mobile', 'testing', 'testing', 'Per Month', 55.5, 22.2, 'tripleplay', 1);

-- --------------------------------------------------------

--
-- Table structure for table `provider_tbl`
--

CREATE TABLE `provider_tbl` (
  `ProviderID` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider_tbl`
--

INSERT INTO `provider_tbl` (`ProviderID`, `Name`, `Email`, `Password`, `Contact`, `Logo`) VALUES
(1, 'Coxx', 'info@cox.com', '12345', '03473543133', ''),
(3, 'DirectTv', 'info@dtv.com', '12345', '03473543133', 'logo2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tv_tbl`
--

CREATE TABLE `tv_tbl` (
  `Tv_ID` int(100) NOT NULL,
  `Box1_heading` varchar(100) DEFAULT NULL,
  `Box1_desc` text,
  `Box2_heading` varchar(100) DEFAULT NULL,
  `Box2_desc` text,
  `Box3_heading` varchar(100) DEFAULT NULL,
  `Box3_desc` text,
  `Pack_Pro_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_tbl`
--

INSERT INTO `tv_tbl` (`Tv_ID`, `Box1_heading`, `Box1_desc`, `Box2_heading`, `Box2_desc`, `Box3_heading`, `Box3_desc`, `Pack_Pro_ID`) VALUES
(10, 'Primary Tv', 'testing', 'Additional Tv', 'testing', 'Premiums Channels / Ad Ons', 'testing', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `box1_equip_tbl`
--
ALTER TABLE `box1_equip_tbl`
  ADD PRIMARY KEY (`Box1_prod_ID`),
  ADD KEY `Tv_ID` (`Tv_ID`);

--
-- Indexes for table `box2_equip_tbl`
--
ALTER TABLE `box2_equip_tbl`
  ADD PRIMARY KEY (`Box2_prod_ID`),
  ADD KEY `Tv_ID` (`Tv_ID`);

--
-- Indexes for table `box3_equip_tbl`
--
ALTER TABLE `box3_equip_tbl`
  ADD PRIMARY KEY (`Box3_prod_ID`),
  ADD KEY `Tv_ID` (`Tv_ID`);

--
-- Indexes for table `internet_tbl`
--
ALTER TABLE `internet_tbl`
  ADD PRIMARY KEY (`Internet_ID`),
  ADD KEY `Tv_ID` (`Pack_Pro_ID`);

--
-- Indexes for table `int_equip_tbl`
--
ALTER TABLE `int_equip_tbl`
  ADD PRIMARY KEY (`Int_equip_ID`),
  ADD KEY `Internet_ID` (`Internet_ID`);

--
-- Indexes for table `mobile_tbl`
--
ALTER TABLE `mobile_tbl`
  ADD PRIMARY KEY (`Mobile_ID`),
  ADD KEY `Tv_ID` (`Pack_Pro_ID`);

--
-- Indexes for table `mob_equip_tbl`
--
ALTER TABLE `mob_equip_tbl`
  ADD PRIMARY KEY (`Mob_equip_ID`),
  ADD KEY `Mobile_ID` (`Mobile_ID`);

--
-- Indexes for table `package_product_tbl`
--
ALTER TABLE `package_product_tbl`
  ADD PRIMARY KEY (`Pack_Pro_ID`),
  ADD KEY `PackageID` (`PackageID`),
  ADD KEY `ProviderID` (`ProviderID`);

--
-- Indexes for table `package_tbl`
--
ALTER TABLE `package_tbl`
  ADD PRIMARY KEY (`PackageID`),
  ADD KEY `ProviderID` (`ProviderID`);

--
-- Indexes for table `provider_tbl`
--
ALTER TABLE `provider_tbl`
  ADD PRIMARY KEY (`ProviderID`);

--
-- Indexes for table `tv_tbl`
--
ALTER TABLE `tv_tbl`
  ADD PRIMARY KEY (`Tv_ID`),
  ADD KEY `Pack_Pro_ID` (`Pack_Pro_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `box1_equip_tbl`
--
ALTER TABLE `box1_equip_tbl`
  MODIFY `Box1_prod_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `box2_equip_tbl`
--
ALTER TABLE `box2_equip_tbl`
  MODIFY `Box2_prod_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `box3_equip_tbl`
--
ALTER TABLE `box3_equip_tbl`
  MODIFY `Box3_prod_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `internet_tbl`
--
ALTER TABLE `internet_tbl`
  MODIFY `Internet_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `int_equip_tbl`
--
ALTER TABLE `int_equip_tbl`
  MODIFY `Int_equip_ID` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mobile_tbl`
--
ALTER TABLE `mobile_tbl`
  MODIFY `Mobile_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mob_equip_tbl`
--
ALTER TABLE `mob_equip_tbl`
  MODIFY `Mob_equip_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `package_product_tbl`
--
ALTER TABLE `package_product_tbl`
  MODIFY `Pack_Pro_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `package_tbl`
--
ALTER TABLE `package_tbl`
  MODIFY `PackageID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `provider_tbl`
--
ALTER TABLE `provider_tbl`
  MODIFY `ProviderID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tv_tbl`
--
ALTER TABLE `tv_tbl`
  MODIFY `Tv_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `box1_equip_tbl`
--
ALTER TABLE `box1_equip_tbl`
  ADD CONSTRAINT `fk_tv_id_box1` FOREIGN KEY (`Tv_ID`) REFERENCES `tv_tbl` (`Tv_ID`);

--
-- Constraints for table `box2_equip_tbl`
--
ALTER TABLE `box2_equip_tbl`
  ADD CONSTRAINT `fk_tv_id_box2` FOREIGN KEY (`Tv_ID`) REFERENCES `tv_tbl` (`Tv_ID`);

--
-- Constraints for table `box3_equip_tbl`
--
ALTER TABLE `box3_equip_tbl`
  ADD CONSTRAINT `fk_Tv_ID_box3` FOREIGN KEY (`Tv_ID`) REFERENCES `tv_tbl` (`Tv_ID`);

--
-- Constraints for table `internet_tbl`
--
ALTER TABLE `internet_tbl`
  ADD CONSTRAINT `fk_pack_pro_id_int` FOREIGN KEY (`Pack_Pro_ID`) REFERENCES `package_product_tbl` (`Pack_Pro_ID`);

--
-- Constraints for table `int_equip_tbl`
--
ALTER TABLE `int_equip_tbl`
  ADD CONSTRAINT `fk_int_id` FOREIGN KEY (`Internet_ID`) REFERENCES `internet_tbl` (`Internet_ID`);

--
-- Constraints for table `mobile_tbl`
--
ALTER TABLE `mobile_tbl`
  ADD CONSTRAINT `fk_pack_pro_id_mob` FOREIGN KEY (`Pack_Pro_ID`) REFERENCES `package_product_tbl` (`Pack_Pro_ID`);

--
-- Constraints for table `mob_equip_tbl`
--
ALTER TABLE `mob_equip_tbl`
  ADD CONSTRAINT `fk_mobile_id` FOREIGN KEY (`Mobile_ID`) REFERENCES `mobile_tbl` (`Mobile_ID`);

--
-- Constraints for table `package_product_tbl`
--
ALTER TABLE `package_product_tbl`
  ADD CONSTRAINT `fk_packageid_pp` FOREIGN KEY (`PackageID`) REFERENCES `package_tbl` (`PackageID`),
  ADD CONSTRAINT `fk_providerid_pp` FOREIGN KEY (`ProviderID`) REFERENCES `provider_tbl` (`ProviderID`);

--
-- Constraints for table `package_tbl`
--
ALTER TABLE `package_tbl`
  ADD CONSTRAINT `fk_providerid` FOREIGN KEY (`ProviderID`) REFERENCES `provider_tbl` (`ProviderID`);

--
-- Constraints for table `tv_tbl`
--
ALTER TABLE `tv_tbl`
  ADD CONSTRAINT `fk_pack_pro_id` FOREIGN KEY (`Pack_Pro_ID`) REFERENCES `package_product_tbl` (`Pack_Pro_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
