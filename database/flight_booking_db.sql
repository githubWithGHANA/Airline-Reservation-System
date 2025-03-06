-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 10:21 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight_booking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines_list`
--

CREATE TABLE `airlines_list` (
  `id` int(30) NOT NULL,
  `airlines` text NOT NULL,
  `logo_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airlines_list`
--

INSERT INTO `airlines_list` (`id`, `airlines`, `logo_path`) VALUES
(1, 'AirAsia', '1600999080_kisspng-flight-indonesia-airasia-airasia-japan-airline-tic-asia-5abad146966736.8321896415221927106161.jpg'),
(2, 'Philippine Airlines', '1600999200_Philippine-Airlines-Logo.jpg'),
(3, 'Cebu Pacific', '1600999200_43cada0008538e3c1a1f4675e5a7aabe.jpeg'),
(NULL, 'Air India', '1737795300_airi.jpg'), 
(NULL, 'Emirates Airline', '1737795300_emi.jpg'), 
(NULL, 'Delta Airlines', '1737795360_delta.jpg'), 
(NULL, 'Indigo', '1737795360_ind2.jpg'), 
(NULL, 'Air Odisha ', '1737799320_images (19).jpeg'), 
(NULL, 'Akasa Air', '1737799560_Akasa_Air_logo_with_slogan.png'), 
(NULL, 'Air Deccan Airlines', '1737799380_images (3).png'), 
(NULL, 'Kingfisher Airlines', '1737799380_images (18).jpeg'), 
(NULL, 'Fly 91\r\n', '1737799440_images (17).jpeg'), 
(NULL, 'Star Air', '1737799440_images (16).jpeg'), 
(NULL, 'Truejet Airlines', '1737799440_images (15).jpeg'), 
(NULL, 'go Air', '1737799500_GoAir_Logo.png'), 
(NULL, 'Vistara Airlines', '1737799500_images (14).jpeg'), 
(NULL, 'Spicejet Airlines', '1737799560_images (2).png');

-- --------------------------------------------------------

--
-- Table structure for table `airport_list`
--

CREATE TABLE `airport_list` (
  `id` int(30) NOT NULL,
  `airport` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport_list`
--

