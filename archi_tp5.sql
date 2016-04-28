-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2016 at 11:31 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `archi_tp5`
--

-- --------------------------------------------------------

--
-- Table structure for table `AUTHOR`
--

CREATE TABLE IF NOT EXISTS `AUTHOR` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `AUTHOR`
--

INSERT INTO `AUTHOR` (`author_id`, `name`) VALUES
(1, 'Yunus'),
(2, 'Timothy'),
(3, 'Louis'),
(4, 'King'),
(5, 'Jacque'),
(6, 'Murdock');

-- --------------------------------------------------------

--
-- Table structure for table `AUTHORS_BOOKS`
--

CREATE TABLE IF NOT EXISTS `AUTHORS_BOOKS` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `FK_hdmd1iqokhek7rs0f1uxbe8ys` (`author_id`),
  KEY `FK_r2g2pmratfr9ak559jgxtbpq3` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AUTHORS_BOOKS`
--

INSERT INTO `AUTHORS_BOOKS` (`book_id`, `author_id`) VALUES
(3, 1),
(4, 2),
(6, 3),
(1, 4),
(2, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `BOOK`
--

CREATE TABLE IF NOT EXISTS `BOOK` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `BOOK`
--

INSERT INTO `BOOK` (`book_id`, `name`) VALUES
(1, 'Chroniques des temps obscures'),
(2, 'Harry Potter'),
(3, 'La boussole d or'),
(4, 'Coeur d encre'),
(5, 'A la croiseé des mondes'),
(6, 'Eragon');

-- --------------------------------------------------------

--
-- Table structure for table `BORROW`
--

CREATE TABLE IF NOT EXISTS `BORROW` (
  `borrow_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  PRIMARY KEY (`borrow_id`),
  KEY `FK_ie3442n2in6vt7prsmtfs73iw` (`user`),
  KEY `FK_7icatif40xl0hokerb1gyy9rt` (`book`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `TYPE`
--

CREATE TABLE IF NOT EXISTS `TYPE` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `TYPE`
--

INSERT INTO `TYPE` (`type_id`, `name`) VALUES
(1, 'Sci-fi'),
(2, 'Fantasy'),
(3, 'Action'),
(4, 'Thriller'),
(5, 'Heroic'),
(6, 'Epic'),
(7, 'Tragical'),
(8, 'Distopia');

-- --------------------------------------------------------

--
-- Table structure for table `TYPES_BOOKS`
--

CREATE TABLE IF NOT EXISTS `TYPES_BOOKS` (
  `book_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`type_id`),
  KEY `FK_q2oq3ey58y9xkjjp8sqiec1kn` (`type_id`),
  KEY `FK_oni15yua6nfp1a0wjvqgsg1hb` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TYPES_BOOKS`
--

INSERT INTO `TYPES_BOOKS` (`book_id`, `type_id`) VALUES
(2, 1),
(1, 2),
(2, 2),
(3, 2),
(5, 2),
(6, 2),
(2, 5),
(6, 5),
(1, 6),
(3, 7),
(4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE IF NOT EXISTS `USER` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`user_id`, `name`, `password`) VALUES
(1, 'ali', 'password1'),
(2, 'timo', 'password2'),
(3, 'karima', 'password3'),
(4, 'laura', 'password4'),
(5, 'benoit', 'password5'),
(6, 'fabien', 'password6');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AUTHORS_BOOKS`
--
ALTER TABLE `AUTHORS_BOOKS`
  ADD CONSTRAINT `FK_r2g2pmratfr9ak559jgxtbpq3` FOREIGN KEY (`book_id`) REFERENCES `BOOK` (`book_id`),
  ADD CONSTRAINT `FK_hdmd1iqokhek7rs0f1uxbe8ys` FOREIGN KEY (`author_id`) REFERENCES `AUTHOR` (`author_id`);

--
-- Constraints for table `BORROW`
--
ALTER TABLE `BORROW`
  ADD CONSTRAINT `FK_7icatif40xl0hokerb1gyy9rt` FOREIGN KEY (`book`) REFERENCES `BOOK` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ie3442n2in6vt7prsmtfs73iw` FOREIGN KEY (`user`) REFERENCES `USER` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TYPES_BOOKS`
--
ALTER TABLE `TYPES_BOOKS`
  ADD CONSTRAINT `FK_oni15yua6nfp1a0wjvqgsg1hb` FOREIGN KEY (`book_id`) REFERENCES `BOOK` (`book_id`),
  ADD CONSTRAINT `FK_q2oq3ey58y9xkjjp8sqiec1kn` FOREIGN KEY (`type_id`) REFERENCES `TYPE` (`type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
