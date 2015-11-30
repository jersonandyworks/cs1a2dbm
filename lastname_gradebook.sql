-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2015 at 12:56 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gradebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `category` enum('Q','T') NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `date`, `category`) VALUES
(1, '2015-11-03', 'Q'),
(2, '2015-11-10', 'Q'),
(3, '2015-11-24', 'Q'),
(4, '2015-11-30', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `score` float NOT NULL,
  `student_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`score_id`, `score`, `student_id`, `event_id`) VALUES
(1, 83.5, 1, 1),
(2, 82, 2, 1),
(3, 84, 3, 1),
(4, 86, 4, 1),
(6, 77, 5, 1),
(7, 86, 1, 2),
(8, 84, 2, 2),
(9, 83, 3, 2),
(10, 81, 4, 2),
(11, 80, 5, 2),
(12, 78, 1, 3),
(13, 79, 2, 3),
(14, 89, 3, 3),
(15, 82, 4, 3),
(16, 80, 1, 4),
(17, 80, 2, 4),
(18, 86, 3, 4),
(19, 88, 5, 4),
(20, 81, 1, 5),
(21, 85, 3, 5),
(22, 87, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `sex` enum('F','M') NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `firstname`, `lastname`, `sex`, `age`) VALUES
(1, 'Billy', 'Crawford', 'M', 30),
(2, 'Larry', 'Holmes', 'M', 28),
(3, 'Jenny', 'Romero', 'F', 28),
(4, 'Alannis', 'Moore', 'F', 26),
(5, 'Bryan', 'Stafouri', 'M', 27);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
