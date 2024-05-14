-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 12:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liberian_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `center_tbl`
--

CREATE TABLE `center_tbl` (
  `center_name` varchar(255) NOT NULL,
  `center_code` int(11) NOT NULL,
  `center_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `center_tbl`
--

INSERT INTO `center_tbl` (`center_name`, `center_code`, `center_address`) VALUES
('UNILAK', 1000, 'Gasabo'),
('UTB', 1001, 'Kicukiro');

-- --------------------------------------------------------

--
-- Table structure for table `liberia_dbtable`
--

CREATE TABLE `liberia_dbtable` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `passport` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `school/work` varchar(255) NOT NULL,
  `center` varchar(255) NOT NULL,
  `center_address` varchar(255) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `liberia_dbtable`
--

INSERT INTO `liberia_dbtable` (`firstname`, `lastname`, `gender`, `dob`, `email`, `phone`, `passport`, `address`, `school/work`, `center`, `center_address`, `image`) VALUES
('Jonah K', 'Menson', 'Male', '2024-05-08', 'jonahmensonit@gmail.com', '+250787405492', 'PP0134908', 'KK314, Niboye', 'UNILAK', 'UTB', 'Gasabo', 0x75706c6f6164732f363633623465653637646130332e6a706567);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `center_tbl`
--
ALTER TABLE `center_tbl`
  ADD PRIMARY KEY (`center_code`);

--
-- Indexes for table `liberia_dbtable`
--
ALTER TABLE `liberia_dbtable`
  ADD PRIMARY KEY (`passport`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
