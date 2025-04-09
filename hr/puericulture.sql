-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2025 at 11:03 PM
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
-- Database: `puericulture`
--

-- --------------------------------------------------------

--
-- Table structure for table `pds_pi`
--

CREATE TABLE `pds_pi` (
  `pdspi_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pds_pi`
--

INSERT INTO `pds_pi` (`pdspi_id`, `users_id`) VALUES
(1, 8),
(2, 9),
(3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `personal_information_nd`
--

CREATE TABLE `personal_information_nd` (
  `personal_id_nd` int(11) NOT NULL,
  `pdspis_id` int(11) NOT NULL,
  `civil_status` varchar(100) NOT NULL,
  `height` int(20) NOT NULL,
  `weight` int(20) NOT NULL,
  `blood_type` varchar(10) NOT NULL,
  `pagibig_id_no` varchar(50) NOT NULL,
  `philhealth_no` varchar(50) NOT NULL,
  `sss_no` varchar(50) NOT NULL,
  `tin_no` varchar(50) NOT NULL,
  `agency_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_information_rd`
--

CREATE TABLE `personal_information_rd` (
  `personal_id_rd` int(11) NOT NULL,
  `pdspis_id` int(11) NOT NULL,
  `citizenship` varchar(100) NOT NULL,
  `house_block` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `subdivision` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `city_muntinlupa` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `zip_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_information_st`
--

CREATE TABLE `personal_information_st` (
  `personal_id` int(11) NOT NULL,
  `pdspis_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Middle_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_profile` varchar(255) NOT NULL,
  `name_extension` varchar(10) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `date_of_birth` varchar(50) DEFAULT NULL,
  `place_of_birth` varchar(50) DEFAULT NULL,
  `telephone_no` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_information_st`
--

INSERT INTO `personal_information_st` (`personal_id`, `pdspis_id`, `first_name`, `Last_name`, `Middle_name`, `email`, `user_profile`, `name_extension`, `sex`, `date_of_birth`, `place_of_birth`, `telephone_no`, `mobile_no`) VALUES
(1, 2, 'LELOUCH', 'BRITANIA', 'Vi', 'LL@gmail.com', '67dedc62a85dd-27a0f67f69d33df68efdd72c85a3df2c.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, 'asdasd', 'asdasd', 'asdas', 'dasdasd@gmail.com', '67e39c5989f6d-Internal-Audit-vs-External-Audit.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 'asdasd', 'asdasd', 'asdas', 'dasdasd@gmail.com', '67e39c5989f6d-Internal-Audit-vs-External-Audit.jpg', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_information_th`
--

CREATE TABLE `personal_information_th` (
  `personal_id_th` int(11) NOT NULL,
  `pdspis_id` int(11) NOT NULL,
  `perma_house_block` varchar(100) NOT NULL,
  `perma_street` varchar(100) NOT NULL,
  `perma_subdivision` varchar(100) NOT NULL,
  `perma_barangay` varchar(100) NOT NULL,
  `perma_city_muntinlupa` varchar(100) NOT NULL,
  `perma_province` varchar(100) NOT NULL,
  `perma_zip_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_role`, `created_at`) VALUES
(1, 'a', '$2y$10$NYFxqVRT/.OorPIAFy6guu3SJnzVzOgBsp9.tzljGySS0qQYAdG32', 'employee', '2025-03-14 17:02:01'),
(2, 'puericulture', '$2y$10$xfkH5QgdkbqzIHvwNBSqi.wvi2JO/TDlJHRe79yWZHFa7FLFr2Bkm', 'super_admin', '2025-03-14 17:07:47'),
(3, 'marcojean', '$2y$10$qORjzkrKpspDk6bXuNlWlO9WhfYMRaPjhDEIFdbRvaxA9y1uesy6y', 'employee', '2025-03-14 23:23:14'),
(4, 'kalokohan', '$2y$10$FLNP0zC1usllxyyUuflnlOJkiT5b9qCWI7PgZpbdTqd9cBCpqV4y.', 'employee', '2025-03-15 10:34:43'),
(5, 'jean', '$2y$10$sabk3A2abk1U3Y2rW29rCetLJaNhgQgiQ202BF15ZtuPhoQRn/7Ru', 'employee', '2025-03-21 00:30:27'),
(6, 'luffy', '$2y$10$ek00t79EPDEHkjF9uAqfjevV3kycnEoTwdCh/jrVJafL1ybWafaTe', 'employee', '2025-03-22 23:38:34'),
(7, 'luffyd', '$2y$10$fIW9OcW.TMdvki4d/JZtRuf3y3PX2sO7ua.QkGdaymXtt4hYzyzkG', 'employee', '2025-03-22 23:40:47'),
(8, 'luffdd', '$2y$10$PiNAhWTaqcMVQBJVDx1OEuZn.8amKPSMtkW5mkdvuX/huer6pPocy', 'employee', '2025-03-22 23:46:07'),
(9, 'lelouch', '$2y$10$kG7X/cdmvR5AC.5G/z4rvuXTjCsUvcF9bfoShuiUl/oGNNzXIzK2y', 'employee', '2025-03-22 23:50:58'),
(10, 'asdasdasdasdas', '$2y$10$8QXdKt8B2jMg07V6G97geuhHet.0kf4nQZH7LFURgB2z12LgDVq.2', 'employee', '2025-03-26 14:19:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pds_pi`
--
ALTER TABLE `pds_pi`
  ADD PRIMARY KEY (`pdspi_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `personal_information_nd`
--
ALTER TABLE `personal_information_nd`
  ADD PRIMARY KEY (`personal_id_nd`),
  ADD KEY `pdspis_id` (`pdspis_id`);

--
-- Indexes for table `personal_information_rd`
--
ALTER TABLE `personal_information_rd`
  ADD PRIMARY KEY (`personal_id_rd`),
  ADD KEY `pdspis_id` (`pdspis_id`);

--
-- Indexes for table `personal_information_st`
--
ALTER TABLE `personal_information_st`
  ADD PRIMARY KEY (`personal_id`),
  ADD KEY `pdspis_id` (`pdspis_id`);

--
-- Indexes for table `personal_information_th`
--
ALTER TABLE `personal_information_th`
  ADD PRIMARY KEY (`personal_id_th`),
  ADD KEY `pdspis_id` (`pdspis_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pds_pi`
--
ALTER TABLE `pds_pi`
  MODIFY `pdspi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_information_nd`
--
ALTER TABLE `personal_information_nd`
  MODIFY `personal_id_nd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_information_rd`
--
ALTER TABLE `personal_information_rd`
  MODIFY `personal_id_rd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_information_st`
--
ALTER TABLE `personal_information_st`
  MODIFY `personal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_information_th`
--
ALTER TABLE `personal_information_th`
  MODIFY `personal_id_th` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pds_pi`
--
ALTER TABLE `pds_pi`
  ADD CONSTRAINT `pds_pi_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `personal_information_nd`
--
ALTER TABLE `personal_information_nd`
  ADD CONSTRAINT `personal_information_nd_ibfk_1` FOREIGN KEY (`pdspis_id`) REFERENCES `pds_pi` (`pdspi_id`);

--
-- Constraints for table `personal_information_rd`
--
ALTER TABLE `personal_information_rd`
  ADD CONSTRAINT `personal_information_rd_ibfk_1` FOREIGN KEY (`pdspis_id`) REFERENCES `pds_pi` (`pdspi_id`);

--
-- Constraints for table `personal_information_st`
--
ALTER TABLE `personal_information_st`
  ADD CONSTRAINT `personal_information_st_ibfk_1` FOREIGN KEY (`pdspis_id`) REFERENCES `pds_pi` (`pdspi_id`);

--
-- Constraints for table `personal_information_th`
--
ALTER TABLE `personal_information_th`
  ADD CONSTRAINT `personal_information_th_ibfk_1` FOREIGN KEY (`pdspis_id`) REFERENCES `pds_pi` (`pdspi_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
