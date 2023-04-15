-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 02:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataform`
--

CREATE TABLE `dataform` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(55) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataform`
--

INSERT INTO `dataform` (`id`, `name`, `password`, `email`, `gender`, `image`) VALUES
(1, 'wafaa', '8cc016f059f54bd44a05972d7f3a0749', 'wafaaemadabousita@gmail.com', 2, 'php (1).png'),
(2, 'ahmed', '827ccb0eea8a706c4c34a16891f84e7b', 'wafaaemadabousita@gmail.com', 1, 'wafaa.jpeg'),
(3, 'Emad', 'c6c4bb9aaf64bac6eb10003681189ebb', 'nkjk@jhkjhhhhhhhhhhh', 1, 'wafaa.jpeg'),
(10, '<p>wafffffffffff</p>', 'aa04d3bcaf26712d85722df85fbd2551', 'wafaaemadabousita@gmail.com', 1, ''),
(11, '<script><h1>waff</h1></script>', 'e3251075554389fe91d17a794861d47b', 'wafaaemadabousita@gmail.com', 1, ''),
(12, '<script>alert(\" wafaa  \")</script>', 'e3251075554389fe91d17a794861d47b', 'wafaaemadabousita@gmail.com', 2, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataform`
--
ALTER TABLE `dataform`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataform`
--
ALTER TABLE `dataform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
