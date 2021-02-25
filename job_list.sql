-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2021 at 09:31 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Webentwicklung'),
(2, 'Softwareentwicklung'),
(5, 'Full-stack '),
(6, 'UI/UX Design');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `company` varchar(100) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `salary` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contact_user` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `category_id`, `company`, `job_title`, `description`, `salary`, `location`, `contact_user`, `contact_email`, `post_date`) VALUES
(1, 5, 'Morgan', 'Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '60,000 US', 'Saigon', 'Lan Nguyen', 'lannguyen@gmail.com', '2021-02-21 09:03:14'),
(2, 2, 'Elanano', 'Software Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '30,000 US', 'Berlin', 'Berliner Nguyen', 'berliner@gmail.com', '2021-02-21 09:03:14'),
(3, 6, 'Lansign', 'UX Designer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '50,000 US', 'China', 'Shanhaier', 'shanhaier@gmail.com', '2021-02-21 09:03:14'),
(4, 1, 'Webbuil', 'Webdeveloper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '50,000 US', 'Czech', 'Praha', 'praha@gmail.com', '2021-02-21 09:03:14'),
(5, 1, 'CBV Web', 'Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '120,000 US', 'Manhattan', 'Trump', 'trump@gmail.com', '2021-02-21 09:03:14'),
(6, 5, 'Huawei', 'Team leader', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '120,000 US', 'Boston', 'Jinping', 'ping@gmail.com', '2021-02-21 09:03:14'),
(7, 2, 'Softtech', 'Team leader', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '130,000 US', 'Brazil', 'Saro', 'saro@gmail.com', '2021-02-21 09:03:14'),
(8, 6, 'Tour mi', 'Team leader', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '340,000 US', 'Russia', 'Ivan', 'ivan@gmail.com', '2021-02-21 09:03:14'),
(9, 5, 'JK GMBH', 'Junior Entwickler', ' Klarna was founded in Stockholm, Sweden in 2005. Since then we\'ve changed the banking industry forever. And now we\'re creating the world\'s smoothest shopping experience. We serve over 90 million consumers worldwide, and partner with 200,000 merchants – with a new merchant joining us every 8 minutes. Including some of the world\'s leading brands, such as H&M, ASOS, IKEA, Adidas, Samsung and Lufthansa. Our offices are spread over 17 different markets, hosted by 3500+ employees from 90 nationalities.', '70,000 USD', 'Hamburg', 'Lana', 'lana@gmail.com', '2021-02-21 17:32:33'),
(10, 5, 'ABC Corp.', 'Senior Entwickler', ' Klarna was founded in Stockholm, Sweden in 2005. Since then we\'ve changed the banking industry forever. And now we\'re creating the world\'s smoothest shopping experience. We serve over 90 million consumers worldwide, and partner with 200,000 merchants – with a new merchant joining us every 8 minutes. Including some of the world\'s leading brands, such as H&M, ASOS, IKEA, Adidas, Samsung and Lufthansa. Our offices are spread over 17 different markets, hosted by 3500+ employees from 90 nationalities.', '56,000 US', 'London', 'John', 'john@gmail.com', '2021-02-21 17:32:33'),
(11, 1, 'remes GmbH', 'Softwareentwickler', ' Klarna was founded in Stockholm, Sweden in 2005. Since then we\'ve changed the banking industry forever. And now we\'re creating the world\'s smoothest shopping experience. We serve over 90 million consumers worldwide, and partner with 200,000 merchants – with a new merchant joining us every 8 minutes. Including some of the world\'s leading brands, such as H&M, ASOS, IKEA, Adidas, Samsung and Lufthansa. Our offices are spread over 17 different markets, hosted by 3500+ employees from 90 nationalities.', '80,000 US', 'Stuttgart', 'alan', 'alan@gmail.com', '2021-02-21 17:34:54'),
(12, 1, 'aka Corp', 'Entwickler', ' Klarna was founded in Stockholm, Sweden in 2005. Since then we\'ve changed the banking industry forever. And now we\'re creating the world\'s smoothest shopping experience. We serve over 90 million consumers worldwide, and partner with 200,000 merchants – with a new merchant joining us every 8 minutes. Including some of the world\'s leading brands, such as H&M, ASOS, IKEA, Adidas, Samsung and Lufthansa. Our offices are spread over 17 different markets, hosted by 3500+ employees from 90 nationalities.', '90,000 US', 'Paris', 'lan', 'lan@gmail.com', '2021-02-21 17:34:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
