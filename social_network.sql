-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2022 at 01:55 PM
-- Server version: 8.0.30
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(1, 1, 'dfgsdgs', 'bg.png.31', '2022-11-04 10:12:54'),
(2, 3, 'xfgsdhshw', 'cursor.png.81', '2022-11-04 10:53:23'),
(3, 4, 'sgtsertesrtyer', 'bg.png.10', '2022-11-04 10:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(1, 'Andrii', 'Hensiruk', 'andrii_hensiruk_582003', 'Hello Coding Cafe.This is my default status!', '...', '123456789', 'Hensiruk@gmail.com', 'UK', 'Male', '1988-05-13', 'cursor.png.22', 'default_cover.jpg', '2022-11-04 09:33:34', 'verified', 'yes', 'Iwanttoputading intheuniverse.'),
(2, 'Anna', 'Yhac', 'anna_yhac_976754', 'Hello.This is my default status!', '...', '123456789', 'GHIo@xffsddf.com', 'Ukraine', 'Female', '2022-11-17', 'head_sun_flower.png', 'default_cover.jpg', '2022-11-04 10:51:02', 'verified', 'no', 'Iwanttoputading intheuniverse.'),
(3, 'Vala', 'Popadech', 'vala_popadech_640900', 'Hello.This is my default status!', '...', '123456789', 'Vala@gmail.com', 'Ukraine', 'Female', '2022-11-01', 'head_sun_flower.png', 'default_cover.jpg', '2022-11-04 10:52:19', 'verified', 'yes', 'Iwanttoputading intheuniverse.'),
(4, 'Sergy', 'Kotyk', 'sergy_kotyk_501094', 'Hello.This is my default status!', '...', '123456789', 'Sergy@gmail.com', 'Ukraine', 'Male', '2022-11-23', 'head_sun_flower.png', 'default_cover.jpg', '2022-11-04 10:54:38', 'verified', 'yes', 'Iwanttoputading intheuniverse.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
