-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2022 at 01:08 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feed`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `A_ID` int(20) NOT NULL,
  `A_name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `A_password` varchar(20) NOT NULL,
  `C_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_ID`, `A_name`, `email`, `A_password`, `C_ID`) VALUES
(1, ' Suzanne Zakaria', 'suzzane@gmail.com', '12345', 2),
(2, 'Saja Attaullah', 'saja@gmail.com', '54321', 2);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `B_ID` int(20) NOT NULL,
  `B_name` varchar(30) NOT NULL,
  `dept_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`B_ID`, `B_name`, `dept_ID`) VALUES
(1, ' Medical Biology', 1),
(2, ' General Biology', 1),
(3, 'CS', 3),
(4, 'IT', 3);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_ID` int(20) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `B_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_ID`, `class_name`, `B_ID`) VALUES
(1, '1st', 1),
(2, '2nd', 1),
(3, '3rd', 1),
(4, '4th', 1),
(5, '1st', 3),
(6, '2nd', 3),
(7, '3rd', 3),
(8, '4th', 3);

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `C_ID` int(20) NOT NULL,
  `C_name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`C_ID`, `C_name`) VALUES
(1, 'Engineering'),
(2, 'Science'),
(3, 'Law'),
(4, 'Basic Educa'),
(5, 'Education'),
(6, 'Art'),
(7, ' Political '),
(8, 'Languages'),
(9, ' Administra'),
(10, 'Agriculture'),
(11, ' Physical E'),
(12, ' Islamic Sc'),
(13, ' Fine Art'),
(14, ' Education '),
(15, ' Education ');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_ID` int(20) NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `C_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_ID`, `dept_name`, `C_ID`) VALUES
(1, 'Biology', 2),
(2, 'Chemistry', 2),
(3, ' Computer Science & IT', 2),
(4, 'Physics', 2),
(5, 'Geology', 2),
(6, 'Mathematics', 2),
(7, ' Environmental Health and Scie', 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback1`
--

CREATE TABLE `feedback1` (
  `S_code` varchar(20) NOT NULL,
  `Sub_ID` int(20) NOT NULL,
  `T_ID` int(20) NOT NULL,
  `average` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback1`
--

INSERT INTO `feedback1` (`S_code`, `Sub_ID`, `T_ID`, `average`) VALUES
('sscs30002', 3, 3, 1.5),
('sscs30003', 3, 3, 1.1),
('sscs30001', 6, 6, 2.8),
('sscs30002', 4, 4, 1),
('sscs30002', 4, 4, 1),
('sscs30002', 4, 4, 1),
('sscs30003', 6, 6, 0),
('sscs30002', 6, 6, 1),
('sscs30002', 6, 6, 1),
('sscs30002', 6, 6, 0),
('sscs30002', 6, 6, 0),
('sscs30002', 6, 6, 0),
('sscs30002', 6, 6, 0),
('sscs30006', 6, 6, 1),
('sscs30006', 6, 6, 1),
('sscs30006', 6, 6, 1),
('sscs30006', 6, 6, 1),
('sscs30006', 6, 6, 1),
('sscs30006', 6, 6, 66.5),
('sscs30006', 6, 6, 50.3),
('sscs30006', 6, 6, 90.1),
('sscs30006', 6, 6, 9.1),
('sscs30006', 6, 6, 1.4),
('sscs30006', 6, 6, 1.4),
('sscs30004', 6, 6, 8.3),
('sscs30004', 3, 3, 4.9),
('sscs30001', 3, 3, 6.1);

-- --------------------------------------------------------

--
-- Table structure for table `sheet1`
--

CREATE TABLE `sheet1` (
  `A` varchar(10) DEFAULT NULL,
  `B` varchar(10) DEFAULT NULL,
  `C` varchar(9) DEFAULT NULL,
  `D` varchar(26) DEFAULT NULL,
  `E` varchar(9) DEFAULT NULL,
  `F` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sheet1`
--

INSERT INTO `sheet1` (`A`, `B`, `C`, `D`, `E`, `F`) VALUES
(NULL, NULL, 'S_Code', 'S_name', 'Password', 'Class_ID'),
(NULL, NULL, 'sscs0009', 'Orfa Shafeeq Haji', 'o8*@Fe31', '7'),
(NULL, NULL, 'sscs00010', 'Fatima Burhan Abdullah', 'f7547364', '7'),
(NULL, NULL, 'sscs00011', 'Bahasht Ghafur Salih', 'b4653875', '7'),
(NULL, NULL, 'sscs00012', 'Mustafa Ahmad Muhamad', 'A1b2c3d4', '7'),
(NULL, NULL, 'sscs00013', 'Ghaith Laith Ghaleb', 'H?78d*bb', '7'),
(NULL, NULL, 'sscs00014', 'Ibrahim Fayeq Qader', '&Ma21R0e', '7'),
(NULL, NULL, 'ssmb00015', 'Ibrahim Gergis Aziz', '12332h100', '2'),
(NULL, NULL, 'ssmb00016', 'Asmahan Hamza Hamadameen', 'Vdr45frd', '2'),
(NULL, NULL, 'ssmb00017', 'Muhamad Anwar Kakameen', 'Ngfy45cj', '2'),
(NULL, NULL, 'ssmb00018', 'Muhamad Emad Muhsen', 'Epxm784a', '2'),
(NULL, NULL, 'ssmb00019', 'Zaynab Abdulsalam Abdullah', '0987asdf', '2'),
(NULL, NULL, 'ssmb00020', 'Sara Khaled Majeed', 'h78g55w2', '2'),
(NULL, NULL, 'S_Code', 'S_name', 'Password', 'Class_ID'),
(NULL, NULL, 'sscs0009', 'Orfa Shafeeq Haji', 'o8*@Fe31', '7'),
(NULL, NULL, 'sscs00010', 'Fatima Burhan Abdullah', 'f7547364', '7'),
(NULL, NULL, 'sscs00011', 'Bahasht Ghafur Salih', 'b4653875', '7'),
(NULL, NULL, 'sscs00012', 'Mustafa Ahmad Muhamad', 'A1b2c3d4', '7'),
(NULL, NULL, 'sscs00013', 'Ghaith Laith Ghaleb', 'H?78d*bb', '7'),
(NULL, NULL, 'sscs00014', 'Ibrahim Fayeq Qader', '&Ma21R0e', '7'),
(NULL, NULL, 'ssmb00015', 'Ibrahim Gergis Aziz', '12332h100', '2'),
(NULL, NULL, 'ssmb00016', 'Asmahan Hamza Hamadameen', 'Vdr45frd', '2'),
(NULL, NULL, 'ssmb00017', 'Muhamad Anwar Kakameen', 'Ngfy45cj', '2'),
(NULL, NULL, 'ssmb00018', 'Muhamad Emad Muhsen', 'Epxm784a', '2'),
(NULL, NULL, 'ssmb00019', 'Zaynab Abdulsalam Abdullah', '0987asdf', '2'),
(NULL, NULL, 'ssmb00020', 'Sara Khaled Majeed', 'h78g55w2', '2'),
(NULL, NULL, 'S_Code', 'S_name', 'Password', 'Class_ID'),
(NULL, NULL, 'sscs0009', 'Orfa Shafeeq Haji', 'o8*@Fe31', '7'),
(NULL, NULL, 'sscs00010', 'Fatima Burhan Abdullah', 'f7547364', '7'),
(NULL, NULL, 'sscs00011', 'Bahasht Ghafur Salih', 'b4653875', '7'),
(NULL, NULL, 'sscs00012', 'Mustafa Ahmad Muhamad', 'A1b2c3d4', '7'),
(NULL, NULL, 'sscs00013', 'Ghaith Laith Ghaleb', 'H?78d*bb', '7'),
(NULL, NULL, 'sscs00014', 'Ibrahim Fayeq Qader', '&Ma21R0e', '7'),
(NULL, NULL, 'ssmb00015', 'Ibrahim Gergis Aziz', '12332h100', '2'),
(NULL, NULL, 'ssmb00016', 'Asmahan Hamza Hamadameen', 'Vdr45frd', '2'),
(NULL, NULL, 'ssmb00017', 'Muhamad Anwar Kakameen', 'Ngfy45cj', '2'),
(NULL, NULL, 'ssmb00018', 'Muhamad Emad Muhsen', 'Epxm784a', '2'),
(NULL, NULL, 'ssmb00019', 'Zaynab Abdulsalam Abdullah', '0987asdf', '2'),
(NULL, NULL, 'ssmb00020', 'Sara Khaled Majeed', 'h78g55w2', '2'),
(NULL, NULL, 'S_Code', 'S_name', 'Password', 'Class_ID'),
(NULL, NULL, 'sscs0009', 'Orfa Shafeeq Haji', 'o8*@Fe31', '7'),
(NULL, NULL, 'sscs00010', 'Fatima Burhan Abdullah', 'f7547364', '7'),
(NULL, NULL, 'sscs00011', 'Bahasht Ghafur Salih', 'b4653875', '7'),
(NULL, NULL, 'sscs00012', 'Mustafa Ahmad Muhamad', 'A1b2c3d4', '7'),
(NULL, NULL, 'sscs00013', 'Ghaith Laith Ghaleb', 'H?78d*bb', '7'),
(NULL, NULL, 'sscs00014', 'Ibrahim Fayeq Qader', '&Ma21R0e', '7'),
(NULL, NULL, 'ssmb00015', 'Ibrahim Gergis Aziz', '12332h100', '2'),
(NULL, NULL, 'ssmb00016', 'Asmahan Hamza Hamadameen', 'Vdr45frd', '2'),
(NULL, NULL, 'ssmb00017', 'Muhamad Anwar Kakameen', 'Ngfy45cj', '2'),
(NULL, NULL, 'ssmb00018', 'Muhamad Emad Muhsen', 'Epxm784a', '2'),
(NULL, NULL, 'ssmb00019', 'Zaynab Abdulsalam Abdullah', '0987asdf', '2'),
(NULL, NULL, 'ssmb00020', 'Sara Khaled Majeed', 'h78g55w2', '2'),
(NULL, NULL, 'S_Code', 'S_name', 'Password', 'Class_ID'),
(NULL, NULL, 'sscs0009', 'Orfa Shafeeq Haji', '88886', '7'),
(NULL, NULL, 'sscs00010', 'Fatima Burhan Abdullah', '888864', '7'),
(NULL, NULL, 'sscs00011', 'Bahasht Ghafur Salih', '888862', '7'),
(NULL, NULL, 'sscs00012', 'Mustafa Ahmad Muhamad', '888861', '7'),
(NULL, NULL, 'sscs00013', 'Ghaith Laith Ghaleb', '888869', '7'),
(NULL, NULL, 'sscs00014', 'Ibrahim Fayeq Qader', '8888611', '7'),
(NULL, NULL, 'ssmb00015', 'Ibrahim Gergis Aziz', '8888699', '2'),
(NULL, NULL, 'ssmb00016', 'Asmahan Hamza Hamadameen', '888869', '2'),
(NULL, NULL, 'ssmb00017', 'Muhamad Anwar Kakameen', '888863', '2'),
(NULL, NULL, 'ssmb00018', 'Muhamad Emad Muhsen', '8888611', '2'),
(NULL, NULL, 'ssmb00019', 'Zaynab Abdulsalam Abdullah', '888860', '2'),
(NULL, NULL, 'ssmb00020', 'Sara Khaled Majeed', '88886345', '2'),
(NULL, NULL, 'S_Code', 'S_name', 'Password', 'Class_ID'),
(NULL, NULL, 'sscs0009', 'Orfa Shafeeq Haji', '88886', '7'),
(NULL, NULL, 'sscs00010', 'Fatima Burhan Abdullah', '888864', '7'),
(NULL, NULL, 'sscs00011', 'Bahasht Ghafur Salih', '888862', '7'),
(NULL, NULL, 'sscs00012', 'Mustafa Ahmad Muhamad', '888861', '7'),
(NULL, NULL, 'sscs00013', 'Ghaith Laith Ghaleb', '888869', '7'),
(NULL, NULL, 'sscs00014', 'Ibrahim Fayeq Qader', '8888611', '7'),
(NULL, NULL, 'ssmb00015', 'Ibrahim Gergis Aziz', '8888699', '2'),
(NULL, NULL, 'ssmb00016', 'Asmahan Hamza Hamadameen', '888869', '2'),
(NULL, NULL, 'ssmb00017', 'Muhamad Anwar Kakameen', '888863', '2'),
(NULL, NULL, 'ssmb00018', 'Muhamad Emad Muhsen', '8888611', '2'),
(NULL, NULL, 'ssmb00019', 'Zaynab Abdulsalam Abdullah', '888860', '2'),
(NULL, NULL, 'ssmb00020', 'Sara Khaled Majeed', '88886345', '2');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `S_code` varchar(20) NOT NULL,
  `S_name` varchar(30) NOT NULL,
  `S_password` varchar(20) NOT NULL,
  `class_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`S_code`, `S_name`, `S_password`, `class_ID`) VALUES
('sscs30001', ' Orfa Shafeeq Haji', '111', 7),
('sscs30002', 'Fatima Burhan Abdullah', '222', 7),
('sscs30003', 'Bahasht Ghafur Salih', '333', 7),
('sscs30004', 'Mustafa Ahmed Mohammed', '444', 7),
('sscs30005', 'Ghaith Laith Ghalib', '555', 7),
('sscs30006', 'Ibrahim Fayeq Qader', '666', 7),
('sscs30007', 'enas burhan', '777', 8),
('ssmb20001', ' Ibrahim Gergis Aziz ', '111', 2),
('ssmb20002', ' Asmahan Hamza Hamadameen ', '222', 2),
('ssmb20003', ' Muhamad Anwar Kakameen ', '333', 2),
('ssmb20004', ' Muhamad Emad Muhsen ', '444', 2),
('ssmb20005', ' Zaynab Abdulsalam Abdullah', '555', 2),
('ssmb20006', ' Sara Khaled Majeed ', '666', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Sub_ID` int(20) NOT NULL,
  `Sub_name` varchar(30) NOT NULL,
  `dept_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Sub_ID`, `Sub_name`, `dept_ID`) VALUES
(1, 'GUI', 3),
(2, 'Web Programming', 3),
(3, 'Network', 3),
(4, 'Advanced Database', 3),
(5, 'AI', 3),
(6, 'Compiler Construction', 3),
(7, 'Biochemistry', 1),
(8, 'Human Histology', 1),
(9, 'Microbiology', 1),
(10, 'Medical Parasitology', 1),
(11, 'Cell Biology', 1),
(12, ' Human Anatomy', 1),
(14, 'security', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sub_dept`
-- (See below for the actual view)
--
CREATE TABLE `sub_dept` (
`Sub_ID` int(20)
,`Sub_name` varchar(30)
,`dept_name` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `T_ID` int(20) NOT NULL,
  `T_name` varchar(30) NOT NULL,
  `dept_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`T_ID`, `T_name`, `dept_ID`) VALUES
(1, 'Ameen Adam', 3),
(2, 'Saja Attaullah', 3),
(3, 'Zanco Taha', 3),
(4, 'Dr.Haidar Abdullah', 3),
(5, ' Dr.Rasper Dhahir', 3),
(6, 'Dr.Shaima Alaubi', 3),
(7, 'Amanj', 1),
(8, ' Dr.Lana', 1),
(9, ' Dr.Paxshan', 1),
(10, ' Rezan', 1),
(11, 'Khidir', 1),
(12, 'Dr.Zana Majeed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student`
--

CREATE TABLE `teacher_student` (
  `T_ID` int(11) NOT NULL,
  `S_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject`
--

CREATE TABLE `teacher_subject` (
  `T_ID` int(20) NOT NULL,
  `Sub_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `teach_dept`
-- (See below for the actual view)
--
CREATE TABLE `teach_dept` (
`T_ID` int(20)
,`T_name` varchar(30)
,`dept_name` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `sub_dept`
--
DROP TABLE IF EXISTS `sub_dept`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sub_dept`  AS  select `subject`.`Sub_ID` AS `Sub_ID`,`subject`.`Sub_name` AS `Sub_name`,`department`.`dept_name` AS `dept_name` from (`subject` join `department`) where `subject`.`dept_ID` = `department`.`dept_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `teach_dept`
--
DROP TABLE IF EXISTS `teach_dept`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teach_dept`  AS  select `teacher`.`T_ID` AS `T_ID`,`teacher`.`T_name` AS `T_name`,`department`.`dept_name` AS `dept_name` from (`teacher` join `department`) where `teacher`.`dept_ID` = `department`.`dept_ID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`A_ID`),
  ADD KEY `U_ID` (`C_ID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`B_ID`),
  ADD KEY `dept_ID` (`dept_ID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_ID`),
  ADD KEY `B_ID` (`B_ID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_ID`),
  ADD KEY `C_ID` (`C_ID`);

--
-- Indexes for table `feedback1`
--
ALTER TABLE `feedback1`
  ADD KEY `S_code` (`S_code`,`Sub_ID`),
  ADD KEY `Sub_ID` (`Sub_ID`),
  ADD KEY `T_ID` (`T_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`S_code`),
  ADD KEY `class_ID` (`class_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Sub_ID`),
  ADD KEY `dept_ID` (`dept_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`T_ID`),
  ADD KEY `dept_ID` (`dept_ID`);

--
-- Indexes for table `teacher_student`
--
ALTER TABLE `teacher_student`
  ADD KEY `T_ID` (`T_ID`,`S_code`),
  ADD KEY `S_code` (`S_code`);

--
-- Indexes for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD KEY `T_ID` (`T_ID`,`Sub_ID`),
  ADD KEY `Sub_ID` (`Sub_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `A_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `B_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `C_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Sub_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `T_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `college` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`dept_ID`) REFERENCES `department` (`dept_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `branch` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `college` (`C_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback1`
--
ALTER TABLE `feedback1`
  ADD CONSTRAINT `feedback1_ibfk_2` FOREIGN KEY (`Sub_ID`) REFERENCES `subject` (`Sub_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback1_ibfk_3` FOREIGN KEY (`S_code`) REFERENCES `student` (`S_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback1_ibfk_4` FOREIGN KEY (`T_ID`) REFERENCES `teacher` (`T_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class_ID`) REFERENCES `class` (`class_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_student`
--
ALTER TABLE `teacher_student`
  ADD CONSTRAINT `teacher_student_ibfk_1` FOREIGN KEY (`T_ID`) REFERENCES `teacher` (`T_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_student_ibfk_2` FOREIGN KEY (`S_code`) REFERENCES `student` (`S_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD CONSTRAINT `teacher_subject_ibfk_1` FOREIGN KEY (`T_ID`) REFERENCES `teacher` (`T_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_subject_ibfk_2` FOREIGN KEY (`Sub_ID`) REFERENCES `subject` (`Sub_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
