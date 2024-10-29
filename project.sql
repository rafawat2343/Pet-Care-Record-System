-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2024 at 06:45 PM
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
-- Database: `project`
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

--
-- Dumping data for table `adoption_request`
--

INSERT INTO `adoption_request` (`Adoption_Request_ID`, `Pet_ID`, `User_ID`, `Request_Date`, `Adoption_Status`) VALUES
(1, 1, 1, '2024-01-01', 'Pending'),
(2, 2, 2, '2024-02-10', 'Approved'),
(3, 3, 3, '2024-03-15', 'Rejected'),
(4, 4, 4, '2024-04-20', 'Pending'),
(5, 5, 5, '2024-05-05', 'Approved');

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

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appointment_ID`, `Pet_ID`, `Vet_ID`, `Apppointment_Date`, `Reason`, `Status`) VALUES
(1, 1, 1, '2024-01-10', 'Checkup', 'Completed'),
(2, 2, 2, '2024-02-12', 'Vaccination', 'Pending'),
(3, 3, 3, '2024-03-20', 'Surgery', 'Scheduled'),
(4, 4, 4, '2024-04-25', 'Injury Treatment', 'Completed'),
(5, 5, 5, '2024-05-30', 'Dental Checkup', 'Completed');

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

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`Clinic_ID`, `Clinic_Name`, `House_No`, `Street`, `Thana`, `District`) VALUES
(1, 'City Vet Clinic', '12A', 'Maple St', 'Central', 'Metro City'),
(2, 'Healthy Paws Clinic', '56B', 'Oak St', 'Eastside', 'Metro City'),
(3, 'Paw Prints Clinic', '98C', 'Pine St', 'Westside', 'Metro City'),
(4, 'Pet Wellness Center', '45D', 'Elm St', 'Northside', 'Metro City'),
(5, 'VetCare Clinic', '72E', 'Birch St', 'Southside', 'Metro City');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_phone_number`
--

CREATE TABLE `clinic_phone_number` (
  `Clinic_ID` int(11) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinic_phone_number`
--

INSERT INTO `clinic_phone_number` (`Clinic_ID`, `Phone_Number`) VALUES
(1, '555-1234'),
(2, '555-5678'),
(3, '555-9101'),
(4, '555-1122'),
(5, '555-3344');

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

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Feedback_Number`, `User_ID`, `Vet_ID`, `Rating`, `Comment`, `Date`) VALUES
(1, 1, 1, 5, 'Great service!', '2024-01-11'),
(2, 2, 2, 4, 'Friendly staff', '2024-02-15'),
(3, 3, 3, 3, 'Average experience', '2024-03-21'),
(4, 4, 4, 2, 'Long wait times', '2024-04-27'),
(5, 5, 5, 5, 'Excellent care', '2024-05-31');

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

--
-- Dumping data for table `medical_record`
--

INSERT INTO `medical_record` (`Record_ID`, `Pet_ID`, `Vet_ID`, `Diagnosis`, `Treatment`, `Prescription`, `Date`) VALUES
(1, 1, 1, 'Fever', 'Rest', 'Paracetamol', '2024-01-12'),
(2, 2, 2, 'Fracture', 'Surgery', 'Painkillers', '2024-02-15'),
(3, 3, 3, 'Skin Allergy', 'Topical Cream', 'Antihistamine', '2024-03-22'),
(4, 4, 4, 'Dental Issue', 'Cleaning', 'Antibiotics', '2024-04-28'),
(5, 5, 5, 'Ear Infection', 'Cleaning', 'Ear Drops', '2024-05-02');

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

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`Pet_ID`, `Name`, `Breed`, `Gender`, `Age`, `Health_Status`, `Adoption_Status`, `User_ID`) VALUES
(1, 'Buddy', 'Golden Retrieve', 'Male', 3, 'Healthy', 'Available', 1),
(2, 'Bella', 'Bulldog', 'Female', 2, 'Healthy', 'Adopted', 2),
(3, 'Max', 'Beagle', 'Male', 4, 'Injured', 'Available', 3),
(4, 'Lucy', 'Poodle', 'Female', 1, 'Healthy', 'Adopted', 4),
(5, 'Charlie', 'Labrador', 'Male', 5, 'Healthy', 'Available', 5);

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

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`User_ID`, `Fname`, `Lname`, `House_No`, `Street`, `Thana`, `District`, `Role`, `Pass_Word`) VALUES
(1, 'John', 'Doe', '123', 'Main St', 'Central', 'Metro City', 'Adopter', 'password123'),
(2, 'Jane', 'Smith', '456', 'Oak St', 'Eastside', 'Metro City', 'Adopter', 'password456'),
(3, 'Mike', 'Johnson', '789', 'Pine St', 'Westside', 'Metro City', 'Adopter', 'password789'),
(4, 'Emily', 'Davis', '101', 'Elm St', 'Northside', 'Metro City', 'Adopter', 'password101'),
(5, 'Sarah', 'Brown', '102', 'Birch St', 'Southside', 'Metro City', 'Adopter', 'password102');

