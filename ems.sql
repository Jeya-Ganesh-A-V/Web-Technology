-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 7, 2021 at 08:25 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `BookingID` int(10) NOT NULL,
  `BookingTimeStamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `UserID` varchar(10) NOT NULL,
  `EventID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`BookingID`, `BookingTimeStamp`, `UserID`, `EventID`) VALUES
(1, '2021-08-08 08:12:30', '19IT093', 4),
(2, '2021-08-09 09:11:30', '19IT041', 1),
(3, '2021-08-07 10:15:30', '19IT082', 2),
(4, '2021-08-06 11:12:30', '19IT040', 3),
(5, '2021-08-04 12:30:30', '19IT025', 5);



-- --------------------------------------------------------

--
-- Table structure for table `event_details`
--

CREATE TABLE `event_details` (
  `EventID` int(10) NOT NULL,
  `EventName` varchar(100) NOT NULL,
  `EventDate` date NOT NULL,
  `EventTime` time NOT NULL,
  `EventCategory` varchar(100) NOT NULL,
  `EventDescription` text NOT NULL,
  `EventTicketPrice` double NOT NULL,
  `EventTicketTotal` int(11) NOT NULL,
  `EventTicketSold` int(11) NOT NULL,
  `VenueID` int(10) NOT NULL,
  `UserID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_details`
--

INSERT INTO `event_details` (`EventID`, `EventName`, `EventDate`, `EventTime`, `EventCategory`, `EventDescription`, `EventTicketPrice`, `EventTicketTotal`, `EventTicketSold`, `VenueID`, `UserID`) VALUES
(1, 'Hackathon', '2021-08-31', '08:00:00', 'Coding', 'A hackathon, also known as a codefest, is a social coding event that brings computer programmers and other interested people together to improve upon or build a new software program. The word hackathon is a portmanteau of the words hacker, which means clever programmer, and marathon, an event marked by endurance.', 10, 500, 400, 1, '19IT093'),
(2, 'Cloudathon', '2021-08-26', '09:00:00', 'Coding', 'The cloudathon competition is an annual team competition to provide with industry relevant experience for cloud-based roles for college students. Over 30 universities and colleges are invited in the Texas and surrounding states region. Powered by the AWS platform, students will apply their cloud implementation and practical skills using the full services provided by AWS to solve current industry-level problems.', 15, 150, 125, 3, '19IT041'),
(3, 'Appathon', '2021-08-27', '12:00:00', 'Coding', 'The Appathon is a premium contest sponsored by Zoho Creator, a low-code app development platform. Contestants design web and mobile apps using Creator built-in scripting language called Deluge.Zoho Creator is part of Zoho One, the operating system for business.', 20, 200, 180, 2, '19IT082'),
(4, 'CTF', '2021-08-28', '13:00:00', 'Bug finding', 'CTF (Capture The Flag) is a kind of information security competition that challenges contestants to solve a variety of tasks ranging from a scavenger hunt on wikipedia to basic programming exercises, to hacking your way into a server to steal data. ... CTFtime details the different types of CTF.', 10, 100, 100, 4, '19IT040'),
(5, 'Group Disscusion', '2021-08-30', '16:00:00', 'Professional skills', 'A group discussion refers to a communicative situation that allows its participants to share their views and opinions with other participants. It is a systematic exchange of information, views and opinions about a topic, problem, issue or situation among the members of a group who share some common objectives.', 30, 300, 290, 5, '19IT025');


-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `UserNo` int(10) NOT NULL,
  `UserID` varchar(10) NOT NULL,
  `UserFullName` varchar(80) NOT NULL,
  `UserPassword` varchar(12) NOT NULL,
  `UserType` varchar(11) NOT NULL,
  `UserEmail` varchar(50) NOT NULL,
  `UserImage` longblob NOT NULL,
  `UserImageName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`UserNo`, `UserID`, `UserFullName`, `UserPassword`, `UserType`, `UserEmail`, `UserImage`, `UserImageName`) VALUES
(1, '19IT093', 'Siddharth S', 'sid26', 'Student', 'sid@gmail.com', 0xffd8ffe1, 'user.jpg');
INSERT INTO `user_details` (`UserNo`, `UserID`, `UserFullName`, `UserPassword`, `UserType`, `UserEmail`, `UserImage`, `UserImageName`) VALUES
(2, '19IT000', 'Admin', 'admin', 'Admin', 'admin@gmail.com',0xffd8ffe0, 'admin.jpg');
INSERT INTO `user_details` (`UserNo`, `UserID`, `UserFullName`, `UserPassword`, `UserType`, `UserEmail`, `UserImage`, `UserImageName`) VALUES
(3, '19IT082', 'Sanjay', 'sk11', 'Student', 'sanjay@gmail.com', 0xffd8ffe1, 'user.jpg'),
(4, '19IT040', 'Jeswin', 'wj07', 'Student', 'jeswin@gmail.com', 0xffd8ffe1, 'user.jpg'),
(5, '19IT025', 'Dixon', 'dxn1', 'Student', 'dixon@gmail.com', 0xffd8ffe1, 'user.jpg');
INSERT INTO `user_details` (`UserNo`, `UserID`, `UserFullName`, `UserPassword`, `UserType`, `UserEmail`, `UserImage`, `UserImageName`) VALUES
(6, '19IT041', 'JGanesh', 'jg31', 'Student', 'jg@gmail.com', 0xffd8ffe1, 'user.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `venue_details`
--

CREATE TABLE `venue_details` (
  `VenueID` int(11) NOT NULL,
  `VenueName` varchar(80) NOT NULL,
  `VenueInfo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue_details`
--

INSERT INTO `venue_details` (`VenueID`, `VenueName`, `VenueInfo`) VALUES
(1, 'IT DEPARTMENT', 'DBMS LAB'),
(2, 'CS DEPARTMENT', 'CLOUD LAB'),
(3, 'KS AUDITOURIUM', 'EEE LAB'),
(4, 'MAIN BLOCK', 'DATA LAB'),
(5, 'OPEN AUDITOURIUM', 'STAGE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `booking_details_ibfk_1` (`UserID`),
  ADD KEY `booking_details_ibfk_2` (`EventID`);

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `event_details_ibfk_1` (`VenueID`),
  ADD KEY `event_details_ibfk_3` (`UserID`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`UserNo`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `venue_details`
--
ALTER TABLE `venue_details`
  ADD PRIMARY KEY (`VenueID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `BookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `EventID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `UserNo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `venue_details`
--
ALTER TABLE `venue_details`
  MODIFY `VenueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user_details` (`UserID`),
  ADD CONSTRAINT `booking_details_ibfk_2` FOREIGN KEY (`EventID`) REFERENCES `event_details` (`EventID`);

--
-- Constraints for table `event_details`
--
ALTER TABLE `event_details`
  ADD CONSTRAINT `event_details_ibfk_1` FOREIGN KEY (`VenueID`) REFERENCES `venue_details` (`VenueID`),
  ADD CONSTRAINT `event_details_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `user_details` (`UserID`);
COMMIT;

