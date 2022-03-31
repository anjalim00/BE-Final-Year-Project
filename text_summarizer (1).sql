-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2022 at 05:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `text_summarizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip_address_details`
--

CREATE TABLE `ip_address_details` (
  `ip_address` varchar(20) NOT NULL,
  `count` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ip_address_details`
--

INSERT INTO `ip_address_details` (`ip_address`, `count`) VALUES
('127.0.0.1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`first_name`, `last_name`, `email`, `user_password`, `gender`) VALUES
('kevin', 'khimasia', 'kevinkhimasia13@gmail.com', '******', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_history`
--

CREATE TABLE `user_history` (
  `sr_no` int(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `notes_title` varchar(30) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `summary_title` varchar(30) DEFAULT NULL,
  `summary` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_history`
--

INSERT INTO `user_history` (`sr_no`, `email`, `notes_title`, `notes`, `summary_title`, `summary`, `date`) VALUES
(0, 'kevinkhimasia13@gmail.com', 'Chess is the most interesting ', 'Chess is a board game played between two players. It is sometimes called Western chess or internatio', 'Chess is a mind sport', 'Chess is a board game played between two players. It is sometimes called Western chess or internatio', '2022-03-25 13:14:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip_address_details`
--
ALTER TABLE `ip_address_details`
  ADD PRIMARY KEY (`ip_address`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user_history`
--
ALTER TABLE `user_history`
  ADD PRIMARY KEY (`sr_no`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
