-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 04:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergylist`
--

CREATE TABLE `allergylist` (
  `Allergy_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Desc` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allergylist`
--

INSERT INTO `allergylist` (`Allergy_Id`, `Name`, `Desc`) VALUES
(1, 'Aspirin', 'Allergies to aspirin'),
(2, 'Soy', 'Allergies to Soy'),
(3, 'Pollen', 'Allergies to Pollen'),
(4, 'Peanuts', 'Allergies to Peanuts'),
(5, 'Shellfish', 'Allergies to Shellfish'),
(6, 'Dust mites', 'Allergies to Dust mites'),
(7, 'Ibuprofen', 'Allergies to Ibuprofen'),
(8, 'Latex', 'Allergies to Latex'),
(9, 'Wheat', 'Allergies to Wheat'),
(10, 'Dairy', 'Allergies to Dairy');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `Appointment_Id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `Dentist_ID` int(11) NOT NULL,
  `DentistAvailability_Id` int(11) NOT NULL,
  `RoomAvailability_Id` int(11) NOT NULL,
  `Room_Id` int(11) NOT NULL,
  `Branch_Id` int(11) NOT NULL,
  `PatientVisit_Id` int(11) NOT NULL,
  `Appointment_Date` date DEFAULT NULL,
  `Appointmentstatus` varchar(15) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Reasonofvisit` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`Appointment_Id`, `Patient_Id`, `Dentist_ID`, `DentistAvailability_Id`, `RoomAvailability_Id`, `Room_Id`, `Branch_Id`, `PatientVisit_Id`, `Appointment_Date`, `Appointmentstatus`, `StartTime`, `EndTime`, `Reasonofvisit`) VALUES
(1, 1, 15, 1, 1, 1, 1, 1, '2020-04-20', 'Confirmed', '15:00:00', '16:00:00', 'Tooth Extraction'),
(2, 2, 16, 1, 2, 2, 1, 2, '2020-01-03', 'Confirmed', '12:00:00', '12:30:00', 'General check up'),
(3, 3, 17, 3, 1, 2, 2, 3, '2020-05-07', 'Confirmed', '10:00:00', '10:15:00', 'Consulation'),
(4, 4, 15, 4, 1, 2, 3, 4, '2020-11-11', 'Not Confirmed', '13:00:00', '14:00:00', 'Teeth Filling'),
(5, 5, 18, 5, 1, 2, 4, 5, '2020-04-20', 'Confirmed', '15:00:00', '16:00:00', 'Tooth Extraction');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `Billing_Id` int(11) NOT NULL,
  `Patienttreatment_id` int(11) NOT NULL,
  `Price` float DEFAULT NULL,
  `Taxprice` float DEFAULT NULL,
  `Totalcost` float DEFAULT NULL,
  `Paymentstatus` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_Id` int(11) NOT NULL,
  `Branch_Name` varchar(20) DEFAULT NULL,
  `AddressLine_1` varchar(30) DEFAULT NULL,
  `AddressLine_2` varchar(30) DEFAULT NULL,
  `Mobileno` int(10) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Zip` int(10) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_Id`, `Branch_Name`, `AddressLine_1`, `AddressLine_2`, `Mobileno`, `City`, `State`, `Zip`, `Country`) VALUES
(1, 'Downtown Crossing', '36 Chauncy Street', 'Downtown Crossing', 1617338500, 'Boston', 'Massachusetts', 2111, 'USA'),
(2, 'Seaport District', '35 Court Street', 'Seaport District', 1617402500, 'Boston', 'Massachusetts', 2108, 'USA'),
(3, 'Government Center', '22 Boston Wharf Rd', 'Government Center', 1617706500, 'Boston', 'Massachusetts', 2210, 'USA'),
(4, 'Chelsea', '776 6th Ave', 'Chelsea', 1503863168, 'New York', 'New York', 10001, 'USA'),
(5, 'Union Square', '841 Broadway', 'Union Square', 1413269234, 'New York', 'New York', 10003, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `coviddisclosure`
--

CREATE TABLE `coviddisclosure` (
  `Covid_Detail_Id` int(11) NOT NULL,
  `Question` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coviddisclosure`
--

INSERT INTO `coviddisclosure` (`Covid_Detail_Id`, `Question`) VALUES
(1, 'Fever check'),
(2, 'Difficulty Breathing'),
(3, 'Cough'),
(4, 'Cold'),
(5, 'Travel in the last 14 days'),
(6, 'Contact with a suspected or confirmed case of COVID-19'),
(7, 'Experiencing pain or discomfort');

-- --------------------------------------------------------

--
-- Table structure for table `dentalhistoryinformationlist`
--

