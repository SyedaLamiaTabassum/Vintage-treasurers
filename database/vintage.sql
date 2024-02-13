-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 12:00 PM
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
-- Database: `vintage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52'),
(2, 'suman', '123456789', 'suman@gmail.com', '', '2024-02-12 08:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`rs_id`, `c_id`, `title`, `image`, `date`) VALUES
(5, 1, 'Coins', '65c830a391851.jpg', '2024-02-11 02:27:47'),
(6, 2, 'Stamps', '65c830fc1a2d2.jpg', '2024-02-11 02:29:16'),
(7, 3, 'Jewellery', '65c8313e5d1bb.jpg', '2024-02-11 02:30:22'),
(8, 4, 'Cars', '65c8319d19df1.jpg', '2024-02-11 02:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 2, 'Old Gold', 'Golden West Refining Bullion Cast Bar (Rare)', 4999.00, '65c822706043d.png'),
(18, 3, 'Rolls Royce', 'This 1921 Rolls Royce Silver Ghost is a very early Springfield built, Willoughby Bodied Pickwick Town car.', 50000.00, '65c8265e9ac4f.jpg'),
(19, 1, 'Ring', 'This late Georgian ring holds a lock of hair behind glazing. The shoulders of the ring are delicate and decorative. ', 1000.00, '65c828388200a.jpg'),
(20, 4, 'George Washington postage stamp', '1868 postage stamp, there are only 4 stamps that currently exist.', 1000.00, '65c82ba5b550a.jpg'),
(21, 2, 'Queen Elizabeth II stamp', 'Australia 1967 5c QEII blue Mint unhinged booklet stamp.', 50.00, '65c82c7031ebd.jpg'),
(22, 3, 'Old African brass necklace', 'Old African necklace with brass beads with structure. ', 3000.00, '65c82da100625.jpg'),
(29, 0, '', '86', 0.00, '65cb4656c5c6b.png');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03'),
(13, 10, 'rejected', 'cance;', '2024-02-12 09:47:26'),
(14, 11, 'closed', 'delivered', '2024-02-12 09:47:44'),
(15, 12, 'in process', 'on way', '2024-02-12 09:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Coins', '2024-02-11 01:17:40'),
(2, 'Stamps', '2024-02-11 01:18:24'),
(3, 'Jewellery', '2024-02-11 01:18:40'),
(4, 'Cars', '2024-02-11 01:19:01'),
(6, 'bike', '2024-02-13 08:34:08'),
(12, 'paintings', '2024-02-13 10:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(7, 'suman', 'Suman', 'Nileri Venkataraju', 'nvsuman21@gmail.com', '0430601941', '0680c0c31e1abf47cfed563752e675c1', '3 MOATA CT', 1, '2024-02-12 08:22:30'),
(8, 'Pramada', 'Pramada', 'Ravipati', 'pramadaravipati@gmail.com', '0430601941', '2b5518a04b985b6f3d3a534b0b89b7cd', '3 MOATA CT', 1, '2024-02-13 10:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 4, 'Spring Rolls', 2, 6.00, 'rejected', '2022-05-27 11:43:26'),
(2, 4, 'Prawn Crackers', 1, 7.00, 'closed', '2022-05-27 11:11:41'),
(3, 5, 'Chicken Madeira', 1, 23.00, 'closed', '2022-05-27 11:42:35'),
(4, 5, 'Cheesy Mashed Potato', 1, 5.00, 'in process', '2022-05-27 11:42:55'),
(5, 5, 'Meatballs Penne Pasta', 1, 10.00, 'closed', '2022-05-27 13:18:03'),
(6, 5, 'Yorkshire Lamb Patties', 1, 14.00, NULL, '2022-05-27 11:40:51'),
(7, 6, 'Yorkshire Lamb Patties', 1, 14.00, 'closed', '2022-05-27 13:04:33'),
(8, 6, 'Lobster Thermidor', 1, 36.00, 'closed', '2022-05-27 13:05:24'),
(9, 6, 'Stuffed Jacket Potatoes', 1, 8.00, 'rejected', '2022-05-27 13:03:53'),
(10, 7, 'Rolls Royce', 1, 50000.00, 'rejected', '2024-02-12 09:47:26'),
(11, 7, 'Old Gold', 2, 4999.00, 'closed', '2024-02-12 09:47:44'),
(12, 7, 'Queen Elizabeth II stamp', 1, 50.00, 'in process', '2024-02-12 09:48:13'),
(15, 8, 'Old Gold', 1, 4999.00, NULL, '2024-02-13 10:33:57'),
(16, 8, 'Old Gold', 1, 4999.00, NULL, '2024-02-13 10:36:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
