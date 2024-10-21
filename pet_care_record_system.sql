-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 11:22 AM
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
-- Database: `pet_care_record_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoption_request`
--

CREATE TABLE `adoption_request` (
  `Adoption_Request_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Request_Date` date DEFAULT NULL,
  `Adoption_Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appointment_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Vet_ID` int(11) NOT NULL,
  `Apppointment_Date` date NOT NULL,
  `Reason` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `Clinic_ID` int(11) NOT NULL,
  `Clinic_Name` varchar(50) NOT NULL,
  `House_No` varchar(15) NOT NULL,
  `Street` varchar(20) NOT NULL,
  `Thana` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clinic_phone_number`
--

CREATE TABLE `clinic_phone_number` (
  `Clinic_ID` int(11) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Feedback_Number` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Vet_ID` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Comment` varchar(150) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_record`
--

CREATE TABLE `medical_record` (
  `Record_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Vet_ID` int(11) NOT NULL,
  `Diagnosis` varchar(50) NOT NULL,
  `Treatment` varchar(50) NOT NULL,
  `Prescription` varchar(200) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `Pet_ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Breed` varchar(15) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(11) NOT NULL,
  `Health_Status` varchar(20) NOT NULL,
  `Adoption_Status` varchar(20) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `User_ID` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `House_No` varchar(50) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `Thana` varchar(100) NOT NULL,
  `District` varchar(100) NOT NULL,
  `Role` varchar(100) NOT NULL,
  `Pass_Word` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_email`
--

CREATE TABLE `user_info_email` (
  `User_ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_phone_number`
--

CREATE TABLE `user_info_phone_number` (
  `User_ID` int(11) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `Vaccination_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Vaccine_Name` varchar(50) NOT NULL,
  `Vaccination_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian`
--

CREATE TABLE `veterinarian` (
  `Vet_ID` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `House_No` varchar(15) NOT NULL,
  `Street` varchar(20) NOT NULL,
  `Thana` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Specialization` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian_email`
--

CREATE TABLE `veterinarian_email` (
  `Vet_ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian_phone_number`
--

CREATE TABLE `veterinarian_phone_number` (
  `Vet_ID` int(11) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `works_at`
--

CREATE TABLE `works_at` (
  `Vet_ID` int(11) NOT NULL,
  `Clinic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoption_request`
--
ALTER TABLE `adoption_request`
  ADD PRIMARY KEY (`Adoption_Request_ID`,`Pet_ID`,`User_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_ID`,`Pet_ID`,`Vet_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`),
  ADD KEY `Vet_ID` (`Vet_ID`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`Clinic_ID`);

--
-- Indexes for table `clinic_phone_number`
--
ALTER TABLE `clinic_phone_number`
  ADD PRIMARY KEY (`Clinic_ID`,`Phone_Number`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Feedback_Number`,`User_ID`,`Vet_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Vet_ID` (`Vet_ID`);

--
-- Indexes for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD PRIMARY KEY (`Record_ID`,`Pet_ID`,`Vet_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`),
  ADD KEY `Vet_ID` (`Vet_ID`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`Pet_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `user_info_email`
--
ALTER TABLE `user_info_email`
  ADD PRIMARY KEY (`User_ID`,`Email`);

--
-- Indexes for table `user_info_phone_number`
--
ALTER TABLE `user_info_phone_number`
  ADD PRIMARY KEY (`User_ID`,`Phone_Number`);

--
-- Indexes for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD PRIMARY KEY (`Vaccination_ID`,`Pet_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`);

--
-- Indexes for table `veterinarian`
--
ALTER TABLE `veterinarian`
  ADD PRIMARY KEY (`Vet_ID`);

--
-- Indexes for table `veterinarian_email`
--
ALTER TABLE `veterinarian_email`
  ADD PRIMARY KEY (`Vet_ID`,`Email`);

--
-- Indexes for table `veterinarian_phone_number`
--
ALTER TABLE `veterinarian_phone_number`
  ADD PRIMARY KEY (`Vet_ID`,`Phone_Number`);

--
-- Indexes for table `works_at`
--
ALTER TABLE `works_at`
  ADD PRIMARY KEY (`Vet_ID`,`Clinic_ID`),
  ADD KEY `Clinic_ID` (`Clinic_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoption_request`
--
ALTER TABLE `adoption_request`
  MODIFY `Adoption_Request_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appointment_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Feedback_Number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_record`
--
ALTER TABLE `medical_record`
  MODIFY `Record_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `Pet_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccination`
--
ALTER TABLE `vaccination`
  MODIFY `Vaccination_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `veterinarian`
--
ALTER TABLE `veterinarian`
  MODIFY `Vet_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoption_request`
--
ALTER TABLE `adoption_request`
  ADD CONSTRAINT `adoption_request_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user_info` (`User_ID`),
  ADD CONSTRAINT `adoption_request_ibfk_2` FOREIGN KEY (`Pet_ID`) REFERENCES `pet` (`Pet_ID`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Pet_ID`) REFERENCES `pet` (`Pet_ID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`Vet_ID`) REFERENCES `veterinarian` (`Vet_ID`);

--
-- Constraints for table `clinic_phone_number`
--
ALTER TABLE `clinic_phone_number`
  ADD CONSTRAINT `clinic_phone_number_ibfk_1` FOREIGN KEY (`Clinic_ID`) REFERENCES `clinic` (`Clinic_ID`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user_info` (`User_ID`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`Vet_ID`) REFERENCES `veterinarian` (`Vet_ID`);

--
-- Constraints for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD CONSTRAINT `medical_record_ibfk_1` FOREIGN KEY (`Pet_ID`) REFERENCES `pet` (`Pet_ID`),
  ADD CONSTRAINT `medical_record_ibfk_2` FOREIGN KEY (`Vet_ID`) REFERENCES `veterinarian` (`Vet_ID`);

--
-- Constraints for table `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user_info` (`User_ID`);

--
-- Constraints for table `user_info_email`
--
ALTER TABLE `user_info_email`
  ADD CONSTRAINT `user_info_email_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user_info` (`User_ID`);

--
-- Constraints for table `user_info_phone_number`
--
ALTER TABLE `user_info_phone_number`
  ADD CONSTRAINT `user_info_phone_number_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user_info` (`User_ID`);

--
-- Constraints for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD CONSTRAINT `vaccination_ibfk_1` FOREIGN KEY (`Pet_ID`) REFERENCES `pet` (`Pet_ID`);

--
-- Constraints for table `veterinarian_email`
--
ALTER TABLE `veterinarian_email`
  ADD CONSTRAINT `veterinarian_email_ibfk_1` FOREIGN KEY (`Vet_ID`) REFERENCES `veterinarian` (`Vet_ID`);

--
-- Constraints for table `veterinarian_phone_number`
--
ALTER TABLE `veterinarian_phone_number`
  ADD CONSTRAINT `veterinarian_phone_number_ibfk_1` FOREIGN KEY (`Vet_ID`) REFERENCES `veterinarian` (`Vet_ID`);

--
-- Constraints for table `works_at`
--
ALTER TABLE `works_at`
  ADD CONSTRAINT `works_at_ibfk_1` FOREIGN KEY (`Vet_ID`) REFERENCES `veterinarian` (`Vet_ID`),
  ADD CONSTRAINT `works_at_ibfk_2` FOREIGN KEY (`Clinic_ID`) REFERENCES `clinic` (`Clinic_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
