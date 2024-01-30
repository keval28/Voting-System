-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 04:08 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aadhar`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar_info`
--

CREATE TABLE `aadhar_info` (
  `Name` char(50) NOT NULL,
  `Aadharno` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phoneno` varchar(10) NOT NULL,
  `Gender` char(50) NOT NULL,
  `Dob` date NOT NULL,
  `Is_registered` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `aadhar_info`
--

INSERT INTO `aadhar_info` (`Name`, `Aadharno`, `Email`, `Phoneno`, `Gender`, `Dob`, `Is_registered`) VALUES
('Ronak', '200125477780', 'kevalparakhiya4@gmail.com', '8874586420', 'male', '2001-05-04', 'YES'),
('Dhiraj', '447800564100', 'dhiraj15@gmail.com', '8895514720', 'male', '2001-05-15', 'no'),
('Tejas', '782945869600', 'kevalparakhiya01@gmail.com', '8725654562', 'male', '2001-08-21', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `Account_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Is_registered` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`Account_address`, `Is_registered`) VALUES
('0x9e4A8FFa878355E2e1205D34fd24CC683A2eD8Dd', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` char(50) DEFAULT NULL,
  `email_address` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `confirm_password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `first_name`, `last_name`, `gender`, `email_address`, `password`, `confirm_password`) VALUES
(1, 'Gokulad', NULL, NULL, 'gokulad@gmail.com', '12345678', '12345678'),
(2, 'Ronak', NULL, NULL, 'kevalparakhiya4@gmail.com', '87456321', '87456321'),
(4, 'Tejas', NULL, NULL, 'kevalparakhiya01@gmail.com', '12345678', '12345678'),
(9, 'Suresh', NULL, NULL, 'suresh@gmail.com', '14702580', '14702580');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aadhar_info`
--
ALTER TABLE `aadhar_info`
  ADD PRIMARY KEY (`Aadharno`);

--
-- Indexes for table `registered_users`
--
ALTER TABLE `registered_users`
  ADD PRIMARY KEY (`Account_address`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
