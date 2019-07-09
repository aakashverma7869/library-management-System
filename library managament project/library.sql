-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 06:43 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `id` int(50) NOT NULL,
  `contact_no` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `pass` varchar(25) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `id`, `contact_no`, `email`, `year`, `pass`, `address`, `gender`, `dob`) VALUES
('ram', 1516, 12345, '12@ab', 2010, 'root', 'wwrwr', 'Male', '2/3/1998'),
('sam', 1616, 23434667, 'fd@rg', 2010, 'qwert', 'gbgfbtb', 'Male', '5/08/1976');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_name` varchar(150) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `book_no` varchar(100) NOT NULL,
  `year_of_publication` int(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `admin` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_name`, `author_name`, `book_no`, `year_of_publication`, `category`, `price`, `admin`) VALUES
('php', 'ram', '1122', 2005, 'tech', 200, '1516'),
('css', 'hero', '12366', 2011, 'tech', 255, '1516'),
('jsp', 'qwerty', '1411', 2008, 'tech', 300, '1516'),
('webTech', 'bhora', '1467', 2009, 'tech', 100, '1516'),
('html', 'shyam', '2322', 2015, 'tech', 150, '1516'),
('One On One', 'antoni', '234522', 2009, 'novel', 220, '1516');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `name` varchar(50) NOT NULL,
  `facultyname` varchar(50) NOT NULL,
  `path` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`name`, `facultyname`, `path`, `date`) VALUES
('2.jpeg', 'null', 'f:lmfile2.jpeg', '2018-04-01 11:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `regi`
--

CREATE TABLE `regi` (
  `book_no` int(100) NOT NULL,
  `student_id` int(100) NOT NULL,
  `date_of_issue` datetime DEFAULT NULL,
  `returndate` datetime DEFAULT NULL,
  `regesterid` varchar(20) NOT NULL,
  `returnstatus` varchar(20) DEFAULT NULL,
  `book_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regi`
--

INSERT INTO `regi` (`book_no`, `student_id`, `date_of_issue`, `returndate`, `regesterid`, `returnstatus`, `book_name`) VALUES
(1122, 1516, '2018-06-24 12:58:42', '2018-07-15 12:58:42', '250620370', 'Pending', 'php'),
(12366, 1616, '2018-04-01 16:32:28', '2018-04-22 16:32:28', '485F62790', 'Issued', 'css'),
(234522, 1616, '2018-04-24 11:22:08', '2018-05-15 11:22:08', '6DDA97626', 'Issued', 'One On One'),
(2322, 1616, '2018-03-31 16:12:02', '2018-03-30 16:12:02', '7CC357041', 'Pending', 'html'),
(1411, 1616, '2018-03-31 16:08:32', '2018-03-24 16:08:32', '7CC371766', 'Pending', 'jsp'),
(1122, 1616, '2018-03-31 16:08:25', '2018-04-21 16:08:25', '7CC376569', 'Pending', 'php'),
(1467, 1616, '2018-04-18 13:59:15', '2018-05-09 13:59:15', 'B41C48469', 'Pending', 'webTech'),
(12366, 1616, '2018-04-18 13:56:58', '2018-05-09 13:56:58', 'B41C62258', 'Pending', 'css'),
(2322, 1616, '2018-04-24 13:54:38', '2018-05-15 13:54:38', 'E48790822', 'Pending', 'html'),
(1122, 1616, '2018-04-24 09:52:37', '2018-05-15 09:52:37', 'E94949816', 'Issued', 'php'),
(12366, 1616, '2018-04-24 09:44:29', '2018-05-15 09:44:29', 'E94981331', 'Issued', 'css'),
(1467, 1616, '2018-04-01 16:54:00', '2018-04-22 16:54:00', 'F13F95663', 'Pending', 'webTech'),
(1467, 1616, '2018-04-01 16:58:58', '2018-04-22 16:58:58', 'F13F98519', 'Issued', 'webTech'),
(12366, 1516, '2018-04-22 18:30:03', '2018-05-13 18:30:03', 'F5F515886', 'Issued', 'css');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `roll_no` int(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `branch` varchar(5) DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `pass` varchar(25) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`roll_no`, `name`, `email`, `branch`, `contact`, `pass`, `year`, `dob`, `gender`, `address`) VALUES
(1, 'aakash', 'samas', 'cs', 9711172265, 'bye', 2020, '1998-01-09', 'Male', 'acv'),
(11, 'aa', 'aa', 'cs', 98, '123', 2018, '0009-09-09', 'male', 'hj'),
(32, '32', '32', '32', 32, '43', 32, '0002-02-04', '45', '43'),
(54, '54', '54', '5454', 54, 'null', 5454, '0054-04-05', '54', '54'),
(98, 'qw', 'qw@gm.com', 'cs', 333, '321', 2, '0003-03-31', 'm', 'dd'),
(113, 'aa', 'abb', 'cs', 22, '12222', 1, '0002-02-22', 'a', 'xx'),
(1234, 'ff', 'adit@gmail.com', 'cs', 1234567890, 'eee', 1, '0412-03-12', 'male', 'asd ghz'),
(1516, 'Prashant', 'qwe@123', 'cse', 123456789, 'Sooja', 3, '1998-08-10', 'Male', 'rthr'),
(1616, 'adit tyagi', 'ad@qw', 'cse', 34567, 'tyagi', 2, '1998-04-25', 'Male', 'ythty'),
(6767, 'kj', 'a@gm.com', 'b', 9933336668, '88', 5, '0008-07-02', 'm', 'hh'),
(12334, 'aaaa', 'a@m.com', 'cs', 56, 'de', 3, '0004-04-04', 'm', 'mm'),
(1616110012, 'Adit', 'ad@gmail.com', 'CS', 9711172265, 'qwerty', 2, '2000-11-11', 'M', 'Ghaziabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_no`);

--
-- Indexes for table `regi`
--
ALTER TABLE `regi`
  ADD PRIMARY KEY (`regesterid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`roll_no`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
