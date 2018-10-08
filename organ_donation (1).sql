-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2018 at 03:47 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organ_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doct_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `hosp_name` varchar(20) NOT NULL,
  `specialization` varchar(20) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doct_id`, `name`, `gender`, `hosp_name`, `specialization`, `reg_no`, `mobile`, `email`) VALUES
(1, 'kkk', 'male', 'dfgn', 'gcvhnm', 'rt5768', '7558992896', 'kkk@gmail.com'),
(2, 'john', 'male', 'akg', 'yhy', 'hyt567', '9496705881', 'john@gmail.com'),
(4, 'doctor', 'male', 'bvg', '', 'ndkf78', '7558992896', 'd@gmail.com'),
(7, 'hh', 'female', 'dfgh', '', 'fgh45', '7558992896', 'hg@gmail.com'),
(8, '', '', '', '', '', '', ''),
(9, 'r', '', '78', '', '', 'kl', 'kl@jhj.com'),
(10, 'anu', 'female', 'vikam', '', 'cdr454', '7558992896', 'd@gmail.com'),
(11, 'anju', 'female', 'amala', '', 'dr34', '7558992896', 'anju@gmail.com'),
(12, 'u', 'female', 'dfgh', '', 'fg5678', '7558992896', 'u@gmail.com'),
(13, 'raju', 'male', 'dfghj', '', 'vbn789', '6789543210', 'raju@gmail.com'),
(14, 'ku', 'male', 'fghjk', '', 'gbnm789', '7589641230', 'ku@gmail.com'),
(15, 'teste', 'male', 'cfvbnm', '', 'bnm,890', '7558992896', 'teste@gmail.com'),
(16, 'a', 'male', 'sdddddddddd', '', 'ad', '9847562347', 'riya@gmail.com'),
(17, 'a', 'male', 'sdddddddddd', 'ds', 'ad', '9847562347', 'riya@gmail.com'),
(18, 'a', 'male', 'sdddddddddd', 'ds', 'ad', '9847562347', 'riya@gmail.com'),
(19, 'lekshmi', 'female', 'KNS', 'SADNASKJHKJA', 'ssd24', '3245347687', 'test@gmailcom'),
(20, 'cvbnm', 'male', 'esrfcgvhb', 'dgvxcgvh', 'rty4567', '7558992896', 'albin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `doner`
--

CREATE TABLE `doner` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doner`
--

INSERT INTO `doner` (`id`, `name`, `sex`, `dob`, `location`, `mobile`, `email`) VALUES
(3, 'drishya', 'female', '1994-04-11', 'pyr', '9496705881', 'drishya@gmail.com'),
(5, 'radhu', 'female', '1993-01-04', 'kumali', '9446289654', 'radhu@gmail.com'),
(6, 'hira', 'male', '1985-08-16', 'kozhikkodu', '7589641230', 'hira@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `doner_health`
--

CREATE TABLE `doner_health` (
  `id` int(11) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doner_health`
--

INSERT INTO `doner_health` (`id`, `bloodgroup`, `height`, `weight`) VALUES
(0, '$bg', 0, 0),
(3, 'AB+', 168, 45),
(5, 'AB+', 190, 90),
(6, 'B+', 158, 48),
(47, 'Selct Blood Group', 0, 0),
(48, '1', 175, 45),
(57, '1', 175, 45),
(58, '3', 478, 55),
(59, 'B+', 179, 61),
(60, 'AB+', 169, 40),
(61, 'B-', 160, 0),
(62, 'B-', 175, 48),
(72, 'B+', 175, 48),
(76, 'B+', 148, 47),
(82, 'A+', 123, 123),
(83, 'A-', 123, 123);

-- --------------------------------------------------------

--
-- Table structure for table `doner_verifivation`
--

CREATE TABLE `doner_verifivation` (
  `id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `roll` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uid`, `username`, `password`, `roll`) VALUES
(1, 'admin', 'admin', '0'),
(2, 'john', 'john', '2'),
(3, 'drishya', 'drishya', '1'),
(4, 'doctor', 'doctor1234', '2'),
(5, 'radhu', 'radhu123', '1'),
(6, 'hira', 'hira', '1'),
(7, 'hh', 'hh123456', '2'),
(8, '', '', '2'),
(9, 'o', 'op', '2'),
(10, 'anu', 'anu', '2'),
(11, 'anju', 'anju123', '2'),
(12, 'u', 'u123', '2'),
(13, 'raju', 'Raju123*', '2'),
(14, 'ku', 'Ku123*', '2'),
(15, 'teste', 'Teste123*', '2'),
(16, 'asdd', '123', '2'),
(17, 'asdd', '123', '2'),
(18, 'asdd', '123', '2'),
(19, 'asdasd', 'ewerewr', '2'),
(20, 'cvbnm', 'Cvbnm123*', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doct_id`);

--
-- Indexes for table `doner`
--
ALTER TABLE `doner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doner_health`
--
ALTER TABLE `doner_health`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doner`
--
ALTER TABLE `doner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
