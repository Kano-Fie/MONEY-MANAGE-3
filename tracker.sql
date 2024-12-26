-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 04:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `description`, `category`, `date`) VALUES
(2, 1, 5000, 'Seblak', 'Food', '2024-12-17 08:36:40'),
(3, 1, 5000, 'Nasi Padang', 'Food', '2024-12-24 03:42:23'),
(4, 1, 15000, '', 'Clothing', '2024-12-24 03:46:06'),
(5, 1, 350000, 'WIFI', 'Bills and Taxes', '2024-12-24 03:46:19'),
(7, 5, 15000, 'Nasi Padang', 'Food', '2024-12-26 02:57:24'),
(8, 5, 50000, 'Belanja Mingguan', 'Groceries', '2024-12-26 02:57:34'),
(9, 5, 250000, '', 'Transportation', '2024-12-26 02:57:47'),
(10, 5, 25000, 'Internet', 'Bills and Taxes', '2024-12-26 02:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `role`) VALUES
(1, 'kano', 'kano', 'kano123@gmail.com', 'kano', '$5$rounds=535000$nbTiLnvdgr6tzih3$QqADJy4IW0NmzrOhSkPBSuaU1LH6tliYy1AnE1XCSH4', 'user'),
(2, 'rizel', 'rizel', 'rizel@gmail.com', 'rizel', '$5$rounds=535000$UBpB/8W6BU6zauD2$pi0IWcq5R9WIJiD0dByPzrFc2DhSAbf/ZEZmJpb48j0', 'user'),
(3, 'laidy867', 'Laidy', 'novierahma09@gmail.com', 'Laidy', '$5$rounds=535000$KXPepHwB2EsLGOjC$/YAAx4nlXBhk.0.uLjBY18WFK4YtFhe.COTh2mapnT0', 'user'),
(4, '123', '123', '123@gmail.com', '123azerts', '$5$rounds=535000$9SZcjiFmW.jPYUlJ$iK.4ep9Lf27w.0BCkjE7qGdTyDnVE/feOkfiAxND8.8', 'user'),
(5, 'nana', 'nana', 'nana@gmail.com', 'nana', '$5$rounds=535000$m.xfoC3vDharDMCR$6.1ISEpWthDCZGER.ddsDLhgoTYpjZpV6twf4TgqjvD', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