CREATE TABLE `dentalhistoryinformationlist` (
  `DentalHistory_Id` int(11) NOT NULL,
  `Question` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dentalhistoryinformationlist`
--

INSERT INTO `dentalhistoryinformationlist` (`DentalHistory_Id`, `Question`) VALUES
(1, 'Are you nervous during dental visits or treatment'),
(2, 'Have you ever had an unfavorable dental experience'),
(3, 'Have you ever had complications from past dental treatment'),
(4, 'Have you ever experienced a dental operation or procedure of any kind'),
(5, 'Have you ever had trouble getting numb or had reactions to local anesthetic'),
(6, 'Do you bruise easily or bleed severely when cut'),
(7, 'Have you ever worn braces?'),
(8, 'Have you ever had any teeth removed or had teeth that never developed'),
(9, 'Do your gums bleed or are they painful when brushing or flossinG'),
(10, 'Have you ever been treated for gum disease'),
(11, 'Have you ever noticed an unpleasant taste or odor in your mouth'),
(12, 'Is there anyone with a history of periodontal disease in your family'),
(13, 'Have you ever experienced gum recession'),
(14, 'Have you had any cavities within the past 3 years'),
(15, 'Do you have difficulty swallowing any food'),
(16, 'Do you have problems with your jaw joint (pain, sounds, locking, popping)'),
(17, 'Do you feel or notice any holes on the biting surface of your teeth'),
(18, 'Do you avoid or have difficulty chewing gum, nuts, or other hard, dry foods'),
(19, 'Are any teeth sensitive to hot or cold temperatures'),
(20, 'Have you ever broken teeth, chipped teeth, or had a toothache or cracked filling'),
(21, 'In the past 5 years, have your teeth or bite changed (shorter, thinner)'),
(22, 'Do you chew ice, bite your nails, or have any other oral habits'),
(23, 'Do you have any problems with sleep (i.e. restlessness or teeth grinding), wake up with a headache o');

-- --------------------------------------------------------

--
-- Table structure for table `dentist`
--

CREATE TABLE `dentist` (
  `Dentist_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `ImagePath` varchar(500) NOT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Dateofbirth` date DEFAULT NULL,
  `AddressLine_1` varchar(50) DEFAULT NULL,
  `AddressLine_2` varchar(50) DEFAULT NULL,
  `Mobileno` int(11) NOT NULL,
  `Emailid` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `ZipCode` int(11) NOT NULL,
  `Certificateno` int(20) DEFAULT NULL,
  `Specialization` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dentist`
--

INSERT INTO `dentist` (`Dentist_Id`, `User_Id`, `ImagePath`, `Fname`, `Lname`, `Dateofbirth`, `AddressLine_1`, `AddressLine_2`, `Mobileno`, `Emailid`, `City`, `State`, `Country`, `ZipCode`, `Certificateno`, `Specialization`) VALUES
(1, 1, '', 'John', 'Mathew', '2014-11-20', '170 Parker Hill Avenue', 'Roxbury Crossing', 2147483647, 'johnmathew@gmail.com', 'Boston', 'Massachusetts', 'USA', 2120, 456123545, 'Pediatric '),
(15, 1202, 'uploads/12121212.jpg', 'Rahul', 'Mehra', '1968-12-09', '7208 Berge Square	', 'Bilzen', 12121212, 'test@mailnator.com', 'Bilzen', 'Bilzen', 'United States', 2210, 121212, 'Ortho'),
(2, 2, '', 'Ajay', 'Nair', '2014-12-20', '10 Parker Hill street', 'Roxbury Crossing', 2147483647, 'ajay@gmail.com', 'Boston', 'Massachusetts', '02120', 0, 456234665, 'Periodonti'),
(16, 1203, 'uploads/15454545545.jpg', 'John', 'Doe', '2021-12-15', 'New Apprt', 'Road line', 2147483647, 'dmdd@mailinator.com', 'Mumbai', 'Maharashtra', 'India', 400074, 210192, 'BDSA'),
(17, 1204, 'uploads/941.jpg', 'Zelenia', 'Booker', '0000-00-00', '494 East Fabien Lane', 'Voluptatibus occaeca', 941, 'gamamob@mailinator.com', 'At vel reprehenderit', 'Veritatis occaecat l', 'Optio mollitia cum ', 16090, 0, 'Dolor vel praesentiu'),
(18, 1205, 'uploads/247.jpg', 'Maxine', 'Lamb', '0000-00-00', '87 North Cowley Drive', 'Soluta non deserunt ', 247, 'sesilyfeb@mailinator.com', 'Quia in repudiandae ', 'Qui suscipit minim a', 'Consequatur Numquam', 55055, 0, 'Et rerum ut velit do'),
(19, 1206, 'uploads/530.jpg', 'Jack', 'Bowen', '0000-00-00', '190 Rocky Old Parkway', 'Aperiam eu proident', 530, 'zuwinoq@mailinator.com', 'Ut qui sint enim exc', 'Culpa consectetur d', 'Quasi ut reiciendis ', 88747, 0, 'Hic quia magnam ut d');

-- --------------------------------------------------------

--
-- Table structure for table `dentistavailability`
--

CREATE TABLE `dentistavailability` (
  `Dentistavailability_Id` int(11) NOT NULL,
  `Dentist_Id` int(11) NOT NULL,
  `Starttime` time DEFAULT NULL,
  `Endtime` time DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `isDentistAvailable` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dentistavailability`
--

INSERT INTO `dentistavailability` (`Dentistavailability_Id`, `Dentist_Id`, `Starttime`, `Endtime`, `Date`, `isDentistAvailable`) VALUES
(1, 1, '09:00:00', '09:15:00', '2021-12-15', 1),
(2, 2, '10:00:00', '10:30:00', '2021-12-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `disorderlist`
--

CREATE TABLE `disorderlist` (
  `Disorder_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Desc` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disorderlist`
--

INSERT INTO `disorderlist` (`Disorder_Id`, `Name`, `Desc`) VALUES
(1, 'AIDS/HIV Positive', 'AIDS/HIV Positive'),
(2, 'Head or Neck Injuries', 'Head or Neck Injuries'),
(3, 'Experiencing pain or discomfor', 'Experiencing pain or discomfort'),
(4, 'Organ/Medical Transplant', 'Organ/Medical Transplant'),
(5, 'Psychiatric Disorder', 'Psychiatric Disorder'),
(6, 'Alzheimers Disease', 'Alzheimers Disease'),
(7, 'Heart Attack/Failure', 'Heart Attack/Failure'),
(8, 'Anaphylaxis', 'Anaphylaxis'),
(9, 'Heart Murmur', 'Heart Murmur'),
(10, 'Anemia', 'Anemia'),
(11, 'Heart Pacemaker', 'Heart Pacemaker'),
(12, 'Arthritis/ Gout', 'Arthritis/ Gout'),
(13, 'Heart Surgery', 'Heart Surgery'),
(14, 'Artificial Heart Valve', 'Artificial Heart Valve'),
(15, 'Hemophilia', 'Hemophilia'),
(16, 'Artificial Joint', 'Artificial Joint'),
(17, 'Hepatitis A/ B or C', 'Hepatitis A/ B or C'),
(18, 'Asthma', 'Asthma'),
(19, 'Blood Disease', 'Blood Disease'),
(20, 'High Blood Pressure', 'High Blood Pressure'),
(21, 'Bruise Easily', 'Bruise Easily'),
(22, 'Infective Endocarditis', 'Infective Endocarditis'),
(23, 'Cancer', 'Cancer'),
(24, 'Alcohol or Drug Dependency', 'Alcohol or Drug Dependency'),
(25, 'Circulation Problems', 'Circulation Problems'),
(26, 'Liver Disease', 'Liver Disease'),
(27, 'Diabetes', 'Diabetes'),
(28, 'Emphysema', 'Emphysema'),
(30, 'Epilepsy/ Seizure', 'Eating Disorder'),
(31, 'Eating Disorder', 'Eating Disorder'),
(32, 'Sickle Cell Disease', 'Sickle Cell Disease'),
(33, 'Fainting', 'Fainting'),
(34, 'Stroke', 'Stroke'),
(35, 'Glaucoma', 'Glaucoma'),
(36, 'Gastrointestinal Disorders', 'Gastrointestinal Disorders');

-- --------------------------------------------------------

--
-- Table structure for table `equipmentlist`
--

CREATE TABLE `equipmentlist` (
  `EQUIPMENT_ID` int(11) NOT NULL,
  `ROOM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hygienist`
--

CREATE TABLE `hygienist` (
  `Hygienist_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Dateofbirth` date DEFAULT NULL,
  `AddressLine_1` varchar(50) DEFAULT NULL,
  `AddressLine_2` varchar(50) DEFAULT NULL,
  `Mobileno` int(11) NOT NULL,
  `Emailid` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `ZipCode` int(11) NOT NULL,
  `Certificateno` int(11) DEFAULT NULL,
  `Specialization` varchar(10) DEFAULT NULL,
  `ImagePath` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hygienist`
--

INSERT INTO `hygienist` (`Hygienist_Id`, `User_Id`, `Fname`, `Lname`, `Dateofbirth`, `AddressLine_1`, `AddressLine_2`, `Mobileno`, `Emailid`, `City`, `State`, `Country`, `ZipCode`, `Certificateno`, `Specialization`, `ImagePath`) VALUES
(1, 45, 'Oliver', 'Queen', '1983-12-01', '150', 'Star City', 2147483647, 'oliver.queen@mailinator.com', 'Star City', 'Minnesota', 'United States', 2115, 451236987, 'Hygienist', 'uploads/9632156478.jpg'),
(2, 46, 'Gwendolyn', 'Hogan', '2021-12-03', 'Ap #600-9260', 'Mollis Street', 2147483647, 'cras.eu@aol.net', 'Quebec', 'Buckinghamshire', 'Canada', 31167, 2147483647, 'Hygienist ', 'uploads/(351) 462-5383.'),
(3, 1208, 'Clark', 'Oliver', '0000-00-00', '57 East Old Road', 'Ea repellendus Et r', 363, 'sumavitez@mailinator.com', 'Quis ut incidunt ar', 'Soluta enim eveniet', 'Et non velit eiusmod', 51700, 0, 'Doloremque', 'uploads/363.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `medicinelist`
--

CREATE TABLE `medicinelist` (
  `Medicine_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Desc` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicinelist`
--

INSERT INTO `medicinelist` (`Medicine_Id`, `Name`, `Desc`) VALUES
(1, 'Aspirin', 'Helps treat periodontal disease'),
(2, 'Soy', 'Used to reduce your stress to stop you from grinding your teeth');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Dateofbirth` date DEFAULT NULL,
  `Mobileno` int(11) NOT NULL,
  `Emailid` varchar(30) DEFAULT NULL,
  `AddressLine_1` varchar(50) DEFAULT NULL,
  `AddressLine_2` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `ZipCode` int(11) NOT NULL,
  `Emergencycontactname` varchar(10) DEFAULT NULL,
  `Emergencycontactnum` varchar(10) DEFAULT NULL,
  `EMERGENCY_CONTACT_DOB` date NOT NULL,
  `Relationship` varchar(10) DEFAULT NULL,
  `Patientconsent` text NOT NULL,
  `ImagePath` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_Id`, `User_Id`, `Fname`, `Lname`, `Dateofbirth`, `Mobileno`, `Emailid`, `AddressLine_1`, `AddressLine_2`, `City`, `State`, `Country`, `ZipCode`, `Emergencycontactname`, `Emergencycontactnum`, `EMERGENCY_CONTACT_DOB`, `Relationship`, `Patientconsent`, `ImagePath`) VALUES
(1, 43, 'Wayne', 'Rooney', '2021-12-01', 2147483647, 'wayne.rooney@mailinator.com', 'New Apt 2', '370 huntington avenue, 405 ell', 'New York', 'New York State', 'United Kingdom', 2116, 'Roger1 Fed', '987654321', '0000-00-00', 'Friend', 'Yes', 'uploads/blank.png'),
(2, 2, 'Ajay', 'Nair', '0000-00-00', 2147483647, 'ajaynair@gmail.com', '15 Dorchester Avenue', 'Winchester Street', 'Cambridge', 'Massachusetts', 'USA', 2120, 'Bhagyashre', '9822081760', '0000-00-00', 'Friend', '', 'uploads/blank.png'),
(3, 3, 'Mark', 'John', '0000-00-00', 2147483647, 'markjohn@yahoo.com', '10 HillSide Apartments', 'Stuart Street', 'Boston', 'Massachusetts', 'USA', 2118, 'Kathy', '8567890987', '0000-00-00', 'Wife', '', 'uploads/blank.png'),
(4, 4, 'Nancy', 'Drew', '0000-00-00', 2147483647, 'n.drew@gmail.com', '30 Huntington Avenue', 'Riverside Road', 'Cambridge', 'Massachusetts', 'USA', 2115, 'Peter', '8765498765', '0000-00-00', 'Husband', '', 'uploads/blank.png'),
(5, 18, 'Lalit', 'Kumar', '0000-00-00', 2147483647, 'lalitkumar@gmail.com', 'New Apprt', 'Central Park', 'New York', 'New York', 'USA', 1197, 'Deepti', '9822081908', '0000-00-00', 'Mother', '', 'uploads/blank.png'),
(6, 6, 'Gloria', 'Pritchett', '0000-00-00', 876345987, 'gloria.p@gmail.com', '13 Dutch Avenue', 'Winchester Street', 'Cambridge', 'Massachusetts', 'USA', 2119, 'Joseph', '9822081790', '0000-00-00', 'Husband', '', 'uploads/blank.png'),
(7, 7, 'Jim', 'Parsons', '0000-00-00', 617789746, 'jimparsons@gmail.com', '01 Dexter Avenue', 'Park Street', 'New York', 'New York', 'USA', 1165, 'Time', '6176849809', '0000-00-00', 'Husband', '', 'uploads/blank.png'),
(8, 8, 'Cameron', 'Mitchell', '0000-00-00', 2147483647, 'cam.m@gmail.com', '17 Dutch Avenue', 'Winchester Street', 'Cambridge', 'Massachusetts', 'USA', 2119, 'Mitchell', '8129084356', '0000-00-00', 'Husband', '', 'uploads/blank.png'),
(9, 9, 'Amy', 'Stuart', '0000-00-00', 2147483647, 'jack.stuart@gmail.com', '226 Parker Hill Avenue', 'Roxbury Crossing', 'Boston', 'Massachusetts', 'USA', 2120, 'Jack', '8572309834', '0000-00-00', 'Father', '', 'uploads/blank.png'),
(10, 10, 'Peter', 'Parker', '0000-00-00', 2147483647, 'v.parker@gmail.com', '350 Riverside', 'Symphony Road', 'Boston', 'Massachusetts', 'USA', 2116, 'Martha', '9822920745', '0000-00-00', 'Mother', '', 'uploads/blank.png'),
(11, 11, 'Susan', 'Hill', '0000-00-00', 30, 'South Park', '21474836147', 'susan.h@gmail.com', 'New York', 'New York', 'USA', 1188, 'Jacob', '9822920741', '0000-00-00', 'Husband', '', 'uploads/blank.png'),
(12, 12, 'Nina', 'Dobrev', '0000-00-00', 2147483647, 'j.dobrev@gmail.com', '3 South Park', 'Marker Hall', 'Boston', 'Massachusetts', 'USA', 2111, 'Mary', '9822920743', '0000-00-00', 'Mother', '', 'uploads/blank.png'),
(13, 13, 'Manish', 'Sharma', '0000-00-00', 2147483647, 'm.sharma@gmail.com', '56 Hillside', 'Fruton Street', 'Boston', 'Massachusetts', 'USA', 2116, 'Nishanth', '9822929876', '0000-00-00', 'Friend', '', 'uploads/blank.png'),
(14, 14, 'Nisha', 'Date', '0000-00-00', 2147483647, 'n.date@gmail.com', '3 Longwood Apartments', 'Longwood Area', 'Boston', 'Massachusetts', 'USA', 2116, 'Sakar', '9822920111', '0000-00-00', 'Husband', '', 'uploads/blank.png'),
(15, 15, 'Chinmayee', 'Bhanu', '0000-00-00', 2147483647, 'c.bhanu@gmail.com', 'Cityview Apartments', 'JVUE', 'Boston', 'Massachusetts', 'USA', 2167, 'Debosmit', '9822920222', '0000-00-00', 'Friend', '', 'uploads/blank.png'),
(16, 16, 'Nikita', 'Kirane', '0000-00-00', 2147483647, 'n.kirane@gmail.com', '1 Manchester Avenue', 'Commons', 'Cambridge', 'Massachusetts', 'USA', 2198, 'Vincent', '9822920333', '0000-00-00', 'Husband', '', 'uploads/blank.png'),
(17, 17, 'Akanksha', 'Singh', '0000-00-00', 2147483647, 'a.singh@gmail.com', '2 Parker Hill', 'Parker Street', 'Boston', 'Massachusetts', 'USA', 2103, 'Sunita', '9822920444', '0000-00-00', 'Friend', '', 'uploads/blank.png'),
(18, 18, 'Bhargavi', 'Patil', '0000-00-00', 2147483647, 'p.patil@gmail.com', '5 Riverside', 'Centre Street', 'New York', 'New York', 'USA', 1199, 'Pratik', '9822920555', '0000-00-00', 'Father', '', 'uploads/blank.png'),
(19, 19, 'Aishwarya', 'Chaubal', '0000-00-00', 2147483647, 'a.chaubal@gmail.com', '7 Cross Avenue', 'Rave Street', 'Boston', 'Massachusetts', 'USA', 2116, 'Neil', '9822920666', '0000-00-00', 'Husband', '', 'uploads/blank.png'),
(20, 20, 'Deeksha', 'Sinha', '0000-00-00', 2147483647, 'd.sinha@gmail.com', '9 Tremont Street', 'Park Street', 'Boston', 'Massachusetts', 'USA', 2113, 'Mark', '9822920777', '0000-00-00', 'Friend', '', 'uploads/blank.png'),
(21, 1207, 'Shay', 'Klein', '0000-00-00', 307, 'sabeviteg@mailinator.com', '568 Old Boulevard', 'In earum nisi dolore', 'Alias maiores in nos', 'Proident porro labo', 'Sit velit quidem na', 54402, 'Kirk Wrigh', '214', '0000-00-00', 'Delectus e', '', 'uploads/307.png');

-- --------------------------------------------------------

--
-- Table structure for table `patientallergyhistory`
--

CREATE TABLE `patientallergyhistory` (
  `PATIENTALLERGYHISTORY_ID` int(11) NOT NULL,
  `Patientvisit_Id` int(11) NOT NULL,
  `Patient_id` int(11) NOT NULL,
  `Allergy_Id` int(11) NOT NULL,
  `ALLERGY_ ANSWER` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientallergyhistory`
--

INSERT INTO `patientallergyhistory` (`PATIENTALLERGYHISTORY_ID`, `Patientvisit_Id`, `Patient_id`, `Allergy_Id`, `ALLERGY_ ANSWER`) VALUES
(1, 1, 1, 7, 0),
(2, 1, 2, 5, 0),
(3, 1, 3, 3, 0),
(4, 1, 4, 9, 0),
(5, 2, 5, 10, 0),
(6, 2, 6, 7, 0),
(7, 2, 7, 10, 0),
(8, 3, 7, 8, 0),
(10, 3, 10, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patientcovidhistory`
--

CREATE TABLE `patientcovidhistory` (
  `Patientcovidhistory_id` int(11) NOT NULL,
  `CovidDetail_Id` int(11) NOT NULL,
  `PatientVisit_id` int(11) NOT NULL,
  `COVID_ ANSWER` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientcovidhistory`
--

INSERT INTO `patientcovidhistory` (`Patientcovidhistory_id`, `CovidDetail_Id`, `PatientVisit_id`, `COVID_ ANSWER`) VALUES
(1, 1, 1, 'No'),
(2, 2, 1, 'No'),
(3, 3, 2, 'Yes'),
(4, 4, 3, 'Yes'),
(5, 5, 4, 'Yes'),
(6, 6, 4, 'Yes'),
(7, 7, 5, 'No'),
(8, 1, 1, 'No'),
(9, 2, 7, 'Yes'),
(10, 3, 7, 'Yes'),
(11, 4, 8, 'No'),
(12, 5, 8, 'No'),
(13, 6, 19, 'Yes'),
(14, 7, 11, 'Yes'),
(15, 8, 13, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `patientdentalhistory`
--

CREATE TABLE `patientdentalhistory` (
  `Patientdentalhistory_id` int(11) NOT NULL,
  `Dental_History_Id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `DENTAL_ ANSWER` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientdentalhistory`
--

INSERT INTO `patientdentalhistory` (`Patientdentalhistory_id`, `Dental_History_Id`, `Patient_Id`, `DENTAL_ ANSWER`) VALUES
(1, 1, 1, 'Yes'),
(2, 1, 2, 'Yes'),
(3, 1, 3, 'No'),
(4, 2, 4, 'No'),
(5, 2, 5, 'No'),
(6, 2, 6, 'Yes'),
(7, 3, 7, 'Yes'),
(8, 3, 8, 'No'),
(9, 3, 9, 'No'),
(10, 4, 10, 'Yes'),
(11, 4, 11, 'No'),
(12, 4, 12, 'No'),
(13, 5, 13, 'No'),
(14, 5, 14, 'No'),
(15, 5, 15, 'Yes'),
(16, 6, 16, 'No'),
(17, 6, 17, 'Yes'),
(18, 7, 18, 'No'),
(19, 7, 19, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `patientdisorderhistory`
--

CREATE TABLE `patientdisorderhistory` (
  `PatientdisorderHistory_Id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `Disorder_Id` int(11) NOT NULL,
  `PatientVisit_Id` int(11) NOT NULL,
  `DISORDER_ANSWER` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientdisorderhistory`
--

INSERT INTO `patientdisorderhistory` (`PatientdisorderHistory_Id`, `Patient_Id`, `Disorder_Id`, `PatientVisit_Id`, `DISORDER_ANSWER`) VALUES
(1, 1, 1, 1, 'Yes'),
(2, 2, 1, 2, 'No'),
(3, 3, 1, 3, 'No'),
(4, 4, 1, 4, 'No'),
(5, 5, 1, 5, 'Yes'),
(6, 6, 2, 11, 'No'),
(7, 7, 2, 19, 'No'),
(8, 8, 2, 10, 'No'),
(9, 9, 2, 12, 'No'),
(10, 10, 2, 36, 'No'),
(11, 11, 3, 11, 'Yes'),
(12, 12, 3, 13, 'No'),
(13, 13, 3, 15, 'No'),
(14, 14, 3, 17, 'No'),
(15, 15, 3, 19, 'No'),
(16, 16, 4, 21, 'No'),
(17, 17, 4, 22, 'Yes'),
(18, 18, 4, 23, 'Yes'),
(19, 19, 4, 24, 'No'),
(20, 20, 4, 25, 'Yes'),
(21, 21, 5, 31, 'Yes'),
(22, 22, 5, 33, 'No'),
(23, 23, 5, 35, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `patientinsuranceinformation`
--

CREATE TABLE `patientinsuranceinformation` (
  `Patientinsurance_id` int(11) NOT NULL,
  `Patient_id` int(11) NOT NULL,
  `InsuranceNumber` varchar(11) NOT NULL,
  `Insurancecompanyname` varchar(50) DEFAULT NULL,
  `Policygroupno` int(15) NOT NULL,
  `Division` varchar(30) DEFAULT NULL,
  `Certificateno` int(15) NOT NULL,
  `Relationshiptopatient` varchar(30) DEFAULT NULL,
  `Insurancetype` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientinsuranceinformation`
--

INSERT INTO `patientinsuranceinformation` (`Patientinsurance_id`, `Patient_id`, `InsuranceNumber`, `Insurancecompanyname`, `Policygroupno`, `Division`, `Certificateno`, `Relationshiptopatient`, `Insurancetype`) VALUES
(1, 1, 'AA123456L', 'United Health', 4564987, 'Illinois', 451278, 'SELF', 'PRIMARY'),
(2, 2, 'BB123456M', 'CVS', 1234897, 'Nevada', 568987, 'FATHER', 'SECONDARY');

-- --------------------------------------------------------

--
-- Table structure for table `patientprescription`
--

CREATE TABLE `patientprescription` (
  `Prescription_id` int(11) NOT NULL,
  `Patientvisit_id` int(11) NOT NULL,
  `Medicine_id` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Dosageinstruction` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientprescription`
--

INSERT INTO `patientprescription` (`Prescription_id`, `Patientvisit_id`, `Medicine_id`, `Date`, `Dosageinstruction`) VALUES
(1, 1, 1, '2021-11-17', '10mg with every meal'),
(2, 2, 2, '2021-01-11', 'Take one hour before eating');

-- --------------------------------------------------------

--
-- Table structure for table `patienttoothstructure`
--

CREATE TABLE `patienttoothstructure` (
  `Patientvisit_id` int(11) NOT NULL,
  `Tooth_id` int(11) NOT NULL,
  `Toothstructure_id` int(11) NOT NULL,
  `Remarks` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patienttoothstructure`
--

INSERT INTO `patienttoothstructure` (`Patientvisit_id`, `Tooth_id`, `Toothstructure_id`, `Remarks`) VALUES
(1, 1, 1, 'Crooked teeth'),
(2, 2, 2, 'Damaged pulp in teeth');

-- --------------------------------------------------------

--
-- Table structure for table `patienttreatment`
--

CREATE TABLE `patienttreatment` (
  `Patienttreatment_id` int(11) NOT NULL,
  `Patientvisit_id` int(11) NOT NULL,
  `Treatment_Id` int(11) NOT NULL,
  `Remarks` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patienttreatment`
--

INSERT INTO `patienttreatment` (`Patienttreatment_id`, `Patientvisit_id`, `Treatment_Id`, `Remarks`) VALUES
(1, 1, 1, 'Root Canal Successful'),
(2, 2, 2, 'Teeth Extraction completed');

-- --------------------------------------------------------

--
-- Table structure for table `patientvisit`
--

CREATE TABLE `patientvisit` (
  `PatientVisit_Id` int(11) NOT NULL,
  `DENTIST_ID` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `Hygienist_Id` int(11) NOT NULL,
  `VisitDate` date DEFAULT NULL,
  `Patientconsent` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientvisit`
--

INSERT INTO `patientvisit` (`PatientVisit_Id`, `DENTIST_ID`, `Patient_Id`, `Hygienist_Id`, `VisitDate`, `Patientconsent`) VALUES
(1, 1, 1, 1, '2020-11-20', 'YES'),
(2, 3, 2, 2, '2020-05-25', 'YES'),
(3, 2, 1, 3, '2021-11-11', 'NO'),
(4, 2, 4, 1, '2020-10-12', 'NO'),
(5, 2, 2, 5, '2021-01-02', 'YES'),
(6, 4, 6, 4, '2020-05-25', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_Id` int(11) NOT NULL,
  `PATIENTVISIT_ID` int(11) NOT NULL,
  `Billing_Id` int(11) NOT NULL,
  `PaymentDate` date NOT NULL,
  `Paymentamount` varchar(30) DEFAULT NULL,
  `Paymentstatus` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_Id`, `PATIENTVISIT_ID`, `Billing_Id`, `PaymentDate`, `Paymentamount`, `Paymentstatus`) VALUES
(1, 1, 1, '2020-04-20', '150', 'Payment Completed'),
(2, 2, 2, '2020-01-03', '200', 'Payment Pending'),
(3, 3, 3, '2020-07-05', '250', 'Payment Failed'),
(4, 4, 4, '2020-11-11', '350', 'Payment Completed'),
(5, 5, 5, '2020-02-20', '50', 'Payment Pending'),
(6, 6, 6, '2020-08-20', '100', 'Payment Failed');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacyinformation`
--

CREATE TABLE `pharmacyinformation` (
  `Pharmacy_Id` int(11) NOT NULL,
  `Patient_Id` int(11) NOT NULL,
  `PATIENT INSURANCE _ID` int(11) NOT NULL,
  `PharmacyName` varchar(20) DEFAULT NULL,
  `AddressLine_1` varchar(50) DEFAULT NULL,
  `AddressLine_2` varchar(50) DEFAULT NULL,
  `Mobileno` int(11) NOT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `ZipCode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacyinformation`
--

INSERT INTO `pharmacyinformation` (`Pharmacy_Id`, `Patient_Id`, `PATIENT INSURANCE _ID`, `PharmacyName`, `AddressLine_1`, `AddressLine_2`, `Mobileno`, `City`, `State`, `Country`, `ZipCode`) VALUES
(1, 1, 1, 'CVS', '350 Tremont Street', 'Parker Street', 1834019387, 'Boston', 'Massachusetts', 'USA', 2120),
(2, 2, 2, 'Walgreens', '3 Park Drive', 'Fenway Park', 1834019333, 'Cambridge', 'Massachusetts', 'USA', 2018),
(3, 3, 3, 'Wellness 24', '350 Huntington Avenue', 'Symphony Road', 1134019444, 'Boston', 'Massachusetts', 'USA', 2115),
(4, 4, 4, 'Walmart', '10 Groove Street', 'Starline Avenue', 1834019555, 'New York', 'New York', 'USA', 1197),
(5, 5, 5, 'CVS', '14 Charles Street', 'Longwood Medical Area', 1834019666, 'Boston', 'Massachusetts', 'USA', 2119);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Role_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Desc` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Role_Id`, `Name`, `Desc`) VALUES
(6, 'admin', 'Admin'),
(7, 'dentist', 'Dentist role'),
(8, 'patient', 'User Account'),
(9, 'Hygienist', 'Hygienist Role');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_Id` int(11) NOT NULL,
  `Branch_Id` int(11) NOT NULL,
  `Room_name` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_Id`, `Branch_Id`, `Room_name`) VALUES
(1, 1, 'Hygienist Room'),
(2, 1, 'X-Ray Imaging Room'),
(3, 1, 'Consultation'),
(4, 1, 'General Room');

-- --------------------------------------------------------

--
-- Table structure for table `roomavailability`
--

CREATE TABLE `roomavailability` (
  `Roomavailability_Id` int(11) NOT NULL,
  `Room_Id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Starttime` time DEFAULT NULL,
  `Endtime` time DEFAULT NULL,
  `isRoomAsvailable` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomavailability`
--

INSERT INTO `roomavailability` (`Roomavailability_Id`, `Room_Id`, `Date`, `Starttime`, `Endtime`, `isRoomAsvailable`) VALUES
(1, 1, '2021-12-14', '09:00:00', '09:15:00', 1),
(2, 2, '2021-12-16', '09:15:00', '10:00:00', 0),
(3, 3, '2021-12-15', '10:00:00', '11:00:00', 1),
(4, 4, '2021-12-15', '09:00:00', '10:00:00', 1),
(5, 5, '2021-12-15', '13:00:00', '14:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `toothchart`
--

CREATE TABLE `toothchart` (
  `Tooth_id` int(11) NOT NULL,
  `Toothname` varchar(200) DEFAULT NULL,
  `Toothnumber` varchar(200) NOT NULL,
  `Type` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toothchart`
--

INSERT INTO `toothchart` (`Tooth_id`, `Toothname`, `Toothnumber`, `Type`) VALUES
(1, 'Right Maxillary Central Incisor', '1st Incisor', 'Incisors'),
(2, 'Left Maxillary Central Incisor', '2nd Incisor', 'Incisors'),
(3, 'Right Maxillary Cuspid', '1st Canine', 'Canines'),
(4, 'Left Maxillary Cuspid', '2nd Canine', 'Canines'),
(5, 'Right Maxillary 1st Bicuspid', '1st Premolar', 'Premolars'),
(6, 'Left Maxillary 1st Bicuspid', '2nd Premolar', 'Premolars'),
(7, 'Right Mandibular 1st Bicuspid', '1st Molar', 'Molars'),
(8, 'Left Mandibular 1st Bicuspid', '2nd Molar', 'Molars');

-- --------------------------------------------------------

--
-- Table structure for table `treatmentlist`
--

CREATE TABLE `treatmentlist` (
  `Treatment_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Cost` varchar(30) DEFAULT NULL,
  `desc` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatmentlist`
--

INSERT INTO `treatmentlist` (`Treatment_Id`, `Name`, `Cost`, `desc`) VALUES
(1, 'Dental implants', '150', 'The best and most permanent way to replace real teeth is with dental implants'),
(2, 'Dental cleaning', '75', 'It will keep your teeth healthy, shiny, and strong.'),
(3, 'Dental whitening', '200', 'Dentists use a special hydrogen peroxide gel and a special light source to whiten faster'),
(4, 'Veneers', '250', 'They’re mainly used for correctional purposes,'),
(5, 'Crowns', '150', 'If your cavity is a little too big for a filling, or the top part of your tooth has decayed, a crown is the solution'),
(6, 'Braces', '200', 'To straighten and correct crooked teeth'),
(7, 'Bonding', '110', 'to repair damaged or chipped teeth.'),
(8, 'Dentures', '120', 'They are meant to replace teeth in a natural way, and they’re typically removable'),
(9, 'Dental Sealants', '50', 'Sealants are made of plastic and are applied to the chewing surfaces of the back teeth to prevent tooth decay'),
(10, 'Root Canal Therapy', '105', 'A root canal is a dental procedure that is used to repair teeth that are infected or badly decayed.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_Id` int(11) NOT NULL,
  `Role_Id` int(11) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_Id`, `Role_Id`, `Email`, `Password`) VALUES
(1202, 7, 'test@mailnator.com', 'den57'),
(1200, 6, 'admin', 'password'),
(1, 1, 'wayne.rooney@gmail.com', 'Wayne123'),
(35, 8, 'rafael.nadal@mailinator.com', 'den100'),
(43, 8, 'wayne.rooney@mailinator.com', 'den99'),
(45, 7, 'oliver.queen@mailinator.com', 'den17'),
(17, 8, 'jimparsons@gmail.com', 'Jim1'),
(19, 8, 'gloria.p@gmail.com', 'Gloria1'),
(18, 8, 'lalitkumar@gmail.com', 'Lalit1'),
(13, 8, 'markjohn@yahoo.com', 'Mark1'),
(12, 8, 'ajaynair@gmail.com', 'Ajay1'),
(11, 8, 'johnmathew@gmail.com', 'John1'),
(1203, 7, 'dmdd@mailinator.com', 'den28'),
(1204, 7, 'gamamob@mailinator.com', 'den81'),
(1205, 7, 'sesilyfeb@mailinator.com', 'den83'),
(1206, 7, 'zuwinoq@mailinator.com', 'den94'),
(1207, 8, 'sabeviteg@mailinator.com', 'pat56'),
(1208, 9, 'sumavitez@mailinator.com', 'hyg21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergylist`
--
ALTER TABLE `allergylist`
  ADD PRIMARY KEY (`Allergy_Id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Appointment_Id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`Billing_Id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_Id`);

--
-- Indexes for table `coviddisclosure`
--
ALTER TABLE `coviddisclosure`
  ADD PRIMARY KEY (`Covid_Detail_Id`);

--
-- Indexes for table `dentalhistoryinformationlist`
--
ALTER TABLE `dentalhistoryinformationlist`
  ADD PRIMARY KEY (`DentalHistory_Id`);

--
-- Indexes for table `dentist`
--
ALTER TABLE `dentist`
  ADD PRIMARY KEY (`Dentist_Id`);

--
-- Indexes for table `dentistavailability`
--
ALTER TABLE `dentistavailability`
  ADD PRIMARY KEY (`Dentistavailability_Id`);

--
-- Indexes for table `disorderlist`
--
ALTER TABLE `disorderlist`
  ADD PRIMARY KEY (`Disorder_Id`);

--
-- Indexes for table `equipmentlist`
--
ALTER TABLE `equipmentlist`
  ADD PRIMARY KEY (`EQUIPMENT_ID`);

--
-- Indexes for table `hygienist`
--
ALTER TABLE `hygienist`
  ADD PRIMARY KEY (`Hygienist_Id`);

--
-- Indexes for table `medicinelist`
--
ALTER TABLE `medicinelist`
  ADD PRIMARY KEY (`Medicine_Id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_Id`);

--
-- Indexes for table `patientallergyhistory`
--
ALTER TABLE `patientallergyhistory`
  ADD PRIMARY KEY (`PATIENTALLERGYHISTORY_ID`);

--
-- Indexes for table `patientcovidhistory`
--
ALTER TABLE `patientcovidhistory`
  ADD PRIMARY KEY (`Patientcovidhistory_id`);

--
-- Indexes for table `patientdentalhistory`
--
ALTER TABLE `patientdentalhistory`
  ADD PRIMARY KEY (`Patientdentalhistory_id`);

--
-- Indexes for table `patientdisorderhistory`
--
ALTER TABLE `patientdisorderhistory`
  ADD PRIMARY KEY (`PatientdisorderHistory_Id`);

--
-- Indexes for table `patientinsuranceinformation`
--
ALTER TABLE `patientinsuranceinformation`
  ADD PRIMARY KEY (`Patientinsurance_id`);

--
-- Indexes for table `patientprescription`
--
ALTER TABLE `patientprescription`
  ADD PRIMARY KEY (`Prescription_id`);

--
-- Indexes for table `patienttoothstructure`
--
ALTER TABLE `patienttoothstructure`
  ADD PRIMARY KEY (`Toothstructure_id`);

--
-- Indexes for table `patienttreatment`
--
ALTER TABLE `patienttreatment`
  ADD PRIMARY KEY (`Patienttreatment_id`);

--
-- Indexes for table `patientvisit`
--
ALTER TABLE `patientvisit`
  ADD PRIMARY KEY (`PatientVisit_Id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_Id`);

--
-- Indexes for table `pharmacyinformation`
--
ALTER TABLE `pharmacyinformation`
  ADD PRIMARY KEY (`Pharmacy_Id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Role_Id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_Id`);

--
-- Indexes for table `roomavailability`
--
ALTER TABLE `roomavailability`
  ADD PRIMARY KEY (`Roomavailability_Id`);

--
-- Indexes for table `toothchart`
--
ALTER TABLE `toothchart`
  ADD PRIMARY KEY (`Tooth_id`);

--
-- Indexes for table `treatmentlist`
--
ALTER TABLE `treatmentlist`
  ADD PRIMARY KEY (`Treatment_Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allergylist`
--
ALTER TABLE `allergylist`
  MODIFY `Allergy_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `Appointment_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `Billing_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `Branch_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coviddisclosure`
--
ALTER TABLE `coviddisclosure`
  MODIFY `Covid_Detail_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dentalhistoryinformationlist`
--
ALTER TABLE `dentalhistoryinformationlist`
  MODIFY `DentalHistory_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dentist`
--
ALTER TABLE `dentist`
  MODIFY `Dentist_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dentistavailability`
--
ALTER TABLE `dentistavailability`
  MODIFY `Dentistavailability_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `disorderlist`
--
ALTER TABLE `disorderlist`
  MODIFY `Disorder_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `equipmentlist`
--
ALTER TABLE `equipmentlist`
  MODIFY `EQUIPMENT_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hygienist`
--
ALTER TABLE `hygienist`
  MODIFY `Hygienist_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicinelist`
--
ALTER TABLE `medicinelist`
  MODIFY `Medicine_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Patient_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `patientallergyhistory`
--
ALTER TABLE `patientallergyhistory`
  MODIFY `PATIENTALLERGYHISTORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patientcovidhistory`
--
ALTER TABLE `patientcovidhistory`
  MODIFY `Patientcovidhistory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patientdentalhistory`
--
ALTER TABLE `patientdentalhistory`
  MODIFY `Patientdentalhistory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `patientdisorderhistory`
--
ALTER TABLE `patientdisorderhistory`
  MODIFY `PatientdisorderHistory_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `patientinsuranceinformation`
--
ALTER TABLE `patientinsuranceinformation`
  MODIFY `Patientinsurance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patientprescription`
--
ALTER TABLE `patientprescription`
  MODIFY `Prescription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patienttoothstructure`
--
ALTER TABLE `patienttoothstructure`
  MODIFY `Toothstructure_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patienttreatment`
--
ALTER TABLE `patienttreatment`
  MODIFY `Patienttreatment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patientvisit`
--
ALTER TABLE `patientvisit`
  MODIFY `PatientVisit_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pharmacyinformation`
--
ALTER TABLE `pharmacyinformation`
  MODIFY `Pharmacy_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Role_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roomavailability`
--
ALTER TABLE `roomavailability`
  MODIFY `Roomavailability_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `toothchart`
--
ALTER TABLE `toothchart`
  MODIFY `Tooth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `treatmentlist`
--
ALTER TABLE `treatmentlist`
  MODIFY `Treatment_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1209;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
