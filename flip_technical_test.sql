-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2021 at 09:15 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flip_technical_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `disbursements`
--

CREATE TABLE `disbursements` (
  `id` int(11) NOT NULL,
  `transaction_id` bigint(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `time_served` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disbursements`
--

INSERT INTO `disbursements` (`id`, `transaction_id`, `status`, `receipt`, `time_served`, `created_at`, `updated_at`) VALUES
(29, 2147483647, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:18:16', '2021-01-22 19:18:16'),
(30, 2147483647, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:19:56', '2021-01-22 19:19:56'),
(31, 2147483647, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:21:32', '2021-01-22 19:21:32'),
(32, 123, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:21:27', '2021-01-22 19:22:26', '2021-01-22 19:22:27'),
(33, 123, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:22:42', '2021-01-22 19:22:42'),
(34, 123, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:24:03', '2021-01-22 19:24:03'),
(35, 2147483647, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:24:38', '2021-01-22 19:24:38'),
(36, 2147483647, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:27:37', '2021-01-22 19:27:37'),
(37, 783110841, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:29:21', '2021-01-22 19:29:21'),
(38, 4520686672, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:29:36', '2021-01-22 19:29:36'),
(39, 8357354277, 'PENDING', NULL, '0000-00-00 00:00:00', '2021-01-22 19:29:57', '2021-01-22 19:29:57'),
(40, 7678231956, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:30:54', '2021-01-22 19:31:54', '2021-01-22 19:31:54'),
(41, 1966088712, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:32:37', '2021-01-22 19:33:37', '2021-01-22 19:33:38'),
(42, 9803585833, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:33:28', '2021-01-22 19:34:28', '2021-01-22 19:34:29'),
(43, 1946221098, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:34:32', '2021-01-22 19:35:32', '2021-01-22 19:35:32'),
(44, 1876575953, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:36:29', '2021-01-22 19:37:29', '2021-01-22 19:37:29'),
(45, 4814698041, 'PENDING', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:37:20', '2021-01-22 19:38:20', '2021-01-22 19:38:20'),
(46, 5615610568, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:37:53', '2021-01-22 19:38:52', '2021-01-22 19:38:53'),
(47, 5876014580, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:39:12', '2021-01-22 19:40:12', '2021-01-22 19:40:12'),
(48, 8209458737, 'PENDING', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:40:49', '2021-01-22 19:41:49', '2021-01-22 19:41:49'),
(49, 7154049171, 'PENDING', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:46:29', '2021-01-22 19:47:28', '2021-01-22 19:47:29'),
(50, 8000030424, 'PENDING', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:48:07', '2021-01-22 19:49:07', '2021-01-22 19:49:07'),
(51, 9342129140, 'PENDING', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:50:09', '2021-01-22 19:51:09', '2021-01-22 19:51:09'),
(52, 2932672108, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:50:30', '2021-01-22 19:51:30', '2021-01-22 19:51:31'),
(53, 6428360843, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:50:46', '2021-01-22 19:51:46', '2021-01-22 19:51:46'),
(54, 616893382, 'PENDING', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:50:51', '2021-01-22 19:51:51', '2021-01-22 19:51:51'),
(55, 7524362183, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 19:59:45', '2021-01-22 20:00:45', '2021-01-22 20:00:45'),
(56, 3882039521, 'PENDING', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 20:00:20', '2021-01-22 20:01:20', '2021-01-22 20:01:20'),
(57, 2622898937, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 20:03:04', '2021-01-22 20:04:03', '2021-01-22 20:04:04'),
(58, 9582717011, 'PENDING', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 20:05:29', '2021-01-22 20:06:29', '2021-01-22 20:06:29'),
(59, 473304113, 'PENDING', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 20:05:54', '2021-01-22 20:06:53', '2021-01-22 20:06:54'),
(60, 2969444575, 'SUCCESS', 'https://flip-receipt.oss-ap-southeast-5.aliyuncs.com/debit_receipt/126316_3d07f9fef9612c7275b3c36f7e1e5762.jpg', '2021-01-22 20:06:41', '2021-01-22 20:07:41', '2021-01-22 20:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20210122175646-create-disbursement.js');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disbursements`
--
ALTER TABLE `disbursements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disbursements`
--
ALTER TABLE `disbursements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
