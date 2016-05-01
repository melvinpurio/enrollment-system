-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2016 at 10:51 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enrollment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Password`) VALUES
('Jerome', 'Hepana'),
('Ygdrassil', 'Perlas');

-- --------------------------------------------------------

--
-- Table structure for table `coe`
--

CREATE TABLE `coe` (
  `course` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coe`
--

INSERT INTO `coe` (`course`) VALUES
('BE'),
('BSCE'),
('BSCPE'),
('BSECE'),
('BSEE'),
('BSIE'),
('BSME');

-- --------------------------------------------------------

--
-- Table structure for table `course_curriculum`
--

CREATE TABLE `course_curriculum` (
  `Course` varchar(10) NOT NULL,
  `Subject_code` varchar(10) NOT NULL,
  `Subject_description` varchar(200) NOT NULL,
  `Units` varchar(1) NOT NULL,
  `Year` varchar(5) NOT NULL,
  `Sem` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_curriculum`
--

INSERT INTO `course_curriculum` (`Course`, `Subject_code`, `Subject_description`, `Units`, `Year`, `Sem`) VALUES
('BE', 'CHM01a', 'General Chemistry 1', '3', '1st', '1st'),
('BE', 'CHM01aL', 'General Chemistry 1 Lab', '1', '1st', '1st'),
('BE', 'COE1', 'Engineering Orientation', '1', '1st', '1st'),
('BE', 'COM01', 'Computer Fundamentals and Programming', '2', '2nd', '2nd'),
('BE', 'DRAW01', 'Engineering Drawing 1', '1', '1st', '1st'),
('BE', 'ENG00', 'Vocabulary and Communicative Grammar', '3', '1st', '1st'),
('BE', 'ENG01', 'Study and Thinking Skills in Englush', '3', '1st', '2nd'),
('BE', 'ENG02a', 'Writing in the Discipline', '3', '2nd', '1st'),
('BE', 'ENG03a', 'Technical Communication', '3', '2nd', '2nd'),
('BE', 'FIL01', 'Sining ng Pakikipagtalastasan', '3', '1st', '1st'),
('BE', 'FIL02', 'Pagbasa''t Pagsulat sa Iba''t-Ibang Disiplina', '3', '1st', '2nd'),
('BE', 'HUM01', 'Intro to Humanities, Visual Arts and Music', '3', '1st', '2nd'),
('BE', 'HUM02', 'Ethics', '3', '2nd', '1st'),
('BE', 'HUM03', 'Logic', '3', '1st', '2nd'),
('BE', 'MAT02', 'College Algebra', '3', '1st', '1st'),
('BE', 'MAT02c', 'Advanced Algebra', '2', '1st', '2nd'),
('BE', 'MAT04a', 'Plane and Spherical Trigonometry', '3', '1st', '1st'),
('BE', 'MAT04b', 'Solid Mensuration', '2', '1st', '2nd'),
('BE', 'MAT06', 'Differential Calculus', '4', '2nd', '1st'),
('BE', 'MAT07', 'Integral Calculus', '4', '2nd', '2nd'),
('BE', 'MAT09', 'Probability and Statistics', '3', '2nd', '2nd'),
('BE', 'NSTP1', 'CWTS1/ROTC1', '3', '1st', '1st'),
('BE', 'NSTP2', 'CWTS2/ROTC2', '3', '1st', '2nd'),
('BE', 'PED01', 'Physical Fitness', '2', '1st', '1st'),
('BE', 'PED02', 'Rhytmic Activities', '2', '1st', '2nd'),
('BE', 'PED03', 'Individual/Dual/Sports/Games', '2', '2nd', '1st'),
('BE', 'PED04', 'Team/Sports/Games', '2', '2nd', '2nd'),
('BE', 'PHY01a', 'Engineering Physics 1', '3', '2nd', '1st'),
('BE', 'PHY01aL', 'Engineering Physics 1 Lab', '1', '2nd', '1st'),
('BE', 'PHY02a', 'Engineering Physics 2', '3', '2nd', '2nd'),
('BE', 'PHY02aL', 'Engineering Physics 2 Lab', '1', '2nd', '2nd'),
('BE', 'SSC01', 'General Psychology', '3', '1st', '2nd'),
('BE', 'SSC02', 'Socio Anthropology with FP and HIV/AIDS', '3', '2nd', '2nd'),
('BE', 'SSC03', 'Life and Works of Rizal and Other Heroes', '3', '2nd', '1st'),
('BE', 'SSC05', 'Principles of Economics with LRT', '3', '2nd', '1st'),
('BE', 'SSC06', 'Principles of Government and Politics with NC', '3', '2nd ', '2nd'),
('BSCE', 'BEC01', 'Engineering Economy', '3', '3rd', '2nd'),
('BSCE', 'BEC02', 'Engineering Management', '3', '4th', '1st'),
('BSCE', 'CAD01', 'Computer Aided Drafting', '1', '3rd', '1st'),
('BSCE', 'CEE01', 'CE Elective 1', '3', '4th', '2nd'),
('BSCE', 'CEE02', 'CE Elective 2', '3', '5th', '1st'),
('BSCE', 'CEE03', 'CE Elective 3', '3', '5th', '2nd'),
('BSCE', 'CEE04', 'CE Elective 4', '3', '5th', '2nd'),
('BSCE', 'CEVE16', 'Water Resources Engineering', '3', '5th', '1st'),
('BSCE', 'COM02', 'Advanced Computer Programming', '1', '3rd', '1st'),
('BSCE', 'CVE00', 'Carpentry and Building (Methods with Estimation)', '1', '3rd', '1st'),
('BSCE', 'CVE01', 'Geotechnical Engineering 1 (Soil Mech)', '4', '3rd', '2nd'),
('BSCE', 'CVE02', 'Structural Theory 1', '4', '4th', '1st'),
('BSCE', 'CVE03', 'Construction Materials and Testing', '3', '4th', '1st'),
('BSCE', 'CVE04', 'Geotechnical Engineering 2 Foundation', '4', '4th', '1st'),
('BSCE', 'CVE05', 'CAD Application in CE', '2', '4th', '1st'),
('BSCE', 'CVE06', 'Safety Management', '1', '4th', '1st'),
('BSCE', 'CVE07', 'Hydraulics', '3', '4th', '2nd'),
('BSCE', 'CVE08', 'Structural Theory 2', '4', '4th', '2nd'),
('BSCE', 'CVE09', 'Structural Design 1 (Reinforced Concrete)', '4', '4th', '2nd'),
('BSCE', 'CVE10', 'CE Laws, Contracts, Specifications and Ethics', '3', '4th', '2nd'),
('BSCE', 'CVE11', 'Hydrology', '3', '4th', '2nd'),
('BSCE', 'CVE12', 'Building Design 1', '2', '5th', '1st'),
('BSCE', 'CVE13', 'Highway Engineering', '3', '5th', '1st'),
('BSCE', 'CVE14', 'Structural Design 2(Steel and Timber Design)', '4', '5th', '1st'),
('BSCE', 'CVE15', 'Construction and Methods and Project Management', '4', '5th', '1st'),
('BSCE', 'CVE17', 'Building Design 2', '2', '5th', '2nd'),
('BSCE', 'CVE18', 'Transportation Engineering', '3', '5th', '2nd'),
('BSCE', 'CVE19', 'CE Projects', '3', '5th', '2nd'),
('BSCE', 'CVE20', 'Seminar and Plant Visits', '2', '5th', '2nd'),
('BSCE', 'ELE01a', 'Basic EE', '2', '3rd', '2nd'),
('BSCE', 'ELE01aL', 'Basic EE Lab', '1', '3rd', '2nd'),
('BSCE', 'MAT08', 'Differential Equations', '3', '3rd', '1st'),
('BSCE', 'MAT10a', 'Advance Engineering Mathematics for CE', '3', '3rd', '1st'),
('BSCE', 'MCE00', 'Basic Mechanical Engineering', '3', '3rd', '1st'),
('BSCE', 'MCE01', 'Basic Thermodynamics', '3', '3rd', '2nd'),
('BSCE', 'MEC01', 'Statics of Rigid Bodies', '3', '3rd', '1st'),
('BSCE', 'MEC02', 'Dynamics of Rigid Bodies', '2', '3rd', '2nd'),
('BSCE', 'MEC03', 'Mechanics of Deformable Bodies', '3', '3rd', '2nd'),
('BSCE', 'MEC04a', 'Mechanics of Fluids', '3', '4th', '1st'),
('BSCE', 'NSC03b', 'Environmental Engineering', '2', '3rd', '1st'),
('BSCE', 'RES01', 'Methods of Research', '3', '4th', '2nd'),
('BSCE', 'RES02', 'Research/Technical Paper Writing', '3', '5th', '1st'),
('BSCE', 'REV01', 'Review Mathematics', '1', '5th', '2nd'),
('BSCE', 'REV02', 'Review Mechanics', '1', '5th', '2nd'),
('BSCE', 'REV03', 'Review Geotechnical', '1', '5th', '2nd'),
('BSCE', 'REV04', 'Review Design', '1', '5th', '2nd'),
('BSCE', 'SUR01', 'Surveying 1 (Elementary and Higher Surveying)', '4', '3rd', '1st'),
('BSCE', 'SUR02', 'Surveying 2 (Engineering Surveys)', '4', '3rd', '2nd'),
('BSCPE', 'BEE01a', 'Engineering Management', '3', '5th', '2nd'),
('BSCPE', 'CAD01', 'Computer Aided Drafting', '1', '3rd', '1st'),
('BSCPE', 'CPE000', 'Computer Hardware Fundamentals', '1', '3rd', '1st'),
('BSCPE', 'CPE301', 'Data Structure and Algorithm Analysis', '3', '3rd', '1st'),
('BSCPE', 'CPE301L', 'Data Structure and Algorithm Analysis Lab', '1', '3rd', '1st'),
('BSCPE', 'CPE302', 'Database System', '3', '3rd', '2nd'),
('BSCPE', 'CPE303', 'Computer Engineering Drafting', '1', '3rd', '2nd'),
('BSCPE', 'CPE311', 'Logic Circuits and Switching Theory', '3', '3rd', '2nd'),
('BSCPE', 'CPE311L', 'Logic Circuits and Switching Theory Lab', '1', '3rd', '2nd'),
('BSCPE', 'CPE400', 'Safety Engineering', '2', '4th', '2nd'),
('BSCPE', 'CPE401', 'Operating Systems', '3', '4th', '2nd'),
('BSCPE', 'CPE401L', 'Operating Systems Lab', '1', '4th', '2nd'),
('BSCPE', 'CPE402', 'Object-Oriented Programming', '3', '4th', '2nd'),
('BSCPE', 'CPE402L', 'Object-Oriented Programming Lab', '1', '4th', '2nd'),
('BSCPE', 'CPE411', 'Digital Signal Processing', '3', '4th', '1st'),
('BSCPE', 'CPE411a', 'Principles of Communication', '3', '4th', '1st'),
('BSCPE', 'CPE411L', 'Digital Signal Processing Lab', '1', '4th', '1st'),
('BSCPE', 'CPE412', 'Advanced Logic Circuits', '3', '4th', '1st'),
('BSCPE', 'CPE412a', 'Data Communications', '3', '4th', '2nd'),
('BSCPE', 'CPE412L', 'Advanced Logic Circuits Lab', '1', '4th', '1st'),
('BSCPE', 'CPE421', 'Control System', '3', '4th', '1st'),
('BSCPE', 'CPE421L', 'Control System Lab', '1', '4th', '1st'),
('BSCPE', 'CPE422', 'Computer System Organization with Assembly Language', '3', '4th', '1st'),
('BSCPE', 'CPE422L', 'Computer System Organization with Assembly Language Lab', '1', '4th', '1st'),
('BSCPE', 'CPE423', 'Microprocessor Systems', '3', '4th', '2nd'),
('BSCPE', 'CPE423L', 'Microprocessor Systems Lab', '1', '4th', '2nd'),
('BSCPE', 'CPE501', 'System Analysis and Design', '3', '5th', '1st'),
('BSCPE', 'CPE501a', 'Software Engineering', '3', '5th', '1st'),
('BSCPE', 'CPE501b', 'Engineering Ethics and Computer ', '2', '5th', '2nd'),
('BSCPE', 'CPE501c', 'Seminar/Plant Visit', '2', '5th', '2nd'),
('BSCPE', 'CPE513', 'Computer System Architecture', '3', '5th', '1st'),
('BSCPE', 'CPE513L', 'Computer System Architecture Lab', '1', '5th', '1st'),
('BSCPE', 'CPE521', 'Design Project', '2', '5th', '1st'),
('BSCPE', 'CPE522', 'Computer Networks', '3', '5th', '2nd'),
('BSCPE', 'CPE522L', 'Computer Networks Lab', '1', '5th', '2nd'),
('BSCPE', 'CPEE1', 'Professional Elective 1', '3', '4th', '2nd'),
('BSCPE', 'CPEE2', 'Professional Elective 2', '3', '5th', '1st'),
('BSCPE', 'CPEE3', 'Professional Elective 3', '3', '5th', '2nd'),
('BSCPE', 'ECE01', 'Electronics Devices and Circuits', '3', '3rd', '1st'),
('BSCPE', 'ECE01L', 'Electronics Devices and Circuits Lab', '1', '3rd', '1st'),
('BSCPE', 'ECE02', 'Electronic Circuit Analysis', '3', '3rd', '2nd'),
('BSCPE', 'ECE02a', 'Electronic Circuit Analysis Lab', '1', '3rd', '2nd'),
('BSCPE', 'ELE01', 'Electrical Circuits 1', '3', '3rd', '1st'),
('BSCPE', 'ELE02', 'Electrical Circuits 2', '3', '3rd', '2nd'),
('BSCPE', 'ELE02a', 'Electrical Circuits 2 Lab', '1', '3rd', '2nd'),
('BSCPE', 'ENG01a', 'Engineering Economy', '3', '5th', '1st'),
('BSCPE', 'MAT05f', 'Discrete Mathematics', '3', '3rd', '1st'),
('BSCPE', 'MAT08', 'Differential Equation', '3', '3rd', '2nd'),
('BSCPE', 'MAT10b', 'Advanced Engineering Mathematics', '3', '3rd', '2nd'),
('BSCPE', 'MEC01', 'Statics of Rigid Bodies', '3', '3rd', '2nd'),
('BSCPE', 'MEC02', 'Dynamics of Rigid Bodies', '2', '4th', '1st'),
('BSCPE', 'MEC03', 'Mechanics of Deformable Bodies', '3', '4th', '1st'),
('BSCPE', 'NSC03b', 'Environmental Engineering', '2', '3rd', '1st'),
('BSCPE', 'RES01', 'Methods of Research', '3', '4th', '2nd'),
('BSCPE', 'RES02', 'Research technical Paper Writing', '3', '5th', '1st'),
('BSECE', 'BEC01', 'Engineering Economy', '3', '4th', '1st'),
('BSECE', 'BEC02', 'Engineering Management', '3', '4th', '2nd'),
('BSECE', 'BEC03', 'Fundamentals of Materials Science and Engineering', '3', '4th', '2nd'),
('BSECE', 'ECA01', 'ECE Workshop', '1', '3rd', '1st'),
('BSECE', 'ECA02', 'ECE Workshop', '1', '3rd', '2nd'),
('BSECE', 'ECE00', 'Vector Analysis', '3', '3rd', '1st'),
('BSECE', 'ECE01', 'Electronics Devices and Circuits', '3', '3rd', '1st'),
('BSECE', 'ECE01L', 'Electronics Devices and Circuits Lab', '1', '3rd', '1st'),
('BSECE', 'ECE02', 'Electronic Circuits Analysis and Design', '3', '3rd', '2nd'),
('BSECE', 'ECE02L', 'Electronic Circuits Analysis and Design Lab', '1', '3rd', '2nd'),
('BSECE', 'ECE03', 'Safety Management for ECE', '1', '3rd', '2nd'),
('BSECE', 'ECE04', 'Signals, Spectra and Signal Processing', '3', '4th', '1st'),
('BSECE', 'ECE04L', 'Signals, Spectra and Signal Processing Lab', '1', '4th', '1st'),
('BSECE', 'ECE05', 'Principles of Communications', '3', '4th', '1st'),
('BSECE', 'ECE05L', 'Principles of Communications Lab', '1', '4th', '1st'),
('BSECE', 'ECE06', 'Logic Circuits and Switching Theor', '3', '4th', '2nd'),
('BSECE', 'ECE06L', 'Logic Circuits and Switching Theory Lab', '1', '4th', '2nd'),
('BSECE', 'ECE07', 'Digital Communication', '3', '4th', '2nd'),
('BSECE', 'ECE07L', 'Digital Communications Lab', '1', '4th', '2nd'),
('BSECE', 'ECE08', 'Transmission Media and Antenna System', '3', '5th', '1st'),
('BSECE', 'ECE08L', 'Transmission Median and Antenna System Lab', '1', '5th', '1st'),
('BSECE', 'ECE09', 'Microprocessor System', '3', '5th', '1st'),
('BSECE', 'ECE09L', 'Microprocessor System Lab', '1', '5th', '1st'),
('BSECE', 'ECE10', 'Broadcast and Acoustics', '3', '5th', '1st'),
('BSECE', 'ECE11', 'Feedback and Control System', '3', '5th', '1st'),
('BSECE', 'ECE11L', 'Feedback and Control SyStem Lab', '1', '5th', '1'),
('BSECE', 'ECE12', 'ECE Laws, Contracts', '3', '5th', '2nd'),
('BSECE', 'ECE13', 'Data Communications', '3', '5th', '2nd'),
('BSECE', 'ECE13L', 'Data Communications Lab', '1', '5th', '2nd'),
('BSECE', 'ECE14', 'Seminars and Field Trips', '2', '5th', '2nd'),
('BSECE', 'ECE15', 'Communication System Design', '3', '5th', '2nd'),
('BSECE', 'ECE16', 'Industrial Electronics', '3', '5th', '2nd'),
('BSECE', 'ECE16L', 'Industrial Electronics Lab', '1', '5th', '2nd'),
('BSECE', 'EEC01', 'ECE Elective', '3', '4th', '1st'),
('BSECE', 'EEC02', 'ECE Elective 2', '3', '4th', '2nd'),
('BSECE', 'EEC04', 'ECE Elective 4', '3', '5th', '2nd'),
('BSECE', 'EEC3', 'ECE Elective 3', '3', '5th', '1st'),
('BSECE', 'ELE01', 'Circuits 1', '3', '3rd', '1st'),
('BSECE', 'ELE01a', 'Energy Conversion', '3', '4th', '1st'),
('BSECE', 'ELE01aL', 'Energy Conversion Lab', '1', '4th', '1st'),
('BSECE', 'ELE01L', 'Circuits 1 Lab', '1', '3rd', '1st'),
('BSECE', 'ELE02', 'Electromagnetics', '3', '3rd', '2nd'),
('BSECE', 'ELE03', 'Circuits 2', '3', '3rd', '2nd'),
('BSECE', 'ELE03L', 'Circuits 2 Lab', '1', '3rd', '2nd'),
('BSECE', 'ELE26 ', 'Power System Analysis and Design', '4', '5th', '2nd'),
('BSECE', 'MAT05f', 'Discrete Mathematics', '3', '3rd', '1st'),
('BSECE', 'MAT08', 'Differential Equations', '3', '3rd', '1st'),
('BSECE', 'MAT10d', 'Advanced Engineering Mathematics for ECE', '3', '3rd', '2nd'),
('BSECE', 'MAT11', 'Numerical methods', '3', '4th', '2nd'),
('BSECE', 'MAT11L', 'Numerical Methods Lab', '1', '4th', '2nd'),
('BSECE', 'MCE01', 'Basic Thermodynamics', '2', '4th', '1st'),
('BSECE', 'MEC01', 'Statics of Rigid Bodies', '3', '3rd', '1st'),
('BSECE', 'MEC02', 'Dynamics of Rigid Bodies', '2', '3rd', '2nd'),
('BSECE', 'MEC03', 'Mechanics of Deformable Bodies', '3', '3rd', '2nd'),
('BSECE', 'RES01', 'Methods of Research', '3', '4th', '2nd'),
('BSECE', 'RES02', 'Research and Technical Paper Writing', '3', '5th', '1st'),
('BSEE', 'BEE01a', 'Engineering Economy', '3', '3rd', '1st'),
('BSEE', 'BEE02a', 'Engineering Management', '3', '4th', '2nd'),
('BSEE', 'BEE03a', 'Fundamentals of Materials and Engineering', '3', '3rd', '1st'),
('BSEE', 'CAD01', 'Computer Aided Drafting', '1', '3rd', '1st'),
('BSEE', 'ECE01', 'Electronics Devices and Circuits', '3', '3rd', '1st'),
('BSEE', 'ECE01L', 'Electronic Devices and Circuits Lab', '1', '3rd', '1st'),
('BSEE', 'ECE02', 'Electronic Circuits Analysis and Design', '3', '3rd', '2nd'),
('BSEE', 'ECE02L', 'Electronic Circuits Analysis and Design Lab', '1', '3rd', '2nd'),
('BSEE', 'ELE01', 'Electrical Circuits 1', '3', '3rd', '1st'),
('BSEE', 'ELE01L', 'Electrical Circuits 1 Lab', '1', '3rd', '1st'),
('BSEE', 'ELE02', 'Electrical Circuits 2', '3', '3rd', '2nd'),
('BSEE', 'ELE02L', 'Electrical Circuits 2 Lab', '1', '3rd', '2nd'),
('BSEE', 'ELE03', 'Electromagnetics', '3', '3rd', '1st'),
('BSEE', 'ELE04', 'Practical Electricit', '2', '3rd', '2nd'),
('BSEE', 'ELE05', 'Safety Management', '1', '3rd', '2nd'),
('BSEE', 'ELE06', 'Principles of Communication', '3', '4th', '1st'),
('BSEE', 'ELE06L', 'Principles of Communication Lab', '1', '4th', '1st'),
('BSEE', 'ELE07', 'Logic Circuits and Switching Theory', '3', '4th', '1st'),
('BSEE', 'ELE07L', 'Logic Circuits and Switching Lab', '1', '4th', '1st'),
('BSEE', 'ELE08', 'Electrical Circuits 3', '2', '4th', '1st'),
('BSEE', 'ELE08L', 'Electrical Circuits 3 Lab', '1', '4th', '1st'),
('BSEE', 'ELE09', 'Control System Analysis', '3', '4th', '1st'),
('BSEE', 'ELE10', 'DC Machinery', '2', '4th', '1st'),
('BSEE', 'ELE10L', 'DC Machinery Lab', '1', '4th', '1st'),
('BSEE', 'ELE11', 'Microprocessor System', '2', '4th', '2nd'),
('BSEE', 'ELE11L', 'Microprocessor System Lab', '1', '4th', '2nd'),
('BSEE', 'ELE12', 'Industrial Electronics', '3', '4th', '2nd'),
('BSEE', 'ELE12L', 'Industrial Electronics Lab', '1', '4th', '2nd'),
('BSEE', 'ELE13', 'AC Machinery', '3', '4th', '2nd'),
('BSEE', 'ELE13L', 'AC Machinery Lab', '1', '4th', '2nd'),
('BSEE', 'ELE14', 'AC Apparatus and Devices', '2', '4th', '2nd'),
('BSEE', 'ELE14L', 'AC Apparatus and Devices Lab', '1', '4th', '2nd'),
('BSEE', 'ELE15', 'Electrical Engineering Safety', '2', '4th', '2nd'),
('BSEE', 'ELE16', 'Professional Elective 1', '3', '4th', '2nd'),
('BSEE', 'ELE17', 'Information Technology', '3', '5th', '1st'),
('BSEE', 'ELE18', 'Instrumentation and Control', '2', '5th', '1st'),
('BSEE', 'ELE18L', 'Instrumentation and Control Lab', '1', '5th', '1st'),
('BSEE', 'ELE19', 'Electrical Transmission and Distribution System ', '4', '5th', '1st'),
('BSEE', 'ELE20', 'Illumination Engineering Design', '3', '5th', '1st'),
('BSEE', 'ELE21', 'Electrical System Design', '3', '5th', '1st'),
('BSEE', 'ELE22', 'Research Project', '3', '5th', '1st'),
('BSEE', 'ELE23', 'Professional Elective 2', '3', '5th', '1st'),
('BSEE', 'ELE24', 'Electrical Equipment Operation and Maintenance', '2', '5th', '2nd'),
('BSEE', 'ELE24L', 'Electrical Equipment Operation and Maintenance Lab', '1', '5th', '2nd'),
('BSEE', 'ELE25', 'Power Plant Engineering for EE', '3', '5th', '2nd'),
('BSEE', 'ELE26', 'Power System Analysis and Design', '4', '5th', '2nd'),
('BSEE', 'ELE27', 'EE Laws, Contracts and Ethics', '2', '5th', '2nd'),
('BSEE', 'ELE28', 'Seminars/ Plant Visits', '2', '5th', '2nd'),
('BSEE', 'ELE29', 'Professional Elective 3', '3', '5th', '2nd'),
('BSEE', 'ELE30', 'Professional Elective 4', '3', '5th', '2nd'),
('BSEE', 'MAT08', 'Differential Equations', '3', '3rd', '1st'),
('BSEE', 'MAT10c', 'Advanced Engineering Mathematics for EE', '3', '3rd', '2nd'),
('BSEE', 'MAT11', 'Numerical Methods with Comp Application', '3', '4th', '1st'),
('BSEE', 'MAT11L', 'Numerical Methods with Comp Application Lab', '1', '4th', '1st'),
('BSEE', 'MCE01', 'Basic Thermodynamics', '3', '3rd', '2nd'),
('BSEE', 'MEC01', 'Statics of Rigid Bodies', '3', '3rd', '1st'),
('BSEE', 'MEC02', 'Dynamics of Rigid Bodies', '2', '3rd', '2nd'),
('BSEE', 'MEC03', 'Mechanics of Deformable Bodies', '3', '3rd', '2nd'),
('BSEE', 'MEC04b', 'Mechanics of Fluids', '2', '4th', '1st'),
('BSEE', 'NSC03b', 'Environmental Engineering', '2', '3rd', '2nd'),
('BSEE', 'RES01a', 'Methods of Research for EE', '3', '4th', '2nd'),
('BSIE', 'ACC01', 'Financial Accounting', '3', '3rd', '2nd'),
('BSIE', 'ACC02', 'Managerial Accounting', '3', '4th', '1st'),
('BSIE', 'BEE01', 'Engineering Economy', '3', '3rd', '1st'),
('BSIE', 'BEE02', 'Engineering Management ', '3', '3rd', '1st'),
('BSIE', 'CAD01', 'Computer Aided Drrafting', '1', '3rd', '1st'),
('BSIE', 'CPE320', 'Database Management', '3', '3rd', '2nd'),
('BSIE', 'ECE01a', 'Basic Electronics', '3', '4th', '1st'),
('BSIE', 'ELE01a', 'Basic EE', '3', '3rd', '2nd'),
('BSIE', 'IEE01', 'Industrial Engineering Elective 1', '3', '4th', '1st'),
('BSIE', 'IEE04', 'Industrial Engineering Elective 4', '3', '5th', '1st'),
('BSIE', 'IEE05', 'Industrial Engineering Elective 5', '3', '5th', '2nd'),
('BSIE', 'IEE06', 'Industrial Engineering Elective 6', '3', '5th', '2nd'),
('BSIE', 'IEE2', 'Industrial Engineering Elective 2', '3', '4th', '2nd'),
('BSIE', 'IEE3', 'Industrial Engineering Elective 3', '3', '4th', '2nd'),
('BSIE', 'IEN01', 'Industrial Materials and Processes', '3', '3rd', '1st'),
('BSIE', 'IEN01L', 'Industrial Materials and Processes Lab', '3', '3rd', '1st'),
('BSIE', 'IEN02', 'Advanced Statistics for IE', '3', '3rd', '1st'),
('BSIE', 'IEN03', 'Safety Management ', '1', '3rd', '2nd'),
('BSIE', 'IEN04', 'Methods Study', '4', '3rd', '2nd'),
('BSIE', 'IEN04L', 'Methods Study Lab', '1', '3rd', '2nd'),
('BSIE', 'IEN05', 'Operations Research 1', '3', '4th', '1st'),
('BSIE', 'IEN06', 'Industrial Quality Control ', '3', '4th', '1st'),
('BSIE', 'IEN07', 'Ergonomoics', '3', '4th', '1st'),
('BSIE', 'IEN07L', 'Ergonomics Lab', '1', '4th', '1st'),
('BSIE', 'IEN08', 'Managerial Economy', '3', '4th', '2nd'),
('BSIE', 'IEN09', 'Industrial Psychology', '3', '4th', '2nd'),
('BSIE', 'IEN10', 'Operations Resarch 2', '3', '4th', '2nd'),
('BSIE', 'IEN11', 'Production Systems', '3', '4th', '2nd'),
('BSIE', 'IEN12', 'Facilities Planning and Design', '3', '5th', '1st'),
('BSIE', 'IEN13', 'Information Systems', '3', '5th', '1st'),
('BSIE', 'IEN13L', 'Information Systems Lab', '1', '5th', '1st'),
('BSIE', 'IEN14', 'Systems Engineering', '3', '5th', '1st'),
('BSIE', 'IEN15', 'Engineering values and Ethics for IE', '3', '5th', '2nd'),
('BSIE', 'IEN16', 'Project Feasibility', '3', '5th', '2nd'),
('BSIE', 'IEN17', 'Seminars / Plant Visits for IE', '3', '5th', '2nd'),
('BSIE', 'MAT08', 'Differential Equations', '3', '3rd', '1st'),
('BSIE', 'MAT10a', 'Advanced Mathematics for IE', '3', '3rd', '2nd'),
('BSIE', 'MCE01', 'Basic Thermodynaics', '3', '4th', '1st'),
('BSIE', 'MEC01', 'Statics of Rigid Bodies', '3', '3rd', '1st'),
('BSIE', 'MEC02', 'Dynamics of Rigid Bodies', '2', '3rd', '2nd'),
('BSIE', 'MEC03', 'Mechanics of Deformable Bodies', '3', '3rd', '2nd'),
('BSIE', 'NSC03b', 'Environmental Engineering', '2', '3rd', '1st'),
('BSIE', 'RES01', 'Methods of Research', '3', '4th', '2nd'),
('BSIE', 'RES02', 'Research and Technical Paper Writing', '3', '5th', '1st'),
('BSME', 'BEE01a', 'Engineering Economy', '3', '4th', '2nd'),
('BSME', 'BEE02a', 'Engineering Management', '3', '5th', '2nd'),
('BSME', 'CAD01', 'Computer Aided Drafting', '1', '3rd', '1st'),
('BSME', 'ECE00', 'Basic Electronics', '2', '3rd', '2nd'),
('BSME', 'ECE00a', 'Basic Electronics Lab', '1', '3rd', '2nd'),
('BSME', 'ELE00', 'Basic Electrical Engineering', '2', '3rd', '1st'),
('BSME', 'ELE00a', 'Basic Electrical Engineering Lab', '1', '3rd', '1st'),
('BSME', 'MAT08', 'Differential Equations', '3', '3rd', '1st'),
('BSME', 'MCE02', 'Thermodynamics', '3', '3rd', '1st'),
('BSME', 'MCE03', 'Machine Elements 1', '3', '3rd', '1st'),
('BSME', 'MCE04', 'Workshop Theoiry and Practice', '2', '3rd', '1st'),
('BSME', 'MCE06', 'Machine Shop Theory', '2', '3rd', '2nd'),
('BSME', 'MCE07', 'Thermodynamics 2\r\n', '3', '3rd', '2nd'),
('BSME', 'MCE08', 'Safety Management', '1', '3rd', '2nd'),
('BSME', 'MCE09', 'ME Laboratory 1', '2', '4th', '1st'),
('BSME', 'MCE10', 'Machine Design 1', '3', '4th', '1st'),
('BSME', 'MCE11', 'Heat Transfer', '2', '4th', '1st'),
('BSME', 'MCE12', 'Materials Engineering', '3', '4th', '1st'),
('BSME', 'MCE12a', 'Materials Engineering Lab', '1', '4th', '1st'),
('BSME', 'MCE13', 'AC and DC Machines', '3', '4th', '1st'),
('BSME', 'MCE13a', 'AC and DC Machines Lab', '1', '4th', '1st'),
('BSME', 'MCE14', 'ME Elective 1', '3', '4th', '1st'),
('BSME', 'MCE15', 'ME Laboratory 2', '2', '4th', '2nd'),
('BSME', 'MCE16', 'Machine Design 2', '3', '4th', '2nd'),
('BSME', 'MCE17', 'Fluid Machinery', '3', '4th', '2nd'),
('BSME', 'MCE18', 'Combustion Engineering', '2', '4th', '2nd'),
('BSME', 'MCE19', 'Refrigeration System', '3', '4th', '2nd'),
('BSME', 'MCE20', 'ME Elective 2', '3', '4th', '2nd'),
('BSME', 'MCE21', 'Seminars/Plant Visit', '2', '5th', '1st'),
('BSME', 'MCE22', 'Air-conditioning and Ventilation System', '3', '5th', '1st'),
('BSME', 'MCE23', 'ME Laboratory 3', '2', '5th', '1st'),
('BSME', 'MCE24', 'Instrumentation and Control Engineering', '2', '5th', '1st'),
('BSME', 'MCE24a', 'Instrumentation and Control Engineering Lab', '1', '5th', '1st'),
('BSME', 'MCE25', 'Industrial Process', '2', '5th', '1st'),
('BSME', 'MCE26', 'Vibration Engineering', '2', '5th', '1st'),
('BSME', 'MCE27', 'Safety Engineering for ME', '2', '5th', '1st'),
('BSME', 'MCE28', 'ME Elective 3', '3', '5th', '1st'),
('BSME', 'MCE29', 'Industrial Plant Engineering', '3', '5th', '2nd'),
('BSME', 'MCE30', 'ME Laws, Ethics, Codes and Standards', '3', '5th', '2nd'),
('BSME', 'MCE31', 'Power Plant Engineering', '4', '5th', '2nd'),
('BSME', 'MCE32', 'ME Elective 4', '3', '5th', '2nd'),
('BSME', 'MEC01', 'Statics of Rigid Bodies', '3', '3rd', '1st'),
('BSME', 'MEC02', 'Dynamics of Rigid Bodies', '2', '3rd', '2nd'),
('BSME', 'MEC03', 'Mechanics of Deformable Bodies', '3', '3rd', '2nd'),
('BSME', 'MEC04c', 'Fluid Mechanics', '3', '3rd', '2nd'),
('BSME', 'MEC05', 'Machine Elements 2', '3', '3rd', '2nd'),
('BSME', 'MEC31a', 'Power Plant Engineering Lab', '1', '5th', '2nd'),
('BSME', 'NSC03b', 'Environmental Engineering', '2', '3rd', '1st'),
('BSME', 'RES01', 'Method of Research', '3', '4th', '2nd'),
('BSME', 'RES02a', 'ME Project Study 1', '1', '5th', '1st'),
('BSME', 'RES02b', 'ME Project Study 2', '1', '5th', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `activity_no` int(11) NOT NULL,
  `Student_no` int(11) NOT NULL,
  `activity` varchar(50) NOT NULL,
  `Date_act` date NOT NULL,
  `Time_act` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`activity_no`, `Student_no`, `activity`, `Date_act`, `Time_act`) VALUES
(51, 63, 'UPDATE', '2016-04-25', '00:55:23.000000'),
(52, 63, 'DELETE', '2016-04-25', '00:55:38.000000'),
(53, 69, 'REGISTER', '2016-04-25', '00:55:58.000000'),
(66, 70, 'REGISTER', '2016-04-25', '02:47:39.000000'),
(67, 71, 'REGISTER', '2016-04-25', '02:54:13.000000'),
(68, 72, 'REGISTER', '2016-04-25', '02:56:19.000000'),
(69, 54, 'UPDATE', '2016-04-25', '03:42:59.000000'),
(70, 54, 'UPDATE', '2016-04-25', '03:43:02.000000'),
(71, 54, 'UPDATE', '2016-04-25', '03:43:05.000000'),
(72, 54, 'UPDATE', '2016-04-25', '03:43:08.000000'),
(73, 54, 'UPDATE', '2016-04-25', '03:43:08.000000'),
(74, 54, 'UPDATE', '2016-04-25', '03:43:09.000000'),
(75, 54, 'UPDATE', '2016-04-25', '03:43:10.000000'),
(76, 54, 'UPDATE', '2016-04-25', '03:43:10.000000'),
(77, 54, 'UPDATE', '2016-04-25', '03:43:11.000000'),
(78, 54, 'UPDATE', '2016-04-25', '03:43:12.000000'),
(79, 54, 'UPDATE', '2016-04-25', '03:43:12.000000'),
(80, 54, 'UPDATE', '2016-04-25', '03:43:13.000000'),
(81, 54, 'UPDATE', '2016-04-25', '03:43:13.000000'),
(82, 54, 'UPDATE', '2016-04-25', '03:43:13.000000'),
(83, 54, 'UPDATE', '2016-04-25', '03:43:13.000000'),
(84, 54, 'UPDATE', '2016-04-25', '03:43:14.000000'),
(85, 54, 'UPDATE', '2016-04-25', '03:43:14.000000'),
(86, 54, 'UPDATE', '2016-04-25', '03:43:14.000000'),
(87, 54, 'UPDATE', '2016-04-25', '03:43:15.000000'),
(88, 54, 'UPDATE', '2016-04-25', '03:43:15.000000'),
(89, 54, 'UPDATE', '2016-04-25', '03:43:15.000000'),
(90, 54, 'UPDATE', '2016-04-25', '03:43:15.000000'),
(91, 54, 'UPDATE', '2016-04-25', '03:43:15.000000'),
(92, 54, 'UPDATE', '2016-04-25', '03:43:16.000000'),
(93, 54, 'UPDATE', '2016-04-25', '03:43:16.000000'),
(94, 73, 'REGISTER', '2016-04-12', '08:33:06.000000'),
(95, 52, 'UPDATE', '2016-04-12', '08:33:17.000000'),
(96, 55, 'UPDATE', '2016-04-25', '14:57:27.000000'),
(97, 74, 'REGISTER', '2016-04-25', '14:57:58.000000'),
(98, 71, 'DELETE', '2016-04-25', '15:31:50.000000'),
(99, 72, 'DELETE', '2016-04-25', '15:31:58.000000'),
(100, 54, 'UPDATE', '2016-04-25', '18:17:57.000000'),
(101, 54, 'UPDATE', '2016-04-25', '18:18:25.000000'),
(102, 54, 'UPDATE', '2016-04-25', '18:18:32.000000'),
(103, 75, 'REGISTER', '2016-04-25', '19:27:55.000000'),
(104, 54, 'UPDATE', '2016-04-25', '19:38:40.000000'),
(105, 70, 'UPDATE', '2016-04-25', '19:44:49.000000'),
(106, 54, 'UPDATE', '2016-04-25', '19:47:22.000000'),
(107, 54, 'UPDATE', '2016-04-25', '19:49:05.000000'),
(108, 54, 'UPDATE', '2016-04-25', '19:49:08.000000'),
(109, 54, 'UPDATE', '2016-04-25', '19:49:18.000000'),
(110, 54, 'DELETE', '2016-04-25', '19:49:57.000000'),
(111, 58, 'UPDATE', '2016-04-26', '10:34:50.000000'),
(112, 70, 'UPDATE', '2016-04-26', '10:35:52.000000'),
(113, 76, 'REGISTER', '2016-04-26', '11:04:15.000000'),
(114, 77, 'REGISTER', '2016-04-26', '11:41:58.000000'),
(115, 59, 'UPDATE', '2016-04-26', '11:45:35.000000'),
(116, 78, 'REGISTER', '2016-04-26', '12:17:18.000000'),
(117, 79, 'REGISTER', '2016-04-26', '14:40:32.000000'),
(118, 79, 'DELETE', '2016-04-26', '16:04:48.000000'),
(119, 80, 'REGISTER', '2016-04-26', '16:05:05.000000'),
(120, 81, 'REGISTER', '2016-04-26', '16:20:22.000000'),
(121, 82, 'REGISTER', '2016-04-26', '16:22:22.000000'),
(122, 83, 'REGISTER', '2016-04-26', '16:23:24.000000');

-- --------------------------------------------------------

--
-- Table structure for table `irreg`
--

CREATE TABLE `irreg` (
  `Student_no` int(11) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `Sem` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irreg`
--

INSERT INTO `irreg` (`Student_no`, `subject`, `Sem`) VALUES
(80, 'CPE000', '1ST'),
(80, 'CPE301', '1ST'),
(82, 'CPE000', '2ND'),
(82, 'MAT07', '2ND'),
(82, 'Mat08', '2ND');

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `Student_no` int(11) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Middle_initial` varchar(3) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `Course` varchar(10) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `Section` varchar(2) NOT NULL,
  `Bracket` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`Student_no`, `First_name`, `Middle_initial`, `Last_name`, `Sex`, `Course`, `Year`, `Section`, `Bracket`) VALUES
(52, 'Jerome', 'J', 'Hepana', 'MALE', 'BSCPE', '4TH', 'GE', 'A'),
(53, 'Ron ezrel', 'A', 'De villa', 'MALE', 'BSCPE', '4TH', 'GE', 'A'),
(55, 'Melvin adrian', 'D', 'Purio', 'MALE', 'BSCPE', '4TH', 'GE', 'A'),
(57, 'Marilene', 'G', 'Esgeurra', 'FEMALE', 'BSCE', '4TH', 'GH', 'A'),
(58, 'Charlene', 'B', 'Bautista', 'FEMALE', 'BSME', '4TH', 'GI', 'A'),
(59, 'Eunice', 'A', 'Merjudio', 'FEMALE', 'BSIE', '4TH', 'GH', 'A'),
(60, 'Kevin kenneth', 'D', 'Juacalla', 'MALE', 'BSEE', '4TH', 'GJ', 'B'),
(61, 'Theresa', 'S', 'Arenas', 'FEMALE', 'BSME', '4TH', 'GF', 'B'),
(62, 'Karmelo leandrey', 'R', 'Arenas', 'MALE', 'BSCPE', '3RD', 'GE', 'A'),
(69, 'Ygdrassil', 'P', 'Perlas', 'MALE', 'BSCPE', '5TH', 'GE', 'B'),
(70, 'Jona marie ', 'G', 'Melgar', 'FEMALE', 'BSECE', '3RD', 'GF', 'B'),
(73, 'Nikko', 'D.l', 'Flores', 'MALE', 'BSCPE', '5TH', 'GF', 'C'),
(74, 'Gerald', 'L', 'Jalbuena', 'MALE', 'BSCPE', '5TH', 'GD', 'C'),
(75, 'Ginal', 'B', 'Sabog', 'FEMALE', 'BSIE', '4TH', 'GD', 'A'),
(76, 'Aira', 'O', 'Garfin', 'FEMALE', 'BSCPE', '4TH', 'GE', 'B'),
(77, 'Jeru', 'A', 'Barlos', 'MALE', 'BSCPE', '1ST', 'GE', 'A'),
(78, 'Cedi', 'D', 'Mandocdoc', 'MALE', 'BSCPE', '2ND', 'GA', 'A'),
(80, 'Kim', 'O', 'Oasd', 'FEMALE', 'BSCPE', '1ST', 'GC', 'A'),
(81, 'Asasd', 'D', 'Asdasd', 'MALE', 'BSCPE', '1ST', 'GA', 'A'),
(82, 'Qweqwed', 'D', 'Aszxc', 'MALE', 'BSCPE', '1ST', 'GB', 'A'),
(83, 'Asdsad', '', 'Asadsd', 'MALE', 'BSEE', '1ST', 'GA', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `student_year`
--

CREATE TABLE `student_year` (
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_year`
--

INSERT INTO `student_year` (`year`) VALUES
('1st'),
('2nd'),
('3rd'),
('4th'),
('5th');

-- --------------------------------------------------------

--
-- Table structure for table `subject_schedule`
--

CREATE TABLE `subject_schedule` (
  `Sched_no` int(11) NOT NULL,
  `course` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `subject_day` varchar(10) NOT NULL,
  `subject_Stime` time(6) NOT NULL,
  `subject_Etime` time(6) NOT NULL,
  `year` varchar(5) NOT NULL,
  `section` varchar(5) NOT NULL,
  `Sem` varchar(5) NOT NULL,
  `Room` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_schedule`
--

INSERT INTO `subject_schedule` (`Sched_no`, `course`, `subject_code`, `subject_day`, `subject_Stime`, `subject_Etime`, `year`, `section`, `Sem`, `Room`) VALUES
(1, 'BSCE', 'SOE1', 'M', '00:10:00.000000', '00:11:00.000000', '1st', 'GA', '1st', '201'),
(2, 'BSCE', 'SOE1', 'M', '00:10:00.000000', '00:11:00.000000', '1st', 'GA', '1st', '201'),
(3, 'BSCE', 'soe1', 'M', '00:07:30.000000', '00:08:30.000000', '1st', 'GA', '1st', '201');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `coe`
--
ALTER TABLE `coe`
  ADD PRIMARY KEY (`course`);

--
-- Indexes for table `course_curriculum`
--
ALTER TABLE `course_curriculum`
  ADD PRIMARY KEY (`Course`,`Subject_code`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`activity_no`);

--
-- Indexes for table `irreg`
--
ALTER TABLE `irreg`
  ADD PRIMARY KEY (`Student_no`,`subject`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`Student_no`);

--
-- Indexes for table `student_year`
--
ALTER TABLE `student_year`
  ADD PRIMARY KEY (`year`);

--
-- Indexes for table `subject_schedule`
--
ALTER TABLE `subject_schedule`
  ADD PRIMARY KEY (`Sched_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `activity_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `student_record`
--
ALTER TABLE `student_record`
  MODIFY `Student_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `subject_schedule`
--
ALTER TABLE `subject_schedule`
  MODIFY `Sched_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
