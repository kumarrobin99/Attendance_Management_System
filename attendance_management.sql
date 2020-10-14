-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 06:41 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_management`
--
CREATE DATABASE IF NOT EXISTS `attendance_management` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `attendance_management`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `subcode` varchar(10) NOT NULL,
  `studentid` varchar(10) NOT NULL,
  `session` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `month` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `attendance` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`subcode`, `studentid`, `session`, `course`, `semester`, `month`, `date`, `time`, `attendance`) VALUES
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'May', '11/05/2020', '13:29:37', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:04', 'Absent'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:31', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:34', 'Absent'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:36', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:39', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:42', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:45', 'Absent'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:47', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:49', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:51', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:54', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:30:57', 'Absent'),
('BTCS604', '1731865', '2019-20', 'B.Tech(CSE)', '6th', 'January', '11/05/2020', '13:31:14', 'Present'),
('BTCS604', '1731857', '2019-20', 'B.Tech(CSE)', '6th', 'May', '11/05/2020', '13:32:27', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyid` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `emailid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyid`, `password`, `name`, `gender`, `address`, `mobile`, `emailid`) VALUES
('10001', '10001', 'Pooja Sharma', 'Female', 'Jalandhar, Punjab', '9876543210', 'poojasharma@gmail.com'),
('10002', '10002', 'Dinesh Gupta', 'Male', 'Jalandhar, Punjab', '9878654123', 'dineshgupta@gmail.com'),
('10003', '10003', 'Raman Kumar', 'Male', 'Jalandhar, Punjab', '9887963254', 'raman@gmail.com'),
('10004', '10004', 'Ezoo Sachdev', 'Female', 'Jalandhar, Punjab', '8745961230', 'ezoo@gmail.com'),
('10005', '10005', 'Ankit Titoriya', 'Male', 'Uttar Pradesh', '9658741235', 'ankit@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `course` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `password`, `name`, `fname`, `gender`, `course`, `address`, `mobile`, `email`) VALUES
('1731857', '1234', 'Robin Kumar', 'Surendra Prasad', 'Male', 'B.Tech(CSE)', 'Nalanda, Bihar', '9955883101', 'kumarrobin99@gmail.com'),
('1731858', '1731858', 'Sanamdeep Singh', 'Jaswinder Singh', 'Male', 'B.Tech(CSE)', 'Ludhiana, Punjab', '8794561230', 'sanam@gmail.com'),
('1731865', '1731865', 'Vasu Kaushik', 'Vipul Kaushik', 'Male', 'B.Tech(CSE)', 'Firozpur, Punjab', '9632587410', 'vasuofficial@gmail.com'),
('1818600', '1818600', 'Atul Sandal', 'Gurbachan Singh', 'Male', 'B.Tech(CE)', 'Himachal', '8569741230', 'atul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subcode` varchar(10) NOT NULL,
  `subname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subcode`, `subname`) VALUES
('BTCS502', 'RDBMS I'),
('BTCS601', 'Simulation & Modeling'),
('BTCS602', 'RDBMS II'),
('BTCS603', 'Software Engineering'),
('BTCS604', 'RDBMS-II Lab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyid`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`emailid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
