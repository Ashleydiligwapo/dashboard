-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 08:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `daily_sales` decimal(10,2) DEFAULT NULL,
  `weekly_sales` decimal(10,2) DEFAULT NULL,
  `monthly_sales` decimal(10,2) DEFAULT NULL,
  `yearly_sales` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `daily_sales`, `weekly_sales`, `monthly_sales`, `yearly_sales`) VALUES
(1, '2023-12-01', '100.50', '700.25', '3000.75', '0.00'),
(2, '2023-12-02', '120.75', '750.50', '3100.25', '0.00'),
(3, '2023-12-03', '90.25', '680.75', '2950.50', '0.00'),
(4, '0000-00-00', '100.00', '200.00', '300.00', '500.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(4, 'rex', '$2y$10$SeWUbou/QeA2xW3dK8IUzO//2UFKBjThmp4zcHmp81v34l1mL.6F6', 'admin'),
(5, 'mike', '$2y$10$tC8sFmbg9IUU9VsRKt3sEeac3vT.cGoJf3U8TV44bHG.EtRzJe286', NULL),
(6, 'mike', '$2y$10$NnPIO5HVZhEumhrKG5AX5uiJk2lY9Y8rwSNDsemlfahvAYm.q7Bfe', 'user'),
(7, 'paws', '$2y$10$sHjCAu.4dPRJ4qn1SstgiuZ9VxYU8xS6x0b./IuxZdACfOC1gWPOq', 'user'),
(8, 'mary', '$2y$10$CoZBFi4y.8FMkUNQf7n91e/umZlJnZT/JlHkXJ2QhlJHc/4WYYeG.', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
