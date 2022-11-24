-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 04:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` varchar(20) NOT NULL,
  `admin_pwd` varchar(20) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `admin_phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_pwd`, `admin_name`, `email_id`, `admin_phone`) VALUES
('admin', 'admin', 'maria babu v', 'admin@gmail.com', 9899171714);

-- --------------------------------------------------------

--
-- Table structure for table `art_info`
--

CREATE TABLE `art_info` (
  `art_id` int(10) NOT NULL,
  `art_name` varchar(50) NOT NULL,
  `art_category` varchar(20) NOT NULL,
  `art_price` int(20) NOT NULL,
  `art_discount` int(10) NOT NULL,
  `art_photo` varchar(50) NOT NULL,
  `art_detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `art_info`
--

INSERT INTO `art_info` (`art_id`, `art_name`, `art_category`, `art_price`, `art_discount`, `art_photo`, `art_detail`) VALUES
(4, 'Art1', 'Fine Art', 5000, 200, ' ../img/26-03-2017-1490513278.jpg', '										This cool and Attractive image . and this famous art & represent to the community. 												'),
(5, 'art2', 'Fine Art', 3000, 300, ' ../img/26-03-2017-1490513330.jpg', '										This cool and Attractive image . and this famous art & represent to the community.\r\n				1212				'),
(6, 'Art3', 'Fine Art', 3500, 1000, '../img/26-03-2017-1490513373.jpg', 'This cool and Attractive image . and this famous art & represent to the community.\r\n'),
(7, 'Art1', 'Folk', 2000, 100, '../img/26-03-2017-1490516560.jpg', 'This is art for folk and too good . and its official art. this is art used to'),
(8, 'Art2', 'Folk', 1800, 500, '../img/26-03-2017-1490516896.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.'),
(9, 'krishna', 'Folk', 1234, 1000, '../img/26-03-2017-1490516947.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.'),
(10, 'Art1', 'Pop Art', 1900, 1000, '../img/26-03-2017-1490517387.jpg', 'This Is Attractive  ARt. This is art very use.'),
(12, 'Art3', 'Pop Art', 5000, 2000, '../img/26-03-2017-1490517473.jpg', 'This Is Attractive ARt. This is art very use.\r\n'),
(13, 'Art1', 'Street Art', 2000, 1000, '../img/26-03-2017-1490517588.jpg', 'This is art too good and most use of the day..				'),
(14, 'Art2', 'Street Art', 1200, 1000, '../img/26-03-2017-1490517690.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.\r\n'),
(15, 'Art3', 'Street Art', 2000, 120, '../img/26-03-2017-1490517718.jpg', 'This is art for folk and too good . and its official art. this is art used to decorate.'),
(16, 'Art4', 'Street Art', 5500, 2000, '../img/26-03-2017-1490517770.jpg', 'This Is Attractive ARt. This is art very use.\r\n'),
(17, 'Art2har', 'Fine Art', 1000, 500, '../img/26-03-2017-1490520544.jpg', 'this is good product'),
(21, 'art2', 'Pop Art', 2500, 200, '../img/27-06-2022-1656309182.jpg', 'erty'),
(24, 'art1', 'Fine Art', 500, 100, '../img/26-07-2022-1658814834.jpg', '					qwerty				');

-- --------------------------------------------------------

--
-- Table structure for table `booking_info`
--

CREATE TABLE `booking_info` (
  `bart_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `art_id` int(10) NOT NULL,
  `Name` text NOT NULL,
  `bart_name` varchar(50) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `delivery_address` varchar(50) NOT NULL,
  `bart_quantity` int(10) NOT NULL,
  `bart_date` varchar(30) NOT NULL DEFAULT 'CURRENT_TIMESTAMP(50)',
  `bart_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `booking_info`
--

INSERT INTO `booking_info` (`bart_id`, `cust_id`, `art_id`, `Name`, `bart_name`, `order_status`, `delivery_address`, `bart_quantity`, `bart_date`, `bart_price`) VALUES
(19, 10, 7, 'MATHEW', 'Art1', 'Available', 'vendrappillil ', 4, '2022-06-26 23:38:27', 8000),
(39, 10, 4, 'MATHEW', 'Art1', 'Available', 'ssss', 2, '2022-07-25 08:52:42', 10000),
(49, 11, 6, 'Albin ', 'Art3', 'Available', 'vendrappillil ', 2, '2022-07-26 08:33:11', 7000),
(50, 11, 5, 'Albin ', 'art2', 'Available', 'vettuvelil house', 2, '2022-07-26 08:36:06', 6000),
(52, 17, 7, 'poornima', 'Art1', 'Available', 'vendrappillil ', 1, '2022-07-26 11:32:08', 2000),
(53, 11, 7, 'Albin ', 'Art1', 'Available', 'vettuvelil house', 1, '2022-07-26 11:34:14', 2000),
(54, 14, 9, 'monica', 'krishna', 'Available', 'vettuvelil house', 2, '2022-10-29 12:10:11', 2468),
(55, 14, 10, 'monica', 'Art1', 'Available', 'vendrappillil ', 1, '2022-10-29 12:10:47', 1900),
(56, 18, 12, 'jefrin', 'Art3', 'Available', 'vendrappillil ', 2, '2022-10-29 12:20:11', 10000),
(57, 18, 13, 'jefrin', 'Art1', 'Available', 'vendrappillil ', 2, '2022-10-29 12:20:37', 4000),
(58, 18, 21, 'jefrin', 'art2', 'Available', 'vendrappillil ', 1, '2022-10-29 12:21:24', 2500),
(59, 18, 16, 'jefrin', 'Art4', 'Available', 'vendrappillil ', 2, '2022-10-29 12:22:15', 11000);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `cust_id` int(10) NOT NULL,
  `cust_pwd` varchar(20) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_Fname` varchar(10) NOT NULL,
  `cust_Lname` varchar(10) NOT NULL,
  `cust_sex` varchar(10) NOT NULL,
  `cust_phone` bigint(10) NOT NULL,
  `cust_state` varchar(20) NOT NULL,
  `cust_place` varchar(20) NOT NULL,
  `cust_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`cust_id`, `cust_pwd`, `cust_email`, `cust_Fname`, `cust_Lname`, `cust_sex`, `cust_phone`, `cust_state`, `cust_place`, `cust_address`) VALUES
