-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2013 at 10:20 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codeshare`
--
CREATE DATABASE IF NOT EXISTS `codeshare` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `codeshare`;

-- --------------------------------------------------------

--
-- Table structure for table `acmicpc`
--

CREATE TABLE IF NOT EXISTS `acmicpc` (
  `problemcode` varchar(100) DEFAULT NULL,
  `problemname` varchar(300) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `problemdescription` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acmicpc`
--

INSERT INTO `acmicpc` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('fdsdfs', 'dfsdsf', 'DYNAMMICPROGRAMMING', '<p>dsfdsf</p', 'pankaj9310', '2013-12-13 21:26:06'),
('fsdfds', 'dsfdsf', 'DYNAMMICPROGRAMMING', '<p>fdsdfs</p', 'pankaj9310', '2013-12-13 21:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `acmicpcsolutions`
--

CREATE TABLE IF NOT EXISTS `acmicpcsolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `sourcecode` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin456');

-- --------------------------------------------------------

--
-- Table structure for table `askquestions`
--

CREATE TABLE IF NOT EXISTS `askquestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questioncode` varchar(50) NOT NULL,
  `questiontitle` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL,
  `questiondescription` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `askquestions`
--

INSERT INTO `askquestions` (`id`, `questioncode`, `questiontitle`, `category`, `questiondescription`, `username`, `time`) VALUES
(1, 'PROG1', 'What is the good resource for learning Programming ??', 'Programming', '<p>i am very weak in coding .. so i want to learn it</p>\r\n<p>anybody please help me??</p>', 'aqfaridi', '2013-12-11 06:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `codechef`
--

CREATE TABLE IF NOT EXISTS `codechef` (
  `problemcode` varchar(100) NOT NULL,
  `problemname` varchar(300) NOT NULL,
  `category` varchar(100) NOT NULL,
  `problemdescription` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codechef`
--

INSERT INTO `codechef` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('ALEXNUMB', 'Magic Pairs', 'MATH', '<p>Alexandra has some distinct integer numbers <strong>a<sub>1</sub>,a<sub>2</sub>...a<sub>n</sub></strong>.<br /> Count number of pairs <strong>(i,j)</strong> such that:</p>\r\n<div class="content">\r\n<ul>\r\n<li><strong> 1&le; i &le; n</strong></li>\r\n<li><strong> 1&le; j &le; n</strong></li>\r\n<li><strong> a<sub>i</sub> &lt; a<sub>j</sub></strong></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3>Input</h3>\r\n<p>The first line of the input contains an integer <strong>T</strong> denoting the number of test cases. The description of <strong>T</strong> test cases follows.The first line of each test case contains a single integer <strong>n</strong> denoting the number of numbers Alexandra has. The second line contains <strong>n</strong> space-separated distinct integers <strong>a<sub>1</sub></strong>, <strong>a<sub>2</sub></strong>, ..., <strong>a<sub>n</sub></strong> denoting these numbers.</p>\r\n<p>&nbsp;</p>\r\n<h3>Output</h3>\r\n<p>For each test case, output a single line containing number of pairs for corresponding test case.</p>\r\n<p>&nbsp;</p>\r\n<h3>Constraints</h3>\r\n<ul>\r\n<li><strong>1</strong> &le; <strong>T</strong> &le; <strong>4</strong></li>\r\n<li><strong>1</strong> &le; <strong>n</strong> &le; <strong>100000</strong></li>\r\n<li><strong>0</strong> &le; <strong>a<sub>i</sub></strong> &le; <strong>10<sup>9</sup></strong></li>\r\n<li>All the a<sub>i</sub> are distinct</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3>Example</h3>\r\n<pre>2\r\n2\r\n2 1\r\n3\r\n3 1 2\r\n</pre>\r\n<p><strong>Output:</strong></p>\r\n<pre>1\r\n3\r\n</pre>\r\n<p>&nbsp;</p>\r\n<h3>Explanation</h3>\r\n<p>Case 1: Only one such pair: (2,1)</p>\r\n<p>Case 2: 3 possible pairs: (2,1), (2,3), (3,1)</p>\r\n</div', 'aqfaridi', '2013-12-12 05:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `codechefsolutions`
--

CREATE TABLE IF NOT EXISTS `codechefsolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `sourcecode` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `codeforces`
--

CREATE TABLE IF NOT EXISTS `codeforces` (
  `problemcode` varchar(100) DEFAULT NULL,
  `problemname` varchar(300) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `problemdescription` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codeforces`
--

INSERT INTO `codeforces` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('zss', 'sss', 'DYNAMMICPROGRAMMING', '<p>sssssssssssssssss</p>\r\n<p>&nbsp;</p', 'pankaj9310', '2013-12-13 21:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `codeforcessolutions`
--

CREATE TABLE IF NOT EXISTS `codeforcessolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `sourcecode` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `codejam`
--

CREATE TABLE IF NOT EXISTS `codejam` (
  `problemcode` varchar(100) DEFAULT NULL,
  `problemname` varchar(300) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `problemdescription` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codejam`
--

INSERT INTO `codejam` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('dfsdfsdfs', 'dfsfddfs', 'DYNAMMICPROGRAMMING', '', 'pankaj9310', '2013-12-13 21:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `codejamsolutions`
--

CREATE TABLE IF NOT EXISTS `codejamsolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `sourcecode` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `commentproblem`
--

CREATE TABLE IF NOT EXISTS `commentproblem` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `commentproblem`
--

INSERT INTO `commentproblem` (`Sno`, `problemcode`, `comment`, `username`, `time`) VALUES
(1, 'FCTRL', 'hello', 'aqfaridi', '2013-12-11 04:34:31'),
(2, 'FCTRL', 'hi\r\n', 'aqfaridi', '2013-12-11 05:10:08'),
(3, 'FCTRL', '', 'aqfaridi', '2013-12-11 05:10:11'),
(4, 'FCTRL', 'tune mere jaana kabhi nahi jana', 'aqfaridi', '2013-12-11 05:10:29'),
(5, 'FCTRL', 'hello\r\n', 'pankaj9310', '2013-12-11 05:11:00'),
(6, 'FCTRL', 'hi sfddsfklkjldfs', 'pankaj9310', '2013-12-11 05:21:24'),
(7, 'FCTRL', '\r\ndsf\r\ndsf\r\ndsf\r\ndsf\r\ndfs\r\n', 'pankaj9310', '2013-12-11 05:23:30'),
(8, 'FCTRL', 'hello guys\r\n How are you all ??', 'pankaj9310', '2013-12-11 05:25:18'),
(11, 'TETRA', 'nice problem..', 'pankaj9310', '2013-12-11 06:06:20'),
(13, 'ADDREV', 'sd', 'admin', '2013-12-14 01:08:01'),
(14, 'ADDREV', 'jhbj\r', 'sfdfsd  fdsdfsdfs', '2013-12-14 01:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `commentquestions`
--

CREATE TABLE IF NOT EXISTS `commentquestions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `commentquestions`
--

INSERT INTO `commentquestions` (`Sno`, `id`, `comment`, `username`, `time`) VALUES
(1, 1, '\r\n', 'aqfaridi', '2013-12-11 07:23:33'),
(2, 1, 'sfsd', 'aqfaridi', '2013-12-11 07:23:50'),
(3, 1, 'sfsd', 'aqfaridi', '2013-12-11 07:24:07'),
(4, 1, 'sfsdsfdfdsdfs', 'aqfaridi', '2013-12-11 07:28:28'),
(5, 1, '119283712978312', 'aqfaridi', '2013-12-11 07:28:37'),
(6, 1, '\r\n\r\n\r\n\r\n', 'aqfaridi', '2013-12-11 07:28:47'),
(7, 1, 'thtghghghghg', 'aqfaridi', '2013-12-11 19:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `commentsource`
--

CREATE TABLE IF NOT EXISTS `commentsource` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `commentsource`
--

INSERT INTO `commentsource` (`Sno`, `problemcode`, `comment`, `username`, `time`) VALUES
(1, 'FCTRL', 'hello', 'pankaj9310', '2013-12-11 05:45:40'),
(2, 'FCTRL', 'oye \r\nkaisa hai be\r\n', 'pankaj9310', '2013-12-11 05:45:52'),
(3, 'FCTRL', 'tu kaha hai be\r\n??', 'aqfaridi', '2013-12-11 05:46:22'),
(4, 'FCTRL', 'dfsds\r\ndfs\r\ndfs\r\nfsd\r\n', 'aqfaridi', '2013-12-11 05:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `commenttutorials`
--

CREATE TABLE IF NOT EXISTS `commenttutorials` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `commenttutorials`
--

INSERT INTO `commenttutorials` (`Sno`, `tid`, `comment`, `username`, `time`) VALUES
(1, 2, 'fdsdf', 'aqfaridi', '2013-12-14 08:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `number`, `comment`) VALUES
(1, 'fdgdg', 'dgfdf', 'hf', 'hf                                                        '),
(2, 'fdgdgfdsdfs', 'dgfdffdsfddfs', 'hffdsfdfds', 'hf             fdsfdsfdsdfs                                           '),
(3, 'dgv', 'dsfs', 'd gf', '                                                        ');

-- --------------------------------------------------------

--
-- Table structure for table `livearchive`
--

CREATE TABLE IF NOT EXISTS `livearchive` (
  `problemcode` varchar(100) DEFAULT NULL,
  `problemname` varchar(300) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `problemdescription` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livearchive`
--

INSERT INTO `livearchive` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('dfssdf', 'dfsdsf', 'DYNAMMICPROGRAMMING', '<p>dfsdsf</p>\r\n<p>&nbsp;</p', 'pankaj9310', '2013-12-13 21:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `livearchivesolutions`
--

CREATE TABLE IF NOT EXISTS `livearchivesolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `sourcecode` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE IF NOT EXISTS `other` (
  `problemcode` varchar(100) NOT NULL,
  `problemname` varchar(300) NOT NULL,
  `category` varchar(100) NOT NULL,
  `problemdescription` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other`
--

INSERT INTO `other` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('fsddfsdsf', 'dfsdsfdsf', 'DYNAMMICPROGRAMMING', '<p>dsfdfssdfdfs</p', 'pankaj9310', '2013-12-13 21:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `othersolutions`
--

CREATE TABLE IF NOT EXISTS `othersolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(200) NOT NULL,
  `language` varchar(100) NOT NULL,
  `sourcecode` text NOT NULL,
  `authoer` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `own`
--

CREATE TABLE IF NOT EXISTS `own` (
  `problemcode` varchar(100) NOT NULL,
  `problemname` varchar(300) NOT NULL,
  `category` varchar(100) NOT NULL,
  `problemdescription` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ownsolutions`
--

CREATE TABLE IF NOT EXISTS `ownsolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) NOT NULL,
  `language` varchar(20) NOT NULL,
  `sourcecode` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projecteuler`
--

CREATE TABLE IF NOT EXISTS `projecteuler` (
  `problemcode` varchar(100) DEFAULT NULL,
  `problemname` varchar(300) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `problemdescription` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projecteuler`
--

INSERT INTO `projecteuler` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('fddfsdfs', 'fdsdfs', 'DYNAMMICPROGRAMMING', '<p>fdfdsdfs</p', 'aqfaridi', '2013-12-13 21:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `projecteulersolutions`
--

CREATE TABLE IF NOT EXISTS `projecteulersolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `sourcecode` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `spoj`
--

CREATE TABLE IF NOT EXISTS `spoj` (
  `problemcode` varchar(50) NOT NULL,
  `problemname` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `problemdescription` varchar(50000) NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`problemcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spoj`
--

INSERT INTO `spoj` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('ADDREV', 'Adding Reversed Numbers', 'MATH', '<p>The Antique Comedians of Malidinesia prefer comedies to tragedies. Unfortunately, most of the ancient plays are tragedies. Therefore the dramatic advisor of ACM has decided to transfigure some tragedies into comedies. Obviously, this work is very hard because the basic sense of the play must be kept intact, although all the things change to their opposites. For example the numbers: if any number appears in the tragedy, it must be converted to its reversed form before being accepted into the comedy play.</p>\r\n<p>Reversed number is a number written in arabic numerals but the order of digits is reversed. The first digit becomes last and vice versa. For example, if the main hero had 1245 strawberries in the tragedy, he has 5421 of them now. Note that all the leading zeros are omitted. That means if the number ends with a zero, the zero is lost by reversing (e.g. 1200 gives 21). Also note that the reversed number never has any trailing zeros.</p>\r\n<p>ACM needs to calculate with reversed numbers. Your task is to add two reversed numbers and output their reversed sum. Of course, the result is not unique because any particular number is a reversed form of several numbers (e.g. 21 could be 12, 120 or 1200 before reversing). Thus we must assume that no zeros were lost by reversing (e.g. assume that the original number was 12).</p>\r\n<h3>Input</h3>\r\n<p>The input consists of <var>N</var> cases (equal to about 10000). The first line of the input contains only positive integer <var>N</var>. Then follow the cases. Each case consists of exactly one line with two positive integers separated by space. These are the reversed numbers you are to add.</p>\r\n<h3>Output</h3>\r\n<p>For each case, print exactly one line containing only one integer - the reversed sum of two reversed numbers. Omit any leading zeros in the output.</p>\r\n<h3>Example</h3>\r\n<pre>Sample input: \r\n\r\n3\r\n24 1\r\n4358 754\r\n305 794\r\n\r\nSample output:\r\n\r\n34\r\n1998\r\n1\r\n</pre', 'aqfaridi', '2013-12-12 02:42:30'),
('BLINNET', 'Bytelandian Blingors Network', 'KRUSKAL', '<p align="justify"><em>We have discovered the fastest communication medium </em> Bytelandian scientists announced, and they called it <em>blingors</em>. The blingors are incomparably better than other media known before. Many companies in Byteland started to build blingors networks, so the information society in the kingdom of Bytes is fact! The priority is to build the core of the blingors network, joinig main cities in the country. Assume there is some number of cities that will be connected at the beginning. The cost of building blingors connection between two cities depends on many elements, but it has been successfully estimated. Your task is to design the blingors network connections between some cities in this way that between any pair of cities is a communication route. The cost of this network should be as small as possible.</p>\r\n<p>&nbsp;</p>\r\n<p>Remarks</p>\r\n<p>&nbsp;</p>\r\n<div align="left">\r\n<ul>\r\n<li>The name of the city is a string of at most 10 letters from <em>a,...,z</em>.</li>\r\n<li>The cost of the connection between two cities is a positive integer.</li>\r\n<li>The sum of all connections is not greater than 2<sup>32</sup>-1.</li>\r\n<li>The number of cities is not greater than 10 000.</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>\r\n<h3>Input</h3>\r\n<p>&nbsp;</p>\r\n<p align="justify">\r\n<br /><em>s</em> [number of test cases &lt;= 10]\r\n<em>n</em> [number of cities &lt;= 10 000]\r\n<em>NAME</em> [city name]\r\n<em>p</em> [number of neigbouring cities to the city <em>NAME</em>]\r\n<em>neigh</em> <em>cost</em> \r\n     [<em>neigh</em> - the unique number of  city from the main list\r\n      <em>cost</em> - the cost of building the blingors connection from <em>NAME</em> to <em>neigh</em>]\r\n[empty line between test cases]\r\n</p>\r\n<p>&nbsp;</p>\r\n<h3>Output</h3>\r\n<p>&nbsp;</p>\r\n<p align="justify">[separate lines] <em>cost</em> [the minimum cost of building the blingors network]</p>\r\n<p>&nbsp;</p>\r\n<h3>Example</h3>\r\n<p>&nbsp;</p>\r\n<pre><strong>Input:</strong>\r\n2\r\n\r\n4\r\ngdansk\r\n2\r\n2 1\r\n3 3\r\nbydgoszcz\r\n3\r\n1 1\r\n3 1\r\n4 4\r\ntorun\r\n3\r\n1 3\r\n2 1\r\n4 1\r\nwarszawa\r\n2\r\n2 4\r\n3 1\r\n\r\n3\r\nixowo\r\n2\r\n2 1\r\n3 3\r\niyekowo\r\n2\r\n1 1\r\n3 7\r\nzetowo\r\n2\r\n1 3 \r\n2 7\r\n\r\n\r\n<strong>Output:</strong>\r\n3\r\n4\r\n</pre>\r\n<p><strong>Warning: large Input/Output data, be careful with certain languages</strong></p', 'aqfaridi', '2013-12-12 05:54:18'),
('CISTFILL', 'Fill the Cisterns', 'STACK QUEUE', '<p align="justify">For sure, the love mobiles will roll again on this summers street parade. Each year, the organisers decide on a fixed order for the decorated trucks. Experience taught them to keep free a side street to be able to bring the trucks into order. <br /><br /> The side street is so narrow that no two cars can pass each other. Thus, the love mobile that enters the side street last must necessarily leave the side street first. Because the trucks and the ravers move up closely, a truck cannot drive back and re-enter the side street or the approach street. <br /><br /> You are given the order in which the love mobiles arrive. Write a program that decides if the love mobiles can be brought into the order that the organisers want them to be.</p>\r\n<h3>Input</h3>\r\n<p align="justify">There are several test cases. The first line of each test case contains a single number n, the number of love mobiles. The second line contains the numbers 1 to n in an arbitrary order. All the numbers are separated by single spaces. These numbers indicate the order in which the trucks arrive in the approach street. No more than 1000 love mobiles participate in the street parade. Input ends with number 0.</p>\r\n<h3>Output</h3>\r\n<p align="justify">For each test case your program has to output a line containing a single word <tt>yes</tt> if the love mobiles can be re-ordered with the help of the side street, and a single word <tt>no</tt> in the opposite case.</p>\r\n<h3>Example</h3>\r\n<pre><strong>Sample input:</strong>\r\n5\r\n5 1 2 4 3 \r\n0\r\n\r\n<strong>Sample output:</strong>\r\nyes\r\n</pre>\r\n<h3>Illustration</h3>\r\n<p>The sample input reflects the following situation:<br /> <img src="http://www.spoj.com/content/pomyk:parade1.gif" alt="" /></p>\r\n<p>The five trucks can be re-ordered in the following way:<br /> <img src="http://www.spoj.com/content/pomyk:parade2.gif" alt="" /> <img src="http://www.spoj.com/content/pomyk:parade3.gif" alt="" /> <img src="http://www.spoj.com/content/pomyk:parade4.gif" alt="" /> <img src="http://www.spoj.com/content/pomyk:parade5.gif" alt="" /> <img src="http://www.spoj.com/content/pomyk:parade6.gif" alt="" /></p', 'aqfaridi', '2013-12-12 19:00:34'),
('FCTRL', 'Factorial', 'MATH', '<p>The most important part of a&nbsp;GSM network is so called <em>Base Transceiver Station</em> (<em>BTS</em>). These transceivers form the areas called <em>cells</em> (this term gave the name to the cellular phone) and every phone connects to the BTS with the strongest signal (in a&nbsp;little simplified view). Of course, BTSes need some attention and technicians need to check their function periodically.</p>\r\n<p>ACM technicians faced a&nbsp;very interesting problem recently. Given a&nbsp;set of BTSes to visit, they needed to find the shortest path to visit all of the given points and return back to the central company building. Programmers have spent several months studying this problem but with no results. They were unable to find the solution fast enough. After a&nbsp;long time, one of the programmers found this problem in a&nbsp;conference article. Unfortunately, he found that the problem is so called "Travelling Salesman Problem" and it is very hard to solve. If we have <var>N</var> BTSes to be visited, we can visit them in any order, giving us <var>N</var>! possibilities to examine. The function expressing that number is called factorial and can be computed as a&nbsp;product 1.2.3.4....<var>N</var>. The number is very high even for a&nbsp;relatively small <var>N</var>.</p>\r\n<p>The programmers understood they had no chance to solve the problem. But because they have already received the research grant from the government, they needed to continue with their studies and produce at least <em>some</em> results. So they started to study behaviour of the factorial function.</p>\r\n<p>For example, they defined the function <var>Z</var>. For any positive integer <var>N</var>, <var>Z</var>(<var>N</var>) is the number of zeros at the end of the decimal form of number <var>N</var>!. They noticed that this function never decreases. If we have two numbers <var>N</var><sub>1</sub>&lt;<var>N</var><sub>2</sub>, then <var>Z</var>(<var>N</var><sub>1</sub>) &lt;= <var>Z</var>(<var>N</var><sub>2</sub>). It is because we can never "lose" any trailing zero by multiplying by any positive number. We can only get new and new zeros. The function <var>Z</var> is very interesting, so we need a&nbsp;computer program that can determine its value efficiently.</p>\r\n<p>&nbsp;</p>\r\n<h3>Input</h3>\r\n<p>There is a&nbsp;single positive integer <var>T</var> on the first line of input (equal to about 100000). It stands for the number of numbers to follow. Then there are <var>T</var> lines, each containing exactly one positive integer number <var>N</var>, 1 &lt;= <var>N</var> &lt;= 1000000000.</p>\r\n<p>&nbsp;</p>\r\n<h3>Output</h3>\r\n<p>For every number <var>N</var>, output a&nbsp;single line containing the single non-negative integer <var>Z</var>(<var>N</var>).</p>\r\n<h3>Example</h3>\r\n<p>Sample Input:</p>\r\n<pre><tt>6\r\n3\r\n60\r\n100\r\n1024\r\n23456\r\n8735373\r\n</tt></pre>\r\n<p>Sample Output:</p>\r\n<pre><tt>0\r\n14\r\n24\r\n253\r\n5861\r\n2183837\r\n</tt></pre>', 'aqfaridi', '2013-12-11 02:59:50'),
('FCTRL2', 'Small factorials', 'MATH', '<p align="justify">You are asked to calculate factorials of some small positive integers.</p>\r\n<h3>Input</h3>\r\n<p align="justify">An integer t, 1&lt;=t&lt;=100, denoting the number of testcases, followed by t lines, each containing a single integer n, 1&lt;=n&lt;=100.</p>\r\n<h3>Output</h3>\r\n<p align="justify">For each integer n given at input, display a line with the value of n!</p>\r\n<h3>Example</h3>\r\n<div align="left">Sample input:\r\n<pre>4\r\n1\r\n2\r\n5\r\n3\r\n</pre>\r\n<p>Sample output:</p>\r\n<pre>1\r\n2\r\n120\r\n6\r\n</pre>\r\n</div', 'aqfaridi', '2013-12-12 05:48:53'),
('JULKA', 'Julka', 'MATH', '<p>&nbsp;Julka surprised her teacher at preschool by solving the following riddle:<br /><br />Klaudia and Natalia have 10 apples together, but Klaudia has two apples more than Natalia. How many apples does each of he girls have?<br /><br />Julka said without thinking: Klaudia has 6 apples and Natalia 4 apples. The teacher tried to check if Julkas answer wasnt accidental and repeated the riddle every time increasing the numbers. Every time Julka answered correctly. The surprised teacher wanted to continue questioning Julka, but with big numbers she couldt solve the riddle fast enough herself. Help the teacher and write a program which will give her the right answers.<br />Task<br /><br />Write a program which<br /><br />&nbsp;&nbsp;&nbsp; reads from standard input the number of apples the girls have together and how many more apples Klaudia has,<br />&nbsp;&nbsp;&nbsp; counts the number of apples belonging to Klaudia and the number of apples belonging to Natalia,<br />&nbsp;&nbsp;&nbsp; writes the outcome to standard output<br /><br />Input<br /><br />Ten test cases (given one under another, you have to process all!). Every test case consists of two lines. The first line says how many apples both girls have together. The second line says how many more apples Klaudia has. Both numbers are positive integers. It is known that both girls have no more than 10100 (1 and 100 zeros) apples together. As you can see apples can be very small.<br />Output<br /><br />For every test case your program should output two lines. The first line should contain the number of apples belonging to Klaudia. The second line should contain the number of apples belonging to Natalia.<br />Example<br /><br />Input:<br />10<br />2<br />[and 9 test cases more]<br /><br />Output:<br />6<br />4<br />[and 9 test cases more]<br /><br /></p>', 'aqfaridi', '2013-12-11 03:18:06'),
('KGSS', 'Maximum Sum', 'SEGMENT TREE', '<p>You are given a sequence A[1], A[2], ..., A[N] ( 0 &le; A[i] &le; 10^8 , 2 &le; N &le; 10^5 ). There are two types of operations and they are defined as follows:</p>\r\n<p><strong>Update:</strong></p>\r\n<p>This will be indicated in the input by a U followed by space and then two integers i and x.</p>\r\n<p><strong>U i x</strong>, 1 &le; i &le; N, and x, 0 &le; x &le; 10^8.</p>\r\n<p>This operation sets the value of A[i] to x.</p>\r\n<p><strong>Query:</strong></p>\r\n<p>This will be indicated in the input by a Q followed by a single space and then two integers i and j.</p>\r\n<p><strong>Q x y</strong>, 1 &le; x &lt; y &le; N.</p>\r\n<p>You must find i and j such that x &le; i, j &le; y and i != j, such that the sum A[i]+A[j] is maximized. Print the sum A[i]+A[j].</p>\r\n<h3 align="center">Input</h3>\r\n<p>The first line of input consists of an integer <strong>N</strong> representing the length of the sequence. Next line consists of N space separated integers A[i]. Next line contains an integer <strong>Q</strong>, Q &le; 10^5, representing the number of operations. Next Q lines contain the operations.</p>\r\n<h3 align="center">Output</h3>\r\n<p>Output the maximum sum mentioned above, in a separate line, for each Query.</p>\r\n<h3 align="center">Example</h3>\r\n<pre><strong>Input:</strong>\r\n5\r\n1 2 3 4 5\r\n6\r\nQ 2 4\r\nQ 2 5\r\nU 1 6\r\nQ 1 5\r\nU 1 7\r\nQ 1 5\r\n\r\n<strong>Output:</strong>\r\n7\r\n9\r\n11\r\n12\r\n\r\n</pre>\r\n<div align="center"><strong>Warning: large Input/Output data, be careful with certain languages</strong></div', 'pankaj9310', '2013-12-13 03:52:21'),
('LABYR1', 'Labyrinth', 'BFSDFS', '<p align="justify">The northern part of the Pyramid contains a very large and complicated labyrinth. The labyrinth is divided into square blocks, each of them either filled by rock, or free. There is also a little hook on the floor in the center of every free block. The ACM have found that two of the hooks must be connected by a rope that runs through the hooks in every block on the path between the connected ones. When the rope is fastened, a secret door opens. The problem is that we do not know which hooks to connect. That means also that the neccessary length of the rope is unknown. Your task is to determine the maximum length of the rope we could need for a given labyrinth.</p>\r\n<h3>Input</h3>\r\n<p>&nbsp;</p>\r\n<p align="justify">The input consists of <var>T</var> test cases. The number of them (<var>T</var>) is given on the first line of the input file. Each test case begins with a line containing two integers <var>C</var> and <var>R</var> (<var>3 &lt;= C,R &lt;= 1000</var>) indicating the number of columns and rows. Then exactly <var>R</var> lines follow, each containing <var>C</var> characters. These characters specify the labyrinth. Each of them is either a hash mark (<code>#</code>) or a period (<code>.</code>). Hash marks represent rocks, periods are free blocks. It is possible to walk between neighbouring blocks only, where neighbouring blocks are blocks sharing a&nbsp;common side. We cannot walk diagonally and we cannot step out of the labyrinth.</p>\r\n<p align="justify">The labyrinth is designed in such a way that there is exactly one path between any two free blocks. Consequently, if we find the proper hooks to connect, it is easy to find the right path connecting them.</p>\r\n<h3>Output</h3>\r\n<p>&nbsp;</p>\r\n<p align="justify">Your program must print exactly one line of output for each test case. The line must contain the sentence "<code>Maximum rope length is <var>X</var>.</code>" where <var>X</var>is the length of the longest path between any two free blocks, measured in blocks.</p>\r\n<h3>Example</h3>\r\n<p>&nbsp;</p>\r\n<pre>Sample Input:\r\n\r\n<tt>2\r\n3 3\r\n###\r\n#.#\r\n###\r\n7 6\r\n#######\r\n#.#.###\r\n#.#.###\r\n#.#.#.#\r\n#.....#\r\n#######</tt>\r\n\r\n\r\nSample output:\r\n\r\n<tt>Maximum rope length is 0.\r\nMaximum rope length is 8.</tt>\r\n</pre>\r\n<p><strong>Warning: large Input/Output data, be careful with certain languages</strong></p', 'aqfaridi', '2013-12-12 01:13:47'),
('Marbles', 'MARBLES', 'BRUTEFORCE', '<p align="justify">H&auml;nschen dreams he is in a shop with an infinite amount of marbles. He is allowed to select n marbles. There are marbles of k different colors. From each color there are also infinitely many marbles. H&auml;nschen wants to have at least one marble of each color, but still there are a lot of possibilities for his selection. In his effort to make a decision he wakes up. Now he asks you how many possibilites for his selection he would have had. Assume that marbles of equal color cant be distinguished, and the order of the marbles is irrelevant.</p>\r\n<h3>Input</h3>\r\n<p align="justify">The first line of input contains a number T &lt;= 100 that indicates the number of test cases to follow. Each test case consists of one line containing n and k, where n is the number of marbles H&auml;nschen selects and k is the number of different colors of the marbles. You can assume that 1&lt;=k&lt;=n&lt;=1000000.</p>\r\n<h3>Output</h3>\r\n<p align="justify">For each test case print the number of possibilities that H&auml;nschen would have had. You can assume that this number fits into a signed 64 bit integer.</p>\r\n<h3>Example</h3>\r\n<pre><strong><tt>Input:</tt></strong>\r\n2\r\n10 10\r\n30 7\r\n\r\n<strong><tt>Output:</tt></strong>\r\n1\r\n475020\r\n</pre', 'aqfaridi', '2013-12-12 05:56:16'),
('MUL', 'Fast Multiplication', 'OTHER', '<p align="justify">Multiply the given numbers.</p>\r\n<p>&nbsp;</p>\r\n<h3>Input</h3>\r\n<p>&nbsp;</p>\r\n<p align="justify">&nbsp;</p>\r\n<pre><em>n</em> [the number of multiplications &lt;= 1000]\r\n<em>l1 l2</em> [numbers to multiply (at most 10000 decimal digits each)]</pre>\r\n<p align="left">\r\nText grouped in [ ] does not appear in the input file.\r\n</p>\r\n<p>&nbsp;</p>\r\n<h3>Output</h3>\r\n<p>&nbsp;</p>\r\n<p align="justify">&nbsp;</p>\r\n<pre>The results of multiplications.\r\n</pre>\r\n<p>&nbsp;</p>\r\n<h3>Example</h3>\r\n<p>&nbsp;</p>\r\n<pre>Input:\r\n5\r\n4 2\r\n123 43\r\n324 342\r\n0 12\r\n9999 12345\r\n\r\nOutput:\r\n8\r\n5289\r\n110808\r\n0\r\n123437655\r\n</pre>\r\n<p><strong>Warning: large Input/Output data, be careful with certain languages</strong></p', 'aqfaridi', '2013-12-12 02:46:13'),
('NHAY', 'A Needle in the Haystack', 'SEARCHING', '<p align="justify">Write a program that finds all occurences of a given pattern in a given input string. This is often referred to as finding a <em>needle</em> in a <em>haystack</em>.</p>\r\n<p>&nbsp;</p>\r\n<p>The program has to detect <strong>all</strong> occurences of the needle in the haystack. It should take the needle and the haystack as input, and output the positions of each occurence, as shown below. The suggested implementation is the KMP algorithm, but this is not a requirement. However, a naive approach will probably exceed the time limit, whereas other algorithms are more complicated... The choice is yours.</p>\r\n<p>&nbsp;</p>\r\n<h3>Input</h3>\r\n<p>&nbsp;</p>\r\n<p>The input consists of a number of test cases. Each test case is composed of three lines, containing:</p>\r\n<p>&nbsp;</p>\r\n<div align="left">\r\n<ul>\r\n<li>the length of the needle,</li>\r\n<li>the needle itself,</li>\r\n<li>the haystack.</li>\r\n</ul>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>The length of the needle is only limited by the memory available to your program, so do not make any assumptions - instead, read the length and allocate memory as needed. The haystack is <strong>not</strong> limited in size, which implies that your program should not read the whole haystack at once. The KMP algorithm is stream-based, i.e. it processes the haystack character by character, so this is not a problem.</p>\r\n<p>&nbsp;</p>\r\n<p>The test cases come one after another, each occupying three lines, with no additional space or line breaks in between.</p>\r\n<p>&nbsp;</p>\r\n<h3>Output</h3>\r\n<p>&nbsp;</p>\r\n<p>For each test case your program should output all positions of the needles occurences within the haystack. If a match is found, the output should contain the position of the first character of the match. Characters in the haystack are numbered starting with zero.</p>\r\n<p>&nbsp;</p>\r\n<p>For a given test case, the positions output should be sorted in ascending order, and each of these should be printed in a separate line. For two different test cases, the positions should be separated by an empty line.</p>\r\n<p>&nbsp;</p>\r\n<h3>Example</h3>\r\n<p>&nbsp;</p>\r\n<pre>Sample input:<br />\r\n2\r\nna\r\nbanananobano\r\n6\r\nfoobar\r\nfoo\r\n9\r\nfoobarfoo\r\nbarfoobarfoobarfoobarfoobarfoo</pre>\r\n<p>&nbsp;</p>\r\n<p>Sample output:</p>\r\n<pre>2\r\n4\r\n\r\n3\r\n9\r\n15\r\n21</pre>\r\n<p>&nbsp;</p>\r\n<p>Note the double empty line in the output, which means that no match was found for the second test case.</p>\r\n<p><strong>Warning: large Input/Output data, be careful with certain languages</strong></p', 'aqfaridi', '2013-12-12 05:34:42'),
('ONP', 'Transform the Expression', 'STACK QUEUE', '<p align="justify">Transform the algebraic expression with brackets into RPN form (Reverse Polish Notation). Two-argument operators: +, -, *, /, ^ (priority from the lowest to the highest), brackets ( ). Operands: only letters: a,b,...,z. Assume that there is only one RPN form (no expressions like a*b*c).</p>\r\n<h3>Input</h3>\r\n<pre><em>t</em> [the number of expressions &lt;= <strong>100</strong>]\r\n<em>expression</em> [length &lt;= <strong>400</strong>]\r\n[other expressions]\r\n</pre>\r\n<p align="left">Text grouped in [ ] does not appear in the input file.</p>\r\n<h3>Output</h3>\r\n<pre>The <em>expression</em>s in RPN form, one per line.\r\n</pre>\r\n<h3>Example</h3>\r\n<pre>Input:\r\n3\r\n(a+(b*c))\r\n((a+b)*(z+x))\r\n((a+t)*((b+(a+c))^(c+d)))\r\n\r\nOutput:\r\nabc*+\r\nab+zx+*\r\nat+bac++cd+^*</pre', 'aqfaridi', '2013-12-12 05:43:52'),
('PARTY', 'Party Schedule', 'DYNAMMIC PROGRAMMING', '<p align="justify">You just received another bill which you cannot pay because you lack the money.<br /> Unfortunately, this is not the first time to happen, and now you decide to investigate the cause of your constant monetary shortness. The reason is quite obvious: the lions share of your money routinely disappears at the entrance of party localities. <br /><br /> You make up your mind to solve the problem where it arises, namely at the parties themselves. You introduce a limit for your party budget and try to have the most possible fun with regard to this limit. <br /><br /> You inquire beforehand about the entrance fee to each party and estimate how much fun you might have there. The list is readily compiled, but how do you actually pick the parties that give you the most fun and do not exceed your budget? <br /><br /> Write a program which finds this optimal set of parties that offer the most fun. Keep in mind that your budget need not necessarily be reached exactly. Achieve the highest possible fun level, and do not spend more money than is absolutely necessary.</p>\r\n<h3>Input</h3>\r\n<p align="justify">The first line of the input specifies your party budget and the number n of parties. <br /><br /> The following n lines contain two numbers each. The first number indicates the entrance fee of each party. Parties cost between 5 and 25 francs. The second number indicates the amount of fun of each party, given as an integer number ranging from 0 to 10. <br /><br /> The budget will not exceed 500 and there will be at most 100 parties. All numbers are separated by a single space. <br /><br /> There are many test cases. Input ends with 0 0.</p>\r\n<h3>Output</h3>\r\n<p align="justify">For each test case your program must output the sum of the entrance fees and the sum of all fun values of an optimal solution. Both numbers must be separated by a single space.</p>\r\n<h3>Example</h3>\r\n<h4>Sample input:</h4>\r\n<pre>\r\n50 10\r\n12 3\r\n15 8\r\n16 9\r\n16 6\r\n10 2\r\n21 9\r\n18 4\r\n12 4\r\n17 8\r\n18 9 \r\n\r\n50 10\r\n13 8\r\n19 10\r\n16 8\r\n12 9\r\n10 2\r\n12 8\r\n13 5\r\n15 5\r\n11 7\r\n16 2\r\n\r\n0 0</pre>\r\n<h4>Sample output:</h4>\r\n<pre>\r\n49 26\r\n48 32\r\n</pre', 'aqfaridi', '2013-12-12 18:57:00'),
('PIR', 'Pyramids', 'MATH', '<p>Recently in Farland, a country in Asia, the famous scientist Mr. Log Archeo discovered ancient pyramids. But unlike those in Egypt and Central America, they have a triangular (not rectangular) foundation. That is, they are tetrahedrons in the mathematical sense. In order to find out some important facts about the early society of the country (it is widely believed that the pyramid sizes are closely connected with Farlands ancient calendar), Mr. Archeo needs to know the volume of the pyramids. Unluckily, he has reliable data about their edge lengths only. Please, help him!</p>\r\n<h3>Input</h3>\r\n<p>t [number of tests to follow] In each of the next t lines six positive integer numbers not exceeding 1000 separated by spaces (each number is one of the edge lengths of the pyramid ABCD). The order of the edges is the following: AB, AC, AD, BC, BD, CD.</p>\r\n<h3>Output</h3>\r\n<p>For each test output a real number - the volume, printed accurate to four digits after decimal point.</p>\r\n<h3>Example</h3>\r\n<p>&nbsp;</p>\r\n<p>Input:</p>\r\n<pre>\r\n<tt>2\r\n1 1 1 1 1 1\r\n1000 1000 1000 3 4 5\r\n</tt></pre>\r\n<p>Output:</p>\r\n<pre>\r\n0.1179\r\n1999.9937\r\n</pre', 'aqfaridi', '2013-12-12 05:45:25'),
('PRIME1', 'Prime Generator', 'SIEVE', '<p>Peter wants to generate some prime numbers for his cryptosystem. Help him! Your task is to generate all prime numbers between two given numbers!</p>\r\n<p>&nbsp;</p>\r\n<h3>Input</h3>\r\n<p>&nbsp;</p>\r\n<p>The input begins with the number t of test cases in a single line (t&lt;=10). In each of the next t lines there are two numbers m and n (1 &lt;= m &lt;= n &lt;= 1000000000, n-m&lt;=100000) separated by a space.</p>\r\n<p>&nbsp;</p>\r\n<h3>Output</h3>\r\n<p>&nbsp;</p>\r\n<p>For every test case print all prime numbers p such that m &lt;= p &lt;= n, one number per line, test cases separated by an empty line.</p>\r\n<p>&nbsp;</p>\r\n<h3>Example</h3>\r\n<p>&nbsp;</p>\r\n<pre><strong>Input:</strong>\r\n2\r\n1 10\r\n3 5\r\n\r\n<strong>Output:</strong>\r\n2\r\n3\r\n5\r\n7\r\n\r\n3\r\n5\r\n</pre>\r\n<p><strong>Warning: large Input/Output data, be careful with certain languages (though most should be OK if the algorithm is well designed)</strong></p>', 'aqfaridi', '2013-12-11 01:43:31'),
('SBANK', 'Sorting Bank Accounts', 'SORTING', '<p align="justify">In one of the internet banks thousands of operations are being performed every day. Since certain customers do business more actively than others, some of the bank accounts occur many times in the list of operations. Your task is to sort the bank account numbers in ascending order. If an account appears twice or more in the list, write the number of repetitions just after the account number. The format of accounts is as follows: <strong>2</strong> control digits, an <strong>8</strong>-digit code of the bank, <strong>16</strong> digits identifying the owner (written in groups of four digits), for example (at the end of each line there is exactly one space):</p>\r\n<table align="center">\r\n<tbody>\r\n<tr>\r\n<td bgcolor="navy"><span style="color: yellow;"><strong>30 10103538 2222 1233 6160 0142&nbsp;</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Banks are real-time institutions and they need FAST solutions. If you feel you can meet the challenge within a very stringent time limit, go ahead!</strong> A well designed sorting algorithm in a fast language is likely to succeed.</p>\r\n<h3>Input</h3>\r\n<p align="justify"><br /><em>t</em> [the number of tests &lt;= <strong>5</strong>] <br /><em>n</em> [the number of accounts&lt;= <strong>100 000</strong>] <br />[list of accounts] <br />[empty line] <br />[next test cases]</p>\r\n<h3>Output</h3>\r\n<p align="justify"><br />[sorted list of accounts with the number of repeated accounts] <br />[empty line] <br />[other results]</p>\r\n<h3>Example</h3>\r\n<pre>Input:\r\n2\r\n6\r\n03 10103538 2222 1233 6160 0142 \r\n03 10103538 2222 1233 6160 0141 \r\n30 10103538 2222 1233 6160 0141 \r\n30 10103538 2222 1233 6160 0142 \r\n30 10103538 2222 1233 6160 0141 \r\n30 10103538 2222 1233 6160 0142 \r\n\r\n5\r\n30 10103538 2222 1233 6160 0144 \r\n30 10103538 2222 1233 6160 0142 \r\n30 10103538 2222 1233 6160 0145 \r\n30 10103538 2222 1233 6160 0146 \r\n30 10103538 2222 1233 6160 0143 \r\n\r\nOutput:\r\n03 10103538 2222 1233 6160 0141 1\r\n03 10103538 2222 1233 6160 0142 1\r\n30 10103538 2222 1233 6160 0141 2\r\n30 10103538 2222 1233 6160 0142 2\r\n\r\n30 10103538 2222 1233 6160 0142 1\r\n30 10103538 2222 1233 6160 0143 1\r\n30 10103538 2222 1233 6160 0144 1\r\n30 10103538 2222 1233 6160 0145 1\r\n30 10103538 2222 1233 6160 0146 1\r\n</pre', 'aqfaridi', '2013-12-12 05:51:24'),
('SHPATH', 'The Shortest Path', 'DIJKSTRA', '<p align="justify">You are given a list of cities. Each direct connection between two cities has its transportation cost (an integer bigger than 0). The goal is to find the paths of minimum cost between pairs of cities. Assume that the cost of each path (which is the sum of costs of all direct connections belongning to this path) is at most 200000. The name of a city is a string containing characters a,...,z and is at most 10 characters long.</p>\r\n<p>&nbsp;</p>\r\n<h3>Input</h3>\r\n<p>&nbsp;</p>\r\n<p align="justify">&nbsp;</p>\r\n<pre><em>s</em> [the number of tests &lt;= 10]\r\n<em>n</em> [the number of cities &lt;= 10000]\r\n<em>NAME</em> [city name]\r\n<em>p</em> [the number of neighbours of city <em>NAME</em>]\r\n<em>nr</em> <em>cost</em> [<em>nr</em> - index of a city connected to <em>NAME</em> (the index of the first city is 1)]\r\n           [<em>cost</em> - the transportation cost]\r\n<em>r</em> [the number of paths to find &lt;= <strong>100</strong>]\r\n<em>NAME1 NAME2</em> [<em>NAME1</em> - source, <em>NAME2</em> - destination]\r\n[empty line separating the tests]\r\n</pre>\r\n<p>&nbsp;</p>\r\n<h3>Output</h3>\r\n<p>&nbsp;</p>\r\n<p align="justify">&nbsp;</p>\r\n<pre><em>cost</em> [the minimum transportation cost from city <em>NAME1</em> to city <em>NAME2</em> (one per line)]\r\n</pre>\r\n<p>&nbsp;</p>\r\n<h3>Example</h3>\r\n<p>&nbsp;</p>\r\n<p align="justify">&nbsp;</p>\r\n<pre>Input:\r\n1\r\n4\r\ngdansk\r\n2\r\n2 1\r\n3 3\r\nbydgoszcz\r\n3\r\n1 1\r\n3 1\r\n4 4\r\ntorun\r\n3\r\n1 3\r\n2 1\r\n4 1\r\nwarszawa\r\n2\r\n2 4\r\n3 1\r\n2\r\ngdansk warszawa\r\nbydgoszcz warszawa\r\n\r\nOutput:\r\n3\r\n2\r\n</pre>\r\n<p><strong>Warning: large Input/Output data, be careful with certain languages</strong></p', 'aqfaridi', '2013-12-12 05:37:03'),
('STPAR', 'Street Parade', 'STACK QUEUE', '<p align="justify">For sure, the love mobiles will roll again on this summers street parade. Each year, the organisers decide on a fixed order for the decorated trucks. Experience taught them to keep free a side street to be able to bring the trucks into order. <br /><br /> The side street is so narrow that no two cars can pass each other. Thus, the love mobile that enters the side street last must necessarily leave the side street first. Because the trucks and the ravers move up closely, a truck cannot drive back and re-enter the side street or the approach street. <br /><br /> You are given the order in which the love mobiles arrive. Write a program that decides if the love mobiles can be brought into the order that the organisers want them to be.</p>\r\n<h3>Input</h3>\r\n<p align="justify">There are several test cases. The first line of each test case contains a single number n, the number of love mobiles. The second line contains the numbers 1 to n in an arbitrary order. All the numbers are separated by single spaces. These numbers indicate the order in which the trucks arrive in the approach street. No more than 1000 love mobiles participate in the street parade. Input ends with number 0.</p>\r\n<h3>Output</h3>\r\n<p align="justify">For each test case your program has to output a line containing a single word <tt>yes</tt> if the love mobiles can be re-ordered with the help of the side street, and a single word <tt>no</tt> in the opposite case.</p>\r\n<h3>Example</h3>\r\n<pre><strong>Sample input:</strong>\r\n5\r\n5 1 2 4 3 \r\n0\r\n\r\n<strong>Sample output:</strong>\r\nyes\r\n</pre', 'aqfaridi', '2013-12-12 18:56:26'),
('TEST', 'Life, the Universe, and Everything', 'BRUTEFORCE', '<p>Your program is to use the brute-force approach in order to <em>find the Answer to Life, the Universe, and Everything.</em> More precisely... rewrite small numbers from input to output. Stop processing input after reading in the number 42. All numbers at input are integers of one or two digits.<br /> </p>\r\n<h3>Example</h3>\r\n<pre><strong>Input:</strong>\r\n1\r\n2\r\n88\r\n42\r\n99\r\n\r\n<strong>Output:</strong>\r\n1\r\n2\r\n88\r\n</pre>', 'aqfaridi', '2013-12-11 01:41:12'),
('TETRA', 'Sphere in a tetrahedron', 'BRUTEFORCE', '<p align="justify">Of course a Sphere Online Judge System is bound to have some tasks about spheres. So here is one. Given the lengths of the edges of a tetrahedron calculate the radius of a sphere inscribed in that tetrahedron (i.e. a sphere tangent to all the faces).</p>\r\n<h3>Input</h3>\r\n<p align="justify">Number N of test cases in a single line. ( N &lt;= 30 ) Each of the next N lines consists of 6 integer numbers -- the lengths of the edges of a tetrahedron separated by single spaces. The edges are not longer than 1000 and for the tetrahedron WXYZ, the order of the edges is: WX, WY, WZ, XY, XZ, YZ.</p>\r\n<h3>Output</h3>\r\n<p align="justify">N lines, each consisting of a real number given with four digits decimal precision equal to the radius of a sphere inscribed in the given tetrahedron.</p>\r\n<h3>Example</h3>\r\n<p>&nbsp;</p>\r\n<pre>Input:\r\n2\r\n1 1 1 1 1 1\r\n1000 999 998 5 5 6\r\n\r\nOutput:\r\n0.2041\r\n1.4189\r\n</pre>', 'aqfaridi', '2013-12-11 02:11:51'),
('TRIP', 'Trip', 'DYNAMMICPROGRAMMING', '<p align="justify">Alice and Bob want to go on holiday. Each of them has drawn up a list of cities to be visited in turn. A list may contain a city more than once. As they want to travel together, they have to agree upon a common route. No one wants to change the order of the cities on his list or add other cities. Therefore they have no choice but to remove some cities from the list. Of course the common route is to involve as much sight-seeing in cities as possible. There are exactly 26 cities in the region. Therefore they are encoded on the lists as lower case letters from a to z.</p>\r\n<h3>Input</h3>\r\n<p align="justify">The first line of input contains a number T &lt;= 10 that indicates the number of test cases to follow. Each test case consists of two lines; the first line is the list of Alice, the second line is the list of Bob. Each list consists of 1 to 80 lower case letters.</p>\r\n<h3>Output</h3>\r\n<p align="justify">The output for each test case should contain all different trips exactly once that meet the conditions described above. There is at least one such trip, but never more than 1000 different ones. You should order the trips in lexicographic order. Print one blank line between the output of different test cases.</p>\r\n<h3>Example</h3>\r\n<h4>Input</h4>\r\n<pre>1\r\nabcabcaa\r\nacbacba</pre>\r\n<h4>Output</h4>\r\n<pre>ababa\r\nabaca\r\nabcba\r\nacaba\r\nacaca\r\nacbaa\r\nacbca</pre', 'aqfaridi', '2013-12-12 05:25:06'),
('TWOSQRS', 'Two squares or not two squares', 'BRUTEFORCE', '<p align="justify">Given integer n decide if it is possible to represent it as a sum of two squares of integers.</p>\r\n<h3>Input</h3>\r\n<p align="justify">First line of input contains one integer c&lt;=100 - number of test cases. Then c lines follow, each of them consisting of exactly one integer 0&lt;=n&lt;=10^12.</p>\r\n<h3>Output</h3>\r\n<p align="justify">For each test case output Yes if it is possible to represent given number as a sum of two squares and No if it is not possible.</p>\r\n<h3>Example</h3>\r\n<pre>Input:\r\n10\r\n1\r\n2\r\n7\r\n14\r\n49\r\n9\r\n17\r\n76\r\n2888\r\n27\r\n\r\nOutput:\r\nYes\r\nYes\r\nNo\r\nNo\r\nYes\r\nYes\r\nYes\r\nNo\r\nYes\r\nNo\r\n</pre', 'aqfaridi', '2013-12-12 18:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `spojsolutions`
--

CREATE TABLE IF NOT EXISTS `spojsolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) NOT NULL,
  `language` varchar(20) NOT NULL,
  `sourcecode` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `spojsolutions`
--

INSERT INTO `spojsolutions` (`Sno`, `problemcode`, `language`, `sourcecode`, `author`, `time`) VALUES
(1, 'TETRA', 'cpp', '#include<iostream>\r\n#include<cstdio>\r\n#include<cmath>\r\nusing namespace std;\r\ndouble area(double ,double ,double );\r\nint main()\r\n{\r\n        int t;\r\n        scanf("%d",&t);\r\n        while(t--)\r\n        {\r\n        double u,v,w,U,V,W;\r\n        scanf("%lf %lf %lf %lf %lf %lf",&u,&v,&w,&W,&V,&U);\r\n        //scanf("%f %f %f %f %f %f",&u,&U,&v,&V,&w,&W);\r\n        double vol;\r\n        double S=0;\r\n        S+=area(u,V,w);\r\n        S+=area(W,u,v);\r\n        S+=area(W,V,U);\r\n        S+=area(U,v,w);\r\n       \r\n        vol=sqrt(4*u*u*v*v*w*w- u*u*(v*v+w*w - U*U)*(v*v+w*w-U*U) - v*v*(w*w+u*u - V*V)*(w*w+u*u-V*V) - w*w*(u*u + v*v - W*W)*(u*u+v*v-W*W) + (v*v +w*w - U*U)*(w*w+u*u- V*V)*(u*u+v*v - W*W))/12;\r\n        printf("%.4lf\n",vol*3.0/S);\r\n        }\r\n        return 0;\r\n}\r\ndouble area(double a1,double a2,double a3)\r\n{\r\n        double s=(a1+a2+a3)/2.0;\r\n        return sqrt(s*(s-a1)*(s-a2)*(s-a3));\r\n}\r\n\r\n', 'aqfaridi', '2013-12-11 02:10:21'),
(4, 'xvfdfgs', 'dfsdfs', 'dsfdsfdfs', 'dsfdfs', '2013-12-11 02:14:39'),
(8, 'FCTRL', 'cpp', '#include <iostream>\r\n#include <cstdio>\r\n#include <cstring>\r\n#include <cmath>\r\n#include <algorithm>\r\nusing namespace std;\r\nint main()\r\n{\r\n    int t,n;\r\n    long long int sum;\r\n    scanf("%d",&t);\r\n    while(t--)\r\n    {\r\n        sum=0;\r\n        scanf("%d",&n);\r\n        for(int i=5;i<=n;i*=5)\r\n        {\r\n            sum+=floor(n/i);\r\n        }\r\n        printf("lld\n",sum);        \r\n    }\r\n    return 0;\r\n}\r\n\r\n', 'aqfaridi', '2013-12-11 03:13:43'),
(9, 'JULKA', 'py', 'i=1\r\nwhile(i<=10):\r\n \r\n s=input()\r\n d=input()\r\n a=(s+d)/2;\r\n b=s-a;\r\n print a \r\n print b\r\n \r\n \r\n i=i+1\r\n', 'aqfaridi', '2013-12-11 03:18:28'),
(14, 'TEST', 'cpp', '#include < iostream>\r\n#include < cstdio>\r\n#include < cstring>\r\n#include < cmath>\r\n#include < algorithm>\r\nusing namespace std;\r\nint main()\r\n{\r\n    int n;\r\n    while(scanf("%d",&n))\r\n    {\r\n        if(n==42)\r\n        {scanf("%d",&n); break;}\r\n        else\r\n            printf("%d\\n",n);\r\n    }\r\n    return 0;\r\n}\r\n\r', 'aqfaridi', '2013-12-11 19:21:43'),
(15, 'TEST', 'java', 'import java.util.*;\r\nclass Main\r\n{\r\n    public static void main(String[] args)\r\n    {\r\n        Scanner sc = new Scanner(System.in);\r\n        int n;\r\n        while(true)\r\n        {\r\n            n = sc.nextInt();\r\n            if(n==42)\r\n                break;\r\n            System.out.println(n);\r\n        }\r\n\r\n    }\r\n}\r\n\r', 'aqfaridi', '2013-12-11 19:23:08'),
(16, 'PRIME1', 'cpp', '#include < iostream>\r\n#include < cstdio>\r\n#include < cstring>\r\n#include < cmath>\r\n#include < vector>\r\n#include < algorithm>\r\n#define MAX  32000\r\nusing namespace std;\r\n//int Prime[(int)ceil(1.25506 * MAX/log(MAX))];\r\nint Primes[3432];\r\nvoid sieve()\r\n{\r\n    vector< bool> siev(MAX,true);\r\n    int k=0;\r\n\r\n    for(int i=2;i*i< MAX;i++)\r\n    {\r\n        if(siev[i])\r\n        {\r\n            for(int j=i*i;j< MAX;j+=i)\r\n            {\r\n                siev[j]=false;\r\n            }\r\n        }\r\n    }\r\n\r\n    for(int i=2;i< MAX;i++)\r\n    {\r\n        if(siev[i])\r\n        {\r\n            Primes[k++]=i;\r\n           // cout<< i<<" ";\r\n\r\n        }\r\n    }\r\n\r\n}\r\nint main()\r\n{\r\n    int n,m;\r\n    int z,flag;\r\n    sieve();\r\n   // for(int j=0;j<3432;j++)\r\n   //    cout<< Primes[j]<<" ";\r\n    int t;\r\n    scanf("%d",&t);\r\n    while(t--)\r\n    {\r\n        scanf("%d %d",&m,&n);\r\n        if(m==1)\r\n            m++;\r\n        for(int j=m;j<=n;j++)\r\n        {\r\n           flag=0;\r\n           for(int i=0;Primes[i]*Primes[i]<=j;i++)\r\n           {\r\n               if(j%Primes[i] == 0)\r\n               {\r\n                   flag=1;\r\n                   break;\r\n               }\r\n\r\n           }\r\n           if(flag == 0)\r\n               printf("%d\\n",j);\r\n\r\n        }\r\n\r\n\r\n    }\r\n    return 0;\r\n}\r\n\r', 'aqfaridi', '2013-12-11 22:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `timus`
--

CREATE TABLE IF NOT EXISTS `timus` (
  `problemcode` varchar(100) DEFAULT NULL,
  `problemname` varchar(300) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `problemdescription` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timus`
--

INSERT INTO `timus` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('dsfsdf', 'dfsdsfdfs', 'DYNAMMICPROGRAMMING', '<p>dsffsd</p', 'pankaj9310', '2013-12-13 21:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `timussolutions`
--

CREATE TABLE IF NOT EXISTS `timussolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `sourcecode` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topcoder`
--

CREATE TABLE IF NOT EXISTS `topcoder` (
  `problemcode` varchar(100) NOT NULL,
  `problemname` varchar(300) NOT NULL,
  `category` varchar(100) NOT NULL,
  `problemdescription` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topcodersolutions`
--

CREATE TABLE IF NOT EXISTS `topcodersolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `sourcecode` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE IF NOT EXISTS `tutorials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tutorialcode` varchar(100) NOT NULL,
  `tutorialname` varchar(300) NOT NULL,
  `category` varchar(100) NOT NULL,
  `tutorialdescription` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `tutorialcode`, `tutorialname`, `category`, `tutorialdescription`, `author`, `time`) VALUES
(1, 'fsfds', 'sfdfds', 'BACKTRACKING', '< p>fsdfdsdfsfds</p', 'aqfaridi', '2013-12-14 07:22:56'),
(2, 'dsfdfs', 'dfsdfs', 'DYNAMMICPROGRAMMING', '< p>fsd</p', 'aqfaridi', '2013-12-14 07:23:13'),
(3, 'fds', 'fsd', 'GREEDY', '< p>fsddf</p', 'aqfaridi', '2013-12-14 07:23:19'),
(4, 'ddffds', 'dfsdfs', 'DIVIDECONQUER', '< p>fdsdfs</p', 'aqfaridi', '2013-12-14 07:24:34'),
(5, 'fsddfs', 'fddsdfs', 'DIVIDECONQUER', '< p>sfddffds</p', 'aqfaridi', '2013-12-14 07:24:40'),
(6, 'fgghfgf', 'ghfgfhghf', 'RECURSION', '< p>hgfhgf</p', 'aqfaridi', '2013-12-14 07:24:48'),
(7, 'trty', 'tryytr', 'BACKTRACKING', '< p>fghhgfhgf</p', 'aqfaridi', '2013-12-14 07:24:57'),
(8, 'hfgghf', 'hfgghf', 'MAXFLOW', '< p>hghgfghf</p', 'aqfaridi', '2013-12-14 07:25:03'),
(9, 'hfghgfhgf', 'hgfhgffgh', 'GRAPH', '< p>hgfghfhfg</p', 'aqfaridi', '2013-12-14 07:25:09'),
(10, 'hgfhgf', 'hgfghf', 'SORTING', '< p>fghgfh</p', 'aqfaridi', '2013-12-14 07:25:14'),
(11, 'hfghgffg', 'hgffghfgh', 'NUMBERTHEORY', '< p>ghffgh</p', 'aqfaridi', '2013-12-14 07:25:22'),
(12, 'fhghfghgf', 'hgfghf', 'SEARCHING', '< p>hgfghfghf</p', 'aqfaridi', '2013-12-14 07:25:28'),
(13, 'hfgghfghf', 'hgfhgfhgf', 'ANALYSISOFALGO', '< p>hfghgf</p', 'aqfaridi', '2013-12-14 07:25:35'),
(14, 'hgfhgfghf', 'gfhhgfhgf', 'ANALYSISOFALGO', '< p>hghgfhgfhgf</p', 'aqfaridi', '2013-12-14 07:25:41'),
(15, 'hfgghfhgf', 'hgfhgfgfh', 'ADVANCEDDS', '< p>hgfhgfhgf</p', 'aqfaridi', '2013-12-14 07:25:47'),
(16, 'hgfhgfhgf', 'hgfghf', 'ADVANCEDDS', '< p>hghgfhgf</p', 'aqfaridi', '2013-12-14 07:25:54'),
(17, 'hgfghfhgf', 'hgfghfhgf', 'OTHER', '< p>hgfghfhgf</p', 'aqfaridi', '2013-12-14 07:26:02'),
(18, 'fgdgfd', 'fgdgfd', 'NUMBERTHEORY', '< p>gfdfd</p', 'aqfaridi', '2013-12-14 07:27:19'),
(19, 'fdsdfs', 'fdsdfs', 'TREE', '< p>fdsdsffsd</p', 'aqfaridi', '2013-12-14 07:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `institute` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  `aboutme` text NOT NULL,
  `pic` varchar(100) NOT NULL,
  `flag` int(11) NOT NULL,
  `authcode` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fullname`, `username`, `password`, `institute`, `email`, `mobile`, `dob`, `gender`, `address`, `city`, `country`, `website`, `aboutme`, `pic`, `flag`, `authcode`) VALUES
('Abdul Qadir Faridi', 'aqfaridi', 'sfFVwbLv1DR86pf1FcVreQ==', 'ABV-IIITM,Gwalior', 'aqfaridi@gmail.com', '7566062327', '28/12/1992', 'Male', '    Room No - 247  BH1\r\n  ABV-IIITM,Gwalior    ', 'Gwalior', 'IN', 'http://www.facebook.com/aqfaridi', '   hardworking boy.', 'photo.jpg', 1, 'hrBfBu5BAdMU'),
('Pankaj Chaudhary', 'pankaj9310', '4QrcOUm6Wau+VuBX8g+IPg==', 'ABV-IIITM Gwalior', 'pankaj9310@gmail.com', '8989931101', '', '', '', '', '', '', '', '', 1, 'RZBVEjXKeBf2'),
('dfsdfs', 'sfdfsd  fdsdfsdfs', '4QrcOUm6Wau+VuBX8g+IPg==', 'dfsdfsdfs', 'sfsfd@dfssd.hhgf', '8461321321', '', '', '', '', '', '', '', '', 1, 'J7Prn32SuBdZ');

-- --------------------------------------------------------

--
-- Table structure for table `uva`
--

CREATE TABLE IF NOT EXISTS `uva` (
  `problemcode` varchar(100) DEFAULT NULL,
  `problemname` varchar(300) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `problemdescription` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uva`
--

INSERT INTO `uva` (`problemcode`, `problemname`, `category`, `problemdescription`, `author`, `time`) VALUES
('dsdsf', 'dfsdfs', 'DYNAMMICPROGRAMMING', '<p>dfsdsf</p', 'pankaj9310', '2013-12-13 21:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `uvasolutions`
--

CREATE TABLE IF NOT EXISTS `uvasolutions` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `problemcode` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `sourcecode` text,
  `author` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
