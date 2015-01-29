-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2015 at 02:19 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `league_of_draven`
--

-- --------------------------------------------------------

--
-- Table structure for table `challangers`
--

CREATE TABLE IF NOT EXISTS `challangers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `srole` varchar(255) NOT NULL,
  `attack` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `ability` int(11) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `imagePath` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `challangers`
--

INSERT INTO `challangers` (`Id`, `name`, `role`, `srole`, `attack`, `health`, `ability`, `difficulty`, `imagePath`) VALUES
(1, 'Ashe', 'Marksman', 'support', 70, 30, 20, 40, '1.jpg'),
(6, 'Azir', 'Maze', 'Marksman', 60, 30, 60, 40, '2.jpg'),
(7, 'Fiddle', 'Mage', 'Support', 70, 30, 80, 80, '3.jpg'),
(8, 'Gnar', 'Fighter', 'Marksman', 10, 30, 60, 40, '4.jpg'),
(9, 'Lisa', 'Maze', 'support', 20, 50, 20, 40, '5.jpg'),
(10, 'Morgana', 'Maze', 'support', 60, 30, 60, 40, '6.jpg'),
(11, 'Shaco', 'Assassin', 'Support', 60, 30, 80, 80, '7.jpg'),
(12, 'Singed', 'Tank', 'Marksman', 90, 30, 60, 40, '8.jpg'),
(13, 'Twitch', 'Maze', 'support', 20, 50, 20, 40, '9.jpg'),
(14, 'Sona', 'Support', 'Mage', 20, 30, 45, 50, '10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `la`
--

CREATE TABLE IF NOT EXISTS `la` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `la`
--

INSERT INTO `la` (`Id`, `title`, `description`, `date`, `keyword`) VALUES
(1, 'Kick off the 2015 season with LCS team icons!', 'The 2015 season is underway as NA and EU LCS teams begin their journey towards the next World Championship. And to kick things off, we’re releasing the 2015 LCS team icons for 250 RP each. Support your favorite squad all season long!', '2015-01-27 17:51:28', '2015,LCS,season'),
(2, 'Worlds 2015 to be held in Europe', 'After sharing a memorable 2014 Championship with truly incredible esports fans in Taipei, Singapore and Korea, we’re looking forward to 2015’s final showdown more than ever. Today, on the eve of the season kickoff, we’re excited to announce that the 2015 World Championship will be coming to Europe this October.', '2015-01-27 17:52:11', '2015,Europe, Championship'),
(3, '2015 season kickoff sale!', 'We want everyone ready for the coming battles so we’re putting some of the ranked essentials on sale to help you prepare.', '2015-01-27 17:52:38', 'sale,2015,season'),
(4, 'Free transfers from North America to Oceania', 'The free transfer window from NA to OCE will be opening on January 23.', '2015-01-27 17:53:44', 'Free transfers,North America,January 23'),
(5, 'Introducing the new Mid-Season Invitational', 'Today we’ll be giving you a sneak peek at the global multi-regional events that will take place in 2015. We’re introducing a brand new tournament that serves as the conclusion to the Spring split - the Mid-Season Invitational in May. We’ll also be hosting an International Wild Card Invitational. Finally, we’re bringing back a fan favorite - the All-Star 2015 - as a conclusion to the season in December.', '2015-01-27 17:54:15', ' Mid-Season,tournament, Invitational,2015,');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