(10, 'QWERTY', 'mathewrajuv@gmail.com', 'MATHEW', 'RAJU. V', 'Male', 7736861521, 'KERALA', 'India', 'VENDRAPPILLIL HOUSE ,THIRUVANKULAM P.O , THIRUVANK'),
(11, '12345', 'albinrajuv@gmail.com', 'Albin ', 'raju', 'Male', 8589962357, 'kerala', 'india', 'vettuveetil house'),
(14, '12345', 'monica@gmail.com', 'monica', 'tom', 'Male', 8589962357, 'Kerala', 'India', 'Vendrappillil House, Thiruvankulam p. o, Thiruvank'),
(15, 'Mathew1999', 'mathewraju@gmail.com', 'MATHEW', 'RAJU', 'Female', 7736861521, 'KERALA', 'India', 'VENDRAPPILLIL HOUSE ,THIRUVANKULAM P.O , THIRUVANK'),
(17, 'Poornima123', 'poornima@gmail.com', 'poornima', 's', 'Female', 8589962357, 'Kerala', 'India', 'Vendrappillil House, Thiruvankulam p. o, Thiruvank'),
(18, 'Jefrin@123', 'jefrin@gmail.com', 'jefrin', 'p', 'Male', 8589962357, 'Kerala', 'India', 'Vendrappillil House, Thiruvankulam p. o, Thiruvank');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_info`
--

CREATE TABLE `feedback_info` (
  `feed_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `Feed_Status` varchar(50) NOT NULL,
  `Feed_Response` varchar(50) NOT NULL,
  `Feed_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `feedback_info`
--

INSERT INTO `feedback_info` (`feed_id`, `cust_id`, `email_id`, `Feed_Status`, `Feed_Response`, `Feed_type`) VALUES
(7, 11, 'albinrajuv@gmail.com', 'asdfghjkl,mnbvc', 'Positive', 'Time Management'),
(8, 11, 'albinrajuv@gmail.com', 'qwertyuikl', 'Positive', 'Service'),
(9, 11, 'albinrajuv@gmail.com', 'asdfghujikjhgf', 'Negative', 'Service'),
(10, 17, 'poornima@gmail.com', 'MORE ART WORKS NEEDED', 'Positive', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `pay_id` int(10) NOT NULL,
  `bart_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `pay_amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`pay_id`, `bart_id`, `cust_id`, `pay_amount`) VALUES
(18, 19, 10, 8000),
(23, 49, 11, 7000),
(24, 50, 11, 6000),
(26, 52, 17, 2000),
(27, 54, 14, 2468),
(28, 55, 14, 1900),
(29, 56, 18, 10000),
(30, 57, 18, 4000),
(31, 58, 18, 2500),
(32, 59, 18, 11000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `Login_id` (`email_id`);

--
-- Indexes for table `art_info`
--
ALTER TABLE `art_info`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD PRIMARY KEY (`bart_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `art_id` (`art_id`),
  ADD KEY `cust_id_2` (`cust_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `cust_email` (`cust_email`),
  ADD UNIQUE KEY `cust_id_4` (`cust_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `cust_id_2` (`cust_id`),
  ADD KEY `cust_id_3` (`cust_id`);

--
-- Indexes for table `feedback_info`
--
ALTER TABLE `feedback_info`
  ADD PRIMARY KEY (`feed_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `bart_id` (`bart_id`,`cust_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art_info`
--
ALTER TABLE `art_info`
  MODIFY `art_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `booking_info`
--
ALTER TABLE `booking_info`
  MODIFY `bart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `cust_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `feedback_info`
--
ALTER TABLE `feedback_info`
  MODIFY `feed_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `pay_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD CONSTRAINT `booking_info_ibfk_1` FOREIGN KEY (`art_id`) REFERENCES `art_info` (`art_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_info_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback_info`
--
ALTER TABLE `feedback_info`
  ADD CONSTRAINT `feedback_info_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `payment_info_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_info` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_info_ibfk_2` FOREIGN KEY (`bart_id`) REFERENCES `booking_info` (`bart_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
