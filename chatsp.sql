-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2016 at 08:37 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chathistory`
--

CREATE TABLE `chathistory` (
  `id` int(10) UNSIGNED NOT NULL,
  `chater_id` int(11) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chathistory`
--

INSERT INTO `chathistory` (`id`, `chater_id`, `type`, `message`, `datetime`) VALUES
(38, 2, 2, 'bạn cần tôi giúp gì?', '2016-12-21 03:38:55'),
(39, 2, 2, 'vvv', '2016-12-21 03:39:07'),
(40, 7, 1, 'tôi cần mua iphone', '2016-12-21 03:41:15'),
(41, 2, 2, 'vâng', '2016-12-21 03:41:24'),
(42, 8, 2, 'chào bạn, mình cần hỗ trợ về cấu hình iphone', '2016-12-21 03:45:10'),
(43, 3, 2, 'chào bạn. tôi có thể giúp gì cho bạn', '2016-12-21 03:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `name`, `phone`) VALUES
(7, 'chinh@gmail.com', 'chinh', '01647826481'),
(8, 'nam@gmail.com', 'nam', '0927462977');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `level`, `customer_id`, `datetime`) VALUES
(1, 4, 1, '2016-12-15 14:12:20'),
(2, 1, 1, '2016-12-15 14:16:34'),
(3, 3, 1, '2016-12-15 15:19:30'),
(4, 4, 4, '2016-12-21 01:23:29'),
(5, 1, 7, '2016-12-21 03:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `supporter`
--

CREATE TABLE `supporter` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supporter`
--

INSERT INTO `supporter` (`id`, `name`, `email`, `phone`, `gender`, `type`) VALUES
(1, 'Nguyễn Đình Hoàng', 'nguyendinhhoang@gmail.com', '0987677566', 'Nam', 1),
(2, 'Nguyễn Tuyết Nhung', 'nguyentuyetnhung@gmail.com', '01678900255', 'Nữ', 1),
(3, 'Phan Đình Hải', 'phandinhhai@gmail.com', '0988765909', 'Nam', 2),
(4, 'Nguyễn Chinh', 'mongmanhk11b@gmail.com', '0975117407', 'Nam', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chathistory`
--
ALTER TABLE `chathistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supporter`
--
ALTER TABLE `supporter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chathistory`
--
ALTER TABLE `chathistory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `supporter`
--
ALTER TABLE `supporter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