-- --------------------------------------------------------

--
-- Table structure for table `user_info_email`
--

CREATE TABLE `user_info_email` (
  `User_ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info_email`
--

INSERT INTO `user_info_email` (`User_ID`, `Email`) VALUES
(1, 'john.doe@example.com'),
(2, 'jane.smith@example.com'),
(3, 'mike.johnson@example.com'),
(4, 'emily.davis@example.com'),
(5, 'sarah.brown@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_info_phone_number`
--

CREATE TABLE `user_info_phone_number` (
  `User_ID` int(11) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info_phone_number`
--

INSERT INTO `user_info_phone_number` (`User_ID`, `Phone_Number`) VALUES
(1, '555-1010'),
(2, '555-2020'),
(3, '555-3030'),
(4, '555-4040'),
(5, '555-5050');

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

--
-- Dumping data for table `vaccination`
--

INSERT INTO `vaccination` (`Vaccination_ID`, `Pet_ID`, `Vaccine_Name`, `Vaccination_Date`) VALUES
(1, 1, 'Rabies', '2024-01-15'),
(2, 2, 'Distemper', '2024-02-20'),
(3, 3, 'Parvovirus', '2024-03-25'),
(4, 4, 'Adenovirus', '2024-04-30'),
(5, 5, 'Leptospirosis', '2024-05-05');

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

--
-- Dumping data for table `veterinarian`
--

INSERT INTO `veterinarian` (`Vet_ID`, `Fname`, `Lname`, `House_No`, `Street`, `Thana`, `District`, `Specialization`) VALUES
(1, 'Dr. Robert', 'Miller', '100', 'Vet St', 'Central', 'Metro City', 'Surgery'),
(2, 'Dr. Alice', 'Moore', '101', 'Animal St', 'Eastside', 'Metro City', 'Dentistry'),
(3, 'Dr. James', 'Taylor', '102', 'Care St', 'Westside', 'Metro City', 'Dermatology'),
(4, 'Dr. Emma', 'Wilson', '103', 'Healthy St', 'Northside', 'Metro City', 'General'),
(5, 'Dr. William', 'Johnson', '104', 'VetCare St', 'Southside', 'Metro City', 'Vaccination');

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian_email`
--

CREATE TABLE `veterinarian_email` (
  `Vet_ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `veterinarian_email`
--

INSERT INTO `veterinarian_email` (`Vet_ID`, `Email`) VALUES
(1, 'robert.miller@example.com'),
(2, 'alice.moore@example.com'),
(3, 'james.taylor@example.com'),
(4, 'emma.wilson@example.com'),
(5, 'william.johnson@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian_phone_number`
--

CREATE TABLE `veterinarian_phone_number` (
  `Vet_ID` int(11) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `veterinarian_phone_number`
--

INSERT INTO `veterinarian_phone_number` (`Vet_ID`, `Phone_Number`) VALUES
(1, '555-1111'),
(2, '555-2222'),
(3, '555-3333'),
(4, '555-4444'),
(5, '555-5555');

-- --------------------------------------------------------

--
-- Table structure for table `works_at`
--

CREATE TABLE `works_at` (
  `Vet_ID` int(11) NOT NULL,
  `Clinic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `works_at`
--

INSERT INTO `works_at` (`Vet_ID`, `Clinic_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

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
  MODIFY `Adoption_Request_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appointment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Feedback_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medical_record`
--
ALTER TABLE `medical_record`
  MODIFY `Record_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `Pet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaccination`
--
ALTER TABLE `vaccination`
  MODIFY `Vaccination_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `veterinarian`
--
ALTER TABLE `veterinarian`
  MODIFY `Vet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
