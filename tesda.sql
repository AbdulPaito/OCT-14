-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2024 at 10:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesda`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL,
  `email_admin` varchar(255) NOT NULL,
  `role` enum('admin') DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username_admin`, `password_admin`, `email_admin`, `role`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
  `uli_number` varchar(100) DEFAULT NULL,
  `entry_date` varchar(30) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `address_number_street` varchar(100) DEFAULT NULL,
  `address_barangay` varchar(50) DEFAULT NULL,
  `address_district` varchar(50) DEFAULT NULL,
  `address_city_municipality` varchar(100) DEFAULT NULL,
  `address_province` varchar(100) DEFAULT NULL,
  `address_region` varchar(100) DEFAULT NULL,
  `email_facebook` varchar(100) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `civil_status` varchar(20) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `month_of_birth` varchar(20) DEFAULT NULL,
  `day_of_birth` int(2) DEFAULT NULL,
  `year_of_birth` int(4) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `birthplace_city_municipality` varchar(100) DEFAULT NULL,
  `birthplace_province` varchar(100) DEFAULT NULL,
  `birthplace_region` varchar(100) DEFAULT NULL,
  `educational_attainment` varchar(100) DEFAULT NULL,
  `parent_guardian_name` varchar(100) DEFAULT NULL,
  `parent_guardian_address` varchar(255) DEFAULT NULL,
  `classification` varchar(50) DEFAULT NULL,
  `disability` varchar(50) DEFAULT NULL,
  `cause_of_disability` varchar(50) DEFAULT NULL,
  `taken_ncae` varchar(10) DEFAULT NULL,
  `where_ncae` varchar(100) DEFAULT NULL,
  `when_ncae` varchar(20) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `scholarship` varchar(50) DEFAULT NULL,
  `privacy_disclaimer` text DEFAULT NULL,
  `applicant_signature` varchar(100) DEFAULT NULL,
  `date_accomplished` varchar(20) DEFAULT NULL,
  `registrar_signature` varchar(100) DEFAULT NULL,
  `date_received` varchar(20) DEFAULT NULL,
  `imageUpload` varchar(100) DEFAULT NULL,
  `status` enum('Enroll','Graduate','Drop','Pending') DEFAULT 'Pending',
  `registration_complete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `profile_image`, `uli_number`, `entry_date`, `last_name`, `first_name`, `middle_name`, `address_number_street`, `address_barangay`, `address_district`, `address_city_municipality`, `address_province`, `address_region`, `email_facebook`, `contact_no`, `nationality`, `sex`, `civil_status`, `employment_status`, `month_of_birth`, `day_of_birth`, `year_of_birth`, `age`, `birthplace_city_municipality`, `birthplace_province`, `birthplace_region`, `educational_attainment`, `parent_guardian_name`, `parent_guardian_address`, `classification`, `disability`, `cause_of_disability`, `taken_ncae`, `where_ncae`, `when_ncae`, `qualification`, `scholarship`, `privacy_disclaimer`, `applicant_signature`, `date_accomplished`, `registrar_signature`, `date_received`, `imageUpload`, `status`, `registration_complete`) VALUES
(1, 'abdul', 'abdul', 'abdul@gmail.com', 'Upload-image/dash.png', '1234', '2024-10-24', 'Paito', 'Abdul Rahman', 'David', 'Street 2', 'San Juan South (Pob.)', 'District 4', 'Arayat', 'Pampanga', 'Region 4', 'abdulpaito@gmail.com', '0909124214', 'Filipino', 'male', 'single', 'employed', '05', 21, 2003, 21, 'San Mateo', 'Pampanga', 'Region 3', 'college_graduate_or_higher', 'Abdul paito', 'Tabuan arayat pampanga', 'Senior Citizens', 'N/A', 'N/A', 'No', 'n/a', 'n/a', 'Front Office Service NC II', 'PESFA', 'Agree', 'abdul', '07-17-2024', 'registration', '07-17-2024', 'Upload-image/dash.png', '', 1),
(2, 'abdulpaito', 'abdul1', 'abdulpaito2@gmail.com', 'Upload-image/lego.png', '1234', '2024-11-02', 'Paito', 'Abdul Rahman', 'David', 'Street Mexico B', 'Barangay Mexico 1', 'District Mexico A', 'Mexico', 'Pampanga', 'Region 3', 'abdulpaito@gmail.com', '0909124214', 'Filipino', 'male', 'single', 'employed', '03', 6, 1927, 97, 'Guemasan', 'Pampanga', 'Region 5', 'elementary_graduate', 'Abdul paito', 'yaje@gmail.com', 'Employees with Contractual/Job-Order Status', 'Multiple Disabilities', 'Illness', 'Yes', 'n/a', 'n/a', 'Front Office Service NC II', 'PESFA', 'Agree', '', '', '', '', 'Upload-image/lego.png', '', 1),
(3, 'abdul2', 'ttt', 'abdul1@gmail.com', 'Upload-image/lego.png', '1234', '2024-11-02', 'Paito', 'Abdul Rahman', 'David', 'Street 5', 'Magsaysay', 'District 6', 'Mexico', 'Pampanga', 'Region 9', 'abdulpaito@gmail.com', '0909124214', 'French', 'male', 'single', 'employed', '05', 9, 2003, 21, 'Lacquios', 'Pampanga', 'Region 6', 'post_secondary_graduate', 'Abdul paito', 'abdulpaito@gmail.com', 'Displaced HEIs Teaching Personnel', 'N/A', 'N/A', 'Yes', 'n/a', 'n/a', 'Housekeeping NC II', 'PESFA', 'Agree', '', '', '', '', 'Upload-image/lego.png', '', 1),
(4, 'abdul99', 'abdul', 'abdul99@gmail.com', 'Upload-image/lego.png', '1234', '2024-11-04', 'Paito', 'Abdul Rahman', 'David', 'Street 12', 'Mamag', 'District 10', 'Magalang', 'Pampanga', 'Region 11', 'abdulpaito@gmail.com', '090061636350', 'French', 'male', 'single', 'employed', '07', 8, 1935, 89, 'Mapalad', 'Pampanga', 'Region 11', 'elementary_graduate', 'Abdul paito', 'abdulpaito@gmail.com', 'Students', 'Mental/Intellectual', 'Congenital/Inborn', 'No', 'n/a', 'n/a', 'Front Office Service NC II', 'PESFA', 'Agree', '', '', '', '', 'Upload-image/lego.png', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_admin` (`username_admin`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
