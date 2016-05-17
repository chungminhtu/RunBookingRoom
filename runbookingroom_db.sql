-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2016 at 04:12 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `events_rec`
--

CREATE TABLE `events_rec` (
  `event_id` int(11) NOT NULL,
  `types` varchar(25) DEFAULT NULL,
  `notes` text,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  `event_length` bigint(20) DEFAULT NULL,
  `event_pid` int(11) DEFAULT NULL,
  `rec_type` varchar(64) DEFAULT NULL,
  `text` varchar(250) DEFAULT NULL,
  `readonly` varchar(1) DEFAULT '0',
  `rooms` varchar(128) DEFAULT NULL,
  `rec_pattern` varchar(64) DEFAULT NULL,
  `groupnames` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events_rec`
--
 
--
-- Indexes for dumped tables
--

--
-- Indexes for table `events_rec`
--
ALTER TABLE `events_rec`
  ADD PRIMARY KEY (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events_rec`
--
ALTER TABLE `events_rec`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
