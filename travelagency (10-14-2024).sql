-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2024 at 07:21 AM
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
-- Database: `travelagency`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `tourID` int(11) DEFAULT NULL,
  `contactID` int(11) NOT NULL,
  `status` enum('confirmed','pending','cancelled') NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `tourID`, `contactID`, `status`, `created_at`, `updated_at`) VALUES
(17, 31, 40, 'confirmed', '2024-10-13 03:03:00', '2024-10-14 12:17:07'),
(18, 32, 41, 'confirmed', '2024-10-13 04:37:25', '2024-10-13 04:37:25'),
(19, 33, 42, 'confirmed', '2024-10-13 04:39:05', '2024-10-13 04:39:05'),
(20, 34, 43, 'confirmed', '2024-10-14 06:14:49', '2024-10-14 06:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_firstName` varchar(50) NOT NULL,
  `contact_midInitial` varchar(10) NOT NULL,
  `contact_lastName` varchar(50) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_contactNumber` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_firstName`, `contact_midInitial`, `contact_lastName`, `contact_email`, `contact_contactNumber`, `created_at`, `updated_at`) VALUES
(40, 'sad', 'asda', 'dasdas', 'asdas', 'dasd', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(41, 'km', 'asda', 'sdas', 'asdasd', 'sdf', '2024-10-12 20:37:25', '2024-10-12 20:37:25'),
(42, 'asd', 'sad', 'asdas', 'dasd', 'asdasd', '2024-10-12 20:39:05', '2024-10-12 20:39:05'),
(43, 'Paul Joshua', 'sdasd', 'Mapula', 'mapula.pauljoshua@gmail.com', '09958541242', '2024-10-13 22:14:49', '2024-10-13 22:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `contact_passenger`
--

CREATE TABLE `contact_passenger` (
  `contact_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_passenger`
--

INSERT INTO `contact_passenger` (`contact_id`, `passenger_id`) VALUES
(40, 51),
(40, 52),
(40, 53),
(40, 54),
(40, 55),
(40, 56),
(40, 57),
(40, 58),
(40, 59),
(41, 60),
(41, 61),
(42, 62),
(42, 63),
(42, 64),
(43, 65);

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE `itinerary` (
  `id` int(11) NOT NULL,
  `tourPackageID` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `location` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`id`, `tourPackageID`, `day`, `activity`, `startTime`, `endTime`, `location`, `created_at`, `updated_at`) VALUES
(54, 29, 1, 'Tour Colosseum', '09:00:00', '11:00:00', 'Colosseum', '2024-10-01 14:30:58', '2024-10-14 01:45:02'),
(55, 29, 2, 'Visit Vatican Museums', '10:00:00', '13:00:00', 'Vatican City', '2024-10-01 14:30:58', '2024-10-01 14:30:58'),
(56, 29, 3, 'Walk through Roman Forum', '09:00:00', '11:00:00', 'Roman Forum', '2024-10-01 14:30:58', '2024-10-01 14:30:58'),
(57, 29, 4, 'Explore Pantheon', '10:00:00', '12:00:00', 'Pantheon', '2024-10-01 14:30:58', '2024-10-01 14:30:58'),
(58, 29, 5, 'Visit Trevi Fountain', '11:00:00', '13:00:00', 'Trevi Fountain', '2024-10-01 14:30:58', '2024-10-01 14:30:58'),
(59, 30, 1, 'Sydney Opera House Tour', '09:00:00', '11:00:00', 'Sydney Opera House', '2024-10-01 14:32:24', '2024-10-01 14:32:24'),
(60, 30, 2, 'Visit Taronga Zoo', '10:00:00', '12:00:00', 'Taronga Zoo', '2024-10-01 14:32:24', '2024-10-01 14:32:24'),
(61, 30, 3, 'Bondi Beach Visit', '10:00:00', '12:00:00', 'Bondi Beach', '2024-10-01 14:32:24', '2024-10-01 14:32:24'),
(62, 30, 4, 'Explore Darling Harbour', '14:00:00', '16:00:00', 'Darling Harbour', '2024-10-01 14:32:24', '2024-10-01 14:32:24'),
(63, 31, 1, 'Grand Palace Tour', '09:00:00', '11:00:00', 'Grand Palace', '2024-10-01 14:32:33', '2024-10-01 14:32:33'),
(64, 31, 2, 'Visit Wat Arun', '10:00:00', '12:00:00', 'Wat Arun', '2024-10-01 14:32:33', '2024-10-01 14:32:33'),
(65, 31, 3, 'Street Food Tour', '12:00:00', '14:00:00', 'Bangkok Streets', '2024-10-01 14:32:33', '2024-10-01 14:32:33'),
(66, 31, 4, 'Explore Chatuchak Market', '09:00:00', '11:00:00', 'Chatuchak Market', '2024-10-01 14:32:33', '2024-10-01 14:32:33'),
(67, 31, 5, 'Visit Jim Thompson House', '10:00:00', '12:00:00', 'Jim Thompson House', '2024-10-01 14:32:33', '2024-10-01 14:32:33'),
(68, 32, 1, 'Table Mountain Hike', '08:00:00', '12:00:00', 'Table Mountain', '2024-10-01 14:32:42', '2024-10-01 14:32:42'),
(69, 32, 2, 'Visit Kirstenbosch Gardens', '10:00:00', '12:00:00', 'Kirstenbosch', '2024-10-01 14:32:42', '2024-10-01 14:32:42'),
(70, 32, 3, 'Robben Island Tour', '09:00:00', '11:00:00', 'Robben Island', '2024-10-01 14:32:42', '2024-10-01 14:32:42'),
(71, 32, 4, 'Explore V&A Waterfront', '14:00:00', '16:00:00', 'V&A Waterfront', '2024-10-01 14:32:42', '2024-10-01 14:32:42'),
(72, 32, 5, 'Cape Point Tour', '09:00:00', '12:00:00', 'Cape Point', '2024-10-01 14:32:42', '2024-10-01 14:32:42'),
(73, 32, 6, 'Wine Tasting in Stellenbosch', '13:00:00', '15:00:00', 'Stellenbosch', '2024-10-01 14:32:42', '2024-10-01 14:32:42'),
(74, 33, 1, 'Christ the Redeemer Visit', '09:00:00', '11:00:00', 'Corcovado Mountain', '2024-10-01 14:34:32', '2024-10-01 14:34:32'),
(75, 33, 2, 'Copacabana Beach Visit', '10:00:00', '12:00:00', 'Copacabana', '2024-10-01 14:34:32', '2024-10-01 14:34:32'),
(76, 33, 3, 'Sugarloaf Mountain Tour', '09:00:00', '11:00:00', 'Sugarloaf Mountain', '2024-10-01 14:34:32', '2024-10-01 14:34:32'),
(77, 33, 4, 'Explore Tijuca Forest', '10:00:00', '12:00:00', 'Tijuca Forest', '2024-10-01 14:34:32', '2024-10-01 14:34:32'),
(78, 33, 5, 'Visit Maracanã Stadium', '14:00:00', '16:00:00', 'Maracanã', '2024-10-01 14:34:32', '2024-10-01 14:34:32'),
(79, 34, 1, 'Burj Khalifa Tour', '09:00:00', '11:00:00', 'Burj Khalifa', '2024-10-01 14:36:05', '2024-10-01 14:36:05'),
(80, 34, 2, 'Desert Safari', '15:00:00', '19:00:00', 'Dubai Desert', '2024-10-01 14:36:05', '2024-10-01 14:36:05'),
(81, 34, 3, 'Visit Dubai Mall', '10:00:00', '12:00:00', 'Dubai Mall', '2024-10-01 14:36:05', '2024-10-01 14:36:05'),
(82, 34, 4, 'Explore Palm Jumeirah', '14:00:00', '16:00:00', 'Palm Jumeirah', '2024-10-01 14:36:05', '2024-10-01 14:36:05'),
(83, 35, 1, 'Hagia Sophia Tour', '09:00:00', '11:00:00', 'Hagia Sophia', '2024-10-01 14:36:15', '2024-10-01 14:36:15'),
(84, 35, 2, 'Grand Bazaar Visit', '12:00:00', '14:00:00', 'Grand Bazaar', '2024-10-01 14:36:15', '2024-10-01 14:36:15'),
(85, 35, 3, 'Blue Mosque Tour', '09:00:00', '11:00:00', 'Blue Mosque', '2024-10-01 14:36:15', '2024-10-01 14:36:15'),
(86, 35, 4, 'Topkapi Palace Tour', '10:00:00', '12:00:00', 'Topkapi Palace', '2024-10-01 14:36:15', '2024-10-01 14:36:15'),
(87, 35, 5, 'Bosphorus Cruise', '14:00:00', '16:00:00', 'Bosphorus Strait', '2024-10-01 14:36:15', '2024-10-01 14:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `passengerTitle` varchar(10) NOT NULL,
  `passengerFname` varchar(50) NOT NULL,
  `passengerMinit` char(1) DEFAULT NULL,
  `passengerLname` varchar(50) NOT NULL,
  `passengerBirthday` date NOT NULL,
  `passengerGender` varchar(10) NOT NULL,
  `passengerNationality` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `passengerTitle`, `passengerFname`, `passengerMinit`, `passengerLname`, `passengerBirthday`, `passengerGender`, `passengerNationality`, `created_at`, `updated_at`) VALUES
(47, 'Mr.', 'dsa', 's', 'asdasd', '2024-10-16', 'Male', 'asd', '2024-10-12 17:42:43', '2024-10-12 17:42:43'),
(48, 'Ms.', 'asdasd', 'a', 'dasdas', '2024-09-30', 'Male', 'asdasdasd', '2024-10-12 17:42:43', '2024-10-12 17:42:43'),
(49, 'Mr.', 'Paul Joshua', 's', 'Mapula', '2024-10-24', 'Male', 'asdasd', '2024-10-12 17:42:43', '2024-10-12 17:42:43'),
(50, 'Ms.', 'sadsd', 'a', 'sadsa', '2024-10-18', 'Male', 'asdad', '2024-10-12 17:42:43', '2024-10-12 17:42:43'),
(51, 'Mr.', 'Paul Joshua v7', 's', 'Mapula', '2024-10-15', 'Male', 'faf', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(52, 'Mr.', 'Paul Joshua v1', 's', 'Mapula', '2024-10-15', 'Male', 'faf', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(53, 'Ms.', 'Paul Joshua', 's', 'Mapula', '2024-10-01', 'Male', 'asdasd', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(54, 'Ms.', 'Paul Joshua', 'a', 'Mapula', '2024-10-09', 'Female', 'asd', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(55, 'Mrs.', 'Paul Joshua v2', 'a', 'Mapula', '2024-10-16', 'Male', 'sadsad', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(56, 'Ms.', 'asdsad', 'A', 'asdasd', '2024-10-09', 'Male', 'sad', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(57, 'Mr.', 'asd', 'A', 'asdas', '2024-10-09', 'Male', 'sadasd', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(58, 'Mr.', 'Paul Joshua', 's', 'Mapula', '2024-10-16', 'Male', 'asdsad', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(59, 'Mr.', 'Paul Joshua', 's', 'Mapula', '2024-10-16', 'Male', 'asdsad', '2024-10-12 19:03:00', '2024-10-12 19:03:00'),
(60, 'Mr.', 'Paul Joshua', 's', 'Mapula', '2024-10-10', 'Male', 'dasd', '2024-10-12 20:37:25', '2024-10-12 20:37:25'),
(61, 'Mr.', 'Paul Joshua', 'a', 'Mapula', '2024-10-09', 'Male', 'asd', '2024-10-12 20:37:25', '2024-10-12 20:37:25'),
(62, 'Ms.', 'sd', 's', 'asd', '2024-10-08', 'Male', 'asdasd', '2024-10-12 20:39:05', '2024-10-12 20:39:05'),
(63, 'Ms.', 'asdasd', 's', 'sadasd', '2024-09-30', 'Female', 'asdasd', '2024-10-12 20:39:05', '2024-10-12 20:39:05'),
(64, 'Ms.', 'asdas', 'd', 'asd', '2024-09-29', 'Male', 'asdasd', '2024-10-12 20:39:05', '2024-10-12 20:39:05'),
(65, 'Ms.', 'Paul Joshua', 's', 'Mapula', '2024-10-02', 'Male', 'SAFSAF', '2024-10-13 22:14:49', '2024-10-13 22:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_bin`
--

CREATE TABLE `passenger_bin` (
  `id` int(11) NOT NULL,
  `passengerTitle` varchar(10) NOT NULL,
  `passengerFname` varchar(50) NOT NULL,
  `passengerMinit` varchar(10) NOT NULL,
  `passengerLname` varchar(50) NOT NULL,
  `passengerBirthday` date NOT NULL,
  `passengerGender` varchar(10) NOT NULL,
  `passengerNationality` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `id` int(11) NOT NULL,
  `tourPackageID` int(11) DEFAULT NULL,
  `tourStartDate` date NOT NULL,
  `tourEndDate` date NOT NULL,
  `status` enum('confirmed','pending','cancelled') NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id`, `tourPackageID`, `tourStartDate`, `tourEndDate`, `status`, `created_at`, `updated_at`) VALUES
(30, 29, '2024-10-16', '2024-10-21', 'confirmed', '2024-10-13 01:42:43', '2024-10-13 01:42:43'),
(31, 29, '2024-10-09', '2024-10-14', 'confirmed', '2024-10-13 03:03:00', '2024-10-13 03:03:00'),
(32, 29, '2024-10-23', '2024-10-28', 'confirmed', '2024-10-13 04:37:25', '2024-10-13 04:37:25'),
(33, 29, '2024-10-14', '2024-10-19', 'confirmed', '2024-10-13 04:39:05', '2024-10-13 04:39:05'),
(34, 29, '2024-10-16', '2024-10-21', 'confirmed', '2024-10-14 06:14:49', '2024-10-14 12:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `tourpackage`
--

CREATE TABLE `tourpackage` (
  `tourpackage_id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tourDescription` mediumtext NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourpackage`
--

INSERT INTO `tourpackage` (`tourpackage_id`, `city`, `country`, `price`, `tourDescription`, `duration`, `created_at`, `updated_at`) VALUES
(29, 'Rome', 'Italy', 1700.00, 'Journey through the historic city of Rome with guided tours of ancient sites.', 5, '2024-10-01 14:27:32', '2024-10-14 02:51:49'),
(30, 'Sydney', 'Australia', 1600.00, 'Enjoy the beautiful city of Sydney with beach visits and city tours.', 4, '2024-10-01 14:27:32', '2024-10-01 14:27:32'),
(31, 'Bangkok', 'Thailand', 1400.00, 'Immerse yourself in the vibrant culture of Bangkok with temple visits and street food tours.', 5, '2024-10-01 14:27:32', '2024-10-01 14:27:32'),
(32, 'Cape Town', 'South Africa', 1900.00, 'Explore the scenic beauty of Cape Town with nature tours and city excursions.', 6, '2024-10-01 14:27:32', '2024-10-01 14:27:32'),
(33, 'Rio de Janeiro', 'Brazil', 1750.00, 'Experience the lively city of Rio with beach visits and cultural tours.', 5, '2024-10-01 14:27:32', '2024-10-01 14:27:32'),
(34, 'Dubai', 'UAE', 2100.00, 'Discover the modern marvels of Dubai with luxury tours and desert safaris.', 4, '2024-10-01 14:27:32', '2024-10-01 14:27:32'),
(35, 'Istanbul', 'Turkey', 1600.00, 'Explore the historic and cultural richness of Istanbul with guided tours.', 5, '2024-10-01 14:27:32', '2024-10-01 14:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `useradmin`
--

CREATE TABLE `useradmin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useradmin`
--

INSERT INTO `useradmin` (`id`, `username`, `email`, `pass`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin1@gmail.com', '8e9945f44fe5d1065fc61f4510b7f6c2fbbbb8bb1bded6f8994e057a880013fc7da7fd2c64c5e3fee23a01eb98790a15c08180761d01211fd94251c537d9d2d5/Gis4CL+PmlSvTY5TqpOjM/wctIOP8afZ3sjsR/U7GQ=', '2024-10-12 18:24:16', '2024-10-13 10:24:16'),
(2, 'ushuay', 'asdadadad@adad', 'd56f5d7f4ee3351e9a2f74619f19f3a69528f8f2b26c3d5c62dfb8c4ddcb007a069bf918bb26a7af0c488ae4ad241e1cccd3921de0353d273942904c1dd99047LRXkZ7cXU1HpDdHLLoe/VhuDwWao8nw9O84HeuumAFw=', '2024-10-13 19:19:10', '2024-10-14 03:19:10'),
(3, 'ushuay.admin', 'asdadadad@ada13123d', 'ca415a4d72e2bab3e7c580d83da16775ec629693d1161681bd47a320e525172755ca025910523a955a42c337504504f54183dbf39cebff81332741d323c911e7RSCaOHy587FkVxdNZ5GLV6+dxuGwi63FD8Ic/E/VRCM=', '2024-10-13 19:20:46', '2024-10-14 03:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `username`, `email`, `pass`, `created_at`, `updated_at`) VALUES
(1, 'user5', 'sherina@gmail.com', '$2y$10$DrtNHKw1t69SwowTnRt7DecmVxh8mtdXHmaYRwTgWoj7k0Oh.HlXG', '2024-09-29 20:54:03', '2024-09-29 20:54:03'),
(10, 'user6', 'ariel@gmail.com', '$2y$10$l04IDiYtTZBPyit2.FRgYeIpnH9KN1FgfwgW04ONRLeEhbmX9S7Ua', '2024-09-29 20:55:10', '2024-09-29 20:55:10'),
(12, 'user8', 'wild@gmail.com', '$2y$10$JXLpsyCTUwA0rYgMwa0Opum/3.FKoj0YiWreBCMx2B/XeMUEVfLAG', '2024-09-29 20:56:39', '2024-09-29 20:56:39'),
(14, 'user9', 'mapul123123a.pauljoshua@gmail.com', '$2y$10$aFtdWhrAC.5/iAr2Pb604../AlxiIGT39lZCBGlTeQF0i6R13CjMa', '2024-09-29 20:57:54', '2024-09-29 20:57:54'),
(16, 'user10', 'sa.pauljoshua@gmail.com', '$2y$10$TTBf8CCIGW1W219X3sNj/OvEceZRSy9oPQ6kbHmv7IPEPZ9B/CfPy', '2024-09-29 20:59:37', '2024-09-29 20:59:37'),
(17, 'user11', 'sdda.pauljoshua@gmail.com', '$2y$10$ySdtwTDQJJq4IGbRlysDz.0ms5wm1t5VUnqsmy1QvLC6furXfZ94i', '2024-09-29 21:00:50', '2024-09-29 21:00:50'),
(19, 'user12', 'sadla.pauljoshua@gmail.com', '$2y$10$BH3gaac8MqywSLEoKdbuTu6KB/hKZkvPEgceEuZ41dwfnNaevThJO', '2024-09-29 21:02:48', '2024-09-29 21:02:48'),
(20, 'user13', 'dggg.pauljoshua@gmail.com', '$2y$10$9JegdDxGLMRbUfN8crUHduz1NI4wxa7RmBH4m9MhVQ7SXBZBGqQt2', '2024-09-29 21:08:15', '2024-09-29 21:08:15'),
(21, 'user14', 'bbbb.pauljoshua@gmail.com', '$2y$10$WcmhdZf8FdxusIj9b/oIs.6VegzXqST6m7PUGoGP7ps7Ox9MXydfK', '2024-09-29 21:09:21', '2024-09-29 21:09:21'),
(22, 'user15', 'nnn.pauljoshua@gmail.com', '$2y$10$f76atJOhuuqt0C3CNoX18.UtWKVAq24SGD3oGycbJ6IoW/tLIbBy2', '2024-09-29 21:12:35', '2024-09-29 21:12:35'),
(23, 'user16', 'sddssda.pauljoshua@gmail.com', '$2y$10$Ajjob4uvpCTopMyMyg/TyeG2v1WKKSmBvthiinXq.w1YyZOn05JYW', '2024-09-29 21:27:55', '2024-09-29 21:27:55'),
(25, 'user17', 'vvva.pauljoshua@gmail.com', '$2y$10$wTkzaNuoyx/rMOG.sl39JOq0D6HFhswIEq33w9RMtyR52b1E5ByXS', '2024-09-29 21:36:53', '2024-09-29 21:36:53'),
(28, 'user18', 'vba.pauljoshua@gmail.com', '$2y$10$ac1JdvXpO0EiY/ocRtuEIui8N7umMLnagjO7n158oPDULKyuPIsIq', '2024-09-29 21:37:55', '2024-09-29 21:37:55'),
(30, 'user19', 'mauljoshua@gmail.com', '$2y$10$EW.tz439.3mP.80WG1VlBexNnfd0XW1gL61gUFGao7NQsUMZudyC.', '2024-09-29 21:42:03', '2024-09-29 21:42:03'),
(33, 'user20', 'mmula.pauljoshua@gmail.com', '$2y$10$qfNgVseg1I/VAwtxlHnHVeA99rWHzCNEy1jOAS0c.jZgk0rS6EJOC', '2024-09-29 21:43:32', '2024-09-29 21:43:32'),
(35, 'user21', 'mba.pauljoshua@gmail.com', '$2y$10$nuI1pbZFaQSdf6SEI2O7TOsB39ZrjCEhI7HT3H5JYf.Akzrjgg7ie', '2024-09-29 21:44:05', '2024-09-29 21:44:05'),
(36, 'user22', 'bmapula.pauljoshua@gmail.com', '$2y$10$26wQT6PSYjbiBVQPnsCLlusvwJC3d6cxpeykr6F0HePOhxOh.YwkK', '2024-09-29 21:44:40', '2024-09-29 21:44:40'),
(37, 'user23', 'ghapula.pauljoshua@gmail.com', '$2y$10$VyTaJ9WMQSYVdRvKBg30vuQPLJ2xsd1RtA20rL5JWYsu8cSeFYajC', '2024-09-29 21:45:22', '2024-09-29 21:45:22'),
(39, 'user24', 'ymapula.pauljoshua@gmail.com', '$2y$10$I4A3Pp9jJgb3rAST2Emp8.3YSRg4etXG7T/TAp9mN2q4ZSiB4NaBa', '2024-09-29 21:45:52', '2024-09-29 21:45:52'),
(40, 'user24', 'bbbbbula.pauljoshua@gmail.com', '$2y$10$zYir8GSBWbeWlISlvMfMjO3xv7hzkVhxfgutQVXAy3Y6L.ZJhBl4m', '2024-09-29 21:48:35', '2024-09-29 21:48:35'),
(42, 'user25', 'mbfbfpula.pauljoshua@gmail.com', '$2y$10$7M58mRDEw9dU2BYQCPN66uMKh8aUEK1iDSkFZHcE0beigmkS4nH0e', '2024-09-29 21:49:42', '2024-09-29 21:49:42'),
(43, 'user26', 'mafffpula.pauljoshua@gmail.com', '$2y$10$OtXePVZnPApagF8jnKzBlO2iXDAqfv06uydZBtCvu11gnwOMv/tNu', '2024-09-29 21:53:55', '2024-09-29 21:53:55'),
(79, 'paul', 'mapula.pauljoshua@gmail.com', 'c64446e21af23681467645c4936722e806bc5269294870ad54d206a070cd0312e69f2648c462f5b101f06f21c440bc41a7a7965a63a60457a5c4f8abd4ecd449OHL4wZo+fXdOuvyJnI/pNjRt1KjhDEVo9v1uHbYpSlo=', '2024-09-30 19:50:05', '2024-09-30 19:50:05'),
(80, 'ushuay', 'mapulasd.pauljoshua@gmail.com', 'ae34ca5e7e2a9e77b63fd9fe6fed44b2c40e3449aee5133391a54643b6c98af99f64de92c8e08746adf1e0fdfe253e722c86863a398a292cd8b0bd7b2fee50edvTw1c7+jo8c+yxNzkTfRXY9OBRq/ZW0qDHyi6ky6l1w=', '2024-09-30 19:52:12', '2024-09-30 19:52:12'),
(81, '123', 'msdapula.pauljoshua@gmail.com', 'c4a35a93b9fb09bb2e9a06aa5f9f1ef1ce780579f623c83711070893a10076d394e788e917a279b637e227c9392612f0a5d854ec033a9c5ddf7271ed36a9d918HKZj0FmZqhm22k+AvcREL9uNse50Vjcg+Myz4qVjQrk=', '2024-09-30 21:43:37', '2024-09-30 21:43:37'),
(83, 'mapula', 'mapula.paudgsdggljoshua@gmail.com', '66d4aaf8aeb930dcd9de60218cc8b93c623d84c81111c7d28bf90e6d6f9d3483d607d171c9a6a15795f2afb2816d6f5ae4c600aa52175e2104674b647a4559cd2xyyC0CQSQn6ar3XU2GCX3JPN25PrxaCVgTL916txXU=', '2024-09-30 23:01:49', '2024-09-30 23:01:49'),
(84, 'sean123', 'saj.labrador@gmail.com', '$2y$10$weW4y5tfZt1R2ZcazCzy4eB884Mm9q4/mbXw3UU9A0ZTKXGS6I8Pq', '2024-10-10 05:39:03', '2024-10-10 05:39:03'),
(86, 'seanlabrador', '2022-02459@sanbeda.edu.ph', '53ea55dec0f4e7cfc70e383ad370cc090fd0c81e59eaa93de13d6a3294068d5726b3a5832e9351f904d187af7b27e5108704d6cf19755c369a61f48c6eee9f616m7o22Jlvp8M9bbn3jN3D92aF24W1dG6z7KEL6nHn38=', '2024-10-12 23:49:29', '2024-10-12 23:49:29'),
(87, 'andrei', 'andreijeremy@gmail.com', '6b2a3187e93430a84d88dc3db368eabb0b586e2c0e4b6cb5890fac830fca47f04490d59eea7f8e217e1f2ecf63e4fad97b4c2036eec5460ef52214988082a9fbM738IXPLCIHASsWUUPjvDiaiO7HO7rn1EEp5B3fYZaI=', '2024-10-13 00:11:13', '2024-10-13 00:11:13'),
(88, 'shanelle', 'sc.cooper@gmail.com', '515c16e44059df2cbd79a493841c80f3c6531567d0ecf6c3a8583df2539a051da0cfdac2367a3bfcadb307e09d99763d170b279b5bbe6324fc83746d8b5979bfCStE5Ke9vpWUZNln++JD4Jx1QjAyQOG4GvAODiZR3pI=', '2024-10-13 00:12:52', '2024-10-13 00:12:52'),
(89, 'ushuay', '12421421412412', '921836e75d34e0296fbe71245569ecc9da62dd94b0d988443a459cc0c7008fc9aac7367cfe6b7439a4f80ce726491e86889615ba4f4b9b86e882d9f16b44597dqF02M0Il0TXif2RhMv92x/0NpljwtbNyvz6D725+6/k=', '2024-10-14 01:17:24', '2024-10-14 01:17:24'),
(90, 'ushuay', 'mapula.pauljoshua@gmail.com123213', '6803b9502bfb5d7e7d3d09f0419c06a28d58e212c1d7a682b19672724ad034608798570ba8da72404a8f5bbe7c948a57f64778787423b0bd678ee86ce5ae1b515mnFn1oUV9VB20yzT3IAvMfRonSAjFKO8cyPCP4fnbY=', '2024-10-14 02:56:34', '2024-10-14 02:56:34'),
(91, 'ushuay', 'mapula.pauljoshua@gmail.csdasdasdaom', '69543b803dec3d5ffda465003f75c1257d8876ff3f43e39e1b0102d894570fcaf5bc9f5726cef16331a213f34a2d39c33a790a565374490703943fe6f19858c93jQ6d2ZtnReFoandnka5eJU5jMagGlvBmdHiFSUdNQY=', '2024-10-14 02:58:07', '2024-10-14 02:58:07'),
(94, 'ushuay', 'mapula.pauljoshua@g123wasdmail.com', '71a4980f147a1424534b3b043c1348fe420dcba9f4935c090a2c92cc8b81aa1469e2d900be2dd241b890c162f7d161d897a37f0a9ddf1a4470d60ef22aed291c7u5uSlej5pwNp0lzr346kKsUUaTES6bYJ5rrkjV8eag=', '2024-10-14 02:59:24', '2024-10-14 02:59:24'),
(96, 'ushuay', 'mapuasdasdadla.pauljoshua@gmail.com', 'f21354fa2479b2f55a3abddada24ba0d821681c90ddcaca69109ca81d93a388e6a7a2acf196c6aa9d8c526aa2658e40103a05ce516eda05bd6082bb8ab2b557eyZ2oMUDeYUMty9bviSZpsVqS6ZFScxAKlP6KfiLyK5E=', '2024-10-14 03:01:16', '2024-10-14 03:01:16'),
(99, 'ushuay', 'mapula.pauljoshua@gm12323ail.com', '07ea7a436a1633e538012a98996ef08c60859b6d2267df005d6f4a4090076a4688de5884d9777deb78bc3b3e4c9a19d452b40045c6b6014135186499212849335DfCfYPOzgLYZe5xoF5PdYDvr2wixFWrcwfcfGw5SHE=', '2024-10-14 03:11:42', '2024-10-14 03:11:42'),
(101, 'ushuay', 'mapula.pauljoshua@g312342mail.com', 'c46e89a24ae647e25b10f1f0318e92e94dd5baa31d2dc410f16e51fab716d9f276d7b743381594a8ca1e838bc1fd021c6b030e4147895d3cafdfd8b584c36bb4SnhyOpT8SY4FfJ0ItAto+cHphY3Gk9HPm/3edz6/KJo=', '2024-10-14 03:12:52', '2024-10-14 03:12:52'),
(103, 'ushuay', '123123123@213123', 'bef9b403ee15f3169c65178186212df4513869b6fed6247348e2584b164885538ca97b78d90cfac2491f532def8e16a38af6f12ac6f74183ed724b52cff64db5mdSq/4k0bGEuClIqboAvXa++XAonuXGFkmeRvY0KaZg=', '2024-10-14 03:13:41', '2024-10-14 03:13:41'),
(107, 'ushuay', 'mapula.pauljoshua@g12421ssdmail.com', 'fd2fa02d6c42ec48a56ffa8e93dde1aacc39d8ea298995183f8f24be0a63ce892f2125257bf8d11c623b36b7dcee8c46a076fcd03ae335f65494bfb4361a9dd5x4vyj8anPbnl/eG/ZQ9P90ZmMeToaWH4K468uMuTXi0=', '2024-10-14 03:16:25', '2024-10-14 03:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `midInitial` char(1) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobileNum` varchar(15) DEFAULT NULL,
  `bday` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `loginID` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `username`, `pass`, `firstName`, `midInitial`, `lastName`, `email`, `mobileNum`, `bday`, `gender`, `nationality`, `loginID`, `created_at`, `updated_at`) VALUES
(6, 'user3', 'user3', 'Juan', 'G', 'Dela Cruz', 'marquez.pauljoshua@gmail.com', '09958541242', '2024-09-11', 'Female', 'Filipino ', NULL, '2024-09-29 14:29:20', '2024-10-14 05:13:55'),
(7, NULL, '$2y$10$rfeLd8nwyB8aRCdo5k2h5exsf3zMs.f4DtvtmbRWrlETiP0UDZvvq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-29 14:31:57', '2024-10-08 06:20:44'),
(8, 'user9', '$2y$10$aFtdWhrAC.5/iAr2Pb604../AlxiIGT39lZCBGlTeQF0i6R13CjMa', 'Paul Joshua', '', 'Mapula', 'mapul123123a.pauljoshua@gmail.com', '09958541242', '2024-09-11', 'Male', 'Filipino', 14, '2024-09-29 14:57:54', '2024-09-29 14:57:54'),
(9, 'user10', '$2y$10$TTBf8CCIGW1W219X3sNj/OvEceZRSy9oPQ6kbHmv7IPEPZ9B/CfPy', 'Paul Joshua', '', 'Mapula', 'sa.pauljoshua@gmail.com', '09958541242', '2024-09-11', 'Male', 'Filipino', 16, '2024-09-29 14:59:37', '2024-09-29 14:59:37'),
(10, 'user12', '$2y$10$BH3gaac8MqywSLEoKdbuTu6KB/hKZkvPEgceEuZ41dwfnNaevThJO', 'Paul Joshua', '', 'Mapula', 'sadla.pauljoshua@gmail.com', '09958541242', '2024-09-10', 'Male', 'Filipino', 19, '2024-09-29 15:02:48', '2024-09-29 15:02:48'),
(11, 'user20', '$2y$10$qfNgVseg1I/VAwtxlHnHVeA99rWHzCNEy1jOAS0c.jZgk0rS6EJOC', 'Paul Joshua', '', 'Mapula', 'mmula.pauljoshua@gmail.com', '09958541242', '2024-09-18', 'Male', 'Filipino', 33, '2024-09-29 15:43:32', '2024-09-29 15:43:32'),
(12, 'user21', '$2y$10$nuI1pbZFaQSdf6SEI2O7TOsB39ZrjCEhI7HT3H5JYf.Akzrjgg7ie', 'Paul Joshua', '', 'Mapula', 'mba.pauljoshua@gmail.com', '09958541242', '2024-09-03', 'Male', 'Filipino', 35, '2024-09-29 15:44:05', '2024-09-29 15:44:05'),
(13, 'user22', '$2y$10$26wQT6PSYjbiBVQPnsCLlusvwJC3d6cxpeykr6F0HePOhxOh.YwkK', 'Paul Joshua', 'G', 'Mapula', 'bmapula.pauljoshua@gmail.com', '09958541242', '2024-09-10', 'Male', 'Filipino', 36, '2024-09-29 15:44:40', '2024-09-29 15:44:40'),
(14, 'user23', '$2y$10$VyTaJ9WMQSYVdRvKBg30vuQPLJ2xsd1RtA20rL5JWYsu8cSeFYajC', 'Paul Joshua', 'G', 'Mapula', 'ghapula.pauljoshua@gmail.com', '09958541242', '2024-09-11', 'Male', 'Filipino', 37, '2024-09-29 15:45:22', '2024-09-29 15:45:22'),
(15, 'user24', '$2y$10$I4A3Pp9jJgb3rAST2Emp8.3YSRg4etXG7T/TAp9mN2q4ZSiB4NaBa', 'Paul Joshua', 'G', 'Mapula', 'ymapula.pauljoshua@gmail.com', '09958541242', '2024-09-04', 'Male', 'Filipino', 39, '2024-09-29 15:45:52', '2024-09-29 15:45:52'),
(16, 'user25', '$2y$10$7M58mRDEw9dU2BYQCPN66uMKh8aUEK1iDSkFZHcE0beigmkS4nH0e', 'Paul Joshua', '', 'Mapula', 'mbfbfpula.pauljoshua@gmail.com', '09958541242', '2024-09-19', 'Male', 'Filipino', 42, '2024-09-29 15:49:42', '2024-09-29 15:49:42'),
(17, 'user26', '$2y$10$OtXePVZnPApagF8jnKzBlO2iXDAqfv06uydZBtCvu11gnwOMv/tNu', 'Paul Joshua', '', 'Mapula', 'mafffpula.pauljoshua@gmail.com', '09958541242', '2024-09-09', 'Male', 'Filipino', 43, '2024-09-29 15:53:55', '2024-09-29 15:53:55'),
(39, 'sean123', '$2y$10$weW4y5tfZt1R2ZcazCzy4eB884Mm9q4/mbXw3UU9A0ZTKXGS6I8Pq', 'Sean Andrei Jeremy', 'G', 'Labrador', 'saj.labrador@gmail.com', '09060553103', '2004-06-25', 'Male', 'Filipino', 84, '2024-10-09 23:39:03', '2024-10-09 23:39:03'),
(40, 'seanlabrador', '53ea55dec0f4e7cfc70e383ad370cc090fd0c81e59eaa93de13d6a3294068d5726b3a5832e9351f904d187af7b27e5108704d6cf19755c369a61f48c6eee9f616m7o22Jlvp8M9bbn3jN3D92aF24W1dG6z7KEL6nHn38=', 'Sean Andrei Jeremy', 'G', 'Labrador', '2022-02459@sanbeda.edu.ph', '09060553103', '2004-06-25', 'Male', 'Filipino', 86, '2024-10-12 17:49:29', '2024-10-12 17:49:29'),
(41, 'andrei', '6b2a3187e93430a84d88dc3db368eabb0b586e2c0e4b6cb5890fac830fca47f04490d59eea7f8e217e1f2ecf63e4fad97b4c2036eec5460ef52214988082a9fbM738IXPLCIHASsWUUPjvDiaiO7HO7rn1EEp5B3fYZaI=', 'Sean', 'G', 'Andrei', 'andreijeremy@gmail.com', '09060553103', '2009-06-25', 'Male', 'Filipino', 87, '2024-10-12 18:11:13', '2024-10-12 18:11:13'),
(42, 'shanelle', '515c16e44059df2cbd79a493841c80f3c6531567d0ecf6c3a8583df2539a051da0cfdac2367a3bfcadb307e09d99763d170b279b5bbe6324fc83746d8b5979bfCStE5Ke9vpWUZNln++JD4Jx1QjAyQOG4GvAODiZR3pI=', 'Shanelle Pearl', 'H', 'Cooper', 'sc.cooper@gmail.com', '09060553103', '2024-10-07', 'Female', 'Filipino', 88, '2024-10-12 18:12:52', '2024-10-12 18:12:52'),
(43, 'ushuay', 'fd2fa02d6c42ec48a56ffa8e93dde1aacc39d8ea298995183f8f24be0a63ce892f2125257bf8d11c623b36b7dcee8c46a076fcd03ae335f65494bfb4361a9dd5x4vyj8anPbnl/eG/ZQ9P90ZmMeToaWH4K468uMuTXi0=', 'Paul Joshua', '2', 'Mapula', 'mapula.pauljoshua@g12421ssdmail.com', '09958541242', '2024-10-17', 'Male', 'Filipino', 80, '2024-10-13 21:16:25', '2024-10-13 21:16:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourID` (`tourID`),
  ADD KEY `contactID` (`contactID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_passenger`
--
ALTER TABLE `contact_passenger`
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourPackageID` (`tourPackageID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger_bin`
--
ALTER TABLE `passenger_bin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourPackageID` (`tourPackageID`);

--
-- Indexes for table `tourpackage`
--
ALTER TABLE `tourpackage`
  ADD PRIMARY KEY (`tourpackage_id`);

--
-- Indexes for table `useradmin`
--
ALTER TABLE `useradmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `loginID` (`loginID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `passenger_bin`
--
ALTER TABLE `passenger_bin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tourpackage`
--
ALTER TABLE `tourpackage`
  MODIFY `tourpackage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `useradmin`
--
ALTER TABLE `useradmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`tourID`) REFERENCES `tour` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`contactID`) REFERENCES `contact` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_passenger`
--
ALTER TABLE `contact_passenger`
  ADD CONSTRAINT `contact_passenger_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contact_passenger_ibfk_2` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD CONSTRAINT `itinerary_ibfk_1` FOREIGN KEY (`tourPackageID`) REFERENCES `tourpackage` (`tourpackage_id`);

--
-- Constraints for table `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `tour_ibfk_1` FOREIGN KEY (`tourPackageID`) REFERENCES `tourpackage` (`tourpackage_id`) ON DELETE CASCADE;

--
-- Constraints for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD CONSTRAINT `userregistration_ibfk_1` FOREIGN KEY (`loginID`) REFERENCES `userlogin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
