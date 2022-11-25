-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 25, 2022 at 12:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jagrati`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(5) NOT NULL,
  `p_count` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `p_count`) VALUES
(1, 9),
(2, 6),
(3, 3),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 4),
(12, 4),
(13, 9),
(14, 9),
(15, 6),
(16, 2),
(17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `teacher_id` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donator`
--

CREATE TABLE `donator` (
  `name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(12) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pin` int(8) NOT NULL,
  `amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donator`
--

INSERT INTO `donator` (`name`, `dob`, `email`, `contact`, `city`, `address`, `pin`, `amount`) VALUES
('vaibhav', '2022-11-10', '21bcs232@iiitdmj.ac.in', 2147483647, 'ersdgf', 'jabalpur', 276126, 1000),
('vaibhav', '0056-04-23', 'vaibhsingh100@gmail.com', 2147483647, 'ersdgf', 'dszdfgfh', 1234, 12345678),
('vaibhav', '2022-11-01', 'vaibsingh100@gmail.com', 2147483647, 'azm', 'jabalpur', 276126, 100),
('vaibhav ', '2022-11-18', 'vccsingh@gmail.com', 2147483647, 'azm', 'jbp', 233253, 1000),
('vaibhav ', '2022-11-18', 'vsingh@gmail.com', 2147483647, 'azm', 'jbp', 233253, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` int(5) NOT NULL,
  `father` varchar(50) NOT NULL,
  `mother` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` int(15) NOT NULL,
  `contact2` int(15) DEFAULT NULL,
  `village` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `class`, `father`, `mother`, `gender`, `contact`, `contact2`, `village`) VALUES
(1, 'ram', 1, 'mohan', 'neelam', 'M', 992345354, 0, 'Gadheri'),
(2, 'vvs', 1, 'hari', 'sheela', 'M', 992345354, 123455, 'Priyadarshni'),
(3, 'karen', 1, 'hari', 'sheela', 'M', 0, 934342, 'Priyadarshani'),
(4, 'ramu', 2, 'dayal', 'nelu', 'M', 95553539, 934342, 'Gagheri'),
(5, 'hello', 3, 'quick', 'sort', 'F', 95553539, 934342, 'rampur'),
(6, 'hello', 3, 'quick', 'sort', 'F', 95553539, 934342, 'rampur'),
(7, 'sita', 2, 'dsa', 'algorithm', 'F', 95553539, 934342, 'rampur'),
(8, 'sita', 2, 'dsa', 'algorithm', 'F', 95553539, 934342, 'rampur'),
(9, 'vedant', 3, 'abcde', 'xyz', 'Male', 12334, 9003434, 'hausangabad'),
(10, 'vaibhav13', 2, 'acedfe', 'mother', 'Male', 1234567890, 1234567891, 'gadheri'),
(11, 'yug', 1, 'hari', 'mother', 'M', 2147483647, 1234567891, 'Gagheri'),
(12, 'yug', 1, 'hari', 'mother', 'M', 2147483647, 1234567891, 'Gagheri'),
(13, 'yug', 1, 'hari', 'mother', 'M', 2147483647, 1234567891, 'Gagheri'),
(14, 'yug', 1, 'hari', 'mother', 'M', 2147483647, 1234567891, 'Gagheri'),
(15, 'yug', 1, 'hari', 'mother', 'M', 2147483647, 1234567891, 'Gagheri'),
(16, 'tushar', 1, 'vaibhav', 'sheela', 'female', 2147483647, 1234567891, 'Khamaria'),
(17, 'tushar', 3, 'vs', 'khare', 'male', 2147483647, 1234567898, 'Khamaria'),
(18, 'Utkarsh', 1, 'Mohan', 'Sima', 'male', 2147483647, 1234567891, 'Khamaria');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `roll` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `year` int(5) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`roll`, `name`, `email`, `contact`, `year`, `degree`, `branch`, `password`) VALUES
('21bcs232', 'vaibhav singh', '21bcs232@iiitdmj.ac.', 2147483647, 2021, 'B.tech', 'CSE', '123'),
('21bcs238', 'vedant', '21bcs232@iinwgq.com', 943341424, 2, 'B.Tech', 'CSE', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `donator`
--
ALTER TABLE `donator`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`roll`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`roll`),
  ADD CONSTRAINT `classes_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
