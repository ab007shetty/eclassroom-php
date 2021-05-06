-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 06:33 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` varchar(35) NOT NULL,
  `Apass` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `Apass`) VALUES
('admin', 'admin'),
('vishu', 'vishu');

-- --------------------------------------------------------

--
-- Table structure for table `examans`
--

CREATE TABLE `examans` (
  `EAnsID` int(50) NOT NULL,
  `ExamID` int(10) NOT NULL,
  `Senrl` varchar(50) NOT NULL,
  `Sname` varchar(50) NOT NULL,
  `Ans1` mediumtext NOT NULL,
  `Ans2` mediumtext NOT NULL,
  `Ans3` mediumtext NOT NULL,
  `Ans4` mediumtext NOT NULL,
  `Ans5` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examans`
--

INSERT INTO `examans` (`EAnsID`, `ExamID`, `Senrl`, `Sname`, `Ans1`, `Ans2`, `Ans3`, `Ans4`, `Ans5`) VALUES
(5, 4, '146891662', 'Anirudha Shetty', 'HTML 4.01\r\n', 'Hypertext Markup Language', 'World Wide Web Consortium (W3C)', 'The h1 element is the HTML tag for largest heading.', 'The HTML <br> element produces a line break in text.'),
(6, 10, '146891662', 'Anirudha ', 'True', 'row-content', 'row', '12', 'table-striped');

-- --------------------------------------------------------

--
-- Table structure for table `examdetails`
--

CREATE TABLE `examdetails` (
  `ExamID` int(50) NOT NULL,
  `ExamName` varchar(50) NOT NULL,
  `Q1` varchar(10000) NOT NULL,
  `Q2` varchar(10000) NOT NULL,
  `Q3` varchar(10000) NOT NULL,
  `Q4` varchar(10000) NOT NULL,
  `Q5` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examdetails`
--

INSERT INTO `examdetails` (`ExamID`, `ExamName`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
(4, 'HTML5', 'What is the previous version of HTML, prior to HTML5?', ' What does HTML stand for?', 'Who is making the Web standards?', 'Choose the correct HTML element for the largest heading:', 'What is the correct HTML element for inserting a line break?'),
(5, ' PHP', ' What does PHP stand for?', 'PHP server scripts are surrounded by delimiters, which?', 'How do you write \"Hello World\" in PHP', ' All variables in PHP start with which symbol?', 'What is the correct way to end a PHP statement?'),
(6, 'Java Script', 'Inside which HTML element do we put the JavaScript?', 'What is the correct JavaScript syntax to change the content of the HTML element below?\r\nThis is a demonstration.', 'Where is the correct place to insert a JavaScript?', 'What is the correct syntax for referring to an external script called \"xxx.js\"?', 'The external JavaScript file must contain the'),
(10, 'BootStrap4', 'Bootstrap 3 is mobile-first. False or  True?', 'Which class provides a responsive fixed width container?', ' Which class provides a full width container, spanning the entire width of the viewport?', 'The Bootstrap grid system is based on how many columns?', 'Which class adds zebra-stripes to a table?'),
(11, 'jQuery', ' jQuery uses CSS selectors to select elements?  True or False?', 'Which sign does jQuery use as a shortcut for jQuery?', 'Look at the following selector: $(\"div\"). What does it select?', 'Is jQuery a library for client scripting or server scripting?', 'Is it possible to use jQuery together with AJAX?');

-- --------------------------------------------------------

--
-- Table structure for table `facutlytable`
--

CREATE TABLE `facutlytable` (
  `FID` int(10) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `JDate` date NOT NULL,
  `City` varchar(10) NOT NULL,
  `Pass` varchar(10) NOT NULL,
  `PhNo` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facutlytable`
--

INSERT INTO `facutlytable` (`FID`, `FName`, `FaName`, `Addrs`, `Gender`, `JDate`, `City`, `Pass`, `PhNo`) VALUES
(101, 'Dr. Raghavendra', '', '', 'Male', '1999-02-03', 'Udupi', '1234', 9745637463),
(102, 'Mr. Praveen', '', 'Udupi', 'Male', '1998-01-03', 'Udupi', '1234', 7896453453),
(103, 'Ms. Harshitha', '', '', 'Female', '2000-02-03', 'Udupi', '1234', 8746354675),
(104, 'Sumita ', 'Raj Shekar', 'Bantakal', 'Female', '1996-03-05', 'Udupi', '1234', 9846573565),
(105, 'Anirudha B Shetty', 'Balachandra Shetty', 'Thavarekeremane Bennekuduru', 'Male', '2014-07-10', 'Udupi', 'faculty', 8150071512),
(107, 'Jeevan', '', 'Kundapura', 'Male', '1999-07-07', 'Udupi', '1234', 8964534676);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GuEid` varchar(35) NOT NULL,
  `Gname` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GuEid`, `Gname`) VALUES
('ab007shetty@gmail.com', 'Anirudha B Shetty'),
('ab007shetty@gmail.com', 'ee'),
('jeevanrebeiro@gmail.com', 'jeevan'),
('7shetty@gmail.com', 'q'),
('vishal@gmail.com', 'vishal');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `Query` text NOT NULL,
  `Ans` text NOT NULL,
  `Eid` varchar(35) NOT NULL,
  `Qid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`Query`, `Ans`, `Eid`, `Qid`) VALUES
('final day', '', 'jeevanrebeiro@gmail.com', 15),
('Sir can u postpone web demo???  ', 'No, u have to do it.																	', 'ab007shetty@gmail.com', 16);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `RsID` bigint(20) NOT NULL,
  `Eno` varchar(20) NOT NULL,
  `Ex_ID` int(10) NOT NULL,
  `Marks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`RsID`, `Eno`, `Ex_ID`, `Marks`) VALUES