INSERT INTO `airport_list` (`id`, `airport`, `location`) VALUES
(1, 'NAIA', 'Metro Manila'),
(2, 'Beijing Capital International Airport', 'Chaoyang-Shunyi, Beijing'),
(3, 'Los Angeles International Airport', 'Los Angeles, California'),
(4, 'Dubai International Airport', 'Garhoud, Dubai'),
(5, 'Mactan-Cebu Airport', 'Cebu'),
(NULL, 'Indira Gandhi International Airport', 'New Delhi'), 
(NULL, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai'), 
(NULL, 'Kempegowda International Airport', 'Bengaluru'), 
(NULL, 'Rajiv Gandhi International Airport', 'Hyderabad'), 
(NULL, 'Chennai International Airport', 'Chennai'), 
(NULL, 'Netaji Subhas Chandra Bose International Airport', 'Kolkata'), 
(NULL, 'Sardar Vallabhbhai Patel International Airport', 'Ahmedabad'), 
(NULL, 'Cochin International Airport', 'Kochi'), 
(NULL, 'Pune Airport', 'Pune'), 
(NULL, 'Goa International Airport (Dabolim Airport)', 'Dabolim'), 
(NULL, 'Chaudhary Charan Singh International Airport', 'Lucknow'), 
(NULL, 'Lokpriya Gopinath Bordoloi International Airport', 'Guwahati'), 
(NULL, 'Jaipur International Airport', 'Jaipur'), 
(NULL, 'Biju Patnaik International Airport', 'Bhubaneswar'), 
(NULL, 'Manohar International Airport', 'Mopa, Goa'), 
(NULL, 'Birsa Munda Airport', 'Ranchi');

-- --------------------------------------------------------

--
-- Table structure for table `booked_flight`
--

CREATE TABLE `booked_flight` (
  `id` int(30) NOT NULL,
  `flight_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_flight`
--

INSERT INTO `booked_flight` (`id`, `flight_id`, `name`, `address`, `contact`) VALUES
(2, 3, 'James Smith', 'Sample Address', '+4545 6456'),
(3, 4, 'John Smith', 'Sample Address', '+18456-5455-55'),
(NULL, '5', 'ghana shyama mahunta', 'nimundia', '07877876754'), 
(NULL, '5', 'ghana', 'Nimundia', ''), 
(NULL, '10', 'hjfkds dds', '', ''), 
(NULL, '10', '', '', ''), 
(NULL, '10', '', '', ''), 
(NULL, '18', 'ghana shyama mahunta', 'nimundia', '07877876754'), 
(NULL, '18', 'ghana', 'Sheragada', ''), 
(NULL, '5', 'abhi', 'asika', '696969696969'), 
(NULL, '18', 'chandan', 'sorada', '14141414114');

-- --------------------------------------------------------

--
-- Table structure for table `flight_list`
--

CREATE TABLE `flight_list` (
  `id` int(30) NOT NULL,
  `airline_id` int(30) NOT NULL,
  `plane_no` text NOT NULL,
  `departure_airport_id` int(30) NOT NULL,
  `arrival_airport_id` int(30) NOT NULL,
  `departure_datetime` datetime NOT NULL,
  `arrival_datetime` datetime NOT NULL,
  `seats` int(10) NOT NULL DEFAULT 0,
  `price` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_list`
--

INSERT INTO `flight_list` (`id`, `airline_id`, `plane_no`, `departure_airport_id`, `arrival_airport_id`, `departure_datetime`, `arrival_datetime`, `seats`, `price`, `date_created`) VALUES
(1, 1, 'GB623-14', 1, 3, '2020-10-07 04:00:00', '2020-10-21 10:00:00', 150, 7500, '2020-09-25 11:23:52'),
(2, 2, 'TIPS14-15', 1, 2, '2020-10-14 11:00:00', '2020-10-16 09:00:00', 100, 5000, '2020-09-25 11:46:12'),
(3, 3, 'CEB-1101', 5, 1, '2020-09-30 08:00:00', '2020-09-30 08:45:00', 100, 2500, '2020-09-25 11:57:31'),
(4, 3, 'CEB10023', 1, 5, '2020-10-07 01:00:00', '2020-10-07 01:45:00', 100, 2500, '2020-09-25 14:50:47'),
(NULL, '10', 'DEC44553', '6', '7', '2025-02-11 19:05:00','2025-02-15 19:05:00', '550', '1800', '2025-01-25 19:06:09'), 
(NULL, '4', 'AIND1212', '7', '6', '2025-02-06 19:07:00', '2025-02-10 19:07:00', '380', '3000', '2025-01-25 19:07:24'), 
(NULL, '8', 'ODI1213', '19', '15', '2025-02-06 19:08:00', '2025-02-11 18:00:00', '440', '2200', '2025-01-25 19:09:15'), 
(NULL, '9', 'AKS1208', '15', '19', '2025-02-07 21:00:00', '2025-02-11 22:00:00', '445', '2250', '2025-01-25 19:11:45'), 
(NULL, '6', 'DLT1208', '21', '16', '2025-02-10 15:00:00', '2025-01-13 18:00:00', '480', '2600', '2025-01-25 19:13:02'), 
(NULL, '5', 'EMT1213', '16', '10', '2025-02-09 19:13:00', '2025-02-15 18:00:00', '390', '3500', '2025-01-25 19:14:13'), 
(NULL, '12', 'FLY1210', '2', '12', '2025-02-10 19:14:00', '2025-02-16 19:14:00', '410', '3400', '2025-01-25 19:15:19'), 
(NULL, '15', 'GO1211', '13', '4', '2025-02-11 11:00:00', '2025-02-20 19:16:00', '280', '2800', '2025-01-25 19:16:49'), 
(NULL, '0', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '2025-01-25 19:17:32'), 
(NULL, '7', 'NDD1214', '20', '1', '2025-02-12 19:18:00', '2025-02-19 06:00:00', '420', '2500', '2025-01-25 19:19:07'), 
(NULL, '11', 'KNG1212', '11', '14', '2025-02-12 19:19:00', '2025-02-25 09:00:00', '250', '3300', '2025-01-25 19:20:11'), 
(NULL, '17', 'SPJ1219', '9', '12', '2093-02-11 19:00:00', '2093-03-18 22:22:00', '320', '4000', '2025-01-25 19:21:02'), 
(NULL, '13', 'STR1250', '12', '6', '2025-02-11 19:21:00', '2025-02-19 19:22:00', '310', '3300', '2025-01-25 19:22:19'), 
(NULL, '14', 'TRJ1200', '19', '15', '2025-02-11 20:00:00', '2025-02-28 23:00:00', '220', '3500', '2025-01-25 19:24:19'), 
(NULL, '16', 'VST22', '19', '9', '2025-02-12 20:00:00', '2025-02-14 19:25:00', '160', '4000', '2025-01-25 19:25:21');


-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Online Flight Booking System', 'BCA22.1212@gmail.com', '+69 6969696969', '1600998360_travel-cover.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;'),
(2, 'Online Flight Booking System', 'Ghanshyam@gmail.com', '+69 6969696969', '6.jpeg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `doctor_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = doctor,3=patient'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `address`, `contact`, `username`, `password`, `type`) VALUES
(1, 0, 'Administrator', '', '', 'admin', 'admin123', 1),
(7, 0, 'George Wilson', 'Sample Only', '+18456-5455-55', 'gwilson@sample.com', 'd40242fb23c45206fadee4e2418f274f', 2),
(9, 2, 'DR.James Smith, M.D.', 'Sample Clinic Address', '+1456 554 55623', 'jsmith@sample.com', 'jsmith123', 2),
(10, 3, 'DR.Claire Blake, M.D.', 'Sample Only', '+5465 555 623', 'cblake@sample.com', 'blake123', 2),
(11, 0, 'Sample Only', 'Sample', '+5465 546 4556', 'sample@sample.com', '4e91b1cbe42b5c884de47d4c7fda0555', 2),
(15, 9, 'DR.Sample Doctor, M.D.', 'Sample Address', '+1235 456 623', 'sample2@sample.com', 'sample123', 2),
(NULL, '0', 'ghana', 'Nimundia , Ganjam', '3334445556', 'ghana@gmail.com', 'bca1212', '2'), 
(NULL, '0', 'Ghanashyama', '', '', 'Ghana', 'ggg', '1'), 
(NULL, '0', 'ghana', 'Kharia,Asika', '3334445556', 'ghan@gmail.com', '9207bcad0068fb62720c4151781ade59', '3');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines_list`
--
ALTER TABLE `airlines_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airport_list`
--
ALTER TABLE `airport_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_flight`
--
ALTER TABLE `booked_flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_list`
--
ALTER TABLE `flight_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines_list`
--
ALTER TABLE `airlines_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `airport_list`
--
ALTER TABLE `airport_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booked_flight`
--
ALTER TABLE `booked_flight`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flight_list`
--
ALTER TABLE `flight_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
CREATE DATABASE flight_booking;

USE flight_booking;

-- Table for storing users



CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Table for storing booking information
CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    from_city VARCHAR(100) NOT NULL,
    to_city VARCHAR(100) NOT NULL,
    travel_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);