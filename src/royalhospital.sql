-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2019 at 08:17 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royalhospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `channelno` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `patientname` varchar(255) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channelno`, `doctorname`, `patientname`, `roomno`, `date`) VALUES
('CH001', 'DS003', 'PS001', 1, '2019-10-16'),
('CH002', 'DS003', 'PS002', 2, '2019-10-09');

-- --------------------------------------------------------

--
-- Table structure for table `doctor1`
--

CREATE TABLE `doctor1` (
  `doctorno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `channelfee` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor1`
--

INSERT INTO `doctor1` (`doctorno`, `name`, `special`, `qualification`, `channelfee`, `phone`, `room`, `log_id`) VALUES
('DS003', 'S.M.Suhath', 'VOG', 'MBBS,MD,M.Phe', 6500, 234567, 1, 1),
('DS004', 'M.R.M Aqif', 'ENT', 'MBBS', 2500, 12365478, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemid` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `buyprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemid`, `itemname`, `description`, `sellprice`, `buyprice`, `qty`) VALUES
('IT001', 'paracetamol', 'fever,headache', 10, 8, 80),
('IT002', 'panadol', 'dcdsvsv ', 12, 8, 120);

-- --------------------------------------------------------

--
-- Table structure for table `patient1`
--

CREATE TABLE `patient1` (
  `patientno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient1`
--

INSERT INTO `patient1` (`patientno`, `name`, `phone`, `address`) VALUES
('PS001', 'patient1', 12345678, 'sammanthurai'),
('PS002', 'patient2', 987456321, 'kkY'),
('PS004', 'patient4', 1234567, 'COL');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `preid` varchar(255) NOT NULL,
  `channelid` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `detype` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`preid`, `channelid`, `doctorname`, `detype`, `description`) VALUES
('PC001', 'CH001', 'S.M.Suhath', 'fever', 'azesxrdcftvghb'),
('PC002', 'CH002', 'S.M.Suhath', 'pain', 'tcfvygbhunjmk');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(1, '2019-10-08', 220, 250, 30),
(2, '2019-10-08', 220, 250, 30),
(3, '2019-10-08', 100, 100, 0),
(4, '2019-10-09', 200, 300, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `prod_id`, `sellprice`, `qty`, `total`) VALUES
(1, 3, 'it001', 10, 10, 100),
(2, 4, 'it001', 20, 10, 200);

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`id`, `name`, `username`, `password`, `utype`) VALUES
(1, 'suhath', 'suhath', '123', 'Doctor'),
(2, 'mohamed', 'mo', 'mo123', 'Receptionist'),
(3, 'raja', 'raja', 'raja123', 'Pharmacist'),
(4, 'aaqif', 'aaqif', '123', 'Doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channelno`);

--
-- Indexes for table `doctor1`
--
ALTER TABLE `doctor1`
  ADD PRIMARY KEY (`doctorno`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `patient1`
--
ALTER TABLE `patient1`
  ADD PRIMARY KEY (`patientno`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`preid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