(2382, '146891662', 4, 'Pass'),
(2383, '146891662', 10, 'Under Progress');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `Eno` bigint(20) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` bigint(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttable`
--

INSERT INTO `studenttable` (`Eno`, `FName`, `LName`, `FaName`, `Addrs`, `Gender`, `Course`, `DOB`, `PhNo`, `Pass`, `Eid`) VALUES
(146891650, 'Harsha', 'kumar', 'Pardeep ', 'kundapura', 'Male', 'web', '1996-07-16', 9854654546, '1234', 'harsh@ics.com'),
(146891651, 'jeevan', 'Rebeiro', '', 'hemmadi', 'Male', 'web', '2000-08-05', 9856784534, '1234', 'nihal@ics.com'),
(146891652, 'bhoomika', '', 'shekar', 'barkur', 'Female', 'web', '1996-02-10', 9845634678, '1234', 'kajal@ics.com'),
(146891656, 'Rohan', 'shetty', 'jeevan shetty', 'kavdi', 'Male', 'web', '1996-01-01', 8945674578, '1234', 'rohan@ics.com'),
(146891657, 'deksha', '', '', 'shirva', 'Female', 'web', '1995-08-25', 8645673489, '1234', 'neelam@ics.com'),
(146891662, 'Anirudha', '', 'Balachandra shetty', 'BennekidruBarkur', 'Male', 'web', '1999-07-27', 8150071512, 'student', 'ab007shetty@gmail.com'),
(146891663, 'Harshita', 'nayak', 'vijay malya', 'udupi', 'Female', 'web', '2020-12-03', 7564746332, '1234', 'harshita@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `V_id` int(10) NOT NULL,
  `V_Title` varchar(50) NOT NULL,
  `V_Url` longtext NOT NULL,
  `V_Remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is used to store videos info.';

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`V_id`, `V_Title`, `V_Url`, `V_Remarks`) VALUES
(1, 'PHP', '<iframe style=\"width:100%; height:400px;border: 2%;\r\n	border-color:red;\r\n	aria-hidden: false ;\r\n	tabindex: 10;\"\r\n src=\"https://www.youtube.com/embed/LC9GaXkdxF8\" frameborder=\"5\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to create a complete login system in PHP. In this PHP tutorial you will learn how to create an simple PHP login system from scratch, and how to show content after being logged in. In this PHP login tutorial, you will learn about error handlers, and MySQLi databases, which includes how to make a login form and a signup form.'),
(3, 'HTML', '<iframe style=\"width:100%; height:400px;border: 2%;\r\n	border-color:red;\r\n	aria-hidden: false ;\r\n	tabindex: 10;\"\r\n src=\"https://www.youtube.com/embed/uDIL-GguPOw?rel=0&amp;showinfo=0\" frameborder=\"5\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'html complete layout'),
(4, 'CSS Grid ', '<iframe style=\"width:100%; height:400px;border: 2%;\r\n	border-color:red;\r\n	aria-hidden: false ;\r\n	tabindex: 10;\"\r\n src=\"https://www.youtube.com/embed/HgwCeNVPlo0?rel=0&amp;showinfo=0\"  frameborder=\"5\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to create website layouts using CSS grid'),
(5, 'JQuery', '<iframe style=\"width:100%; height:400px;border: 2%;\r\n	border-color:red;\r\n	aria-hidden: false ;\r\n	tabindex: 10;\"\r\n src=\"https://www.youtube.com/embed/BWXggB-T1jQ\"  frameborder=\"5\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'JQuery Tutorial:\r\nQuery is a cross-platform JavaScript library designed to simplify the client-side scripting of HTML. It is free, open-source software using the permissive MIT License.'),
(6, 'JSON ', '<iframe style=\"width:100%; height:400px;border: 2%;\r\n	border-color:red;\r\n	aria-hidden: false ;\r\n	tabindex: 10;\"\r\n src=\"https://www.youtube.com/embed/JuFdz8f-cT4\"  frameborder=\"5\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'JavaScript Object Notation or JSON is an open-standard file format that uses human-readable text to transmit data objects consisting of attributeâ€“value pairs and array data types (or any other serializable value).\r\nIt is a very common data format used for asynchronous browserâ€“server communication, including as a replacement for XML in some AJAX-style systems.\r\nJSON is a language-independent data format.\r\nIt was derived from JavaScript, ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `examans`
--
ALTER TABLE `examans`
  ADD PRIMARY KEY (`EAnsID`);

--
-- Indexes for table `examdetails`
--
ALTER TABLE `examdetails`
  ADD PRIMARY KEY (`ExamID`),
  ADD UNIQUE KEY `ExamName` (`ExamName`);

--
-- Indexes for table `facutlytable`
--
ALTER TABLE `facutlytable`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`Gname`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`RsID`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`Eno`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`V_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examans`
--
ALTER TABLE `examans`
  MODIFY `EAnsID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `examdetails`
--
ALTER TABLE `examdetails`
  MODIFY `ExamID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `facutlytable`
--
ALTER TABLE `facutlytable`
  MODIFY `FID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `RsID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2384;

--
-- AUTO_INCREMENT for table `studenttable`
--
ALTER TABLE `studenttable`
  MODIFY `Eno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146891664;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `V_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
