-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 11:02 AM
-- Server version: 8.1.0
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bacsi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appt_id` int NOT NULL,
  `aptid_text` varchar(30) DEFAULT NULL,
  `apt_date_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `attachments_list_file` text,
  `chief_complaint_option_chief_complaint` varchar(100) DEFAULT NULL,
  `description_text` text,
  `disposition_option_apt_disposition` varchar(150) DEFAULT NULL,
  `images_list_image` varchar(1000) DEFAULT NULL,
  `insurance_custom_insurance` varchar(255) DEFAULT NULL,
  `location_custom_locations` varchar(255) DEFAULT NULL,
  `rx_custom_prescription` text,
  `status_option_status` varchar(255) DEFAULT NULL,
  `signature_url_text` varchar(300) DEFAULT NULL,
  `type_option_appointment_types` varchar(255) DEFAULT NULL,
  `videomeeting_file` varchar(255) DEFAULT NULL,
  `webmeeting_text` text,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `assigned_doctor_user` varchar(300) DEFAULT NULL,
  `triage_staff_user` varchar(300) DEFAULT NULL,
  `patient_user` varchar(300) DEFAULT NULL,
  `invoice_custom_invoice` varchar(300) DEFAULT NULL,
  `diagnostic_list_custom_diagnostic` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appt_id`, `aptid_text`, `apt_date_date`, `attachments_list_file`, `chief_complaint_option_chief_complaint`, `description_text`, `disposition_option_apt_disposition`, `images_list_image`, `insurance_custom_insurance`, `location_custom_locations`, `rx_custom_prescription`, `status_option_status`, `signature_url_text`, `type_option_appointment_types`, `videomeeting_file`, `webmeeting_text`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `assigned_doctor_user`, `triage_staff_user`, `patient_user`, `invoice_custom_invoice`, `diagnostic_list_custom_diagnostic`) VALUES
(101, 'APT-20231', '2023-02-06 00:00:00', '', 'Headache', 'test', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-20231', 45, '2023-05-10 02:08:10', '2023-02-06 00:58:26', NULL, '63', '', '45', '100', '[\"Z99.8\"]'),
(102, 'APT-20232', '2023-02-10 02:05:53', NULL, 'Headache', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, NULL, '2023-02-10 02:05:53', NULL, NULL, NULL, '82', '101', NULL),
(103, 'APT-20233', '2023-02-10 02:06:04', NULL, 'Headache', '', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, NULL, '2023-02-10 02:06:04', NULL, NULL, NULL, '82', '102', NULL),
(104, 'APT-20234', '2023-02-10 02:07:00', '', 'Headache', 'test di ', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-20234', 82, '2023-02-28 09:00:22', '2023-02-10 02:07:07', NULL, '45', '', '83', '103', '[\"Z99.9\"]'),
(105, 'APT-20235', '2023-03-03 09:04:00', '', 'COVID-19 Information', 'Toi kho qua ngu ngo qua, \nchi biet yeu thoi cho hieu gi', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, NULL, 45, '2023-05-10 02:09:38', '2023-03-03 09:04:30', NULL, '63', '', '45', '104', NULL),
(106, 'APT-20236', '2023-03-03 09:06:00', '', 'COVID-19 Information', '', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-20236', 82, '2023-03-03 09:08:04', '2023-03-03 09:06:39', NULL, '45', '', '82', '105', '[\"E67.0\"]'),
(107, 'APT-20237', '2023-03-06 08:45:09', NULL, 'Headache', 'tesxtsts', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, NULL, '2023-03-06 08:45:09', NULL, '45', NULL, '82', '106', NULL),
(108, 'APT-20238', '2023-03-27 06:49:27', NULL, 'Headache', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 107, NULL, '2023-03-27 06:49:27', NULL, NULL, NULL, '107', '107', NULL),
(109, 'APT-20239', '2023-03-27 06:50:44', NULL, 'Headache', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 107, NULL, '2023-03-27 06:50:44', NULL, NULL, NULL, '107', '108', NULL),
(110, 'APT-202310', '2023-03-27 06:55:04', NULL, 'Headache', 'testtt', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 107, NULL, '2023-03-27 06:55:04', NULL, NULL, NULL, '107', '109', NULL),
(111, 'APT-202311', '2023-03-27 07:05:00', '', 'Headache', '', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-202311', 107, '2023-03-27 07:08:44', '2023-03-27 07:05:54', NULL, '45', '', '107', '110', '[\"Z99.9\"]'),
(112, 'APT-202312', '2023-03-29 01:25:00', '', 'Headache', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-202312', 107, '2023-03-29 01:25:49', '2023-03-29 01:25:05', NULL, '45', '', '107', '111', '[\"Z99.9\"]'),
(113, 'APT-202313', '2023-03-31 08:07:00', '', 'Headache', 'test', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-202313', 107, '2023-04-06 06:34:11', '2023-03-31 01:07:49', NULL, '45', '', '107', '112', '[\"Z98.8\"]'),
(114, 'APT-202314', '2023-04-06 02:47:00', '', 'Headache', 'test', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, '', 107, '2023-04-06 08:12:52', '2023-04-06 02:47:40', NULL, '45', '', '107', '113', NULL),
(115, 'APT-202315', '2023-04-06 06:37:00', '', 'Headache', '', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Follow-up - Video', NULL, '', 45, '2023-04-06 06:56:35', '2023-04-06 06:37:47', NULL, '45', '', '107', '114', NULL),
(116, 'APT-202316', '2023-04-06 06:40:15', NULL, 'Headache', '', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 107, NULL, '2023-04-06 06:40:15', NULL, NULL, NULL, '107', '115', NULL),
(117, 'APT-202317', '2023-04-06 06:40:00', '', 'Headache', '', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, '', 107, '2023-04-06 06:46:14', '2023-04-06 06:40:26', NULL, '45', '', '107', '116', NULL),
(118, 'APT-202318', '2023-04-06 06:40:00', '', 'Headache', '', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, '', 107, '2023-04-06 06:42:03', '2023-04-06 06:40:32', NULL, '45', '', '107', '117', NULL),
(119, 'APT-202319', '2023-04-06 08:07:00', '', 'Headache', 'testt', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, '', 107, '2023-04-06 08:10:21', '2023-04-06 08:07:05', NULL, '45', '', '107', '118', NULL),
(120, 'APT-202320', '2023-04-10 03:02:07', NULL, 'Headache', 'testtt', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 107, NULL, '2023-04-10 03:02:07', NULL, '45', NULL, '107', '119', NULL),
(121, 'APT-202321', '2023-04-17 04:18:43', NULL, 'Headache', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 110, NULL, '2023-04-17 04:18:43', NULL, NULL, NULL, '110', '120', NULL),
(122, 'APT-202322', '2023-04-17 04:19:00', '', 'Headache', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-202322', 110, '2023-04-17 04:32:58', '2023-04-17 04:19:05', NULL, '45', '', '110', '121', '[]'),
(123, 'APT-202323', '2023-04-24 02:35:00', '', 'Headache', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-202323', 113, '2023-04-24 03:27:54', '2023-04-24 02:35:40', NULL, '63', '', '113', '122', NULL),
(124, 'APT-202324', '2023-04-26 01:27:00', '', 'Headache', 'test', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-202324', 113, '2023-04-26 14:48:38', '2023-04-26 01:27:21', NULL, '63', '', '113', '123', NULL),
(125, 'APT-202325', '2023-04-26 01:31:07', NULL, 'Headache', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 113, NULL, '2023-04-26 01:31:07', NULL, NULL, NULL, '114', '124', NULL),
(126, 'APT-202326', '2023-04-26 01:47:54', NULL, 'Headache', 'test', 'Waiting - Physician', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 113, NULL, '2023-04-26 01:47:54', NULL, '63', NULL, '113', '125', '[\"Z99.9\"]'),
(127, 'APT-202327', '2023-04-26 13:44:00', '', 'Headache', 'testttt', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, 'https://xinchaobacsi.vn/agora_connector?rm=APT-202327', 82, '2023-04-26 14:25:34', '2023-04-26 13:44:54', NULL, '45', '', '82', '126', '[\"Z99.9\"]'),
(128, 'APT-202328', '2023-05-08 16:48:48', NULL, 'Sore throat', 'This is a test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 45, NULL, '2023-05-08 16:48:48', NULL, NULL, NULL, '74', '127', '[\"E64.1\"]'),
(129, 'APT-202329', '2023-05-10 02:06:40', NULL, 'Headache', '', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 45, NULL, '2023-05-10 02:06:40', NULL, NULL, NULL, '45', '128', NULL),
(130, 'APT-202330', '2023-05-10 02:11:00', '', 'Headache', 'mot nam ve truoc moi hoang hon\nngam cach hoa tuoi voi nang tan', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, NULL, 45, '2023-05-10 02:15:58', '2023-05-10 02:11:59', NULL, '45', '', '45', '129', NULL),
(131, 'APT-202331', '2023-05-12 02:01:43', NULL, 'Headache', '', 'Waiting - Physician', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, NULL, '2023-05-12 02:01:43', NULL, NULL, NULL, '82', '130', NULL),
(132, 'APT-202332', '2023-05-12 05:55:00', 'logo.png', 'Headache', '', 'Waiting - Physician', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, '2023-05-12 05:59:28', '2023-05-12 05:55:11', NULL, '', '', '82', '131', '[]'),
(133, 'APT-202333', '2023-05-12 05:57:00', 'logo.png', 'Headache', '', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 45, '2023-05-12 05:58:25', '2023-05-12 05:57:58', NULL, '', '', '45', '132', '[]'),
(134, 'APT-202334', '2023-05-16 02:59:00', 'detail appointment for patient .png,profile user.png', 'Headache', 'testtttsdddfsdsdf', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, NULL, 82, '2023-07-11 10:32:55', '2023-05-16 02:59:09', NULL, '45', '', '82', '133', '[]'),
(135, 'APT-202335', '2023-05-17 05:15:00', '', 'Headache', '', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, NULL, 45, '2023-05-17 05:15:30', '2023-05-17 05:15:17', NULL, '45', '', '45', '134', '[\"Z99.9\"]'),
(136, 'APT-202336', '2023-05-31 04:20:39', NULL, 'Headache', '', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 45, NULL, '2023-05-31 04:20:39', NULL, NULL, NULL, '45', '135', NULL),
(137, 'APT-202337', '2023-05-31 04:30:19', NULL, 'Headache', '', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 45, NULL, '2023-05-31 04:30:19', NULL, NULL, NULL, '45', '136', NULL),
(138, 'APT-202338', '2023-06-24 07:30:00', NULL, 'Hand Pain', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, NULL, '2023-06-24 07:30:00', NULL, NULL, NULL, '82', '137', NULL),
(139, 'APT-202339', '2023-07-03 01:17:26', NULL, 'Leg Pain', 'yaa', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, NULL, '2023-07-03 01:17:26', NULL, NULL, NULL, '82', '138', NULL),
(140, 'APT-202340', '2023-07-03 01:20:32', NULL, 'Hand Pain', 'tsatyty', 'Waiting - Physician', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, NULL, '2023-07-03 01:20:32', NULL, NULL, NULL, '82', '139', '[]'),
(141, 'APT-202341', '2023-07-04 02:59:00', 'detail appointment for patient .png', 'Stomach Pain', 'test', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, NULL, 82, '2023-07-11 10:26:48', '2023-07-04 02:59:55', NULL, '45', '', '82', '140', '[\"Z99.9\"]'),
(142, 'APT-202342', '2023-08-13 01:03:00', '', 'Headache', 'test', 'Consultation', NULL, NULL, NULL, NULL, 'In Process', NULL, 'Telemedicine', NULL, NULL, 82, '2023-08-13 01:04:55', '2023-08-13 01:03:44', NULL, '45', '', '82', '141', '[\"E67.0\"]'),
(143, 'APT-202343', '2023-09-01 04:02:57', NULL, 'Headache', 'test', 'Waiting - Triage', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, NULL, '2023-09-01 04:02:57', NULL, NULL, NULL, '116', '142', NULL),
(144, 'APT-202344', '2023-09-01 04:03:00', '', 'Headache', 'test', 'Waiting - Physician', NULL, NULL, NULL, NULL, 'New', NULL, 'Telemedicine', NULL, NULL, 82, '2024-03-25 09:59:03', '2023-09-01 04:03:26', NULL, '', '', '82', '143', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int NOT NULL,
  `en_us` varchar(250) NOT NULL,
  `vi_vn` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Appointment for you', 'Đặt lịch hẹn cho bạn'),
(2, 'Appointment for dependent', 'Đặt lịch hẹn cho Người thân');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttypes`
--

CREATE TABLE `appointmenttypes` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `appointmenttypes`
--

INSERT INTO `appointmenttypes` (`en_us`, `vi_vn`) VALUES
('Telemedicine', 'Điều trị từ xa'),
('Follow-up - Video', 'Tái khám bằng Video'),
('Follow-up - Office', 'Tái khám tại văn phòng'),
('Office Visit', 'Khám và tư vấn tại văn phòng'),
('Specialist Referral', 'Giới thiệu chuyên gia'),
('Lab Test', 'Làm xét nghiệm'),
('Other', 'Khác');

-- --------------------------------------------------------

--
-- Stand-in structure for view `appointment_short`
-- (See below for the actual view)
--
CREATE TABLE `appointment_short` (
);

-- --------------------------------------------------------

--
-- Table structure for table `aptdisposition`
--

CREATE TABLE `aptdisposition` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `aptdisposition`
--

INSERT INTO `aptdisposition` (`en_us`, `vi_vn`) VALUES
('Waiting - Triage', 'Chờ xử lý'),
('Triage', 'Đang xử lý'),
('Waiting - Physician', 'Chờ bác sĩ'),
('Consultation', 'Đang tư vấn'),
('Waiting on Testing', 'Chờ kết quả XN'),
('Complete', 'Hoàn thành'),
('No Show', 'Không hiển thị'),
('No Disposition', 'Chưa xác định');

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `id` int NOT NULL,
  `Association` varchar(255) DEFAULT NULL,
  `Time_In` date DEFAULT NULL,
  `Time_Out` date DEFAULT NULL,
  `User` int DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Slug` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `available`
--

CREATE TABLE `available` (
  `id` int NOT NULL,
  `Association` varchar(255) DEFAULT NULL,
  `Audit_ID` int DEFAULT NULL,
  `User` int DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Slug` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `Author` int DEFAULT NULL,
  `Categories` varchar(255) DEFAULT NULL,
  `FeaturedImage` varchar(255) DEFAULT NULL,
  `MainBody` text,
  `Publish` tinyint DEFAULT NULL,
  `ShortDescription` text,
  `SourceName` text,
  `SourceURL` text,
  `Tags` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `VideoURL` varchar(1000) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Slug` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Heart', 'Tim'),
(2, 'Cancer', 'Ung thư'),
(3, 'Nerve', 'Thần kinh'),
(4, 'Digestive', 'Tiêu hóa'),
(5, 'Blood', 'Máu'),
(6, 'Bacterial', 'Vi khuẩn');

-- --------------------------------------------------------

--
-- Table structure for table `chiefcomplaint`
--

CREATE TABLE `chiefcomplaint` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `chiefcomplaint`
--

INSERT INTO `chiefcomplaint` (`en_us`, `vi_vn`) VALUES
('Headache', 'Đau đầu'),
('Stomach Pain', 'Đau bụng'),
('Upset Stomach', 'Đau dạ dày'),
('Leg Pain', 'Đau chân'),
('Hand Pain', 'Đau tay'),
('Sore throat', 'Đau họng'),
('Pregnancy', 'Khám thai'),
('Other', 'Khác'),
('COVID-19 Information', 'Tư vấn về COVID-19');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int NOT NULL,
  `active_boolean` tinyint DEFAULT NULL,
  `cid_text` text,
  `contract_dates_date_range` date DEFAULT NULL,
  `DoctorContract` int DEFAULT NULL,
  `documents_list_file` json DEFAULT NULL,
  `location_contract_custom_locations` varchar(255) DEFAULT NULL,
  `notes_text` text,
  `pay_amount_number` double DEFAULT NULL,
  `pay_terms_option_pay_terms` varchar(255) DEFAULT NULL,
  `per_patient_boolean` varchar(255) DEFAULT NULL,
  `signed_by_user` int DEFAULT NULL,
  `status_option_status` varchar(255) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Slug` text,
  `doctor_contract_user` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `creditcardtype`
--

CREATE TABLE `creditcardtype` (
  `nameCard` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `creditcardtype`
--

INSERT INTO `creditcardtype` (`nameCard`) VALUES
('Visa'),
('Mastercard'),
('American Express'),
('JCB'),
('ATM Card');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `dependent_id` int NOT NULL,
  `did_text` varchar(300) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `guardian_user` text,
  `uid_user` text,
  `Slug` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`dependent_id`, `did_text`, `Creator`, `ModifiedDate`, `CreatedDate`, `guardian_user`, `uid_user`, `Slug`) VALUES
(18, 'DEP-20231@nothing.com', NULL, NULL, '2023-01-10 06:24:50', '45', '46', NULL),
(19, 'DEP-202319@nothing.com', NULL, NULL, '2023-01-12 02:11:29', '63', '64', NULL),
(20, 'DEP-202319@nothing.com', NULL, NULL, '2023-01-30 02:33:55', '45', '73', NULL),
(21, 'DEP-202319@nothing.com', NULL, NULL, '2023-01-30 04:09:53', '45', '74', NULL),
(22, 'DEP-202319@nothing.com', NULL, NULL, '2023-02-10 02:06:17', '82', '83', NULL),
(23, 'DEP-202319@nothing.com', NULL, NULL, '2023-02-20 08:35:57', '92', '93', NULL),
(24, 'DEP-202319@nothing.com', NULL, NULL, '2023-02-20 08:45:52', '92', '94', NULL),
(25, 'DEP-202319@nothing.com', NULL, NULL, '2023-03-15 13:06:36', '92', '96', NULL),
(26, 'DEP-202319@nothing.com', NULL, NULL, '2023-03-15 13:54:30', '92', '97', NULL),
(27, 'DEP-202319@nothing.com', NULL, NULL, '2023-03-15 13:56:25', '92', '98', NULL),
(28, 'DEP-202319@nothing.com', NULL, NULL, '2023-03-15 13:57:40', '92', '99', NULL),
(29, 'DEP-202319@nothing.com', NULL, NULL, '2023-03-15 14:00:38', '', '100', NULL),
(30, 'DEP-202319@nothing.com', NULL, NULL, '2023-03-15 14:06:33', '', '101', NULL),
(31, 'DEP-202319@nothing.com', NULL, NULL, '2023-03-15 14:07:02', '', '102', NULL),
(32, 'DEP-202319@nothing.com', NULL, NULL, '2023-03-15 14:42:53', '92', '103', NULL),
(33, 'DEP-202319@nothing.com', NULL, NULL, '2023-04-18 14:51:56', '108', '112', NULL),
(34, 'DEP-202319@nothing.com', NULL, NULL, '2023-04-26 01:29:00', '113', '114', NULL),
(35, 'DEP-202319@nothing.com', NULL, NULL, '2023-04-26 13:54:34', '82', '116', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic`
--

CREATE TABLE `diagnostic` (
  `code_text` text,
  `name_text` varchar(255) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Slug` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `diagnostic`
--

INSERT INTO `diagnostic` (`code_text`, `name_text`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`) VALUES
('Z99.9', 'Phụ thuộc vào thiết bị và dụng cụ không xác định', NULL, NULL, NULL, NULL),
('Z99.8', 'Phụ thuộc vào các thiết bị và dụng cụ khác', NULL, NULL, NULL, NULL),
('Z98.8', 'Các tình trạng hậu phẫu xác định khác', NULL, NULL, NULL, NULL),
('E67.0', 'Thừa vitamin A', NULL, NULL, NULL, NULL),
('E64.1', 'Di chứng của thiếu vitamin A', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `DocumentID` int NOT NULL,
  `active_boolean` tinyint(1) DEFAULT NULL,
  `renew_date_date` date DEFAULT NULL,
  `doctor_only_boolean` tinyint(1) DEFAULT NULL,
  `file_list_file` text,
  `lab_doc_file` varchar(500) DEFAULT NULL,
  `name_text` varchar(500) DEFAULT NULL,
  `note_text` text,
  `OfficeOnly` varchar(255) DEFAULT NULL,
  `type_option_document_type` varchar(255) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Slug` text,
  `profile_user` text,
  `apt_id` int DEFAULT NULL,
  `lab_id` text,
  `user_meta_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`DocumentID`, `active_boolean`, `renew_date_date`, `doctor_only_boolean`, `file_list_file`, `lab_doc_file`, `name_text`, `note_text`, `OfficeOnly`, `type_option_document_type`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `profile_user`, `apt_id`, `lab_id`, `user_meta_id`) VALUES
(2, NULL, '2023-05-12', NULL, 'bitbucket-logo.png', NULL, NULL, NULL, NULL, 'License', NULL, NULL, NULL, NULL, '45', NULL, NULL, 11),
(3, NULL, '2023-05-12', NULL, 'logo.png', NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, '45', 133, NULL, NULL),
(4, NULL, '2023-05-16', NULL, 'logo-big.png', NULL, NULL, NULL, NULL, 'Lab', NULL, NULL, NULL, NULL, '45', 133, '122', NULL),
(5, NULL, '2023-05-12', NULL, 'logo.png', NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, '82', 132, NULL, NULL),
(6, NULL, '2023-05-12', NULL, 'bitbucket-logo.png', NULL, NULL, NULL, NULL, 'Lab', NULL, NULL, NULL, NULL, '82', 132, '123', NULL),
(7, NULL, '2023-07-11', NULL, 'detail appointment for patient .png', NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, '82', 141, NULL, NULL),
(8, NULL, '2023-07-11', NULL, 'detail appointment for patient .png,profile user.png', NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, '82', 134, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `documents_short`
-- (See below for the actual view)
--
CREATE TABLE `documents_short` (
);

-- --------------------------------------------------------

--
-- Table structure for table `documenttype`
--

CREATE TABLE `documenttype` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `documenttype`
--

INSERT INTO `documenttype` (`en_us`, `vi_vn`) VALUES
('Care Plan', 'Kế hoạch chăm sóc'),
('Prescription', 'Toa thuốc'),
('Lab', 'Xét nghiệm'),
('License', 'Giấy phép'),
('School', 'Trường học'),
('Insurance', 'Bảo hiểm'),
('Work Papers', 'Giấy tờ công tác'),
('Other', 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `dosageunits`
--

CREATE TABLE `dosageunits` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dosageunits`
--

INSERT INTO `dosageunits` (`en_us`, `vi_vn`) VALUES
('cap - capsule', 'Viên nén'),
('tab - tablet', 'Viên tròn'),
('mg - milligrams', 'mg - milligrams'),
('gm - grams', 'gm - grams'),
('kg - kilograms', 'kg - kilograms'),
('packet(s)', 'packet(s)'),
('package(s)', 'package(s)'),
('box(es)', 'Hộp'),
('ml - milliliters', 'ml - milliliters'),
('mcg - micrograms', 'mcg - micrograms'),
('gtt - drops', 'Giọt'),
('ss - one-half', 'ss - one-half');

-- --------------------------------------------------------

--
-- Table structure for table `generalstatus`
--

CREATE TABLE `generalstatus` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `generalstatus`
--

INSERT INTO `generalstatus` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'New', 'Mới tạo'),
(2, 'In Review', 'Đang xem xét'),
(3, 'In Process', 'Đang xử lý'),
(4, 'Complete', 'Hoàn thành'),
(5, 'Cancelled', 'Đã hủy'),
(6, 'Ordered', 'Đã đặt hàng'),
(7, 'Waiting on Approval', 'Chờ phê duyệt'),
(8, 'Waiting on Delivery', 'Chờ giao hàng'),
(9, 'Delivered', 'Đã giao hàng');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int NOT NULL,
  `alcohol_consumption_notes_text` text,
  `condition_birth_defects_text` text,
  `condition_length_text` text,
  `condition_normal_birth_boolean` tinyint DEFAULT NULL,
  `condition_others_text` text,
  `condition_premature_birth_boolean` tinyint DEFAULT NULL,
  `condition_suffocation_at_birth_boolean` tinyint DEFAULT NULL,
  `condition_surgery_boolean` tinyint DEFAULT NULL,
  `condition_weight_text` text,
  `consume_alcohol_boolean` tinyint DEFAULT NULL,
  `defects_eye_sight_text` text,
  `defects_foot_text` text,
  `defects_hand_text` text,
  `defects_hearing_text` text,
  `defects_lip_cleft_palate_text` text,
  `defects_others_text` text,
  `defects_scoliosis_curvature_text` text,
  `diabetes_boolean` tinyint DEFAULT NULL,
  `diabetes_notes_text` text,
  `Documents` int DEFAULT NULL,
  `eye_problem_notes_text` text,
  `eye_problems_boolean` tinyint DEFAULT NULL,
  `family_allergies_chemicals_patient_text` text,
  `family_allergies_chemicals_text` text,
  `family_allergies_food_text` text,
  `family_allergies_food_patient_text` text,
  `family_allergies_medicine_text` text,
  `FamilyAllergiesMedicinePatient` text,
  `family_allergies_others_text` text,
  `family_allergies_others_patient_text` text,
  `family_diseases_asthma_boolean` tinyint DEFAULT NULL,
  `family_diseases_asthma_notes_text` text,
  `family_diseases_cancer_text` text,
  `family_diseases_diabetes_boolean` tinyint DEFAULT NULL,
  `family_diseases_diabetes_notes_text` text,
  `family_diseases_epileptic_boolean` tinyint DEFAULT NULL,
  `family_diseases_epileptic_notes_text` text,
  `family_diseases_heart_boolean` tinyint DEFAULT NULL,
  `family_diseases_heart_notes_text` text,
  `family_diseases_hypertension_boolean` tinyint DEFAULT NULL,
  `family_diseases_hypertension_notes_text` text,
  `family_diseases_mental_boolean` tinyint DEFAULT NULL,
  `family_diseases_mental_notes_text` text,
  `family_diseases_others_text` text,
  `family_diseases_tuberculosis_text` text,
  `heart_disease_boolean` tinyint DEFAULT NULL,
  `heart_disease_notes_text` text,
  `history_allergies_chemicals_text` text,
  `history_allergies_food_text` text,
  `history_allergies_medicine_text` text,
  `history_allergies_medicine_patient_text` text,
  `history_allergies_others_text` text,
  `history_diseases_asthma_boolean` tinyint DEFAULT NULL,
  `history_diseases_autism_boolean` tinyint DEFAULT NULL,
  `history_diseases_cancer_text` text,
  `history_diseases_chronic_lung_boolean` tinyint DEFAULT NULL,
  `history_diseases_congenital_heart_boolean` tinyint DEFAULT NULL,
  `history_diseases_diabetes_boolean` tinyint DEFAULT NULL,
  `history_diseases_epileptic_boolean` tinyint DEFAULT NULL,
  `history_diseases_goitre_boolean` tinyint DEFAULT NULL,
  `history_diseases_heart_boolean` tinyint DEFAULT NULL,
  `history_diseases_hepatitis_boolean` tinyint DEFAULT NULL,
  `history_diseases_hypertension__boolean` tinyint DEFAULT NULL,
  `history_diseases_mental_boolean` tinyint DEFAULT NULL,
  `history_diseases_others_text` text,
  `history_diseases_stomach_ache_boolean` tinyint DEFAULT NULL,
  `history_diseases_tuberculosis_text` text,
  `liver_or_kidney_problem_notes_text` text,
  `liver_or_kidney_problems_boolean` tinyint DEFAULT NULL,
  `lung_disease_boolean` tinyint DEFAULT NULL,
  `lung_disease_notes_text` text,
  `number_of_cups_per_day_text` text,
  `other_notes_text` text,
  `reproductive_breech_birth_number` int DEFAULT NULL,
  `reproductive_contraceptive_methods_text` text,
  `reproductive_gynaecological_disease_text` text,
  `reproductive_last_pregnancy_text` text,
  `reproductive_living_children_number` int DEFAULT NULL,
  `reproductive_normal_birth_number` int DEFAULT NULL,
  `reproductive_number_of_abortions_number` int DEFAULT NULL,
  `reproductive_number_of_births_number` int DEFAULT NULL,
  `reproductive_number_of_miscarriages_number` int DEFAULT NULL,
  `reproductive_number_of_pregnancies_number` int DEFAULT NULL,
  `reproductive_preterm_births_number` int DEFAULT NULL,
  `reproductive_surgery_number` int DEFAULT NULL,
  `reproductive_term_births_number` int DEFAULT NULL,
  `risk_consume_alcohol_list_option_personal_habits` json DEFAULT NULL,
  `risk_occupational_exposure_text` text,
  `risk_others_text` text,
  `risk_physical_activity_list_option_personal_habits` json DEFAULT NULL,
  `risk_smoking_list_option_personal_habits` json DEFAULT NULL,
  `risk_toilet_type_text` text,
  `risk_use_narcotic_list_option_personal_habits` json DEFAULT NULL,
  `smoker_boolean` tinyint DEFAULT NULL,
  `smoker_notes_text` text,
  `stomach_problem_notes_text` text,
  `stomach_problems_boolean` tinyint DEFAULT NULL,
  `surgeries_boolean` tinyint DEFAULT NULL,
  `surgery_notes_text` text,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `patient_identification_user` varchar(300) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `documents_custom_documents` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `alcohol_consumption_notes_text`, `condition_birth_defects_text`, `condition_length_text`, `condition_normal_birth_boolean`, `condition_others_text`, `condition_premature_birth_boolean`, `condition_suffocation_at_birth_boolean`, `condition_surgery_boolean`, `condition_weight_text`, `consume_alcohol_boolean`, `defects_eye_sight_text`, `defects_foot_text`, `defects_hand_text`, `defects_hearing_text`, `defects_lip_cleft_palate_text`, `defects_others_text`, `defects_scoliosis_curvature_text`, `diabetes_boolean`, `diabetes_notes_text`, `Documents`, `eye_problem_notes_text`, `eye_problems_boolean`, `family_allergies_chemicals_patient_text`, `family_allergies_chemicals_text`, `family_allergies_food_text`, `family_allergies_food_patient_text`, `family_allergies_medicine_text`, `FamilyAllergiesMedicinePatient`, `family_allergies_others_text`, `family_allergies_others_patient_text`, `family_diseases_asthma_boolean`, `family_diseases_asthma_notes_text`, `family_diseases_cancer_text`, `family_diseases_diabetes_boolean`, `family_diseases_diabetes_notes_text`, `family_diseases_epileptic_boolean`, `family_diseases_epileptic_notes_text`, `family_diseases_heart_boolean`, `family_diseases_heart_notes_text`, `family_diseases_hypertension_boolean`, `family_diseases_hypertension_notes_text`, `family_diseases_mental_boolean`, `family_diseases_mental_notes_text`, `family_diseases_others_text`, `family_diseases_tuberculosis_text`, `heart_disease_boolean`, `heart_disease_notes_text`, `history_allergies_chemicals_text`, `history_allergies_food_text`, `history_allergies_medicine_text`, `history_allergies_medicine_patient_text`, `history_allergies_others_text`, `history_diseases_asthma_boolean`, `history_diseases_autism_boolean`, `history_diseases_cancer_text`, `history_diseases_chronic_lung_boolean`, `history_diseases_congenital_heart_boolean`, `history_diseases_diabetes_boolean`, `history_diseases_epileptic_boolean`, `history_diseases_goitre_boolean`, `history_diseases_heart_boolean`, `history_diseases_hepatitis_boolean`, `history_diseases_hypertension__boolean`, `history_diseases_mental_boolean`, `history_diseases_others_text`, `history_diseases_stomach_ache_boolean`, `history_diseases_tuberculosis_text`, `liver_or_kidney_problem_notes_text`, `liver_or_kidney_problems_boolean`, `lung_disease_boolean`, `lung_disease_notes_text`, `number_of_cups_per_day_text`, `other_notes_text`, `reproductive_breech_birth_number`, `reproductive_contraceptive_methods_text`, `reproductive_gynaecological_disease_text`, `reproductive_last_pregnancy_text`, `reproductive_living_children_number`, `reproductive_normal_birth_number`, `reproductive_number_of_abortions_number`, `reproductive_number_of_births_number`, `reproductive_number_of_miscarriages_number`, `reproductive_number_of_pregnancies_number`, `reproductive_preterm_births_number`, `reproductive_surgery_number`, `reproductive_term_births_number`, `risk_consume_alcohol_list_option_personal_habits`, `risk_occupational_exposure_text`, `risk_others_text`, `risk_physical_activity_list_option_personal_habits`, `risk_smoking_list_option_personal_habits`, `risk_toilet_type_text`, `risk_use_narcotic_list_option_personal_habits`, `smoker_boolean`, `smoker_notes_text`, `stomach_problem_notes_text`, `stomach_problems_boolean`, `surgeries_boolean`, `surgery_notes_text`, `ModifiedDate`, `CreatedDate`, `Slug`, `patient_identification_user`, `Creator`, `documents_custom_documents`) VALUES
(42, '', '', '', 1, '', 0, 0, 0, '3000', 0, '', '', '', '', '', '', '', 0, '', NULL, '', 0, '', '', '', '', '', NULL, '', '', 0, '', NULL, 0, '', 0, '', 0, '', 0, '', 0, '', NULL, NULL, 0, '', '', '', '', NULL, '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, '', NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', NULL, NULL, '', NULL, 1, 'tewat', '', 0, 1, 'atawfds', NULL, '2023-01-10 06:21:59', NULL, '45', 45, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-10 06:22:30', NULL, '45', 45, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-10 06:26:04', NULL, '46', 45, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 02:12:15', NULL, '64', 63, NULL),
(46, '', '', '', 1, '', 0, 0, 0, '3000', 0, '', '', '', '', '', '', '', 0, '', NULL, '', 0, '', '', '', '', '', NULL, '', '', 0, '', NULL, 0, '', 0, '', 0, '', 0, '', 0, '', NULL, NULL, 0, '', '', '', '', NULL, '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, '', NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', NULL, NULL, '', NULL, 1, 'test', '', 0, 0, '', NULL, '2023-01-12 02:21:29', NULL, '63', NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 02:22:21', NULL, '63', 63, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 02:22:57', NULL, '63', 63, NULL),
(49, '', '', '', 1, '', 0, 0, 0, '', 0, '', '', '', '', '', '', '', 0, '', NULL, '', 0, '', '', '', '', '', NULL, '', '', 0, '', NULL, 0, '', 0, '', 0, '', 0, '', 0, '', NULL, NULL, 0, '', '', '', '', NULL, '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, '', NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '', '', NULL, NULL, '', NULL, 1, '', '', 0, 1, '', NULL, '2023-01-30 02:35:13', NULL, '73', NULL, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30 02:52:43', NULL, '45', 45, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-06 00:58:26', NULL, '45', 45, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-10 02:05:53', NULL, '82', 82, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-10 02:06:04', NULL, '82', 82, NULL),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-10 02:07:07', NULL, '83', 82, NULL),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 09:04:30', NULL, '45', 45, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 09:06:39', NULL, '82', 82, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-06 08:45:09', NULL, '82', 82, NULL),
(58, NULL, '', '', 0, '', 0, 0, 0, '', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '', '', 0, '', NULL, 1, '', 1, '', 0, '', 0, '', 1, '', NULL, NULL, NULL, NULL, '', '', '', NULL, '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '{\"no\": \"1\", \"yes\": \"1\", \"gaveup\": \"1\", \"numberofcupperday\": \"10\"}', '', '', '{\"no\": \"1\", \"yes\": \"1\", \"regular\": \"1\"}', '{\"no\": \"1\", \"yes\": \"1\", \"gaveup\": \"1\", \"regular\": \"1\"}', '', '{\"no\": \"1\", \"yes\": \"1\", \"gaveup\": \"1\", \"regular\": \"1\"}', NULL, NULL, NULL, NULL, NULL, '', NULL, '2023-03-27 06:49:27', NULL, '107', 107, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 06:50:44', NULL, '107', 107, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 06:55:04', NULL, '107', 107, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 07:05:54', NULL, '107', 107, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-29 01:25:05', NULL, '107', 107, NULL),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31 01:07:49', NULL, '107', 107, NULL),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 02:47:40', NULL, '107', 107, NULL),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 06:37:47', NULL, '107', 45, NULL),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 06:40:15', NULL, '107', 107, NULL),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 06:40:26', NULL, '107', 107, NULL),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 06:40:32', NULL, '107', 107, NULL),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 08:07:05', NULL, '107', 107, NULL),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 03:02:07', NULL, '107', 107, NULL),
(71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-17 04:18:43', NULL, '110', 110, NULL),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-17 04:19:06', NULL, '110', 110, NULL),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-24 02:35:41', NULL, '113', 113, NULL),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-26 01:27:21', NULL, '113', 113, NULL),
(75, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, 0, '', NULL, '2023-04-26 01:31:07', NULL, '114', 113, NULL),
(76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-26 01:47:54', NULL, '113', 113, NULL),
(77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-26 13:44:54', NULL, '82', 82, NULL),
(78, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, 0, '', NULL, '2023-05-08 16:48:48', NULL, '74', 45, NULL),
(79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-10 02:06:40', NULL, '45', 45, NULL),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-10 02:11:59', NULL, '45', 45, NULL),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 02:01:43', NULL, '82', 82, NULL),
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 05:55:11', NULL, '82', 82, NULL),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12 05:57:58', NULL, '45', 45, NULL),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-16 02:59:09', NULL, '82', 82, NULL),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-17 05:15:17', NULL, '45', 45, NULL),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31 04:20:39', NULL, '45', 45, NULL),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31 04:30:20', NULL, '45', 45, NULL),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-24 07:30:00', NULL, '82', 82, NULL),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-03 01:17:26', NULL, '82', 82, NULL),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-03 01:20:32', NULL, '82', 82, NULL),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-04 02:59:55', NULL, '82', 82, NULL),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-13 01:03:44', NULL, '82', 82, NULL),
(93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 04:02:57', NULL, '116', 82, NULL),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 04:03:26', NULL, '82', 82, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `identificationtype`
--

CREATE TABLE `identificationtype` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `identificationtype`
--

INSERT INTO `identificationtype` (`en_us`, `vi_vn`) VALUES
('Government ID', 'Số CMND'),
('Driver License', 'Bằng lái xe'),
('Passport', 'Hộ chiếu'),
('Resident Card', 'Thẻ căn cước');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `Approved` tinyint(1) DEFAULT NULL,
  `Description` text,
  `Image` varchar(1000) DEFAULT NULL,
  `ImagePath` varchar(1000) NOT NULL,
  `Rating` double NOT NULL,
  `Title` varchar(1000) NOT NULL,
  `User` int NOT NULL,
  `WinDate` date NOT NULL,
  `Winner` tinyint(1) NOT NULL,
  `Creator` int NOT NULL,
  `ModifiedDate` date NOT NULL,
  `CreatedDate` date NOT NULL,
  `Slug` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `id` int NOT NULL,
  `account_number_text` text,
  `active_boolean` tinyint DEFAULT NULL,
  `address_geographic_address` varchar(255) DEFAULT NULL,
  `assigned_doctor_text` int DEFAULT NULL,
  `assigned_hospital_text` varchar(255) DEFAULT NULL,
  `company_text` int DEFAULT NULL,
  `date_valid_date_range` date DEFAULT NULL,
  `email_text` varchar(255) DEFAULT NULL,
  `insurance_card_image` varchar(255) DEFAULT NULL,
  `phone_text` varchar(20) DEFAULT NULL,
  `type_option_insurance_type` varchar(255) DEFAULT NULL,
  `website_text` text,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Slug` text,
  `profile_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `insurancetype`
--

CREATE TABLE `insurancetype` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `insurancetype`
--

INSERT INTO `insurancetype` (`en_us`, `vi_vn`) VALUES
('Health', 'Sức khỏe'),
('Life', 'Nhân thọ'),
('Liability', 'Trách nhiệm'),
('Other', 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Inv_id` int NOT NULL,
  `inv_text` varchar(250) DEFAULT NULL,
  `accept_payment_later_boolean` tinyint DEFAULT NULL,
  `balance_number` double DEFAULT NULL,
  `expected_payment_date_date` date DEFAULT NULL,
  `invoice_total_number` double DEFAULT NULL,
  `notes_text` text,
  `paid_boolean` tinyint(1) DEFAULT NULL,
  `paid_date_date` datetime DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `appointment_custom_appointment` varchar(300) DEFAULT NULL,
  `patient_user` varchar(300) DEFAULT NULL,
  `lab_custom_lab` varchar(300) DEFAULT NULL,
  `package_custom_package` varchar(300) DEFAULT NULL,
  `prescription_custom_prescription1` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Inv_id`, `inv_text`, `accept_payment_later_boolean`, `balance_number`, `expected_payment_date_date`, `invoice_total_number`, `notes_text`, `paid_boolean`, `paid_date_date`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `appointment_custom_appointment`, `patient_user`, `lab_custom_lab`, `package_custom_package`, `prescription_custom_prescription1`) VALUES
(100, 'INV-20231', NULL, 1000000, NULL, 2345000, 'Hóa đơn cho cuộc hẹn:APT-20231', 0, '2023-02-06 01:53:54', 45, '2023-02-06 02:05:45', '2023-02-06 00:58:26', NULL, '101', '45', NULL, NULL, NULL),
(101, 'INV-20232', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-20232', NULL, NULL, 82, NULL, '2023-02-10 02:05:53', NULL, '102', '82', NULL, NULL, NULL),
(102, 'INV-20233', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-20233', NULL, NULL, 82, NULL, '2023-02-10 02:06:04', NULL, '103', '82', NULL, NULL, NULL),
(103, 'INV-20234', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-20234', 1, '2023-02-10 02:13:45', 82, '2023-02-10 02:13:45', '2023-02-10 02:07:07', NULL, '104', '83', NULL, NULL, NULL),
(104, 'INV-20235', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-20235', NULL, NULL, 45, NULL, '2023-03-03 09:04:30', NULL, '105', '45', NULL, NULL, NULL),
(105, 'INV-20236', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-20236', NULL, NULL, 82, NULL, '2023-03-03 09:06:39', NULL, '106', '82', NULL, NULL, NULL),
(106, 'INV-20237', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-20237', NULL, NULL, 82, NULL, '2023-03-06 08:45:09', NULL, '107', '82', NULL, NULL, NULL),
(107, 'INV-20238', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-20238', NULL, NULL, 107, NULL, '2023-03-27 06:49:27', NULL, '108', '107', NULL, NULL, NULL),
(108, 'INV-20239', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-20239', NULL, NULL, 107, NULL, '2023-03-27 06:50:44', NULL, '109', '107', NULL, NULL, NULL),
(109, 'INV-202310', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202310', NULL, NULL, 107, NULL, '2023-03-27 06:55:04', NULL, '110', '107', NULL, NULL, NULL),
(110, 'INV-202311', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202311', NULL, NULL, 107, NULL, '2023-03-27 07:05:54', NULL, '111', '107', NULL, NULL, NULL),
(111, 'INV-202312', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202312', NULL, NULL, 107, NULL, '2023-03-29 01:25:05', NULL, '112', '107', NULL, NULL, NULL),
(112, 'INV-202313', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202313', 1, '2023-04-06 02:46:08', 107, '2023-04-06 02:46:08', '2023-03-31 01:07:49', NULL, '113', '107', NULL, NULL, NULL),
(113, 'INV-202314', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202314', NULL, NULL, 107, NULL, '2023-04-06 02:47:40', NULL, '114', '107', NULL, NULL, NULL),
(114, 'INV-202315', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202315', 1, '2023-04-06 06:37:47', 45, NULL, '2023-04-06 06:37:47', NULL, '115', '107', NULL, NULL, NULL),
(115, 'INV-202316', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202316', NULL, NULL, 107, NULL, '2023-04-06 06:40:15', NULL, '116', '107', NULL, NULL, NULL),
(116, 'INV-202317', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202317', NULL, NULL, 107, NULL, '2023-04-06 06:40:26', NULL, '117', '107', NULL, NULL, NULL),
(117, 'INV-202318', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202318', NULL, NULL, 107, NULL, '2023-04-06 06:40:32', NULL, '118', '107', NULL, NULL, NULL),
(118, 'INV-202319', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202319', NULL, NULL, 107, NULL, '2023-04-06 08:07:05', NULL, '119', '107', NULL, NULL, NULL),
(119, 'INV-202320', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202320', NULL, NULL, 107, NULL, '2023-04-10 03:02:07', NULL, '120', '107', NULL, NULL, NULL),
(120, 'INV-202321', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202321', NULL, NULL, 110, NULL, '2023-04-17 04:18:43', NULL, '121', '110', NULL, NULL, NULL),
(121, 'INV-202322', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202322', NULL, NULL, 110, NULL, '2023-04-17 04:19:05', NULL, '122', '110', NULL, NULL, NULL),
(122, 'INV-202323', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202323', NULL, NULL, 113, NULL, '2023-04-24 02:35:41', NULL, '123', '113', NULL, NULL, NULL),
(123, 'INV-202324', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202324', 1, '2023-04-26 01:44:35', 113, '2023-04-26 01:44:35', '2023-04-26 01:27:21', NULL, '124', '113', NULL, NULL, NULL),
(124, 'INV-202325', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202325', NULL, NULL, 113, NULL, '2023-04-26 01:31:07', NULL, '125', '114', NULL, NULL, NULL),
(125, 'INV-202326', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202326', 1, '2023-05-08 16:58:44', 113, '2023-05-08 16:58:44', '2023-04-26 01:47:54', NULL, '126', '113', NULL, NULL, NULL),
(126, 'INV-202327', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202327', 1, '2023-04-26 14:07:52', 82, '2023-04-26 14:07:52', '2023-04-26 13:44:54', NULL, '127', '82', NULL, NULL, NULL),
(127, 'INV-202328', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202328', NULL, NULL, 45, NULL, '2023-05-08 16:48:48', NULL, '128', '74', NULL, NULL, NULL),
(128, 'INV-202329', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202329', NULL, NULL, 45, NULL, '2023-05-10 02:06:40', NULL, '129', '45', NULL, NULL, NULL),
(129, 'INV-202330', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202330', NULL, NULL, 45, NULL, '2023-05-10 02:11:59', NULL, '130', '45', NULL, NULL, NULL),
(130, 'INV-202331', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202331', 1, '2023-06-22 10:09:21', 82, '2023-06-22 10:09:21', '2023-05-12 02:01:43', NULL, '131', '82', NULL, NULL, NULL),
(131, 'INV-202332', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202332', 1, '2023-06-22 10:08:42', 82, '2023-06-22 10:08:42', '2023-05-12 05:55:11', NULL, '132', '82', NULL, NULL, NULL),
(132, 'INV-202333', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202333', NULL, NULL, 45, NULL, '2023-05-12 05:57:58', NULL, '133', '45', NULL, NULL, NULL),
(133, 'INV-202334', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202334', 1, '2023-05-16 02:59:19', 82, '2023-05-16 02:59:19', '2023-05-16 02:59:09', NULL, '134', '82', NULL, NULL, NULL),
(134, 'INV-202335', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202335', NULL, NULL, 45, NULL, '2023-05-17 05:15:17', NULL, '135', '45', NULL, NULL, NULL),
(135, 'INV-202336', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202336', NULL, NULL, 45, NULL, '2023-05-31 04:20:39', NULL, '136', '45', NULL, NULL, NULL),
(136, 'INV-202337', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202337', NULL, NULL, 45, NULL, '2023-05-31 04:30:19', NULL, '137', '45', NULL, NULL, NULL),
(137, 'INV-202338', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202338', NULL, NULL, 82, NULL, '2023-06-24 07:30:00', NULL, '138', '82', NULL, NULL, NULL),
(138, 'INV-202339', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202339', NULL, NULL, 82, NULL, '2023-07-03 01:17:26', NULL, '139', '82', NULL, NULL, NULL),
(139, 'INV-202340', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202340', 1, '2023-07-24 11:03:05', 82, '2023-07-24 11:03:05', '2023-07-03 01:20:32', NULL, '140', '82', NULL, NULL, NULL),
(140, 'INV-202341', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202341', 1, '2023-07-04 03:00:13', 82, '2023-07-04 03:00:13', '2023-07-04 02:59:55', NULL, '141', '82', NULL, NULL, NULL),
(141, 'INV-202342', NULL, 0, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202342', 1, '2023-08-13 01:04:36', 82, '2023-08-13 01:04:36', '2023-08-13 01:03:44', NULL, '142', '82', NULL, NULL, NULL),
(142, 'INV-202343', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202343', NULL, NULL, 82, NULL, '2023-09-01 04:02:57', NULL, '143', '116', NULL, NULL, NULL),
(143, 'INV-202344', NULL, 250000, NULL, 250000, 'Hóa đơn cho cuộc hẹn:APT-202344', NULL, NULL, 82, NULL, '2023-09-01 04:03:26', NULL, '144', '82', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoiceline`
--

CREATE TABLE `invoiceline` (
  `invline_id` int NOT NULL,
  `line_total_number` double DEFAULT NULL,
  `price_number` double DEFAULT NULL,
  `qty_number` double DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `invoice_custom_invoice` varchar(300) DEFAULT NULL,
  `product_custom_product` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `invoiceline`
--

INSERT INTO `invoiceline` (`invline_id`, `line_total_number`, `price_number`, `qty_number`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `invoice_custom_invoice`, `product_custom_product`) VALUES
(140, 250000, 250000, 1, 45, NULL, '2023-02-06 00:58:26', NULL, '100', 'TC0001'),
(141, 1000000, 1000000, 1, 45, '2023-02-06 01:30:14', '2023-02-06 01:29:56', NULL, '100', 'PKG0001'),
(142, 75000, 75000, 1, 45, NULL, '2023-02-06 01:30:18', NULL, '100', 'MEDZOL25mg'),
(143, 20000, 20000, 1, 45, NULL, '2023-02-06 01:32:38', NULL, '100', '50.I.166'),
(145, 1000000, 1000000, 1, 45, NULL, '2023-02-06 02:05:45', NULL, '100', 'PKG0002'),
(146, 250000, 250000, 1, 82, NULL, '2023-02-10 02:05:53', NULL, '101', 'TC0001'),
(147, 250000, 250000, 1, 82, NULL, '2023-02-10 02:06:04', NULL, '102', 'TC0001'),
(148, 250000, 250000, 1, 82, NULL, '2023-02-10 02:07:07', NULL, '103', 'TC0001'),
(149, 250000, 250000, 1, 45, NULL, '2023-03-03 09:04:30', NULL, '104', 'TC0001'),
(150, 250000, 250000, 1, 82, NULL, '2023-03-03 09:06:39', NULL, '105', 'TC0001'),
(151, 250000, 250000, 1, 82, NULL, '2023-03-06 08:45:09', NULL, '106', 'TC0001'),
(152, 250000, 250000, 1, 107, NULL, '2023-03-27 06:49:27', NULL, '107', 'TC0001'),
(153, 250000, 250000, 1, 107, NULL, '2023-03-27 06:50:44', NULL, '108', 'TC0001'),
(154, 250000, 250000, 1, 107, NULL, '2023-03-27 06:55:04', NULL, '109', 'TC0001'),
(155, 250000, 250000, 1, 107, NULL, '2023-03-27 07:05:54', NULL, '110', 'TC0001'),
(156, 250000, 250000, 1, 107, NULL, '2023-03-29 01:25:05', NULL, '111', 'TC0001'),
(157, 250000, 250000, 1, 107, NULL, '2023-03-31 01:07:49', NULL, '112', 'TC0001'),
(158, 250000, 250000, 1, 107, NULL, '2023-04-06 02:47:40', NULL, '113', 'TC0001'),
(159, 250000, 250000, 1, 45, NULL, '2023-04-06 06:37:47', NULL, '114', 'TC0001'),
(160, 250000, 250000, 1, 107, NULL, '2023-04-06 06:40:15', NULL, '115', 'TC0001'),
(161, 250000, 250000, 1, 107, NULL, '2023-04-06 06:40:26', NULL, '116', 'TC0001'),
(162, 250000, 250000, 1, 107, NULL, '2023-04-06 06:40:32', NULL, '117', 'TC0001'),
(163, 250000, 250000, 1, 107, NULL, '2023-04-06 08:07:05', NULL, '118', 'TC0001'),
(164, 250000, 250000, 1, 107, NULL, '2023-04-10 03:02:07', NULL, '119', 'TC0001'),
(165, 250000, 250000, 1, 110, NULL, '2023-04-17 04:18:43', NULL, '120', 'TC0001'),
(166, 250000, 250000, 1, 110, NULL, '2023-04-17 04:19:05', NULL, '121', 'TC0001'),
(167, 250000, 250000, 1, 113, NULL, '2023-04-24 02:35:41', NULL, '122', 'TC0001'),
(168, 250000, 250000, 1, 113, NULL, '2023-04-26 01:27:21', NULL, '123', 'TC0001'),
(169, 250000, 250000, 1, 113, NULL, '2023-04-26 01:31:07', NULL, '124', 'TC0001'),
(170, 250000, 250000, 1, 113, NULL, '2023-04-26 01:47:54', NULL, '125', 'TC0001'),
(171, 250000, 250000, 1, 82, NULL, '2023-04-26 13:44:54', NULL, '126', 'TC0001'),
(172, 250000, 250000, 1, 45, NULL, '2023-05-08 16:48:48', NULL, '127', 'TC0001'),
(173, 250000, 250000, 1, 45, NULL, '2023-05-10 02:06:40', NULL, '128', 'TC0001'),
(174, 250000, 250000, 1, 45, NULL, '2023-05-10 02:11:59', NULL, '129', 'TC0001'),
(175, 250000, 250000, 1, 82, NULL, '2023-05-12 02:01:43', NULL, '130', 'TC0001'),
(176, 250000, 250000, 1, 82, NULL, '2023-05-12 05:55:11', NULL, '131', 'TC0001'),
(177, 250000, 250000, 1, 45, NULL, '2023-05-12 05:57:58', NULL, '132', 'TC0001'),
(178, 250000, 250000, 1, 82, NULL, '2023-05-16 02:59:09', NULL, '133', 'TC0001'),
(179, 250000, 250000, 1, 45, NULL, '2023-05-17 05:15:17', NULL, '134', 'TC0001'),
(180, 250000, 250000, 1, 45, NULL, '2023-05-31 04:20:39', NULL, '135', 'TC0001'),
(181, 250000, 250000, 1, 45, NULL, '2023-05-31 04:30:20', NULL, '136', 'TC0001'),
(182, 250000, 250000, 1, 82, NULL, '2023-06-24 07:30:00', NULL, '137', 'TC0001'),
(183, 250000, 250000, 1, 82, NULL, '2023-07-03 01:17:26', NULL, '138', 'TC0001'),
(184, 250000, 250000, 1, 82, NULL, '2023-07-03 01:20:32', NULL, '139', 'TC0001'),
(185, 250000, 250000, 1, 82, NULL, '2023-07-04 02:59:55', NULL, '140', 'TC0001'),
(186, 250000, 250000, 1, 82, NULL, '2023-08-13 01:03:44', NULL, '141', 'TC0001'),
(187, 250000, 250000, 1, 82, NULL, '2023-09-01 04:02:57', NULL, '142', 'TC0001'),
(188, 250000, 250000, 1, 82, NULL, '2023-09-01 04:03:26', NULL, '143', 'TC0001');

-- --------------------------------------------------------

--
-- Stand-in structure for view `invoiceline_short`
-- (See below for the actual view)
--
CREATE TABLE `invoiceline_short` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `invoice_short`
-- (See below for the actual view)
--
CREATE TABLE `invoice_short` (
);

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `Lab_id` int NOT NULL,
  `attachments1_list_file` text,
  `completed_date_date` datetime DEFAULT NULL,
  `notes_text` text,
  `results_text` text,
  `status_option_status` varchar(150) DEFAULT NULL,
  `signature_url_text` varchar(300) DEFAULT NULL,
  `signature_image` text,
  `type_option_lab_test` varchar(255) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `appoinment_custom_appointment` varchar(300) DEFAULT NULL,
  `patient_user` varchar(300) DEFAULT NULL,
  `ordered_by_user` varchar(300) DEFAULT NULL,
  `completed_by_user` varchar(300) DEFAULT NULL,
  `facility_custom_locations` varchar(300) DEFAULT NULL,
  `product_list_custom_product` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`Lab_id`, `attachments1_list_file`, `completed_date_date`, `notes_text`, `results_text`, `status_option_status`, `signature_url_text`, `signature_image`, `type_option_lab_test`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `appoinment_custom_appointment`, `patient_user`, `ordered_by_user`, `completed_by_user`, `facility_custom_locations`, `product_list_custom_product`) VALUES
(109, NULL, '2023-02-06 00:00:00', '', '', 'New', 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL, NULL, NULL, '2023-02-06', '2023-02-06 01:22:36', NULL, '101', '45', '', '74', '1', '[\"PKG0002\", \"PKG0001\"]'),
(110, '', NULL, 'test', 'ok', 'New', 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL, NULL, NULL, '2023-03-01', '2023-02-10 02:08:56', NULL, '104', '83', '45', '', '1', '[\"PKG0002\"]'),
(111, '', '2023-03-01 12:00:00', 'test', 'test', 'New', '', NULL, NULL, NULL, '2023-03-01', '2023-03-01 01:45:29', NULL, '104', '83', '45', '', '1', '[\"PKG0001\"]'),
(112, '', '2023-03-03 00:00:00', 'testtasfdaaaaaaaaaaaaaaaaaaaaaa', 'dsafffffffffffffffffffffffffffffffffff', 'New', 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL, NULL, NULL, NULL, '2023-03-03 09:08:48', NULL, '106', '82', '', '', '1', '[\"PKG0002\", \"PKG0001\"]'),
(113, '', NULL, '', '', 'New', 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL, NULL, NULL, NULL, '2023-03-03 09:09:24', NULL, '106', '82', '', '', '2', '[\"50.I.166\"]'),
(114, '', NULL, 'fddfdffds', '', 'New', '', NULL, NULL, NULL, NULL, '2023-03-03 09:09:48', NULL, '106', '82', '', '', '1', '[\"PKG0002\"]'),
(115, '', NULL, '', '', 'New', 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL, NULL, NULL, '2023-03-03', '2023-03-03 09:50:32', NULL, '106', '82', '45', '', '1', '[\"PKG0002\"]'),
(116, '', NULL, '', '', 'New', 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL, NULL, NULL, NULL, '2023-03-27 07:13:22', NULL, '111', '107', '45', '', '1', '[\"MEDZOL25mg\"]'),
(117, '', NULL, 'etesrd', 'test', 'New', 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL, NULL, NULL, '2023-03-29', '2023-03-29 01:26:55', NULL, '112', '107', '', '', '1', '[\"MEDZOL25mg\"]'),
(118, '', NULL, '', '', 'New', 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL, NULL, NULL, NULL, '2023-04-17 04:23:00', NULL, '122', '110', '63', '', '1', '[\"MEDZOL25mg\"]'),
(119, '', NULL, 'test', 'test', 'New', 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL, NULL, NULL, NULL, '2023-04-26 04:09:03', NULL, '126', '113', '63', '', '1', '[\"MEDZOL25mg\"]'),
(120, '', NULL, 'tessgtttttt', '', 'New', '', NULL, NULL, NULL, NULL, '2023-04-26 14:26:50', NULL, '127', '82', '45', '74', '1', '[\"MEDZOL25mg\"]'),
(121, '', NULL, '', '', 'New', '', NULL, NULL, NULL, NULL, '2023-05-08 16:58:01', NULL, '128', '74', '', '', '', '[\"50.I.161\"]'),
(122, 'logo-big.png', NULL, '', '', 'New', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL, NULL, '2023-05-16', '2023-05-12 05:58:49', NULL, '133', '45', '', '', '', '[]'),
(123, 'bitbucket-logo.png', NULL, '', '', 'New', '', NULL, NULL, NULL, NULL, '2023-05-12 06:00:03', NULL, '132', '82', '', '', '', '[]'),
(124, '', NULL, '', '', 'New', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL, NULL, '2023-05-16', '2023-05-16 03:01:31', NULL, '134', '82', '45', '', '1', '[\"MEDZOL25mg\"]'),
(125, '', NULL, 'test', 'test', 'New', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL, NULL, NULL, '2023-05-19 04:05:39', NULL, '135', '45', '45', '74', '1', '[\"MEDZOL25mg\"]'),
(126, '', '2023-07-04 00:00:00', 'testt', 'tsdttggfasdfsdf', 'New', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL, NULL, NULL, '2023-07-04 03:02:45', NULL, '141', '82', '45', '', '1', '[\"MEDZOL25mg\"]'),
(127, '', NULL, 'testt', '', 'New', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL, NULL, NULL, '2023-07-24 11:04:17', NULL, '140', '82', '', '', '1', '[\"MEDZOL25mg\"]'),
(128, '', NULL, 'testtt', '', 'New', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL, NULL, '2023-07-24', '2023-07-24 11:04:44', NULL, '140', '82', '', '', '2', '[\"50.I.162\"]'),
(129, '', NULL, 'test', 'khong phat hien', 'New', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL, NULL, NULL, '2023-08-13 01:12:26', NULL, '142', '82', '45', '74', '1', '[\"MEDZOL25mg\"]'),
(130, '', NULL, '', 'testt', 'New', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL, NULL, NULL, '2023-08-13 01:13:13', NULL, '142', '82', '45', '74', '1', '[\"TC0001\"]'),
(131, '', NULL, 'testt', 'test', 'New', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL, NULL, '2023-08-13', '2023-08-13 03:08:38', NULL, '141', '82', '45', '74', '1', '[\"MEDZOL25mg\", \"TC0001\"]');

-- --------------------------------------------------------

--
-- Table structure for table `labtest`
--

CREATE TABLE `labtest` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `labtest`
--

INSERT INTO `labtest` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Complete Blood Count (CBC)', 'Xét nghiệm công thức máu (CBC)'),
(2, 'Prothrombin Time (PT)', 'Xét nghiệm Prothrombin (PT)'),
(3, 'Basic Metabolic Panel', 'Bảng chuyển hóa cơ bản'),
(4, 'Comprehensive Metabolic Panel', 'Bảng chuyển hóa toàn diện'),
(5, 'Lipid Panel', 'Xét nghiệm Lipid'),
(6, 'Liver Panel', 'Xét nghiệm chức năng gan'),
(7, 'Thyroid Stimulating Hormone', 'Hormon kích thích tuyến giáp'),
(8, 'Hemoglobin A1C', 'Xét nghiệm HbA1c'),
(9, 'Urinalysis', 'Xét nghiệm nước tiểu'),
(10, 'Cultures', 'Cultures'),
(11, 'Other', 'Khác');

-- --------------------------------------------------------

--
-- Stand-in structure for view `lab_short`
-- (See below for the actual view)
--
CREATE TABLE `lab_short` (
);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int NOT NULL,
  `Code` varchar(255) NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `Code`, `en_us`, `vi_vn`) VALUES
(1, 'vi_vn', 'Vietnamese', 'Tiếng Việt'),
(2, 'en_us', 'English', 'Tiếng Anh');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int NOT NULL,
  `active_boolean` tinyint(1) DEFAULT NULL,
  `address_geographic_address` varchar(255) DEFAULT NULL,
  `contract_boolean` tinyint(1) DEFAULT NULL,
  `email_text` varchar(255) DEFAULT NULL,
  `fax_text` varchar(255) DEFAULT NULL,
  `hours_list_date_range` json DEFAULT NULL,
  `location_name_text` varchar(255) DEFAULT NULL,
  `notes_text` text,
  `phone_number_text` varchar(255) DEFAULT NULL,
  `type_list_option_locations` json DEFAULT NULL,
  `photo_image` varchar(1000) DEFAULT NULL,
  `website_text` varchar(1000) DEFAULT NULL,
  `Creator` varchar(12) DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` varchar(255) DEFAULT NULL,
  `contact_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `active_boolean`, `address_geographic_address`, `contract_boolean`, `email_text`, `fax_text`, `hours_list_date_range`, `location_name_text`, `notes_text`, `phone_number_text`, `type_list_option_locations`, `photo_image`, `website_text`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `contact_user`) VALUES
(1, 1, '1 Đường Số 17A, Bình Trị Đông B, Bình Tân, Hồ Chí Minh', 1, 'booking@cih.com.vn', '', '[{\"Su00e1ng\": \"7AM-12 AM\"}, {\"Chiu1ec1u\": \"1PM-5 PM\"}, {\"Tu1ed1i\": \"6PM-9 PM\"}]', 'City International Hospital', NULL, '02862803333', '[\"Lab\", \"Clinic\", \"Pharmacy\", \"Hospital\", \"Pharmacy\"]', '643376f8e45a1toanha.jpg', NULL, NULL, '2023-04-10', '2023-01-09 00:00:00', NULL, NULL),
(2, 1, 'Ward 7, 2 Hoàng Hoa Thám, phường 7, Bình Thạnh, Hồ Chí Minh', 1, 'reception@pkvietmy.com.v', NULL, NULL, 'Viet My General Clinic - Location 1', NULL, '02835102757', '[\"Clinic\", \"Pharmacy\", \"Lab\", \"Corporate\", \"Billing Office\"]', '', NULL, NULL, '2023-01-09', '2023-01-09 00:00:00', NULL, NULL),
(3, 1, '', NULL, 'h@h.com', '12345678', '[{\"Su00e1ng\": \"7AM-12 AM\"}, {\"Chiu1ec1u\": \"1PM-5 PM\"}, {\"Tu1ed1i\": \"6PM-9 PM\"}]', 'testt', NULL, '123456789', '[\"Hospital\"]', '640aff791322bhospital.png', NULL, NULL, NULL, '2023-03-10 09:59:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locationtype`
--

CREATE TABLE `locationtype` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `locationtype`
--

INSERT INTO `locationtype` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Hospital', 'Bệnh viện'),
(2, 'Clinic', 'Phòng khám'),
(3, 'Pharmacy', 'Nhà thuốc'),
(4, 'Lab', 'Phòng xét nghiệm'),
(5, 'Billing Office', 'Phòng thanh toán'),
(6, 'Home Office', 'Văn phòng tại nhà'),
(7, 'Corporate', 'Công ty');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `medication_id` int NOT NULL,
  `active_boolean` tinyint DEFAULT NULL,
  `active_ingredients_text` text,
  `attachment_list_file` json DEFAULT NULL,
  `base_price_number` double DEFAULT NULL,
  `code_text` varchar(300) DEFAULT NULL,
  `dosage_forms_text` text,
  `dosage_text` text,
  `image_image` varchar(1000) DEFAULT NULL,
  `instructions_text` text,
  `insurance_code_text` varchar(300) DEFAULT NULL,
  `manufacture_country_text` text,
  `manufacture_name_text` text,
  `name_text` varchar(255) DEFAULT NULL,
  `notes_text` text,
  `packaging_text` text,
  `prescription_only_boolean` tinyint DEFAULT NULL,
  `retail_price_number` double DEFAULT NULL,
  `unit_text` text,
  `usage_text` varchar(300) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Slug` text NOT NULL,
  `product_custom_product` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`medication_id`, `active_boolean`, `active_ingredients_text`, `attachment_list_file`, `base_price_number`, `code_text`, `dosage_forms_text`, `dosage_text`, `image_image`, `instructions_text`, `insurance_code_text`, `manufacture_country_text`, `manufacture_name_text`, `name_text`, `notes_text`, `packaging_text`, `prescription_only_boolean`, `retail_price_number`, `unit_text`, `usage_text`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `product_custom_product`) VALUES
(1, 1, 'Vitamin B2, Cao linh chi, Vitamin B1,...', NULL, NULL, 'B W001-T', 'Chai', '5,5mg+5mg+5mg+5mg+...\r\n', NULL, NULL, 'B W001-T\r\n', NULL, NULL, '19B With Linh Zi\r\n', NULL, 'H/10 vá»‰ x 10 viÃªn\r\n', NULL, NULL, 'Chai', 'Uống', NULL, NULL, NULL, '', NULL),
(2, 1, 'Protease, Amylase, Cellulase, Lipase, Lactase, Vtm B1...\r\n', NULL, NULL, 'ZYM002-T\r\n\r\n', '300IU+1200IU+10IU+300IU+200IU+0.5mg\r\n', '300IU+1200IU+10IU+300IU+200IU+0.5mg\r\n', NULL, NULL, NULL, NULL, NULL, '5-Zymes\r\n', NULL, 'H/10 10 viên\r\n', NULL, NULL, 'Viên', 'Uống', NULL, NULL, NULL, '', NULL),
(3, 1, 'Acid ascorbic (Vtm C)\r\n', NULL, NULL, 'A.A002-T\r\n', 'Hộp', '100mg/5ml\r\n', NULL, NULL, NULL, NULL, NULL, 'A.T Ascorbic Syrup\r\n', NULL, 'H/1 chai 60ml\r\n', NULL, NULL, 'Chai', 'Uống', NULL, NULL, NULL, '', NULL),
(4, 1, 'H/1 chai 60ml\r\n', NULL, NULL, 'A.D001-T\r\n', 'Viên\r\n', '2,5mg/5ml', NULL, NULL, NULL, NULL, NULL, 'A.T Desloratadin\r\n', NULL, 'Hộp và ống 5ml', NULL, NULL, 'Viên', 'Uống', NULL, NULL, NULL, '', NULL),
(5, 1, 'Hydrocortison\r\n', NULL, NULL, 'A.H001-T\r\n', 'Viên', '100mg\r\n', NULL, NULL, NULL, NULL, NULL, 'A.T Hydrocortisone\r\n', NULL, NULL, NULL, NULL, 'Viên', 'Uống', NULL, NULL, NULL, '', NULL),
(6, 1, 'A.T Hydrocortisone\r\n', NULL, NULL, 'A.I001-T\r\n', 'Chai', '100mg/5ml\r\n', NULL, NULL, NULL, NULL, NULL, 'A.T Ibuprofen\r\n', NULL, NULL, NULL, NULL, 'Chai', 'Uống', NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`en_us`, `vi_vn`) VALUES
('Vietnam', 'Việt Nam'),
('United States', 'Hoa Kỳ'),
('United Kingdom', 'Vương quốc Anh'),
('New Zealand', 'New Zealand'),
('Austrailia', 'Châu Úc'),
('China', 'Trung Quốc'),
('India', 'Ấn Độ'),
('Russia', 'Nga'),
('Germany', 'Đức'),
('Italy', 'Ý'),
('France', 'Pháp'),
('Turkey', 'Thổ nhĩ kỳ');

-- --------------------------------------------------------

--
-- Table structure for table `noteattachment`
--

CREATE TABLE `noteattachment` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `noteattachment`
--

INSERT INTO `noteattachment` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Appointment', 'Cuộc hẹn'),
(2, 'General', 'Chung'),
(3, 'Lab', 'Phòng xét nghiệm'),
(4, 'Pharmacy', 'Nhà thuốc'),
(5, 'Other', 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int NOT NULL,
  `attachment_to_option_note_attachment` varchar(255) DEFAULT NULL,
  `description_text` text,
  `doctor_only_boolean` tinyint DEFAULT NULL,
  `documents_list_file` json DEFAULT NULL,
  `note_text` text,
  `note_source_text` text,
  `note_type_option_note_typte` varchar(255) DEFAULT NULL,
  `private_boolean` tinyint DEFAULT NULL,
  `printable_boolean` tinyint DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `attachment_id_text` varchar(300) DEFAULT NULL,
  `created_by_user` varchar(300) DEFAULT NULL,
  `profile_user` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `attachment_to_option_note_attachment`, `description_text`, `doctor_only_boolean`, `documents_list_file`, `note_text`, `note_source_text`, `note_type_option_note_typte`, `private_boolean`, `printable_boolean`, `ModifiedDate`, `CreatedDate`, `Slug`, `attachment_id_text`, `created_by_user`, `profile_user`) VALUES
(21, 'Appointment', 'test', 1, NULL, 'Toi la test', NULL, 'Patient Care Plan', 0, 0, '2023-01-30', '2023-01-30 03:07:57', NULL, '100', '45', '45'),
(22, 'Appointment', 'test', 1, NULL, 'tets', NULL, 'Patient Care Plan', 0, 0, NULL, '2023-02-06 01:06:28', NULL, '101', '45', '45'),
(23, 'Appointment', 'test', 1, NULL, 'attsts', NULL, 'Patient Care Plan', 0, 1, NULL, '2023-02-22 06:45:24', NULL, '104', '45', '83'),
(24, 'Appointment', 'testt', 1, NULL, 'testt', NULL, 'Patient Care Plan', 0, 0, NULL, '2023-04-04 02:14:04', NULL, '113', '45', '107'),
(25, 'Appointment', 'test', 1, NULL, 'testt', NULL, 'Patient Care Plan', 0, 0, '2023-04-04', '2023-04-04 02:22:04', NULL, '113', '45', '107'),
(26, 'Appointment', 'test', 1, NULL, 'test', NULL, 'Patient Care Plan', 0, 0, NULL, '2023-04-26 04:08:27', NULL, '126', '45', '113'),
(27, 'Appointment', 'tese', 1, NULL, 'aasdfdffds', NULL, 'Patient Care Plan', 0, 0, NULL, '2023-04-26 14:25:55', NULL, '127', '107', '82'),
(28, 'Appointment', '', 0, NULL, 'teeett', NULL, 'Patient Care Plan', 0, 0, NULL, '2023-05-12 02:02:00', NULL, '131', '82', '82'),
(29, 'Appointment', '', 1, NULL, 'tessas', NULL, 'Patient Care Plan', 0, 0, NULL, '2023-05-12 02:02:09', NULL, '131', '82', '82'),
(30, 'Appointment', 'tetsdss', 1, NULL, 'yeddssdtdsd', NULL, 'Patient Care Plan', 0, 0, NULL, '2023-05-18 08:07:11', NULL, '134', '82', '82'),
(31, 'Appointment', 'testt', 1, NULL, 'testsdfgd', NULL, 'Patient Care Plan', 0, 0, NULL, '2023-07-04 03:03:16', NULL, '141', '45', '82'),
(32, 'Appointment', 'dffsdfsdf', 1, NULL, 'assdfsdfsdfsdf', NULL, 'Patient Care Plan', 0, 0, NULL, '2023-07-11 10:29:07', NULL, '134', '45', '82');

-- --------------------------------------------------------

--
-- Stand-in structure for view `notes_short`
-- (See below for the actual view)
--
CREATE TABLE `notes_short` (
);

-- --------------------------------------------------------

--
-- Table structure for table `notetype`
--

CREATE TABLE `notetype` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `notetype`
--

INSERT INTO `notetype` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Patient Care Plan', 'Kế hoạch chăm sóc'),
(2, 'Doctor Only', 'Chỉ Bác sĩ'),
(3, 'Administrative', 'Administrative'),
(4, 'Payment', 'Thanh toán'),
(5, 'SOAP', 'SOAP'),
(6, 'Other', 'Khác'),
(7, 'Staff', 'Nhân viên'),
(8, 'Lab', 'Xét nghiệm'),
(9, 'Rx', 'Rx'),
(10, 'Email_SMS', 'Email_SMS');

-- --------------------------------------------------------

--
-- Table structure for table `numberofdoses`
--

CREATE TABLE `numberofdoses` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `numberofdoses`
--

INSERT INTO `numberofdoses` (`id`, `en_us`, `vi_vn`) VALUES
(1, '1', '1'),
(2, '2', '2'),
(3, '3', '3'),
(4, '4', '4'),
(5, '5', '5'),
(6, '6', '6'),
(7, 'Other - refer to instructions', 'Khác - Tham khảo hướng dẫn');

-- --------------------------------------------------------

--
-- Table structure for table `orderrequesttype`
--

CREATE TABLE `orderrequesttype` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `orderrequesttype`
--

INSERT INTO `orderrequesttype` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Email', 'Email'),
(2, 'Phone Call', 'Gọi điện thoại'),
(3, 'Text Message', 'Tin nhắn văn bản'),
(4, 'Fax', 'Fax'),
(5, 'Courier', 'Chuyển phát nhanh'),
(6, 'Patient Delivered', 'Giao cho bệnh nhân');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int NOT NULL,
  `active_boolean` tinyint DEFAULT NULL,
  `code_text` varchar(300) DEFAULT NULL,
  `expiration_date_date` date DEFAULT NULL,
  `invoice_custom_invoice` int DEFAULT NULL,
  `note_text` text,
  `price_limit_number` double DEFAULT NULL,
  `start_date_date` date DEFAULT NULL,
  `visit_count1_number` int DEFAULT NULL,
  `visit_count_number` int DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `package_logs_list_custom_package_logs` json DEFAULT NULL,
  `user_user` varchar(300) DEFAULT NULL,
  `product_custom_product` varchar(300) DEFAULT NULL,
  `transaction_custom_transactions` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `active_boolean`, `code_text`, `expiration_date_date`, `invoice_custom_invoice`, `note_text`, `price_limit_number`, `start_date_date`, `visit_count1_number`, `visit_count_number`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `package_logs_list_custom_package_logs`, `user_user`, `product_custom_product`, `transaction_custom_transactions`) VALUES
(3, 1, '123456', '2030-12-31', NULL, NULL, NULL, NULL, 0, 5, NULL, NULL, '2021-11-19 04:54:39', NULL, '[\"1637297827562x970668314046918100\", \"1637297867011x429828427641074000\", \"1637548165884x796379373686566600\", \"1637728759691x463348599493631040\", \"1637729807646x125125534146167230\", \"1637820948606x324217938944976400\", \"1637821030620x522860230886205600\", \"1641443611730x886010273934853400\", \"1671419941700x205500609196751940\"]', '45', NULL, NULL),
(4, 1, '12345678', NULL, NULL, NULL, 150000, '2021-11-01', 0, 5, NULL, NULL, '2021-11-25 03:34:43', NULL, NULL, '45', NULL, NULL),
(5, 1, '1234567', NULL, NULL, NULL, NULL, '2021-11-01', 1, 4, NULL, NULL, '2021-11-25 03:59:03', NULL, '[18]', '45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packagelogs`
--

CREATE TABLE `packagelogs` (
  `id` int NOT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `appointment_custom_appointment` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `packagelogs`
--

INSERT INTO `packagelogs` (`id`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `appointment_custom_appointment`) VALUES
(18, 45, NULL, '2023-02-06 01:53:36', NULL, '101');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ID` int NOT NULL,
  `amount_number` double DEFAULT NULL,
  `card_type_option_credit_card_type` varchar(150) DEFAULT NULL,
  `notes_text` text,
  `package_code_text` varchar(250) DEFAULT NULL,
  `refund_boolean` tinyint(1) DEFAULT NULL,
  `status_option_payment_status` varchar(150) DEFAULT NULL,
  `transaction_id_text` varchar(50) DEFAULT NULL,
  `type_option_payment_type` varchar(150) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedDate` datetime DEFAULT NULL,
  `Slug` varchar(250) DEFAULT NULL,
  `entered_by_user` varchar(300) DEFAULT NULL,
  `profile_user` varchar(300) DEFAULT NULL,
  `invoice_custom_invoice` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `amount_number`, `card_type_option_credit_card_type`, `notes_text`, `package_code_text`, `refund_boolean`, `status_option_payment_status`, `transaction_id_text`, `type_option_payment_type`, `Creator`, `CreatedDate`, `ModifiedDate`, `Slug`, `entered_by_user`, `profile_user`, `invoice_custom_invoice`) VALUES
(67, 100000, NULL, 'Thanh toán cho Hóa đơn: APT-20231', NULL, 1, 'Successful', 'PMT-20231', 'Cash', 45, '2023-02-06 01:36:18', NULL, NULL, NULL, '45', '100'),
(68, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-20231', '1234567', 1, 'Successful', 'PMT-20232', 'Package Code', 45, '2023-02-06 01:53:36', NULL, NULL, NULL, '45', '100'),
(69, 995000, NULL, 'Thanh toán cho Hóa đơn: APT-20231', NULL, 1, 'Successful', 'PMT-20233', 'Cash', 45, '2023-02-06 01:53:54', NULL, NULL, NULL, '45', '100'),
(70, 100000, NULL, 'Thanh toán cho Hóa đơn: INV-20234', NULL, 1, 'Successful', 'PMT-20234', 'Cash', 82, '2023-02-10 02:13:27', NULL, NULL, NULL, '83', '103'),
(71, 150000, NULL, 'Thanh toán cho Hóa đơn: INV-20234', NULL, 1, 'Successful', 'PMT-20235', 'Cash', 82, '2023-02-10 02:13:45', NULL, NULL, NULL, '83', '103'),
(72, 50000, NULL, 'Thanh toán cho Hóa đơn: APT-202313', NULL, 1, 'Successful', 'PMT-20236', 'Cash', 45, '2023-04-06 01:30:13', NULL, NULL, NULL, '107', '112'),
(73, 100000, NULL, 'Thanh toán cho Hóa đơn: APT-202313', NULL, 0, 'Successful', 'PMT-20237', 'Bank Transfer', 45, '2023-04-06 01:50:27', NULL, NULL, NULL, '107', '112'),
(74, 10000, NULL, 'Thanh toán cho Hóa đơn: APT-202313', NULL, 0, 'Successful', 'PMT-20238', 'Cash', 45, '2023-04-06 01:51:26', NULL, NULL, NULL, '107', '112'),
(75, 10000, NULL, 'Thanh toán cho Hóa đơn: APT-202313', NULL, 0, 'Successful', 'PMT-20239', 'Cash', 45, '2023-04-06 01:59:55', NULL, NULL, NULL, '107', '112'),
(76, 10000, NULL, 'Thanh toán cho Hóa đơn: APT-202313', NULL, 0, 'Successful', 'PMT-202310', 'Cash', 45, '2023-04-06 02:12:59', NULL, NULL, NULL, '107', '112'),
(77, 70000, NULL, 'Thanh toán cho Hóa đơn: APT-202313', NULL, 0, 'Successful', 'PMT-202311', 'Bank Transfer', 45, '2023-04-06 02:46:08', NULL, NULL, NULL, '107', '112'),
(78, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-202315', '', NULL, 'Successful', 'PMT-202312', NULL, 45, '2023-04-06 06:37:47', NULL, NULL, NULL, '107', '114'),
(79, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-202324', NULL, 0, 'Successful', 'PMT-202313', 'Cash', 113, '2023-04-26 01:44:35', NULL, NULL, NULL, '113', '123'),
(80, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-202327', NULL, 0, 'Successful', 'PMT-202314', 'Cash', 82, '2023-04-26 14:07:52', NULL, NULL, NULL, '82', '126'),
(81, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-202326', NULL, 0, 'Successful', 'PMT-202315', 'Cash', 45, '2023-05-08 16:58:44', NULL, NULL, NULL, '113', '125'),
(82, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-202334', NULL, 0, 'Successful', 'PMT-202316', 'Cash', 82, '2023-05-16 02:59:19', NULL, NULL, NULL, '82', '133'),
(83, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-202332', NULL, 0, 'Successful', 'PMT-202317', 'Cash', 82, '2023-06-22 10:08:42', NULL, NULL, NULL, '82', '131'),
(84, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-202331', NULL, 0, 'Successful', 'PMT-202318', 'Cash', 82, '2023-06-22 10:09:21', NULL, NULL, NULL, '82', '130'),
(85, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-202341', NULL, 0, 'Successful', 'PMT-202319', 'Cash', 82, '2023-07-04 03:00:13', NULL, NULL, NULL, '82', '140'),
(86, 100, NULL, 'Thanh toán cho Hóa đơn: APT-202340', NULL, 0, 'Successful', 'PMT-202320', 'Cash', 82, '2023-07-24 11:02:53', NULL, NULL, NULL, '82', '139'),
(87, 249900, NULL, 'Thanh toán cho Hóa đơn: APT-202340', NULL, 0, 'Successful', 'PMT-202321', 'Cash', 82, '2023-07-24 11:03:05', NULL, NULL, NULL, '82', '139'),
(88, 250000, NULL, 'Thanh toán cho Hóa đơn: APT-202342', NULL, 0, 'Successful', 'PMT-202322', 'Cash', 45, '2023-08-13 01:04:36', NULL, NULL, NULL, '82', '141');

-- --------------------------------------------------------

--
-- Table structure for table `paymentstatus`
--

CREATE TABLE `paymentstatus` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `paymentstatus`
--

INSERT INTO `paymentstatus` (`en_us`, `vi_vn`) VALUES
('Successful', 'Thành công'),
('Waiting to Confirm', 'Chờ xác nhận');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttype`
--

CREATE TABLE `paymenttype` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `paymenttype`
--

INSERT INTO `paymenttype` (`en_us`, `vi_vn`) VALUES
('Cash', 'Tiền mặt'),
('Credit Card', 'Thẻ tín dụng'),
('Bank Transfer', 'Chuyển khoản'),
('Package Code', 'Package Code'),
('Check', 'Check'),
('Insurance', 'Bảo hiểm'),
('Adjustment', 'Điều chỉnh'),
('Payment Later', 'Thanh toán sau'),
('Other', 'Khác');

-- --------------------------------------------------------

--
-- Stand-in structure for view `payment_short`
-- (See below for the actual view)
--
CREATE TABLE `payment_short` (
);

-- --------------------------------------------------------

--
-- Table structure for table `personalhabits`
--

CREATE TABLE `personalhabits` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `personalhabits`
--

INSERT INTO `personalhabits` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Yes', 'Có'),
(2, 'No', 'Không'),
(3, 'Regularly', 'Thường xuyên'),
(4, 'Gave up', 'Đã bỏ');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `PrescriptionID` int NOT NULL,
  `delivered_date_date` datetime DEFAULT NULL,
  `fulfilled_date_date` datetime DEFAULT NULL,
  `instructions_text` text,
  `notes_text` text,
  `request_type_option_order_request_type` varchar(150) DEFAULT NULL,
  `status_option_status` varchar(150) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` varchar(255) DEFAULT NULL,
  `appointment_custom_appointment` varchar(300) DEFAULT NULL,
  `patient_user` varchar(300) DEFAULT NULL,
  `delivered_by_user` varchar(300) DEFAULT NULL,
  `fulfilled_by_user` varchar(300) DEFAULT NULL,
  `ordered_by_user` varchar(300) DEFAULT NULL,
  `location_custom_locations` varchar(300) DEFAULT NULL,
  `signature_image` text,
  `signature_url_text` varchar(1000) DEFAULT NULL,
  `documents_custom_documents` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`PrescriptionID`, `delivered_date_date`, `fulfilled_date_date`, `instructions_text`, `notes_text`, `request_type_option_order_request_type`, `status_option_status`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `appointment_custom_appointment`, `patient_user`, `delivered_by_user`, `fulfilled_by_user`, `ordered_by_user`, `location_custom_locations`, `signature_image`, `signature_url_text`, `documents_custom_documents`) VALUES
(81, '2023-02-06 00:00:00', '2023-02-06 00:00:00', NULL, 'test', 'Email', 'Complete', NULL, '2023-02-06', '2023-02-06 01:26:57', NULL, '101', '45', '46', '74', '', '1', NULL, 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL),
(82, NULL, NULL, NULL, 'Hen tai kham', 'Email', 'New', NULL, NULL, '2023-02-10 02:10:14', NULL, '104', '83', '', '', '45', '1', NULL, '', NULL),
(83, NULL, NULL, NULL, '', 'Email', 'New', NULL, '2023-02-14', '2023-02-10 02:10:54', NULL, '104', '83', '', '', '', '1', NULL, 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL),
(84, NULL, NULL, NULL, 'tai kham 01/01/2023', 'Email', 'New', NULL, '2023-02-17', '2023-02-16 03:13:23', NULL, '104', '83', '', '', '', '', NULL, 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL),
(85, NULL, NULL, NULL, '', 'Email', 'New', NULL, NULL, '2023-03-03 09:10:45', NULL, '106', '82', '', '', '', '', NULL, 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL),
(86, NULL, NULL, NULL, 'tai kham', 'Email', 'New', NULL, NULL, '2023-03-29 01:57:15', NULL, '112', '107', '', '', '', '1', NULL, 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL),
(87, NULL, '2023-04-26 00:00:00', NULL, 'tai kham ngay 15/03/2023', 'Email', 'New', NULL, NULL, '2023-04-26 04:12:35', NULL, '126', '113', '', '74', '63', '', NULL, 'https://s3.amazonaws.com/appforest_uf/f1644897175892x988119066765894500/sig.png', NULL),
(88, NULL, NULL, NULL, '', 'Email', 'New', NULL, NULL, '2023-04-26 14:29:12', NULL, '127', '82', '', '', '45', '', NULL, '', NULL),
(89, NULL, NULL, NULL, '', 'Email', 'New', NULL, NULL, '2023-05-08 16:57:28', NULL, '128', '74', '', '', '', '', NULL, '', NULL),
(90, NULL, NULL, NULL, '', 'Email', 'New', NULL, '2023-05-16', '2023-05-16 01:39:08', NULL, '133', '45', '', '', '', '1', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL),
(91, NULL, NULL, NULL, '', 'Email', 'New', NULL, NULL, '2023-05-16 03:09:08', NULL, '134', '82', '', '', '45', '', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL),
(92, NULL, NULL, NULL, '', 'Email', 'New', NULL, NULL, '2023-05-17 05:16:22', NULL, '135', '45', '', '', '45', '', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL),
(93, NULL, '2023-05-19 00:00:00', NULL, '', 'Email', 'New', NULL, NULL, '2023-05-19 04:07:36', NULL, '135', '45', '', '74', '45', '1', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL),
(94, NULL, NULL, NULL, 'test 1 lan ', 'Email', 'New', NULL, NULL, '2023-07-04 03:02:03', NULL, '141', '82', '', '', '45', '1', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL),
(95, NULL, NULL, NULL, '', 'Email', 'New', NULL, NULL, '2023-07-24 11:06:24', NULL, '140', '82', '', '', '', '1', NULL, '', NULL),
(96, NULL, NULL, NULL, 'tai kham sau 10 ngay', 'Email', 'New', NULL, NULL, '2023-08-13 01:08:45', NULL, '142', '82', '', '', '45', '1', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL),
(97, NULL, NULL, NULL, '', 'Email', 'New', NULL, NULL, '2023-08-13 01:11:28', NULL, '142', '82', '', '', '45', '2', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL),
(98, NULL, NULL, NULL, '', 'Email', 'New', NULL, NULL, '2023-08-13 03:10:13', NULL, '141', '82', '', '', '45', '1', '6462d99761e77signature.png', '6462d99761e77signature.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prescriptionline`
--

CREATE TABLE `prescriptionline` (
  `PrescriptionLine_ID` int NOT NULL,
  `instructions_text` text,
  `number_of_days_number` int DEFAULT NULL,
  `prescription_note_text` text,
  `status_option_status` varchar(255) DEFAULT NULL,
  `total_number` double DEFAULT NULL,
  `Note` text,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` date DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` varchar(255) DEFAULT NULL,
  `prescription_custom_prescription1` varchar(300) DEFAULT NULL,
  `afternoon_amount_number` int DEFAULT NULL,
  `evening_amount_number` int DEFAULT NULL,
  `morning_amount_number` int DEFAULT NULL,
  `noon_amount_number` int DEFAULT NULL,
  `usage_text` varchar(100) DEFAULT NULL,
  `unit_text` varchar(100) DEFAULT NULL,
  `documents_custom_documents` varchar(300) DEFAULT NULL,
  `medication_custom_medication` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `prescriptionline`
--

INSERT INTO `prescriptionline` (`PrescriptionLine_ID`, `instructions_text`, `number_of_days_number`, `prescription_note_text`, `status_option_status`, `total_number`, `Note`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `prescription_custom_prescription1`, `afternoon_amount_number`, `evening_amount_number`, `morning_amount_number`, `noon_amount_number`, `usage_text`, `unit_text`, `documents_custom_documents`, `medication_custom_medication`) VALUES
(227, 'moi lan 5mg/', 0, NULL, NULL, 0, NULL, NULL, NULL, '2023-02-06 01:27:41', NULL, '81', 0, 1, 1, 0, 'Uống', 'Chai', NULL, '1'),
(228, 'moi lan 5ml', 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-02-10 02:10:14', NULL, '82', 1, 0, 1, 0, 'Uống', 'Hộp', NULL, '3'),
(229, '', 0, NULL, NULL, -1, NULL, NULL, NULL, '2023-02-10 02:10:14', NULL, '82', 0, 1, 1, 0, 'Uống', 'Vien', NULL, '2'),
(231, '5ml/1 lan', 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-02-14 08:20:44', NULL, '83', 1, 0, 1, 0, 'Uống', 'Chai', NULL, '1'),
(235, '', 1, NULL, NULL, 1, NULL, NULL, NULL, '2023-02-17 02:58:46', NULL, '84', 1, 0, 1, 0, 'Uống', 'Hộp', NULL, '3'),
(236, 'uong sau an', 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-02-17 02:58:46', NULL, '84', 0, 1, 1, 0, 'Uống', 'Hộp', NULL, '3'),
(237, 'uong truoc an', 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-03-03 09:10:45', NULL, '85', 0, 1, 1, 0, 'Uống', 'Hộp', NULL, '3'),
(238, '', 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-03-03 09:10:45', NULL, '85', 0, 0, 1, 0, 'Uống', 'Chai', NULL, '6'),
(239, 'truoc an', 3, NULL, NULL, 1, NULL, NULL, NULL, '2023-03-29 01:57:15', NULL, '86', 1, 0, 1, 0, 'Uống', 'Hộp', NULL, '3'),
(240, 'uong', 10, NULL, NULL, 40, NULL, NULL, NULL, '2023-03-29 01:57:15', NULL, '86', 1, 1, 1, 1, 'Uống', 'Viên', NULL, '5'),
(241, 'uong truoc an', 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-04-26 04:12:35', NULL, '87', 0, 1, 1, 0, 'Uống', 'Hộp', NULL, '3'),
(242, 'uong sau ', 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-04-26 14:29:12', NULL, '88', 1, 0, 1, 0, 'Uống', 'Chai', NULL, '6'),
(243, '', 0, NULL, NULL, 0, NULL, NULL, NULL, '2023-04-26 14:29:12', NULL, '88', 0, 0, 0, 0, 'Uống', 'Hộp', NULL, '3'),
(244, 'bacsi@bacsi.com', 54, NULL, NULL, 0, NULL, NULL, NULL, '2023-05-08 16:57:28', NULL, '89', 0, 0, 0, 0, 'Uống', '300IU+1200IU+10IU+300IU+200IU+0.5mg', NULL, '2'),
(246, 'uong sau an', 2, NULL, NULL, 1, NULL, NULL, NULL, '2023-05-16 01:41:28', NULL, '90', 1, 0, 1, 0, 'Uống', 'Hộp', NULL, '3'),
(247, 'sau an', 10, NULL, NULL, 10, NULL, NULL, NULL, '2023-05-16 03:09:08', NULL, '91', 0, 0, 1, 0, 'Uống', 'Viên', NULL, '5'),
(248, 'an uong', 2, NULL, NULL, 2, NULL, NULL, NULL, '2023-05-17 05:16:22', NULL, '92', 0, 0, 1, 0, 'Uống', 'Chai', NULL, '6'),
(249, 'sau an', 10, NULL, NULL, 20, NULL, NULL, NULL, '2023-05-19 04:07:36', NULL, '93', 1, 0, 1, 0, 'Uống', 'Viên', NULL, '5'),
(250, '', 10, NULL, NULL, 1, NULL, NULL, NULL, '2023-05-19 04:07:36', NULL, '93', 0, 0, 0, 0, 'Uống', 'Chai', NULL, '6'),
(251, 'an truoc khi uong', 10, NULL, NULL, 1, NULL, NULL, NULL, '2023-07-04 03:02:03', NULL, '94', 0, 1, 1, 1, 'Uống', 'Hộp', NULL, '3'),
(252, '', 10, NULL, NULL, 20, NULL, NULL, NULL, '2023-07-24 11:06:24', NULL, '95', 1, 0, 1, 0, 'Uống', 'Viên', NULL, '5'),
(253, '', 10, NULL, NULL, 1, NULL, NULL, NULL, '2023-07-24 11:06:24', NULL, '95', 0, 1, 1, 0, 'Uống', 'Hộp', NULL, '3'),
(254, 'uong truoc an', 10, NULL, NULL, 1, NULL, NULL, NULL, '2023-08-13 01:08:45', NULL, '96', 1, 1, 1, 1, 'Uống', 'Chai', NULL, '6'),
(255, '', 10, NULL, NULL, 0, NULL, NULL, NULL, '2023-08-13 01:08:45', NULL, '96', 10, 0, 10, 0, 'Uống', '300IU+1200IU+10IU+300IU+200IU+0.5mg', NULL, '2'),
(256, '1 lan 1 vien, an truoc uong', 7, NULL, NULL, 7, NULL, NULL, NULL, '2023-08-13 01:11:28', NULL, '97', 0, 0, 1, 0, 'Uống', 'Viên', NULL, '5'),
(257, 'uong truoc an, lan 1 vien', 10, NULL, NULL, 1, NULL, NULL, NULL, '2023-08-13 03:10:13', NULL, '98', 1, 1, 1, 1, 'Uống', 'Hộp', NULL, '3'),
(258, 'nho mat 1 lan 1 giot', 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-08-13 03:10:13', NULL, '98', 1, 0, 1, 0, 'Uống', 'Chai', NULL, '1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `prescriptionline_short`
-- (See below for the actual view)
--
CREATE TABLE `prescriptionline_short` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `prescription_short`
-- (See below for the actual view)
--
CREATE TABLE `prescription_short` (
);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `active_boolean` smallint NOT NULL,
  `cost_number` double NOT NULL,
  `description_text` text NOT NULL,
  `document_file` text NOT NULL,
  `front_end_boolean` tinyint(1) DEFAULT NULL,
  `image_image` text NOT NULL,
  `name_text` text NOT NULL,
  `package_duration_number` int DEFAULT NULL,
  `package_limit_number` int DEFAULT NULL,
  `PortalOnly` tinyint DEFAULT NULL,
  `require_signature_boolean` tinyint DEFAULT NULL,
  `retail_price_number` double DEFAULT NULL,
  `sales_price_number` double DEFAULT NULL,
  `sale_range_date_range` date DEFAULT NULL,
  `short_description_text` text,
  `sku_text` varchar(300) DEFAULT NULL,
  `tax_rate_number` double DEFAULT NULL,
  `taxable_boolean` tinyint DEFAULT NULL,
  `type_option_product_type` varchar(300) DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Slug` text,
  `documents_custom_documents` text,
  `partner_custom_locations` varchar(300) DEFAULT NULL,
  `product_group_option_product_group` varchar(300) DEFAULT NULL,
  `insurance_code_text` varchar(300) DEFAULT NULL,
  `insurance_price_number` double DEFAULT NULL,
  `RequireRx` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `active_boolean`, `cost_number`, `description_text`, `document_file`, `front_end_boolean`, `image_image`, `name_text`, `package_duration_number`, `package_limit_number`, `PortalOnly`, `require_signature_boolean`, `retail_price_number`, `sales_price_number`, `sale_range_date_range`, `short_description_text`, `sku_text`, `tax_rate_number`, `taxable_boolean`, `type_option_product_type`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `documents_custom_documents`, `partner_custom_locations`, `product_group_option_product_group`, `insurance_code_text`, `insurance_price_number`, `RequireRx`) VALUES
(5, 1, 6000, 'Imprint:\\nZOLOFT 25 MG\\nStrength:\\n25 mg\\nColor:\\nGreen\\nSize:\\n8.00 mm\\nShape:\\nElliptical / Oval\\nAvailability:\\nPrescription only', '//s3.amazonaws.com/appforest_uf/f1585205122461x622098134149801300/019839S74S86S87_20990S35S44S45lbl.pdf', 0, '//s3.amazonaws.com/appforest_uf/f1585204953762x544060393911735900/GSO63470.jfif?fit=crop&q=100', 'Zoloft', 0, 0, 0, 1, 75000, 75000, NULL, 'Imprint:\\nZOLOFT 25 MG\\nStrength:\\n25 mg\\nColor:\\nGreen\\nSize:\\n8.00 mm\\nShape:\\nElliptical / Oval\\nAvailability:\\nPrescription only', 'MEDZOL25mg', 0, 0, 'Physical', 0, '2023-01-03 06:05:49', '2023-01-03 06:05:49', '', NULL, NULL, 'Medication', '', 0, ''),
(6, 1, 10555, '', '', NULL, '//s3.amazonaws.com/appforest_uf/f1595478634205x478133908735850240/vitamins-26622_1280.png?fit=crop&q=100', 'Alphabet Soup', 0, 0, 0, 0, 30000, 28500, NULL, NULL, 'ABS-0001', 0, 0, 'Physical', 0, '2023-01-03 06:05:49', '2023-01-03 06:05:49', '', NULL, NULL, 'Consultation', '', 0, ''),
(7, 1, 0, 'This a a cool package to help individuals control cost', '', NULL, '/s3.amazonaws.com/appforest_uf/f1595478712035x543933012149524030/virus-4835736_1920.jpg?auto=enhance&fit=crop&q=100', 'Gold Package - Individual', 365, 0, 0, 0, 1000000, 700000, NULL, 'This a a cool package to help individuals control cost', 'PKG0001', 0, 0, 'Service', 0, '2023-01-03 06:19:35', '2023-01-03 06:19:35', '', NULL, NULL, 'Package', '', 0, ''),
(8, 1, 0, 'This a a cool package to help individuals control cost', '', NULL, '\"//s3.amazonaws.com/appforest_uf/f1595478693890x733854389786067500/Banner-telemedicine-product-1.png?auto=enhance&fit=crop&q=100', 'Silver Package - Individual', 0, 0, 0, 0, 1000000, 800000, NULL, 'This a a cool package to help individuals control cost', 'PKG0002', 0, 0, 'Service', 0, '2023-01-03 06:19:35', '2023-01-03 06:19:35', '', NULL, NULL, 'Package', '', 0, ''),
(9, 1, 120000, 'Video Consultation', '', NULL, '//s3.amazonaws.com/appforest_uf/f1596180713773x161227480708828100/Screen-Shot-2019-12-02-at-11.54.32-AM.png', 'Tele-medicine Consultation', 0, 0, 0, 0, 250000, 0, NULL, 'Video Consultation', 'TC0001', 0, 0, 'Service', 0, '2023-01-03 06:26:12', '2023-01-03 06:26:12', '', NULL, NULL, 'Consultation', '', 0, ''),
(10, 1, 0, 'CBC', '', NULL, '', 'CBC Cho Ray', 0, 0, 0, 0, 1000000, 0, NULL, NULL, 'CBC-2000', 0, 0, 'Service', 0, '2023-01-03 06:26:12', '2023-01-03 06:26:12', '', NULL, '1586420467321x812071488884670500', 'Lab', '', 0, ''),
(11, 1, 0, '', '', 1, '', 'Điều trị bằng oxy cao áp', 0, 0, 0, 0, 0, 0, NULL, NULL, '50.I.156', 0, 0, 'Service', 0, '2023-01-03 06:30:09', '2023-01-03 06:30:09', '', NULL, NULL, 'Service', '', 0, ''),
(12, 1, 0, '', '', 1, '', 'Chọc hút nước tiểu trên x­ương mu', 0, 0, 0, 0, 0, 0, NULL, NULL, '50.I.161', 0, 0, 'Service', 0, '2023-01-03 06:30:09', '2023-01-03 06:30:09', '', NULL, NULL, 'Lab', '', 0, ''),
(13, 1, 0, 'Đặt ống thông dẫn lưu bàng quang trên khớp vệ', '', 1, '', 'Đặt ống thông dẫn lưu bàng quang trên khớp vệ', 0, 0, 0, 0, 0, 0, NULL, NULL, '50.I.162', 0, 0, 'Service', 0, '2023-01-03 08:19:47', '2023-01-03 08:19:47', '', NULL, NULL, 'Lab', '', 0, ''),
(14, 1, 0, '', '', NULL, '', 'Cố định lồng ngực do chấn th­ương gãy xương sườn', 0, 0, 0, 0, 0, 0, NULL, NULL, '50.I.157', 0, 0, 'Service', 0, '2023-01-03 08:19:47', '2023-01-03 08:19:47', '', NULL, NULL, 'Service', '', 0, ''),
(15, 1, 0, '', '', 1, '', 'Cấp cứu ngừng tuần hoàn hô hấp cơ bản', 0, 0, 0, 0, 0, 0, NULL, NULL, '50.I.158', 0, 0, 'Service', 0, '2023-01-03 08:24:20', '2023-01-03 08:24:20', '', NULL, NULL, 'Lab', '', 0, ''),
(16, 1, 0, '', '', NULL, '', 'Mở thông bàng quang trên xương mu', 0, 0, 0, 0, 0, 0, NULL, NULL, '50.I.163', 0, 0, 'Service', 0, '2023-01-03 08:24:20', '2023-01-03 08:24:20', '', NULL, NULL, 'Lab', '', 0, ''),
(17, 1, 0, '', '', 1, '', 'Đặt ống thông dẫn lưu bàng quang', 0, 0, 0, 0, 0, 0, NULL, NULL, '50.I.160', 0, 0, 'Service', 0, '2023-01-03 08:27:14', '2023-01-03 08:27:14', '', NULL, NULL, 'Lab', '', 0, ''),
(18, 1, 20000, 'COVID', '', 1, '', 'COVID - Bac Si', 0, 0, 0, 0, 20000, 0, NULL, NULL, '50.I.166', 0, 0, 'Service', 0, '2023-01-03 08:27:15', '2023-01-03 08:27:15', '', NULL, NULL, 'Consultation', '', 0, ''),
(19, 1, 0, '', '', 1, '', 'Thông bàng quang', 0, 0, 0, 0, 0, 0, NULL, NULL, '50.I.164', 0, 0, 'Service', 0, '2023-01-03 08:30:26', '2023-01-03 08:30:26', '', NULL, NULL, 'Lab', '', 0, ''),
(20, 1, 0, '', '', 1, '', 'Rửa bàng quang lấy máu cục', 0, 0, 0, 0, 0, 0, NULL, NULL, '50.I.165', 0, 0, 'Service', 0, '2023-01-03 08:30:26', '2023-01-03 08:30:26', '', NULL, NULL, NULL, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `productgroup`
--

CREATE TABLE `productgroup` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `productgroup`
--

INSERT INTO `productgroup` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Consultation', 'Tư vấn'),
(2, 'Medication', 'Thuốc'),
(3, 'Lab', 'Xét nghiệm'),
(4, 'Delivery', 'Giao hàng'),
(5, 'In Home Service', 'Dịch vụ tại nhà'),
(6, 'Download', 'Tải xuống'),
(7, 'In Office Visit', 'Đến văn phòng'),
(8, 'Service Fees', 'Phí dịch vụ'),
(9, 'Package', 'Gói khám bệnh');

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Service', 'Dịch vụ'),
(2, 'Digital', 'Kỹ thuật số'),
(3, 'Physical', 'Hiện vật');

-- --------------------------------------------------------

--
-- Table structure for table `residentialstatus`
--

CREATE TABLE `residentialstatus` (
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `residentialstatus`
--

INSERT INTO `residentialstatus` (`en_us`, `vi_vn`) VALUES
('Citizen', 'Công dân'),
('Temporary Resident', 'Thường trú'),
('Permanent Resident', 'Permanent Resident'),
('Work Permit', 'Work Permit'),
('Tourist', 'Khách du lịch');

-- --------------------------------------------------------

--
-- Table structure for table `rxhowoften`
--

CREATE TABLE `rxhowoften` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `rxhowoften`
--

INSERT INTO `rxhowoften` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'ad lib - freely, as needed', 'Tự do, khi cần thiết'),
(2, 'prn - as needed', 'Khi cần thiết'),
(3, 'bid - twice a day', '2 lần / ngày'),
(4, 'tid - three times a day', '3 lần / ngày'),
(5, 'qid - four times a day', '4 lần / ngày'),
(6, 'q3h - every 3 hours', 'Cách 3 giờ uống 1 lần'),
(7, 'q4h - every 4 hours', 'Cách 4 giờ uống 1 lần'),
(8, 'qd - every day', 'Hằng ngày'),
(9, 'qod - every other day', 'Hai ngày một lần'),
(10, 'qam - every morning', 'Vào mỗi buổi sáng'),
(11, 'qpm - every evening', 'Vào mỗi buổi tối'),
(12, 'Other - refer to instructions', 'Khác - Tham khảo hướng dẫn');

-- --------------------------------------------------------

--
-- Table structure for table `rxusage`
--

CREATE TABLE `rxusage` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `rxusage`
--

INSERT INTO `rxusage` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'ad - right ear', 'Tai phải'),
(2, 'al - left ear', 'Tai trái'),
(3, 'od - right eye', 'Mắt phải'),
(4, 'os - left eye', 'Mắt trái'),
(5, 'ou - both eyes', 'Cả 2 mắt'),
(6, 'po - by mouth', 'Uống'),
(7, 'sl - sublingual', 'Ngậm dưới lưỡi'),
(8, 'top - apply topically', 'top - apply topically'),
(9, 'supp - suppository', 'supp - suppository'),
(10, 'Other - refer to instructions', 'Khác - Tham khảo hướng dẫn');

-- --------------------------------------------------------

--
-- Table structure for table `rxwhattime`
--

CREATE TABLE `rxwhattime` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `rxwhattime`
--

INSERT INTO `rxwhattime` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'ac - before meals', 'Trước bữa ăn'),
(2, 'int - between meals', 'Giữa bữa ăn'),
(3, 'pc - after meals', 'Sau bữa ăn'),
(4, 'hs - at bedtime', 'Vào giờ đi ngủ'),
(5, 'anytime', 'Bất cứ lúc nào'),
(6, 'Other - refer to instructions', 'Khác - Tham khảo hướng dẫn');

-- --------------------------------------------------------

--
-- Table structure for table `sex`
--

CREATE TABLE `sex` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sex`
--

INSERT INTO `sex` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'Male', 'Nam'),
(2, 'Female', 'Nữ'),
(3, 'Unknown', 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

CREATE TABLE `specialties` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'General Practitioner', 'Đa khoa'),
(2, 'Internal Medicine', 'Nội khoa'),
(3, 'Cardiology', 'Khoa tim mạch'),
(4, 'OBGYN', 'Khoa sản'),
(5, 'Pediatrics', 'Khoa nhi'),
(6, 'Urology', 'Khoa tiết niệu'),
(7, 'Dermatology', 'Khoa da liễu'),
(8, 'Emergency Medicine', 'Khoa cấp cứu'),
(9, 'Family Medicine', 'Bác sĩ gia đình'),
(10, 'Neurology', 'Khoa thần kinh'),
(11, 'Ophthalmology', 'Khoa mắt'),
(12, 'Pathology', 'Khoa giải phẫu bệnh'),
(13, 'Rehabilitation', 'Phục hồi chức năng'),
(14, 'Psychiatry', 'Khoa tâm thần'),
(15, 'Oncology', 'Khoa ung bướu'),
(16, 'Surgeon', 'Bác sĩ phẫu thuật');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `amount_number` double DEFAULT NULL,
  `message_text` text,
  `payment_type_text` text,
  `reference_number_text` text,
  `signature_text` text,
  `status_number` tinyint DEFAULT NULL,
  `trans_ref_no_text` text,
  `website_id_number` int DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Slug` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `amount_number`, `message_text`, `payment_type_text`, `reference_number_text`, `signature_text`, `status_number`, `trans_ref_no_text`, `website_id_number`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`) VALUES
(5, 250000, 'test', '', '1615171048554x553347285696118800', 'B35F5459BAF3FB967BBFC47A18C3EDB5885A5CB889656ABCAA7B57B359C40167', 1, '', 0, 2, NULL, '2021-03-09 04:30:44', NULL),
(6, 250000, 'test', '', '1615171048554x553347285696118800', 'B35F5459BAF3FB967BBFC47A18C3EDB5885A5CB889656ABCAA7B57B359C40167', 1, '', 0, 2, NULL, '2021-03-09 04:35:37', NULL),
(7, 250000, 'test', '', '1615171048554x553347285696118800', 'B35F5459BAF3FB967BBFC47A18C3EDB5885A5CB889656ABCAA7B57B359C40167', 1, '', 0, 2, NULL, '2021-03-09 07:08:26', NULL),
(8, 250000, 'test', '', '1615171048554x553347285696118800', 'B35F5459BAF3FB967BBFC47A18C3EDB5885A5CB889656ABCAA7B57B359C40167', 1, '', 0, 2, NULL, '2021-03-09 07:16:13', NULL),
(9, 250000, 'test', '', '1615171048554x553347285696118800', 'B35F5459BAF3FB967BBFC47A18C3EDB5885A5CB889656ABCAA7B57B359C40167', 1, '', 0, 2, NULL, '2021-03-09 07:18:04', NULL),
(10, 250000, 'test', '', '1615171048554x553347285696118800', 'B35F5459BAF3FB967BBFC47A18C3EDB5885A5CB889656ABCAA7B57B359C40167', 1, '', 0, 2, NULL, '2021-03-09 07:20:40', NULL),
(11, 250000, 'test', '', '1615171048554x553347285696118800', 'B35F5459BAF3FB967BBFC47A18C3EDB5885A5CB889656ABCAA7B57B359C40167', 1, '', 0, 2, NULL, '2021-03-09 07:23:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int NOT NULL,
  `address_geographic_address` varchar(500) DEFAULT NULL,
  `avatar_image` text,
  `birth_date_date` date DEFAULT NULL,
  `city_text` text,
  `country_option_nationality` varchar(50) DEFAULT NULL,
  `display_name_text` text,
  `extension_number_text` text,
  `facebook_text` text,
  `family_name_text` text,
  `first_name_text` text,
  `identification_number_text` text,
  `identification_type_option_identification_type` varchar(100) DEFAULT NULL,
  `insurance_number_text` text,
  `language_text` text,
  `meeting_link_text` text,
  `middle_name_text` text,
  `nationality_option_nationality` varchar(300) DEFAULT NULL,
  `onesigid_list_text` json DEFAULT NULL,
  `pin_text` varchar(1000) DEFAULT NULL,
  `postal_code_text` text,
  `primary_phone_number_text` text,
  `province_text` varchar(100) DEFAULT NULL,
  `residential_status_option_residential_status` varchar(100) DEFAULT NULL,
  `sex_option_sex` varchar(30) DEFAULT NULL,
  `signature_image` text,
  `signature_url_text` varchar(300) DEFAULT NULL,
  `skype_text` text,
  `uid_text` varchar(100) DEFAULT NULL,
  `user_type_option_user_type` varchar(150) DEFAULT NULL,
  `viber_text` text,
  `whatsapp_text` text,
  `zalo_text` text,
  `Email` text,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `Password` varchar(250) DEFAULT NULL,
  `guardian_user` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `address_geographic_address`, `avatar_image`, `birth_date_date`, `city_text`, `country_option_nationality`, `display_name_text`, `extension_number_text`, `facebook_text`, `family_name_text`, `first_name_text`, `identification_number_text`, `identification_type_option_identification_type`, `insurance_number_text`, `language_text`, `meeting_link_text`, `middle_name_text`, `nationality_option_nationality`, `onesigid_list_text`, `pin_text`, `postal_code_text`, `primary_phone_number_text`, `province_text`, `residential_status_option_residential_status`, `sex_option_sex`, `signature_image`, `signature_url_text`, `skype_text`, `uid_text`, `user_type_option_user_type`, `viber_text`, `whatsapp_text`, `zalo_text`, `Email`, `ModifiedDate`, `CreatedDate`, `Slug`, `Password`, `guardian_user`) VALUES
(45, '48 Dien bien phu, F1,q3,TP Ho Chi Min', '64337c70a4371toanha.jpg', '2000-05-01', '', '', 'Toi Bac Si', '', '', 'Toi', 'Si', '231', 'Government ID', '123', 'vi_vn', '', 'Bac', 'Vietnam', '{\"device_identifier\": \"12345\"}', 'OGQ5NjllZWY2ZWNhZDNjMjlhM2E2MjkyODBlNjg2Y2YwYzNmNWQ1YTg2YWZmM2NhMTIwMjBjOTIzYWRjNmM5Mg==', '', '1112356', '', 'Permanent Resident', 'Female', '6462d99761e77signature.png', '6462d99761e77signature.png', '', 'UID-20231', 'Doctor', '', NULL, '', 'bacsi@bacsi.com', '2024-03-08 15:05:15', '2023-01-10 06:21:07', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(46, '48 Dien bien phu, F1,q3,TP Ho Chi Min', NULL, '2010-09-01', '', '', 'bac Them Moi', '', '', 'bac', 'Moi', '111', 'Government ID', '132', 'vi_vn', '', 'Them', 'Vietnam', NULL, NULL, '', '111', '', 'Permanent Resident', 'Female', NULL, NULL, '', 'UID-202346', 'Delivery', '', NULL, '', 'dep-202346@nothing.com', '2023-01-10 06:25:38', '2023-01-10 06:24:50', NULL, '123456', '45'),
(47, NULL, NULL, NULL, NULL, NULL, 'Nguyen Sy Phan', NULL, NULL, 'Nguyen', 'Phan', NULL, NULL, NULL, '', NULL, 'Sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'nguen11@gmail.com', NULL, '2023-01-10 13:03:37', NULL, 'Y2I0N2Q3MjJlMzhjYjU0YmNlMTFlNTIzZjk4YTQ3Mjk4MDQ2ZTdhODg2N2UxNWE3ZjE2MDQ0OWNlM2E3Yjg5OA==', NULL),
(48, NULL, NULL, NULL, NULL, NULL, 'Phan Si Nguyen', NULL, NULL, 'Phan', 'Nguyen', NULL, NULL, NULL, '', NULL, 'Si', NULL, NULL, NULL, NULL, '0966034605', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen19@gmail.com', NULL, '2023-01-11 14:02:53', NULL, 'ODZjNmM0ZjUxNTdlMzZlNWE3OGM0MWI3MGIwNzAyYmQ5M2NjYmJjYzQ2ODQ4ZDFhZTM1M2VmYWUxM2Q1Mjk5MA==', NULL),
(49, NULL, NULL, NULL, NULL, NULL, 'Test Ha', NULL, NULL, 'Test', 'Ha', NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 't@t.vn', NULL, '2023-01-11 14:05:50', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(50, NULL, NULL, NULL, NULL, NULL, 'Nguyen Sy Phan', NULL, NULL, 'Nguyen', 'Phan', NULL, NULL, NULL, 'vi_vn', NULL, 'Sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen21@gmail.com', NULL, '2023-01-11 14:20:05', NULL, 'Y2I0N2Q3MjJlMzhjYjU0YmNlMTFlNTIzZjk4YTQ3Mjk4MDQ2ZTdhODg2N2UxNWE3ZjE2MDQ0OWNlM2E3Yjg5OA==', NULL),
(51, NULL, NULL, NULL, NULL, NULL, 'Nguyen Sy Phan', NULL, NULL, 'Nguyen', 'Phan', NULL, NULL, NULL, 'vi_vn', NULL, 'Sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen22@gmail.com', NULL, '2023-01-11 14:29:47', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(52, '', NULL, '1998-03-19', '', '', '', '', '', 'Tông', 'Trần', '', '', '', '', '', 'Thánh', '', NULL, NULL, '', '0334326676', '', '', '', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', '', '2023-02-08 13:43:40', '2023-01-11 15:20:55', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(53, NULL, NULL, NULL, NULL, NULL, 'lee leo peter', NULL, NULL, 'lee', 'peter', NULL, NULL, NULL, 'vi_vn', NULL, 'leo', NULL, NULL, NULL, NULL, '0334326686', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'peterlee01@gmail.com', NULL, '2023-01-11 15:21:25', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(54, NULL, NULL, NULL, NULL, NULL, 'lee leo peter', NULL, NULL, 'lee', 'peter', NULL, NULL, NULL, 'vi_vn', NULL, 'leo', NULL, NULL, NULL, NULL, '0334326686', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'peterlee02@gmail.com', NULL, '2023-01-11 15:27:15', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(55, NULL, NULL, NULL, NULL, NULL, 'lee leo peter', NULL, NULL, 'lee', 'peter', NULL, NULL, NULL, 'vi_vn', NULL, 'leo', NULL, NULL, NULL, NULL, '0334326686', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'peterlee03@gmail.com', NULL, '2023-01-11 15:28:07', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(56, NULL, NULL, NULL, NULL, NULL, 'lee leo peter', NULL, NULL, 'lee', 'peter', NULL, NULL, NULL, 'vi_vn', NULL, 'leo', NULL, NULL, NULL, NULL, '0334326686', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'peterlee04@gmail.com', NULL, '2023-01-11 15:35:13', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(57, NULL, NULL, NULL, NULL, NULL, 'lee leo peter', NULL, NULL, 'lee', 'peter', NULL, NULL, NULL, 'vi_vn', NULL, 'leo', NULL, NULL, NULL, NULL, '0334326686', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'peterlee05@gmail.com', NULL, '2023-01-11 15:38:46', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(58, NULL, NULL, NULL, NULL, NULL, 'asfas sfasf pete', NULL, NULL, 'asfas', 'pete', NULL, NULL, NULL, 'vi_vn', NULL, 'sfasf', NULL, NULL, NULL, NULL, '0334326686', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'dkgj@gmail.com', NULL, '2023-01-11 15:39:31', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(59, NULL, NULL, NULL, NULL, NULL, 'asfas asfasf fsafasf', NULL, NULL, 'asfas', 'fsafasf', NULL, NULL, NULL, 'vi_vn', NULL, 'asfasf', NULL, NULL, NULL, NULL, '0334364686', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'fdmhg@gmail.com', NULL, '2023-01-11 15:43:47', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(60, NULL, NULL, NULL, NULL, NULL, 'Nguyen Sy Phan', NULL, NULL, 'Nguyen', 'Phan', NULL, NULL, NULL, 'vi_vn', NULL, 'Sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen13@gmail.com', NULL, '2023-01-11 15:44:20', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(61, NULL, NULL, NULL, NULL, NULL, 'nguyen sy phan', NULL, NULL, 'nguyen', 'phan', NULL, NULL, NULL, 'vi_vn', NULL, 'sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen30@gmail.com', NULL, '2023-01-11 15:51:07', NULL, 'ZmZhMmIyMDM5NzJiOTc3NGQ4ZTYwYTVjOTc1MDcwN2M3MjE3YmNlODQzMzQwYThmNzE0NjQwNTE2ZTdmNDAwMA==', NULL),
(62, NULL, NULL, NULL, NULL, NULL, 'nguyen sy phan', NULL, NULL, 'nguyen', 'phan', NULL, NULL, NULL, 'vi_vn', NULL, 'sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen32@gmail.com', NULL, '2023-01-11 15:58:51', NULL, 'ZmZhMmIyMDM5NzJiOTc3NGQ4ZTYwYTVjOTc1MDcwN2M3MjE3YmNlODQzMzQwYThmNzE0NjQwNTE2ZTdmNDAwMA==', NULL),
(63, NULL, NULL, NULL, NULL, NULL, 'Bac Oi', NULL, NULL, 'Bac', 'Oi', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Doctor', NULL, NULL, NULL, 'bacsi@baccsi.com', '2023-05-10 02:09:38', '2023-01-12 02:02:27', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(64, '', NULL, '1970-01-01', '', '', 'Bac  Them', '', '', 'Bac', 'Them', '', '', '', 'vi_vn', '', '', '', NULL, NULL, '', '123', '', '', 'Male', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', 'dep-202364@nothing.com', '2023-01-12 02:12:02', '2023-01-12 02:11:29', NULL, NULL, '63'),
(65, NULL, NULL, NULL, NULL, NULL, 'nguyen sy phan', NULL, NULL, 'nguyen', 'phan', NULL, NULL, NULL, 'vi_vn', NULL, 'sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen33@gmail.com', NULL, '2023-01-12 02:50:22', NULL, 'ZmZhMmIyMDM5NzJiOTc3NGQ4ZTYwYTVjOTc1MDcwN2M3MjE3YmNlODQzMzQwYThmNzE0NjQwNTE2ZTdmNDAwMA==', NULL),
(66, NULL, NULL, NULL, NULL, NULL, 'nguyen sy phan', NULL, NULL, 'nguyen', 'phan', NULL, NULL, NULL, 'vi_vn', NULL, 'sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen34@gmail.com', NULL, '2023-01-12 02:51:22', NULL, 'ZmZhMmIyMDM5NzJiOTc3NGQ4ZTYwYTVjOTc1MDcwN2M3MjE3YmNlODQzMzQwYThmNzE0NjQwNTE2ZTdmNDAwMA==', NULL),
(67, NULL, NULL, NULL, NULL, NULL, 'nguyen sy phan', NULL, NULL, 'nguyen', 'phan', NULL, NULL, NULL, 'vi_vn', NULL, 'sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen35@gmail.com', NULL, '2023-01-12 02:52:50', NULL, 'ZmZhMmIyMDM5NzJiOTc3NGQ4ZTYwYTVjOTc1MDcwN2M3MjE3YmNlODQzMzQwYThmNzE0NjQwNTE2ZTdmNDAwMA==', NULL),
(68, NULL, NULL, NULL, NULL, NULL, 'nguyen sy phan', NULL, NULL, 'nguyen', 'phan', NULL, NULL, NULL, 'vi_vn', NULL, 'sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen36@gmail.com', NULL, '2023-01-12 13:10:20', NULL, 'ZmZhMmIyMDM5NzJiOTc3NGQ4ZTYwYTVjOTc1MDcwN2M3MjE3YmNlODQzMzQwYThmNzE0NjQwNTE2ZTdmNDAwMA==', NULL),
(69, NULL, NULL, NULL, NULL, NULL, 'nguyen sy phan', NULL, NULL, 'nguyen', 'phan', NULL, NULL, NULL, 'vi_vn', NULL, 'sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'phansynguyen37@gmail.com', NULL, '2023-01-12 13:11:42', NULL, 'ZmZhMmIyMDM5NzJiOTc3NGQ4ZTYwYTVjOTc1MDcwN2M3MjE3YmNlODQzMzQwYThmNzE0NjQwNTE2ZTdmNDAwMA==', NULL),
(70, NULL, NULL, NULL, NULL, NULL, 'Le Hoang Phuc', NULL, NULL, 'Le', 'Phuc', NULL, NULL, NULL, 'vi_vn', NULL, 'Hoang', NULL, NULL, NULL, NULL, '0334326686', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'hphuc5453@gmail.com', NULL, '2023-01-12 13:13:50', NULL, 'YTEyYWVlNWEwNzM5ZmM1MGVlOTQzNTJkNGEzNzBjNmVkZjM1OTAwMjZjNWFmYjYxMTAyYTc4NmUyY2RhODM3MA==', NULL),
(71, NULL, NULL, NULL, NULL, NULL, 'safasf asfas safas', NULL, NULL, 'safasf', 'safas', NULL, NULL, NULL, 'vi_vn', NULL, 'asfas', NULL, NULL, NULL, NULL, '0334326686', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'peterlee19@gmail.com', NULL, '2023-01-12 13:28:54', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(72, NULL, NULL, NULL, NULL, NULL, 'Nguyen Sy Phan', NULL, NULL, 'Nguyen', 'Phan', NULL, NULL, NULL, 'vi_vn', NULL, 'Sy', NULL, NULL, NULL, NULL, '0335656787', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'nguyenaaa@gmail.com', NULL, '2023-01-18 15:16:11', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(73, '48 Dien bien phu, F1,q3,TP Ho Chi Min', NULL, '2000-02-01', '', '', 'Toi La Nurse', '', '', 'Toi', 'Nurse1', '', 'Resident Card', '', 'vi_vn', '', 'La', 'Vietnam', NULL, NULL, '', '111', '', '', 'Female', NULL, NULL, '', 'UID-202346', 'Nurse', '', NULL, '', 'dep-202373@nothing.com', '2023-01-30 02:58:11', '2023-01-30 02:33:55', NULL, NULL, '45'),
(74, '48 Dien bien phu, F1,q3,TP Ho Chi Min', NULL, '2000-01-01', '', '', 'Lab Bac Oi ', '', '', 'Lab', 'Oi ', '', 'Resident Card', '', 'vi_vn', '', 'Bac', 'Vietnam', NULL, NULL, '', '111', '', '', 'Male', NULL, NULL, '', 'UID-202346', 'Lab', '', NULL, '', 'dep-202374@nothing.com', '2023-01-30 04:16:59', '2023-01-30 04:09:53', NULL, NULL, '45'),
(75, NULL, NULL, NULL, NULL, NULL, 'aaa lee peter', NULL, NULL, 'aaa', 'peter', NULL, NULL, NULL, 'vi_vn', NULL, 'lee', NULL, NULL, NULL, NULL, '0491123456', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'peterlee001@gmail.com', NULL, '2023-01-30 13:33:59', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(76, NULL, NULL, NULL, NULL, NULL, 'asdas dsd asdas', NULL, NULL, 'asdas', 'asdas', NULL, NULL, NULL, 'vi_vn', NULL, 'dsd', NULL, NULL, NULL, NULL, '0491123456', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'peterlee2222@gmail.co', NULL, '2023-01-30 13:41:15', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(77, NULL, NULL, NULL, NULL, NULL, 'asdas sadas sdas', NULL, NULL, 'asdas', 'sdas', NULL, NULL, NULL, 'vi_vn', NULL, 'sadas', NULL, NULL, NULL, NULL, '0491123456', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'dfjds@gmail.com', NULL, '2023-01-30 13:46:29', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(78, NULL, NULL, NULL, NULL, NULL, 'Leo Lee Peter', NULL, NULL, 'Leo', 'Peter', NULL, NULL, NULL, 'vi_vn', NULL, 'Lee', NULL, NULL, NULL, NULL, '0491123456', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'leo@gmail.com', NULL, '2023-01-31 14:14:08', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(79, NULL, NULL, NULL, NULL, NULL, 'sy phan ngueyn', NULL, NULL, 'sy', 'ngueyn', NULL, NULL, NULL, 'vi_vn', NULL, 'phan', NULL, NULL, NULL, NULL, '0491123456', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'sy12@gmail.com', NULL, '2023-01-31 14:29:57', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(80, '', NULL, '1998-03-19', '', '', '', '', '', 'Tông', 'Trần', '', '', '', '', '', 'Thánh', '', NULL, NULL, '', '0334326676', '', '', '', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', '', '2023-02-09 13:27:46', '2023-02-09 13:25:31', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(81, NULL, NULL, NULL, NULL, NULL, 'Nguyen Sy Phan', NULL, NULL, 'Nguyen', 'Phan', NULL, NULL, NULL, 'vi_vn', NULL, 'Sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'accounttest@gmail.com', NULL, '2023-02-09 13:30:33', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(82, '45 Dien bien phu, Quan 5, tphcm', NULL, '2000-03-01', '', '', 'Toi  La  Tet', '', '', 'Toi ', 'Tet', '', '', '', 'vi_vn', '', 'La ', '', '{\"device_identifier\": \"12345\"}', NULL, '', '111222333', '', '', 'Male', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', 'p@p.com', '2023-04-26 13:42:07', '2023-02-10 02:05:00', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(83, '', NULL, '2005-10-01', '', '', 'Toi   Ban', '', '', 'Toi ', 'Ban', '', '', '', 'vi_vn', '', '', '', NULL, NULL, '', '111222333', '', '', 'Male', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', 'dep-202383@nothing.com', '2023-02-10 02:06:51', '2023-02-10 02:06:16', NULL, NULL, '82'),
(84, '', NULL, '1998-03-19', '', '', '', '', '', 'Tông', 'Trần', '', '', '', '', '', 'Thánh', '', NULL, NULL, '', '0334326676', '', '', '1', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', '', '2023-02-13 13:01:28', '2023-02-13 12:51:32', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(85, '', NULL, '1998-03-19', '', '', '', '', '', 'Tông', 'Trần', '', '', '', '', '', 'Thánh', '', NULL, NULL, '', '0334326676', '', '', '1', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', '', '2023-02-13 13:23:43', '2023-02-13 13:23:26', NULL, 'NjUzOWU4NjU2OWIzODYwYzZmZDFiZTc1MDlmNGI2M2RlZmUyOTYzZjY2ODA5NjdlZTBhOWQwZWM3YTMxMmQ2NQ==', NULL),
(86, NULL, NULL, NULL, NULL, NULL, 't t', NULL, NULL, 't', 't', NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 't@t.c', NULL, '2023-02-13 14:14:22', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(87, NULL, NULL, NULL, NULL, NULL, 'Nguyen Sy Phan', NULL, NULL, 'Nguyen', 'Phan', NULL, NULL, NULL, 'vi_vn', NULL, 'Sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'account3@gmail.com', NULL, '2023-02-13 14:43:46', NULL, 'MTljYTdhNWIwYTZhOWZiYjI2MzAwODFkNDM3MjQxMDUzNzVjODM1ZTAxNjQ5MjYzYzEzZWU0YmU0MDQyZTA4OQ==', NULL),
(88, NULL, NULL, NULL, NULL, NULL, 't t', NULL, NULL, 't', 't', NULL, NULL, NULL, '', NULL, '', NULL, '{\"device_identifier\": \"12345\"}', NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 't@tt.com', NULL, '2023-02-13 15:31:20', NULL, 'YTEyYWVlNWEwNzM5ZmM1MGVlOTQzNTJkNGEzNzBjNmVkZjM1OTAwMjZjNWFmYjYxMTAyYTc4NmUyY2RhODM3MA==', NULL),
(89, NULL, NULL, NULL, NULL, NULL, 'Nguyen Sy Phan', NULL, NULL, 'Nguyen', 'Phan', NULL, NULL, NULL, 'vi_vn', NULL, 'Sy', NULL, '{\"device_identifier\": \"12345\"}', NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'account5@gmail.com', NULL, '2023-02-13 15:33:53', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(90, NULL, NULL, NULL, NULL, NULL, 'tess tss ss', NULL, NULL, 'tess', 'ss', NULL, NULL, NULL, '', NULL, 'tss', NULL, NULL, NULL, NULL, '124455', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'tt@tt.com', NULL, '2023-02-14 02:28:59', NULL, 'ZWYxODdmZGEyZjExNGRmN2Y2NGVkMzM2OWVlYzlkYjFkZTAxOTgwMGZkOGZlOTgyNjQ1NDFjMWQ4MzdkOGRlNQ==', NULL),
(91, NULL, NULL, NULL, NULL, NULL, 'Nguyen Sy Phan', NULL, NULL, 'Nguyen', 'Phan', NULL, NULL, NULL, 'vi_vn', NULL, 'Sy', NULL, NULL, NULL, NULL, '0334326676', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'account6@gmail.com', NULL, '2023-02-14 13:08:51', NULL, 'MTljYTdhNWIwYTZhOWZiYjI2MzAwODFkNDM3MjQxMDUzNzVjODM1ZTAxNjQ5MjYzYzEzZWU0YmU0MDQyZTA4OQ==', NULL),
(92, '', NULL, '1984-02-21', '', '', '', '', '', 'Do', 'Cristiano', '', '', '', '', '', 'Ronal', '', '{\"device_identifier\": \"12345\"}', NULL, '', '0334321234', '', '', '1', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', 'account7@gmail.com', '2023-03-01 15:07:30', '2023-02-14 13:38:33', NULL, 'YjBlZTNiODNmN2FjYzdiNDcyZTJhNGNhYWM2NDkxZGQzMjMyZjJlYTE2ZGI4MWJiMDZmYTRiMzE5NDc0MGU4YQ==', NULL),
(93, '140 Lê Trọng Tấn - Q. Tân Phú - Tp. HCM', NULL, NULL, '', '', NULL, NULL, NULL, 'Mẹ Tao Nè', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-202393@nothing.com', NULL, '2023-02-20 08:35:57', NULL, NULL, '92'),
(94, '140 Lê Trọng Tấn - Q. Tân Phú - Tp. HCM', NULL, NULL, '', '', NULL, NULL, NULL, 'Mẹ Tao Nè', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-202394@nothing.com', NULL, '2023-02-20 08:45:52', NULL, NULL, '92'),
(95, NULL, NULL, NULL, NULL, NULL, 'admin Toi', NULL, NULL, 'admin', 'Toi', NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Admin', NULL, NULL, NULL, 'ad@ad.com', NULL, '2023-03-15 01:10:31', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(96, '140 Lê Trọng Tấn - Q. Tân Phú - Tp. HCM', NULL, NULL, '', '', NULL, NULL, NULL, 'Cristiano Ronaldo', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '0334326676', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-202396@nothing.com', NULL, '2023-03-15 13:06:35', NULL, NULL, '92'),
(97, 'ABC XZ, Duong so 10, cong vien phan mem', NULL, NULL, '', '', NULL, NULL, NULL, 'Leo Messi', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '0334326675', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-202397@nothing.com', NULL, '2023-03-15 13:54:30', NULL, NULL, '92'),
(98, 'Ho Guom, Ha Noi', NULL, NULL, '', '', NULL, NULL, NULL, 'Nguyen Cong Phuong', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '0334337543', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-202398@nothing.com', NULL, '2023-03-15 13:56:25', NULL, NULL, '92'),
(99, '2A Pham Van Dong, Sai Gon', NULL, NULL, '', '', NULL, NULL, NULL, 'Nguyen Quang Hai', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '0456785945', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-202399@nothing.com', NULL, '2023-03-15 13:57:40', NULL, NULL, '92'),
(100, 'gdfgf', NULL, NULL, '', '', NULL, NULL, NULL, 'dfsdf', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '0334543678', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-2023100@nothing.com', NULL, '2023-03-15 14:00:38', NULL, NULL, ''),
(101, '54fgdf', NULL, NULL, '', '', NULL, NULL, NULL, 'xcxz', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '0334325565', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-2023101@nothing.com', NULL, '2023-03-15 14:06:33', NULL, NULL, ''),
(102, '140 Lê Trọng Tấn - Q. Tân Phú - Tp. HCM', NULL, NULL, '', '', NULL, NULL, NULL, 'Cristiano Ronaldo', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '0334326676', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-2023102@nothing.com', NULL, '2023-03-15 14:07:02', NULL, NULL, ''),
(103, 'Song Lam Nghe An, Ha Tinh', NULL, NULL, '', '', NULL, NULL, NULL, 'Bui Tan Truong', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '0334326743', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-2023103@nothing.com', NULL, '2023-03-15 14:42:53', NULL, NULL, '92'),
(107, '', NULL, '1970-01-01', '', '', 'test  email', '', '', 'test', 'email', '', '', '', 'vi_vn', 'https://xinchaobacsi.vn/agora_connector?rm=', '', '', NULL, NULL, '', '123', '', '', 'Male', NULL, NULL, '', 'UID-202346', 'Doctor', '', NULL, '', 'anh@at1ts.com', '2023-04-26 14:48:14', '2023-03-27 06:40:08', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(108, NULL, NULL, NULL, NULL, NULL, 'phan si nguyen', NULL, NULL, 'phan', 'nguyen', NULL, NULL, NULL, 'vi_vn', NULL, 'si', NULL, NULL, NULL, NULL, '0966034605', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'nguyen@gmail.com', '2023-04-26 14:29:34', '2023-03-28 14:31:23', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(111, NULL, NULL, NULL, NULL, NULL, 'Phan Nguyen Si', NULL, NULL, 'Phan', 'Si', NULL, NULL, NULL, 'vi_vn', NULL, 'Nguyen', NULL, '{\"sig_id_email\": \"6de04b7f-1231-4f33-9bb9-521e3b3c4fbc\", \"sig_id_phone\": \"6d60cdab-abd6-46fc-86bd-68ca64a206be\"}', NULL, NULL, '0966035605', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'acccount5@gmail.com', NULL, '2023-04-17 16:15:55', NULL, 'YTEyYWVlNWEwNzM5ZmM1MGVlOTQzNTJkNGEzNzBjNmVkZjM1OTAwMjZjNWFmYjYxMTAyYTc4NmUyY2RhODM3MA==', NULL),
(112, 'quan 12', NULL, NULL, '', '', NULL, NULL, NULL, 'Nguyen', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '0988888888', '', '', NULL, NULL, NULL, NULL, 'UID-202346', '', NULL, NULL, NULL, 'dep-2023112@nothing.com', NULL, '2023-04-18 14:51:56', NULL, NULL, '108'),
(113, NULL, NULL, NULL, NULL, NULL, 'Nguyen Signal', NULL, NULL, 'Nguyen', 'Signal', NULL, NULL, NULL, '', NULL, '', NULL, '{\"sig_id_email\": \"67638e46-8018-4e21-97ea-6d4dcf268ebe\", \"sig_id_web_push\": \"1eab1df0-5189-4a1e-a546-27196b911dbe\"}', NULL, NULL, '0223999999', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'nguyen@at1ts1.com', NULL, '2023-04-24 02:34:14', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(114, '100 Dien Bien Phu, Quan 5, TPHCM', NULL, '2010-01-01', '', '', 'Nguyen  test', '', '', 'Nguyen', 'test', '123456789', 'Government ID', '12345678', 'vi_vn', '', '', '', NULL, NULL, '', '0223999999', '', 'Citizen', 'Male', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', 'dep-2023114@nothing.com', '2023-04-26 01:30:43', '2023-04-26 01:29:00', NULL, NULL, '113'),
(115, NULL, NULL, NULL, NULL, NULL, 'test midle name', NULL, NULL, 'test', 'name', NULL, NULL, NULL, '', NULL, 'midle', NULL, '{\"sig_id_email\": \"2a53aa72-264e-4811-b845-693daf018994\", \"sig_id_phone\": \"3ca1bca9-485c-4988-8d4c-bdc014d808c4\", \"sig_id_web_push\": \"d25d0cea-279d-43c6-be5e-6a0b4e1d4392\"}', NULL, NULL, '1111111111', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'name@test.com', NULL, '2023-04-26 13:35:24', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(116, '45 Dien bien phu, Quan 5, tphcm', NULL, '1970-01-01', '', '', '', '', '', 'Toi ', 'testttt', '', '', '', 'vi_vn', '', '', '', NULL, NULL, '', '111222333', '', '', 'Male', NULL, NULL, '', 'UID-202346', 'Patient', '', NULL, '', 'dep-2023116@nothing.com', '2023-04-26 13:54:52', '2023-04-26 13:54:34', NULL, NULL, '82'),
(117, NULL, NULL, NULL, NULL, NULL, 't tt', NULL, NULL, 't', 'tt', NULL, NULL, NULL, '', NULL, '', NULL, '{\"sig_id_email\": \"c34cb036-95d1-46c9-9d76-29d44c0975b0\", \"sig_id_phone\": \"3bf63064-b0c8-44f6-8407-ce86ea856693\", \"sig_id_web_push\": \"0b53bea2-5f19-480f-92a5-9bcc1c1e5509\", \"device_identifier\": \"12345\"}', NULL, NULL, '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'test@test1.com', NULL, '2023-05-31 04:39:31', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(118, NULL, NULL, NULL, NULL, NULL, 'm1 m1 m1', NULL, NULL, 'm1', 'm1', NULL, NULL, NULL, 'vi_vn', NULL, 'm1', NULL, '{\"sig_id_email\": \"a4c46524-d810-45a6-98a2-084b5a2623fb\", \"sig_id_phone\": \"3bf63064-b0c8-44f6-8407-ce86ea856693\", \"sig_id_web_push\": \"eabfd525-d222-4024-a7ae-9692f5543672\"}', NULL, NULL, '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, 'UID-202346', 'Patient', NULL, NULL, NULL, 'm1@m1.com', NULL, '2023-06-19 04:20:46', NULL, 'ODk3MzAzMzJhMTZmZDQ5ZWUwY2I2NzIzOTkwY2FjZDU0ZTU4OTZiNDUzYWI5N2VjNmRjNTVlOTJhMTlkOTRkYQ==', NULL),
(119, '48 Dien bien phu, F1,q3,TP Ho Chi Min', NULL, '2000-05-01', NULL, NULL, NULL, NULL, NULL, 'Toi', NULL, '231', 'Government ID', '123', NULL, NULL, 'Bac', NULL, NULL, NULL, '', '111', '', 'Permanent Resident', 'Female', NULL, NULL, NULL, NULL, 'Doctor', NULL, NULL, NULL, 'bacsi@bacsi.com', NULL, '2024-03-08 18:42:09', NULL, NULL, NULL),
(120, '48 Dien bien phu, F1,q3,TP Ho Chi Min', NULL, '2000-05-01', NULL, NULL, NULL, NULL, NULL, 'Toi', NULL, '231', 'Government ID', '123', NULL, NULL, 'Bac', NULL, NULL, NULL, '', '111', '', 'Permanent Resident', 'Female', NULL, NULL, NULL, NULL, 'Doctor', NULL, NULL, NULL, 'bacsi@bacsi.com', NULL, '2024-03-08 18:44:32', NULL, NULL, NULL),
(121, '48 Dien bien phu, F1,q3,TP Ho Chi Min', NULL, '2000-05-01', NULL, NULL, NULL, NULL, NULL, 'Toi', NULL, '231', 'Government ID', '123', NULL, NULL, 'Bac', NULL, NULL, NULL, '', '111', '', 'Permanent Resident', 'Female', NULL, NULL, NULL, NULL, 'Doctor', NULL, NULL, NULL, 'bacsi@bacsi.com', NULL, '2024-03-08 18:44:42', NULL, NULL, NULL),
(122, '48 Dien bien phu, F1,q3,TP Ho Chi Min', NULL, '2000-05-01', NULL, NULL, NULL, NULL, NULL, 'Toi', NULL, '23112345', 'Driver License', '123', NULL, NULL, 'Bac ', NULL, NULL, NULL, '', '111', '', 'Permanent Resident', 'Female', NULL, NULL, NULL, NULL, 'Doctor', NULL, NULL, NULL, 'bacsi@bacsi.com', NULL, '2024-03-08 20:52:42', NULL, NULL, NULL),
(123, '48 Dien bien phu, F1,q3,TP Ho Chi Min', NULL, '2000-05-01', NULL, NULL, NULL, NULL, NULL, 'Toi', NULL, '231', 'Government ID', '123', NULL, NULL, 'Bac', NULL, NULL, NULL, '', '11112345', '', 'Permanent Resident', 'Female', NULL, NULL, NULL, NULL, 'Doctor', NULL, NULL, NULL, 'bacsi@bacsi.com', NULL, '2024-03-08 20:54:30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usermeta`
--

CREATE TABLE `usermeta` (
  `user_meta_id` int NOT NULL,
  `admin_notes_text` text,
  `approved_to_practice_boolean` tinyint DEFAULT NULL,
  `degree_text` text,
  `description_text` text,
  `languages_list_option_language` json DEFAULT NULL,
  `medical_license_text` text,
  `rx_number_text` text,
  `specialty_list_option_specialties` json DEFAULT NULL,
  `university1_text` text,
  `university_address_geographic_address` text,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `user_meta_user` text,
  `rating_custom_user_ratings` text,
  `affiliate_custom_locations` text,
  `Slug` text,
  `documents_list_file` text,
  `location_affilitate_option_locations` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `usermeta`
--

INSERT INTO `usermeta` (`user_meta_id`, `admin_notes_text`, `approved_to_practice_boolean`, `degree_text`, `description_text`, `languages_list_option_language`, `medical_license_text`, `rx_number_text`, `specialty_list_option_specialties`, `university1_text`, `university_address_geographic_address`, `Creator`, `ModifiedDate`, `CreatedDate`, `user_meta_user`, `rating_custom_user_ratings`, `affiliate_custom_locations`, `Slug`, `documents_list_file`, `location_affilitate_option_locations`) VALUES
(11, NULL, 1, '1234', '', '[\"Vietnamese\"]', '123', 'rx123', '[\"General Practitioner\"]', 'Y', '', 45, '2023-05-12 05:56:42', NULL, '45', '', '1', NULL, 'bitbucket-logo.png', ''),
(12, NULL, 1, '123', '', '[\"Vietnamese\", \"English\"]', '123', 'RX-123', '[\"General Practitioner\", \"Internal Medicine\", \"Cardiology\"]', 'Y', '46 Hung vuong, q5, ho chi minh', 63, NULL, NULL, '63', '', '2', NULL, NULL, ''),
(13, NULL, NULL, '11111', 'ttttttttttt', '[\"Vietnamese\", \"English\"]', '111', '1111111111', '[\"General Practitioner\", \"Cardiology\", \"Pediatrics\"]', 'teast', '1111', 107, NULL, NULL, '107', '', '1', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `usermeta_doc`
--

CREATE TABLE `usermeta_doc` (
  `DocID` int NOT NULL,
  `UserMeta_ID` int DEFAULT NULL,
  `Image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `userratings`
--

CREATE TABLE `userratings` (
  `AppointmentID` int NOT NULL,
  `LabID` int NOT NULL,
  `PrescriptionID` int NOT NULL,
  `rating_number` int NOT NULL,
  `RatingSubject` int NOT NULL,
  `remarks_text` text NOT NULL,
  `Creator` int NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `Slug` text NOT NULL,
  `appointment_custom_appointment` varchar(300) DEFAULT NULL,
  `lab_custom_lab` varchar(300) DEFAULT NULL,
  `pharmacy_custom_prescription1` varchar(300) DEFAULT NULL,
  `rating_subject_user` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `UserType_ID` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`UserType_ID`, `en_us`, `vi_vn`) VALUES
(1, 'Admin', 'Admin'),
(2, 'Doctor', 'Bác sĩ'),
(3, 'Nurse', 'Y tá'),
(4, 'Patient', 'Bệnh nhân'),
(5, 'Office', 'Văn phòng'),
(6, 'Lab', 'Phòng xét nghiệm'),
(7, 'Pharmacy', 'Nhà thuốc'),
(8, 'Delivery', 'Giao hàng');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_meta_short`
-- (See below for the actual view)
--
CREATE TABLE `user_meta_short` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_short`
-- (See below for the actual view)
--
CREATE TABLE `user_short` (
);

-- --------------------------------------------------------

--
-- Table structure for table `vitals`
--

CREATE TABLE `vitals` (
  `Vital_ID` int NOT NULL,
  `abdominal_ultrasound_result_text` text,
  `blood_pressure___diastolic_number` int DEFAULT NULL,
  `blood_pressure___systolic_number` int DEFAULT NULL,
  `bmi_number` int DEFAULT NULL,
  `documents_list_file` text,
  `fullbody___others_text` text,
  `fullbody___skin_mucosa_text` text,
  `glucose_number` int DEFAULT NULL,
  `heart_rate_number` int DEFAULT NULL,
  `hematolofy_result_text` text,
  `HistoryDescription` text,
  `left_eye___glasses_text` text,
  `left_eye___not_glasses_text` text,
  `notes_text` text,
  `o2_staturation_number` int DEFAULT NULL,
  `organs___cardiology_text` text,
  `organs___dermatology_text` text,
  `organs___digestive_system_text` text,
  `organs___ears_nose_throat_text` text,
  `organs___endocrine_system_text` text,
  `organs___evaluation_of_physical_text` text,
  `organs___eyes_text` text,
  `organs___mental_text` text,
  `organs___musculoskeletal_system_text` text,
  `organs___nervous_system_text` text,
  `organs___nutrition_text` text,
  `organs___obstetricians_and_gynecologists_text` text,
  `organs___others_text` text,
  `organs___physical_system_text` text,
  `organs___respiratory_system_text` text,
  `organs___surgical_system_text` text,
  `organs___urinary_tract_text` text,
  `pain_level_number` int DEFAULT NULL,
  `pulse_text` text,
  `respiratory_rate_number` int DEFAULT NULL,
  `respiratory_rates_text` text,
  `right_eye___glasses_text` text,
  `right_eye___not_glasses_text` text,
  `serum_biochemistry_result_text` text,
  `temperature_number` double DEFAULT NULL,
  `urine_biochemistry_result_text` text,
  `WaistCircumference` text,
  `weight_number` double DEFAULT NULL,
  `webmeeting1_text` varchar(300) DEFAULT NULL,
  `height_number` double DEFAULT NULL,
  `Creator` int DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Slug` text,
  `appointment_custom_appointment` varchar(300) DEFAULT NULL,
  `patient_user` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `vitals`
--

INSERT INTO `vitals` (`Vital_ID`, `abdominal_ultrasound_result_text`, `blood_pressure___diastolic_number`, `blood_pressure___systolic_number`, `bmi_number`, `documents_list_file`, `fullbody___others_text`, `fullbody___skin_mucosa_text`, `glucose_number`, `heart_rate_number`, `hematolofy_result_text`, `HistoryDescription`, `left_eye___glasses_text`, `left_eye___not_glasses_text`, `notes_text`, `o2_staturation_number`, `organs___cardiology_text`, `organs___dermatology_text`, `organs___digestive_system_text`, `organs___ears_nose_throat_text`, `organs___endocrine_system_text`, `organs___evaluation_of_physical_text`, `organs___eyes_text`, `organs___mental_text`, `organs___musculoskeletal_system_text`, `organs___nervous_system_text`, `organs___nutrition_text`, `organs___obstetricians_and_gynecologists_text`, `organs___others_text`, `organs___physical_system_text`, `organs___respiratory_system_text`, `organs___surgical_system_text`, `organs___urinary_tract_text`, `pain_level_number`, `pulse_text`, `respiratory_rate_number`, `respiratory_rates_text`, `right_eye___glasses_text`, `right_eye___not_glasses_text`, `serum_biochemistry_result_text`, `temperature_number`, `urine_biochemistry_result_text`, `WaistCircumference`, `weight_number`, `webmeeting1_text`, `height_number`, `Creator`, `ModifiedDate`, `CreatedDate`, `Slug`, `appointment_custom_appointment`, `patient_user`) VALUES
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, '2023-01-10 06:21:59', NULL, '94', '45'),
(102, NULL, 100, 70, 0, NULL, NULL, NULL, 0, 62, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, '2023-01-10 06:47:21', NULL, '', '46'),
(103, NULL, 110, 70, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, '2023-01-12 02:10:23', NULL, '', '63'),
(104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63, NULL, '2023-01-12 02:12:15', NULL, '97', '64'),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63, NULL, '2023-01-12 02:22:21', NULL, '98', '63'),
(106, '', 110, 0, 0, NULL, '', '', 0, 0, '', NULL, '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '60', 0, NULL, '', '', '', 36, '', NULL, 0, NULL, 0, 63, NULL, '2023-01-12 02:22:57', NULL, '99', '63'),
(107, NULL, 110, 70, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, '2023-01-30 02:31:15', NULL, '', '45'),
(108, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 45, NULL, '2023-01-30 02:52:43', NULL, '100', '45'),
(109, '', 0, 0, 0, NULL, '', '', 0, 0, '', NULL, '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0', 0, NULL, '', '', '', 0, '', NULL, 0, NULL, 0, 45, NULL, '2023-02-06 00:58:26', NULL, '101', '45'),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '2023-02-10 02:05:53', NULL, '102', '82'),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '2023-02-10 02:06:04', NULL, '103', '82'),
(112, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 82, NULL, '2023-02-10 02:07:07', NULL, '104', '83'),
(113, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 45, NULL, '2023-03-03 09:04:30', NULL, '105', '45'),
(114, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 82, NULL, '2023-03-03 09:06:39', NULL, '106', '82'),
(115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '2023-03-06 08:45:09', NULL, '107', '82'),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 107, NULL, '2023-03-27 06:49:27', NULL, '108', '107'),
(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 107, NULL, '2023-03-27 06:50:44', NULL, '109', '107'),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 107, NULL, '2023-03-27 06:55:04', NULL, '110', '107'),
(119, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 107, NULL, '2023-03-27 07:05:54', NULL, '111', '107'),
(120, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 107, NULL, '2023-03-29 01:25:05', NULL, '112', '107'),
(121, 'tttt', 3, 2, 70, NULL, 'ok', 'test', 0, 0, 't', 'test', '10', '10', 'testttt', 0, 'test', 'cc', 'tot', 'ccc', 'fddfs', '', 'cc', 'dsds', 'tot', 'dasdd', 'cc', 'cc', 'cc', 'cc', 'tot', 'dd', 'tot', 0, '1', 4, NULL, '10', '10', 'tt', 2, 'ttt', '60', 4, NULL, 6, 107, NULL, '2023-03-31 01:07:49', NULL, '113', '107'),
(122, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 107, NULL, '2023-04-06 02:47:40', NULL, '114', '107'),
(123, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 45, NULL, '2023-04-06 06:37:47', NULL, '115', '107'),
(124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 107, NULL, '2023-04-06 06:40:15', NULL, '116', '107'),
(125, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 107, NULL, '2023-04-06 06:40:26', NULL, '117', '107'),
(126, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 107, NULL, '2023-04-06 06:40:32', NULL, '118', '107'),
(127, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 107, NULL, '2023-04-06 08:07:05', NULL, '119', '107'),
(128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 107, NULL, '2023-04-10 03:02:07', NULL, '120', '107'),
(129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110, NULL, '2023-04-17 04:18:43', NULL, '121', '110'),
(130, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 110, NULL, '2023-04-17 04:19:06', NULL, '122', '110'),
(131, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 113, NULL, '2023-04-24 02:35:41', NULL, '123', '113'),
(132, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 113, NULL, '2023-04-26 01:27:21', NULL, '124', '113'),
(133, NULL, 110, 70, 9, NULL, NULL, NULL, 0, 60, NULL, NULL, NULL, NULL, 'test', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 60, NULL, NULL, NULL, NULL, 36, NULL, NULL, 168, NULL, 170, NULL, NULL, '2023-04-26 01:28:32', NULL, '', '113'),
(134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113, NULL, '2023-04-26 01:31:07', NULL, '125', '114'),
(135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113, NULL, '2023-04-26 01:47:54', NULL, '126', '113'),
(136, '', 0, 0, 0, NULL, '', '', 0, 0, '', 'dddf', '', '111', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '111', 0, NULL, '', '111', '', 0, '', '', 0, NULL, 0, 82, NULL, '2023-04-26 13:44:54', NULL, '127', '82'),
(137, NULL, 1, 111, 0, NULL, NULL, NULL, 0, 111111, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, NULL, NULL, '2023-04-26 13:53:10', NULL, '', '82'),
(138, NULL, 110, 70, 10, NULL, NULL, NULL, 5, 60, NULL, NULL, NULL, NULL, '', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 60, NULL, NULL, NULL, NULL, 36, NULL, NULL, 65, NULL, 170, NULL, NULL, '2023-05-08 07:28:53', NULL, '', '45'),
(139, 'bacsi@bacsi.com', 0, 0, 0, NULL, '', '', 0, 0, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0', 0, NULL, '', '', '', 0, '', '', 0, NULL, 0, 45, NULL, '2023-05-08 16:48:48', NULL, '128', '74'),
(140, NULL, 150, 110, 4, NULL, NULL, NULL, 20, 50, NULL, NULL, NULL, NULL, '', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 45, NULL, NULL, NULL, NULL, 38, NULL, NULL, 70, NULL, 170, NULL, NULL, '2023-05-10 01:26:09', NULL, '', '45'),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, '2023-05-10 02:06:40', NULL, '129', '45'),
(142, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 45, NULL, '2023-05-10 02:11:59', NULL, '130', '45'),
(143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '2023-05-12 02:01:43', NULL, '131', '82'),
(144, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 82, NULL, '2023-05-12 05:55:11', NULL, '132', '82'),
(145, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 45, NULL, '2023-05-12 05:57:58', NULL, '133', '45'),
(146, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 82, NULL, '2023-05-16 02:59:09', NULL, '134', '82'),
(147, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 45, NULL, '2023-05-17 05:15:17', NULL, '135', '45'),
(148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, '2023-05-31 04:20:39', NULL, '136', '45'),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, '2023-05-31 04:30:20', NULL, '137', '45'),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '2023-06-24 07:30:00', NULL, '138', '82'),
(151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '2023-07-03 01:17:26', NULL, '139', '82'),
(152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '2023-07-03 01:20:32', NULL, '140', '82'),
(153, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 82, NULL, '2023-07-04 02:59:55', NULL, '141', '82'),
(154, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 0, 82, NULL, '2023-08-13 01:03:44', NULL, '142', '82'),
(155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '2023-09-01 04:02:57', NULL, '143', '116'),
(156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, '2023-09-01 04:03:26', NULL, '144', '82');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vitals_short`
-- (See below for the actual view)
--
CREATE TABLE `vitals_short` (
);

-- --------------------------------------------------------

--
-- Table structure for table `waitingroom`
--

CREATE TABLE `waitingroom` (
  `AppointmentID` int NOT NULL,
  `WaitingStatusID` int NOT NULL,
  `Creator` int NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `Slug` int NOT NULL,
  `appointment_custom_appointment` varchar(300) DEFAULT NULL,
  `waiting_status_option_waiting_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `waitingstatus`
--

CREATE TABLE `waitingstatus` (
  `id` int NOT NULL,
  `en_us` varchar(255) NOT NULL,
  `vi_vn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `waitingstatus`
--

INSERT INTO `waitingstatus` (`id`, `en_us`, `vi_vn`) VALUES
(1, 'New', 'Mới tạo'),
(2, 'Waiting Nurse', 'Chờ Y tá'),
(3, 'Waiting Doctor', 'Chờ Bác sĩ'),
(4, 'Complete', 'Hoàn thành');

-- --------------------------------------------------------

--
-- Structure for view `appointment_short`
--
DROP TABLE IF EXISTS `appointment_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `appointment_short`  AS SELECT `a`.`Appt_id` AS `Appt_id`, `a`.`apt_date_date` AS `apt_date_date`, `a`.`aptid_text` AS `aptid_text`, `a`.`attachments_list_file` AS `attachments_list_file`, `a`.`description_text` AS `description_text`, `a`.`disposition_option_apt_disposition` AS `disposition_option_apt_disposition`, `a`.`insurance_custom_insurance` AS `insurance_custom_insurance`, `a`.`status_option_status` AS `status_option_status`, `a`.`videomeeting_file` AS `videomeeting_file`, `a`.`webmeeting_text` AS `webmeeting_text`, `a`.`ModifiedDate` AS `ModifiedDate`, `a`.`CreatedDate` AS `CreatedDate`, `a`.`Slug` AS `Slug`, `a`.`Creator` AS `Creator`, `a`.`patient_user` AS `patient_user`, `a`.`assigned_doctor_user` AS `assigned_doctor_user`, `a`.`triage_staff_user` AS `triage_staff_user`, `a`.`invoice_custom_invoice` AS `invoice_custom_invoice`, `a`.`diagnostic_list_custom_diagnostic` AS `diagnostic_list_custom_diagnostic`, `a`.`location_custom_locations` AS `location_custom_locations`, `a`.`type_option_appointment_types` AS `type_option_appointment_types`, `a`.`chief_complaint_option_chief_complaint` AS `chief_complaint_option_chief_complaint`, `ap`.`vi_vn` AS `type_option_appointment_types_vi_vn`, `d`.`vi_vn` AS `disposition_option_apt_disposition_vi_vn`, `c`.`vi_vn` AS `chief_complaint_option_chief_complaint_vi_vn`, `i`.`inv_text` AS `inv_text`, `i`.`balance_number` AS `balance_number`, `i`.`paid_boolean` AS `paid_boolean`, `i`.`paid_date_date` AS `paid_date_date`, `i`.`invoice_total_number` AS `invoice_total_number`, `i`.`notes_text` AS `inv_notes_text`, `i`.`CreatedDate` AS `inv_CreatedDate`, `u_d`.`display_name_text` AS `asg_d_display_name`, `u_d`.`first_name_text` AS `asg_d_first_name`, `u_d`.`middle_name_text` AS `asg_d_middle_name`, `u_d`.`family_name_text` AS `asg_d_family_name`, `u_d`.`address_geographic_address` AS `asg_d_address_geographic_address`, `u_d`.`primary_phone_number_text` AS `u_d_primary_phone_number_text`, `u_d`.`avatar_image` AS `u_d_avatar_image`, `u_d`.`pin_text` AS `u_d_pin_text`, `usermeta`.`degree_text` AS `asg_d_degree_text`, `usermeta`.`description_text` AS `asg_d_description_text`, `usermeta`.`specialty_list_option_specialties` AS `asg_d_specialty_list_option_specialties`, `usermeta`.`university1_text` AS `asg_d_university1_text`, `u_p`.`display_name_text` AS `u_p_display_name`, `u_p`.`first_name_text` AS `u_p_first_name`, `u_p`.`middle_name_text` AS `u_p_middle_name`, `u_p`.`family_name_text` AS `u_p_family_name`, `u_p`.`address_geographic_address` AS `u_p_PatientAddress`, `u_p`.`birth_date_date` AS `u_p_birth_date_date`, `u_p`.`primary_phone_number_text` AS `u_p_primary_phone_number_text`, `u_p`.`avatar_image` AS `u_p_avatar_image`, `u_p`.`sex_option_sex` AS `u_p_sex_option_sex`, `u_p`.`uid_text` AS `u_p_uid_text`, `u_p`.`Email` AS `u_p_Email`, `u_p`.`language_text` AS `u_p_language_text`, `u_p`.`insurance_number_text` AS `u_p_insurance_number_text`, `u_p`.`onesigid_list_text` AS `u_p_onesigid_list_text`, `guardian`.`Email` AS `u_guardian_Email`, `u_n`.`display_name_text` AS `u_n_display_name`, `u_n`.`first_name_text` AS `u_n_first_name`, `u_n`.`middle_name_text` AS `u_n_middle_name`, `u_n`.`family_name_text` AS `u_n_family_name`, `u_n`.`address_geographic_address` AS `u_n_address_geographic_address` FROM (((((((((`appointment` `a` left join `appointmenttypes` `ap` on((`ap`.`en_us` = `a`.`type_option_appointment_types`))) left join `aptdisposition` `d` on((`d`.`en_us` = `a`.`disposition_option_apt_disposition`))) left join `chiefcomplaint` `c` on((`c`.`en_us` = `a`.`chief_complaint_option_chief_complaint`))) left join `invoice` `i` on((`i`.`Inv_id` = `a`.`invoice_custom_invoice`))) left join `user` `u_d` on((`u_d`.`User_id` = `a`.`assigned_doctor_user`))) left join `user` `u_p` on((`u_p`.`User_id` = `a`.`patient_user`))) left join `user` `u_n` on((`u_n`.`User_id` = `a`.`triage_staff_user`))) left join `usermeta` on((`usermeta`.`user_meta_user` = `u_d`.`User_id`))) left join `user` `guardian` on((`guardian`.`User_id` = `u_p`.`guardian_user`))) ;

-- --------------------------------------------------------

--
-- Structure for view `documents_short`
--
DROP TABLE IF EXISTS `documents_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `documents_short`  AS SELECT `documents`.`DocumentID` AS `DocumentID`, `documents`.`active_boolean` AS `active_boolean`, `documents`.`renew_date_date` AS `renew_date_date`, `documents`.`doctor_only_boolean` AS `doctor_only_boolean`, `documents`.`file_list_file` AS `file_list_file`, `documents`.`lab_doc_file` AS `lab_doc_file`, `documents`.`name_text` AS `name_text`, `documents`.`note_text` AS `note_text`, `documents`.`OfficeOnly` AS `OfficeOnly`, `documents`.`type_option_document_type` AS `type_option_document_type`, `documents`.`Creator` AS `Creator`, `documents`.`ModifiedDate` AS `ModifiedDate`, `documents`.`CreatedDate` AS `CreatedDate`, `documents`.`Slug` AS `Slug`, `documents`.`profile_user` AS `profile_user`, `documents`.`apt_id` AS `apt_id`, `documents`.`lab_id` AS `lab_id`, `documents`.`user_meta_id` AS `user_meta_id`, `appointment`.`aptid_text` AS `aptid_text`, `user`.`display_name_text` AS `display_name_text`, `user`.`first_name_text` AS `first_name_text`, `user`.`family_name_text` AS `family_name_text`, `user`.`middle_name_text` AS `middle_name_text`, `user`.`birth_date_date` AS `birth_date_date`, `user`.`address_geographic_address` AS `address_geographic_address`, `user`.`Email` AS `Email`, `user`.`identification_number_text` AS `identification_number_text`, `user`.`insurance_number_text` AS `insurance_number_text`, `user`.`sex_option_sex` AS `sex_option_sex`, `sex`.`vi_vn` AS `sex_option_vi_vn`, `guardian`.`Email` AS `u_guardian_Email` FROM ((((`documents` left join `appointment` on((`appointment`.`Appt_id` = `documents`.`apt_id`))) left join `user` on((`user`.`User_id` = `documents`.`profile_user`))) left join `sex` on((`sex`.`en_us` = `user`.`sex_option_sex`))) left join `user` `guardian` on((`guardian`.`User_id` = `user`.`guardian_user`))) ;

-- --------------------------------------------------------

--
-- Structure for view `invoiceline_short`
--
DROP TABLE IF EXISTS `invoiceline_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `invoiceline_short`  AS SELECT `il`.`invline_id` AS `invline_id`, `il`.`line_total_number` AS `line_total_number`, `il`.`price_number` AS `price_number`, `il`.`qty_number` AS `qty_number`, `il`.`Creator` AS `Creator`, `il`.`ModifiedDate` AS `ModifiedDate`, `il`.`CreatedDate` AS `CreatedDate`, `il`.`invoice_custom_invoice` AS `invoice_custom_invoice`, `il`.`product_custom_product` AS `product_custom_product`, `p`.`active_boolean` AS `active_boolean`, `p`.`cost_number` AS `cost_number`, `p`.`description_text` AS `description_text`, `p`.`document_file` AS `document_file`, `p`.`image_image` AS `image_image`, `p`.`name_text` AS `name_text`, `p`.`package_duration_number` AS `package_duration_number`, `p`.`package_limit_number` AS `package_limit_number`, `p`.`PortalOnly` AS `PortalOnly`, `p`.`retail_price_number` AS `retail_price_number`, `p`.`sale_range_date_range` AS `sale_range_date_range`, `p`.`sales_price_number` AS `sales_price_number`, `p`.`short_description_text` AS `short_description_text`, `p`.`sku_text` AS `sku_text`, `p`.`tax_rate_number` AS `tax_rate_number`, `p`.`taxable_boolean` AS `taxable_boolean`, `p`.`type_option_product_type` AS `type_option_product_type`, `p`.`product_group_option_product_group` AS `product_group_option_product_group` FROM (`invoiceline` `il` left join `product` `p` on((`p`.`sku_text` = `il`.`product_custom_product`))) ;

-- --------------------------------------------------------

--
-- Structure for view `invoice_short`
--
DROP TABLE IF EXISTS `invoice_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `invoice_short`  AS SELECT `i`.`Inv_id` AS `Inv_id`, `i`.`inv_text` AS `inv_text`, `i`.`accept_payment_later_boolean` AS `accept_payment_later_boolean`, `i`.`balance_number` AS `balance_number`, `i`.`expected_payment_date_date` AS `expected_payment_date_date`, `i`.`invoice_total_number` AS `invoice_total_number`, `i`.`notes_text` AS `notes_text`, `i`.`paid_boolean` AS `paid_boolean`, `i`.`paid_date_date` AS `paid_date_date`, `i`.`Creator` AS `Creator`, `i`.`ModifiedDate` AS `ModifiedDate`, `i`.`CreatedDate` AS `CreatedDate`, `i`.`Slug` AS `Slug`, `i`.`patient_user` AS `patient_user`, `i`.`lab_custom_lab` AS `lab_custom_lab`, `i`.`package_custom_package` AS `package_custom_package`, `i`.`prescription_custom_prescription1` AS `prescription_custom_prescription1`, `i`.`appointment_custom_appointment` AS `appointment_custom_appointment`, `u`.`address_geographic_address` AS `address_geographic_address`, `u`.`family_name_text` AS `family_name_text`, `u`.`first_name_text` AS `first_name_text`, `u`.`middle_name_text` AS `middle_name_text`, `u`.`display_name_text` AS `display_name_text`, `u`.`uid_text` AS `uid_text`, `u`.`Email` AS `Email`, `u`.`primary_phone_number_text` AS `primary_phone_number_text`, `guardian`.`Email` AS `u_guardian_Email`, `app`.`aptid_text` AS `aptid_text` FROM (((`invoice` `i` left join `user` `u` on((`u`.`User_id` = `i`.`patient_user`))) left join `appointment` `app` on((`app`.`Appt_id` = `i`.`appointment_custom_appointment`))) left join `user` `guardian` on((`guardian`.`User_id` = `u`.`guardian_user`))) ;

-- --------------------------------------------------------

--
-- Structure for view `lab_short`
--
DROP TABLE IF EXISTS `lab_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `lab_short`  AS SELECT `l`.`Lab_id` AS `Lab_id`, `l`.`attachments1_list_file` AS `attachments1_list_file`, `l`.`completed_date_date` AS `completed_date_date`, `l`.`notes_text` AS `notes_text`, `l`.`results_text` AS `results_text`, `l`.`status_option_status` AS `status_option_status`, `l`.`signature_url_text` AS `signature_url_text`, `l`.`signature_image` AS `signature_image`, `l`.`type_option_lab_test` AS `type_option_lab_test`, `l`.`Creator` AS `Creator`, `l`.`ModifiedDate` AS `ModifiedDate`, `l`.`CreatedDate` AS `CreatedDate`, `l`.`Slug` AS `Slug`, `l`.`appoinment_custom_appointment` AS `appoinment_custom_appointment`, `l`.`patient_user` AS `patient_user`, `l`.`ordered_by_user` AS `ordered_by_user`, `l`.`completed_by_user` AS `completed_by_user`, `l`.`facility_custom_locations` AS `facility_custom_locations`, `l`.`product_list_custom_product` AS `product_list_custom_product`, `ap`.`aptid_text` AS `aptid_text`, `ap`.`diagnostic_list_custom_diagnostic` AS `diagnostic_list_custom_diagnostic`, `g`.`vi_vn` AS `Status_vi_vn`, `lab_test`.`vi_vn` AS `lab_test_vi_vn`, `ll`.`location_name_text` AS `location_name_text`, `ll`.`address_geographic_address` AS `Location_Address`, `p`.`address_geographic_address` AS `patient_Address`, `p`.`family_name_text` AS `patient_FamilyName`, `p`.`first_name_text` AS `patient_FirstName`, `p`.`middle_name_text` AS `patient_MiddleName`, `p`.`display_name_text` AS `patient_display_name`, `p`.`birth_date_date` AS `patient_birth_date`, `p`.`sex_option_sex` AS `patient_sex_option`, `p`.`insurance_number_text` AS `patient_insurance_number`, `p`.`Email` AS `patient_Email`, `guardian`.`Email` AS `u_guardian_Email`, `orderedby`.`address_geographic_address` AS `orderedBy_Address`, `orderedby`.`family_name_text` AS `orderedBy_FamilyName`, `orderedby`.`first_name_text` AS `orderedBy_FirstName`, `orderedby`.`middle_name_text` AS `orderedBy_MiddleName`, `orderedby`.`display_name_text` AS `orderedBy_display_name`, `completedby`.`address_geographic_address` AS `completedBy_Address`, `completedby`.`family_name_text` AS `completedBy_FamilyName`, `completedby`.`first_name_text` AS `completedBy_FirstName`, `completedby`.`middle_name_text` AS `completedBy_MiddleName`, `completedby`.`display_name_text` AS `completedBy_display_name` FROM ((((((((`lab` `l` left join `appointment` `ap` on((`ap`.`Appt_id` = `l`.`appoinment_custom_appointment`))) left join `generalstatus` `g` on((`g`.`en_us` = `l`.`status_option_status`))) left join `labtest` `lab_test` on((`lab_test`.`en_us` = `l`.`type_option_lab_test`))) left join `locations` `ll` on((`ll`.`location_id` = `l`.`facility_custom_locations`))) left join `user` `p` on((`p`.`User_id` = `l`.`patient_user`))) left join `user` `orderedby` on((`orderedby`.`User_id` = `l`.`ordered_by_user`))) left join `user` `completedby` on((`completedby`.`User_id` = `l`.`completed_by_user`))) left join `user` `guardian` on((`guardian`.`User_id` = `p`.`guardian_user`))) ;

-- --------------------------------------------------------

--
-- Structure for view `notes_short`
--
DROP TABLE IF EXISTS `notes_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `notes_short`  AS SELECT `n`.`id` AS `id`, `n`.`attachment_to_option_note_attachment` AS `attachment_to_option_note_attachment`, `n`.`description_text` AS `description_text`, `n`.`documents_list_file` AS `documents_list_file`, `n`.`doctor_only_boolean` AS `doctor_only_boolean`, `n`.`note_text` AS `note_text`, `n`.`note_source_text` AS `note_source_text`, `n`.`note_type_option_note_typte` AS `note_type_option_note_typte`, `n`.`private_boolean` AS `private_boolean`, `n`.`printable_boolean` AS `printable_boolean`, `n`.`CreatedDate` AS `CreatedDate`, `n`.`ModifiedDate` AS `ModifiedDate`, `n`.`created_by_user` AS `created_by_user`, `n`.`profile_user` AS `profile_user`, `n`.`attachment_id_text` AS `attachment_id_text`, `nt`.`vi_vn` AS `noteType_vi_vn`, `pr`.`family_name_text` AS `family_name_text`, `pr`.`first_name_text` AS `first_name_text`, `pr`.`middle_name_text` AS `middle_name_text`, `pr`.`display_name_text` AS `display_name_text`, `pr`.`Email` AS `Email`, `guardian`.`Email` AS `u_guardian_Email`, `cb`.`family_name_text` AS `create_by_family_name_text`, `cb`.`first_name_text` AS `create_by_first_name_text`, `cb`.`middle_name_text` AS `create_by_middle_name_text`, `cb`.`display_name_text` AS `create_by_display_name_text` FROM ((((`notes` `n` left join `notetype` `nt` on((`nt`.`en_us` = `n`.`note_type_option_note_typte`))) left join `user` `pr` on((`pr`.`User_id` = `n`.`profile_user`))) left join `user` `cb` on((`cb`.`User_id` = `n`.`created_by_user`))) left join `user` `guardian` on((`guardian`.`User_id` = `pr`.`guardian_user`))) ;

-- --------------------------------------------------------

--
-- Structure for view `payment_short`
--
DROP TABLE IF EXISTS `payment_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `payment_short`  AS SELECT `p`.`ID` AS `ID`, `p`.`amount_number` AS `amount_number`, `p`.`card_type_option_credit_card_type` AS `card_type_option_credit_card_type`, `p`.`notes_text` AS `paymentNotes`, `p`.`package_code_text` AS `package_code_text`, `p`.`refund_boolean` AS `refund_boolean`, `p`.`status_option_payment_status` AS `status_option_payment_status`, `p`.`transaction_id_text` AS `transaction_id_text`, `p`.`type_option_payment_type` AS `type_option_payment_type`, `p`.`Creator` AS `Creator`, `p`.`CreatedDate` AS `CreatedDate`, `p`.`ModifiedDate` AS `ModifiedDate`, `p`.`Slug` AS `Slug`, `p`.`entered_by_user` AS `entered_by_user`, `p`.`profile_user` AS `profile_user`, `p`.`invoice_custom_invoice` AS `invoice_custom_invoice`, `i`.`inv_text` AS `inv_text`, `i`.`accept_payment_later_boolean` AS `accept_payment_later_boolean`, `i`.`balance_number` AS `balance_number`, `i`.`expected_payment_date_date` AS `expected_payment_date_date`, `i`.`invoice_total_number` AS `invoice_total_number`, `i`.`notes_text` AS `notes_text`, `i`.`paid_boolean` AS `paid_boolean`, `i`.`paid_date_date` AS `paid_date_date`, `u`.`address_geographic_address` AS `address_geographic_address`, `u`.`family_name_text` AS `family_name_text`, `u`.`first_name_text` AS `first_name_text`, `u`.`middle_name_text` AS `middle_name_text`, `u`.`display_name_text` AS `display_name_text`, `cct`.`nameCard` AS `credit_card_type_name`, `ps`.`vi_vn` AS `payment_status_vi_vn`, `pt`.`vi_vn` AS `payment_type_vi_vn`, `cr`.`display_name_text` AS `creator_display_name` FROM ((((((`payment` `p` left join `invoice` `i` on((`i`.`Inv_id` = `p`.`invoice_custom_invoice`))) left join `user` `u` on((`u`.`User_id` = `p`.`profile_user`))) left join `creditcardtype` `cct` on((`cct`.`nameCard` = `p`.`card_type_option_credit_card_type`))) left join `paymentstatus` `ps` on((`ps`.`en_us` = `p`.`status_option_payment_status`))) left join `paymenttype` `pt` on((`pt`.`en_us` = `p`.`type_option_payment_type`))) left join `user` `cr` on((`cr`.`User_id` = `p`.`Creator`))) ;

-- --------------------------------------------------------

--
-- Structure for view `prescriptionline_short`
--
DROP TABLE IF EXISTS `prescriptionline_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `prescriptionline_short`  AS SELECT `prs`.`PrescriptionLine_ID` AS `PrescriptionLine_ID`, `prs`.`instructions_text` AS `instructions_text`, `prs`.`number_of_days_number` AS `number_of_days_number`, `prs`.`status_option_status` AS `status_option_status`, `prs`.`total_number` AS `total_number`, `prs`.`prescription_custom_prescription1` AS `prescription_custom_prescription1`, `prs`.`afternoon_amount_number` AS `afternoon_amount_number`, `prs`.`evening_amount_number` AS `evening_amount_number`, `prs`.`morning_amount_number` AS `morning_amount_number`, `prs`.`noon_amount_number` AS `noon_amount_number`, `prs`.`usage_text` AS `usage_text`, `prs`.`unit_text` AS `unit_text`, `prs`.`documents_custom_documents` AS `documents_custom_documents`, `prs`.`medication_custom_medication` AS `medication_custom_medication`, `m`.`name_text` AS `m_name_text`, `m`.`active_ingredients_text` AS `m_active_ingredients_text`, `m`.`instructions_text` AS `m_instructions_text`, `m`.`notes_text` AS `m_notes_text`, `m`.`dosage_text` AS `m_dosage_text`, `m`.`dosage_forms_text` AS `m_dosage_forms_text`, `m`.`unit_text` AS `m_unit_text`, `m`.`usage_text` AS `m_usage_text`, `m`.`packaging_text` AS `m_packaging_text`, `m`.`code_text` AS `m_code_text` FROM (`prescriptionline` `prs` left join `medication` `m` on((`m`.`medication_id` = `prs`.`medication_custom_medication`))) ;

-- --------------------------------------------------------

--
-- Structure for view `prescription_short`
--
DROP TABLE IF EXISTS `prescription_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `prescription_short`  AS SELECT `prs`.`PrescriptionID` AS `PrescriptionID`, `prs`.`delivered_date_date` AS `delivered_date_date`, `prs`.`fulfilled_date_date` AS `fulfilled_date_date`, `prs`.`instructions_text` AS `instructions_text`, `prs`.`notes_text` AS `notes_text`, `prs`.`request_type_option_order_request_type` AS `request_type_option_order_request_type`, `prs`.`status_option_status` AS `status_option_status`, `prs`.`Creator` AS `Creator`, `prs`.`ModifiedDate` AS `ModifiedDate`, `prs`.`CreatedDate` AS `CreatedDate`, `prs`.`appointment_custom_appointment` AS `appointment_custom_appointment`, `prs`.`patient_user` AS `patient_user`, `prs`.`delivered_by_user` AS `delivered_by_user`, `prs`.`fulfilled_by_user` AS `fulfilled_by_user`, `prs`.`ordered_by_user` AS `ordered_by_user`, `prs`.`location_custom_locations` AS `location_custom_locations`, `prs`.`signature_image` AS `signature_image`, `prs`.`signature_url_text` AS `signature_url_text`, `prs`.`documents_custom_documents` AS `documents_custom_documents`, `g`.`vi_vn` AS `gstatus_vi_vn`, `orderrequesttype`.`vi_vn` AS `orderRequestType_vi_vn`, `l`.`location_name_text` AS `location_name_text`, `l`.`address_geographic_address` AS `location_address`, `p`.`address_geographic_address` AS `patient_address`, `p`.`family_name_text` AS `patient_familyName`, `p`.`first_name_text` AS `patient_firstName`, `p`.`middle_name_text` AS `patient_middle_name`, `p`.`display_name_text` AS `patient_display_name`, `p`.`birth_date_date` AS `patient_birth_date`, `p`.`sex_option_sex` AS `patient_sex_option`, `p`.`insurance_number_text` AS `patient_insurance_number`, `p`.`Email` AS `patient_Email`, `guardian`.`Email` AS `u_guardian_Email`, `orderedby`.`address_geographic_address` AS `orderedBy_address`, `orderedby`.`family_name_text` AS `orderedBy_familyName`, `orderedby`.`first_name_text` AS `orderedBy_firstName`, `orderedby`.`middle_name_text` AS `orderedBy_middle_name`, `orderedby`.`display_name_text` AS `orderedBy_display_name`, `deliveredby`.`address_geographic_address` AS `deliveredBy_address`, `deliveredby`.`family_name_text` AS `deliveredBy_familyName`, `deliveredby`.`first_name_text` AS `deliveredBy_firstName`, `deliveredby`.`middle_name_text` AS `deliveredBy_middle_name`, `deliveredby`.`display_name_text` AS `deliveredBy_display_name`, `fulfilledby`.`address_geographic_address` AS `fulfilledBy_dddress`, `fulfilledby`.`family_name_text` AS `fulfilledBy_familyName`, `fulfilledby`.`first_name_text` AS `fulfilledBy_firstName`, `fulfilledby`.`middle_name_text` AS `fulfilledBy_middle_name`, `fulfilledby`.`display_name_text` AS `fulfilledBy_display_name`, `ap`.`aptid_text` AS `aptid_text`, `ap`.`diagnostic_list_custom_diagnostic` AS `diagnostic_list_custom_diagnostic`, `ap`.`assigned_doctor_user` AS `assigned_doctor_user` FROM (((((((((`prescription` `prs` left join `generalstatus` `g` on((`g`.`en_us` = `prs`.`status_option_status`))) left join `orderrequesttype` on((`orderrequesttype`.`en_us` = `prs`.`request_type_option_order_request_type`))) left join `locations` `l` on((`l`.`location_id` = `prs`.`location_custom_locations`))) left join `user` `p` on((`p`.`User_id` = `prs`.`patient_user`))) left join `user` `orderedby` on((`orderedby`.`User_id` = `prs`.`ordered_by_user`))) left join `user` `deliveredby` on((`deliveredby`.`User_id` = `prs`.`delivered_by_user`))) left join `user` `fulfilledby` on((`fulfilledby`.`User_id` = `prs`.`fulfilled_by_user`))) left join `appointment` `ap` on((`ap`.`Appt_id` = `prs`.`appointment_custom_appointment`))) left join `user` `guardian` on((`guardian`.`User_id` = `p`.`guardian_user`))) ;

-- --------------------------------------------------------

--
-- Structure for view `user_meta_short`
--
DROP TABLE IF EXISTS `user_meta_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `user_meta_short`  AS SELECT `u_m`.`user_meta_id` AS `user_meta_id`, `u_m`.`admin_notes_text` AS `admin_notes_text`, `u_m`.`approved_to_practice_boolean` AS `approved_to_practice_boolean`, `u_m`.`degree_text` AS `degree_text`, `u_m`.`description_text` AS `description_text`, `u_m`.`languages_list_option_language` AS `languages_list_option_language`, `u_m`.`medical_license_text` AS `medical_license_text`, `u_m`.`rx_number_text` AS `rx_number_text`, `u_m`.`specialty_list_option_specialties` AS `specialty_list_option_specialties`, `u_m`.`university1_text` AS `university1_text`, `u_m`.`university_address_geographic_address` AS `university_address_geographic_address`, `u_m`.`CreatedDate` AS `CreatedDate`, `u_m`.`Creator` AS `Creator`, `u_m`.`user_meta_user` AS `user_meta_user`, `u_m`.`rating_custom_user_ratings` AS `rating_custom_user_ratings`, `u_m`.`affiliate_custom_locations` AS `affiliate_custom_locations`, `u_m`.`documents_list_file` AS `documents_list_file`, `u_m`.`location_affilitate_option_locations` AS `location_affilitate_option_locations`, `locations`.`location_name_text` AS `location_name_text`, `locations`.`active_boolean` AS `active_boolean`, `user`.`first_name_text` AS `first_name_text`, `user`.`family_name_text` AS `family_name_text`, `user`.`middle_name_text` AS `middle_name_text`, `user`.`display_name_text` AS `display_name_text` FROM ((`usermeta` `u_m` left join `locations` on((`locations`.`location_id` = `u_m`.`location_affilitate_option_locations`))) left join `user` on((`user`.`User_id` = `u_m`.`user_meta_user`))) ;

-- --------------------------------------------------------

--
-- Structure for view `user_short`
--
DROP TABLE IF EXISTS `user_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `user_short`  AS SELECT `u`.`User_id` AS `User_id`, `u`.`address_geographic_address` AS `address_geographic_address`, `u`.`avatar_image` AS `avatar_image`, `u`.`birth_date_date` AS `birth_date_date`, `u`.`city_text` AS `city_text`, `u`.`country_option_nationality` AS `country_option_nationality`, `u`.`display_name_text` AS `display_name_text`, `u`.`extension_number_text` AS `extension_number_text`, `u`.`facebook_text` AS `facebook_text`, `u`.`family_name_text` AS `family_name_text`, `u`.`first_name_text` AS `first_name_text`, `u`.`identification_number_text` AS `identification_number_text`, `u`.`identification_type_option_identification_type` AS `identification_type_option_identification_type`, `u`.`insurance_number_text` AS `insurance_number_text`, `u`.`language_text` AS `language_text`, `u`.`meeting_link_text` AS `meeting_link_text`, `u`.`middle_name_text` AS `middle_name_text`, `u`.`nationality_option_nationality` AS `nationality_option_nationality`, `u`.`onesigid_list_text` AS `onesigid_list_text`, `u`.`pin_text` AS `pin_text`, `u`.`postal_code_text` AS `postal_code_text`, `u`.`primary_phone_number_text` AS `primary_phone_number_text`, `u`.`Email` AS `Email`, `u`.`province_text` AS `province_text`, `u`.`residential_status_option_residential_status` AS `residential_status_option_residential_status`, `u`.`sex_option_sex` AS `sex_option_sex`, `u`.`signature_image` AS `signature_image`, `u`.`signature_url_text` AS `signature_url_text`, `u`.`skype_text` AS `skype_text`, `u`.`uid_text` AS `uid_text`, `u`.`user_type_option_user_type` AS `user_type_option_user_type`, `u`.`viber_text` AS `viber_text`, `u`.`whatsapp_text` AS `whatsapp_text`, `u`.`zalo_text` AS `zalo_text`, `u`.`ModifiedDate` AS `ModifiedDate`, `u`.`CreatedDate` AS `CreatedDate`, `u`.`Slug` AS `Slug`, `u`.`guardian_user` AS `guardian_user`, `usertype`.`vi_vn` AS `vi_vn_user_type_option_user_type`, `um`.`user_meta_id` AS `user_meta_id`, `um`.`admin_notes_text` AS `um_admin_notes_text`, `um`.`approved_to_practice_boolean` AS `um_approved_to_practice_boolean`, `um`.`degree_text` AS `um_degree_text`, `um`.`description_text` AS `um_description_text`, `um`.`languages_list_option_language` AS `um_languages_list_option_language`, `um`.`medical_license_text` AS `um_medical_license_text`, `um`.`rx_number_text` AS `um_rx_number_text`, `um`.`specialty_list_option_specialties` AS `um_specialty_list_option_specialties`, `um`.`university1_text` AS `um_university1_text`, `um`.`university_address_geographic_address` AS `um_university_address_geographic_address`, `um`.`Creator` AS `um_Creator`, `um`.`ModifiedDate` AS `um_ModifiedDate`, `um`.`CreatedDate` AS `um_CreatedDate`, `um`.`user_meta_user` AS `um_user_meta_user`, `um`.`rating_custom_user_ratings` AS `um_rating_custom_user_ratings`, `um`.`affiliate_custom_locations` AS `um_affiliate_custom_locations`, `um`.`documents_list_file` AS `um_documents_list_file`, `um`.`location_affilitate_option_locations` AS `um_location_affilitate_option_locations`, `apt`.`assigned_doctor_user` AS `assigned_doctor_user`, `locations`.`location_name_text` AS `location_name_text` FROM ((((`user` `u` left join `usermeta` `um` on((`um`.`user_meta_user` = `u`.`User_id`))) left join `locations` on((`locations`.`location_id` = `um`.`affiliate_custom_locations`))) left join `usertype` on((`usertype`.`en_us` = `u`.`user_type_option_user_type`))) left join `appointment` `apt` on((`apt`.`patient_user` = `u`.`User_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vitals_short`
--
DROP TABLE IF EXISTS `vitals_short`;

CREATE ALGORITHM=UNDEFINED DEFINER=`freedom_hw`@`%` SQL SECURITY DEFINER VIEW `vitals_short`  AS SELECT `vitals`.`Vital_ID` AS `Vital_ID`, `vitals`.`abdominal_ultrasound_result_text` AS `abdominal_ultrasound_result_text`, `vitals`.`blood_pressure___diastolic_number` AS `blood_pressure___diastolic_number`, `vitals`.`blood_pressure___systolic_number` AS `blood_pressure___systolic_number`, `vitals`.`bmi_number` AS `bmi_number`, `vitals`.`documents_list_file` AS `documents_list_file`, `vitals`.`fullbody___others_text` AS `fullbody___others_text`, `vitals`.`fullbody___skin_mucosa_text` AS `fullbody___skin_mucosa_text`, `vitals`.`glucose_number` AS `glucose_number`, `vitals`.`heart_rate_number` AS `heart_rate_number`, `vitals`.`hematolofy_result_text` AS `hematolofy_result_text`, `vitals`.`HistoryDescription` AS `HistoryDescription`, `vitals`.`left_eye___glasses_text` AS `left_eye___glasses_text`, `vitals`.`left_eye___not_glasses_text` AS `left_eye___not_glasses_text`, `vitals`.`notes_text` AS `notes_text`, `vitals`.`o2_staturation_number` AS `o2_staturation_number`, `vitals`.`organs___cardiology_text` AS `organs___cardiology_text`, `vitals`.`organs___dermatology_text` AS `organs___dermatology_text`, `vitals`.`organs___digestive_system_text` AS `organs___digestive_system_text`, `vitals`.`organs___ears_nose_throat_text` AS `organs___ears_nose_throat_text`, `vitals`.`organs___endocrine_system_text` AS `organs___endocrine_system_text`, `vitals`.`organs___evaluation_of_physical_text` AS `organs___evaluation_of_physical_text`, `vitals`.`organs___eyes_text` AS `organs___eyes_text`, `vitals`.`organs___mental_text` AS `organs___mental_text`, `vitals`.`organs___musculoskeletal_system_text` AS `organs___musculoskeletal_system_text`, `vitals`.`organs___nervous_system_text` AS `organs___nervous_system_text`, `vitals`.`organs___nutrition_text` AS `organs___nutrition_text`, `vitals`.`organs___obstetricians_and_gynecologists_text` AS `organs___obstetricians_and_gynecologists_text`, `vitals`.`organs___others_text` AS `organs___others_text`, `vitals`.`organs___physical_system_text` AS `organs___physical_system_text`, `vitals`.`organs___respiratory_system_text` AS `organs___respiratory_system_text`, `vitals`.`organs___surgical_system_text` AS `organs___surgical_system_text`, `vitals`.`organs___urinary_tract_text` AS `organs___urinary_tract_text`, `vitals`.`pain_level_number` AS `pain_level_number`, `vitals`.`pulse_text` AS `pulse_text`, `vitals`.`respiratory_rate_number` AS `respiratory_rate_number`, `vitals`.`respiratory_rates_text` AS `respiratory_rates_text`, `vitals`.`right_eye___glasses_text` AS `right_eye___glasses_text`, `vitals`.`right_eye___not_glasses_text` AS `right_eye___not_glasses_text`, `vitals`.`serum_biochemistry_result_text` AS `serum_biochemistry_result_text`, `vitals`.`temperature_number` AS `temperature_number`, `vitals`.`urine_biochemistry_result_text` AS `urine_biochemistry_result_text`, `vitals`.`WaistCircumference` AS `WaistCircumference`, `vitals`.`weight_number` AS `weight_number`, `vitals`.`webmeeting1_text` AS `webmeeting1_text`, `vitals`.`height_number` AS `height_number`, `vitals`.`Creator` AS `Creator`, `vitals`.`ModifiedDate` AS `ModifiedDate`, `vitals`.`CreatedDate` AS `CreatedDate`, `vitals`.`Slug` AS `Slug`, `vitals`.`appointment_custom_appointment` AS `appointment_custom_appointment`, `vitals`.`patient_user` AS `patient_user`, `user`.`display_name_text` AS `display_name_text`, `user`.`first_name_text` AS `first_name_text`, `user`.`family_name_text` AS `family_name_text`, `user`.`middle_name_text` AS `middle_name_text`, `user`.`birth_date_date` AS `birth_date_date`, `user`.`address_geographic_address` AS `address_geographic_address`, `user`.`Email` AS `Email`, `user`.`identification_number_text` AS `identification_number_text`, `user`.`insurance_number_text` AS `insurance_number_text`, `user`.`sex_option_sex` AS `sex_option_sex`, `sex`.`vi_vn` AS `sex_option_vi_vn`, `guardian`.`Email` AS `u_guardian_Email`, `appointment`.`diagnostic_list_custom_diagnostic` AS `diagnostic_list_custom_diagnostic` FROM ((((`vitals` left join `user` on((`user`.`User_id` = `vitals`.`patient_user`))) left join `sex` on((`sex`.`en_us` = `user`.`sex_option_sex`))) left join `user` `guardian` on((`guardian`.`User_id` = `user`.`guardian_user`))) left join `appointment` on((`appointment`.`Appt_id` = `vitals`.`appointment_custom_appointment`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appt_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available`
--
ALTER TABLE `available`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`dependent_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`DocumentID`);

--
-- Indexes for table `generalstatus`
--
ALTER TABLE `generalstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Inv_id`);

--
-- Indexes for table `invoiceline`
--
ALTER TABLE `invoiceline`
  ADD PRIMARY KEY (`invline_id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`Lab_id`);

--
-- Indexes for table `labtest`
--
ALTER TABLE `labtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `locationtype`
--
ALTER TABLE `locationtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`medication_id`);

--
-- Indexes for table `noteattachment`
--
ALTER TABLE `noteattachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notetype`
--
ALTER TABLE `notetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `numberofdoses`
--
ALTER TABLE `numberofdoses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderrequesttype`
--
ALTER TABLE `orderrequesttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_text_2` (`code_text`),
  ADD KEY `code_text` (`code_text`);

--
-- Indexes for table `packagelogs`
--
ALTER TABLE `packagelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `personalhabits`
--
ALTER TABLE `personalhabits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`PrescriptionID`);

--
-- Indexes for table `prescriptionline`
--
ALTER TABLE `prescriptionline`
  ADD PRIMARY KEY (`PrescriptionLine_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku_text` (`sku_text`),
  ADD KEY `sku_text_2` (`sku_text`);

--
-- Indexes for table `productgroup`
--
ALTER TABLE `productgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rxhowoften`
--
ALTER TABLE `rxhowoften`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rxusage`
--
ALTER TABLE `rxusage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rxwhattime`
--
ALTER TABLE `rxwhattime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sex`
--
ALTER TABLE `sex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `usermeta`
--
ALTER TABLE `usermeta`
  ADD PRIMARY KEY (`user_meta_id`);

--
-- Indexes for table `usermeta_doc`
--
ALTER TABLE `usermeta_doc`
  ADD PRIMARY KEY (`DocID`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`UserType_ID`);

--
-- Indexes for table `vitals`
--
ALTER TABLE `vitals`
  ADD PRIMARY KEY (`Vital_ID`);

--
-- Indexes for table `waitingstatus`
--
ALTER TABLE `waitingstatus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appt_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `available`
--
ALTER TABLE `available`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dependent`
--
ALTER TABLE `dependent`
  MODIFY `dependent_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `DocumentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `generalstatus`
--
ALTER TABLE `generalstatus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `Inv_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `invoiceline`
--
ALTER TABLE `invoiceline`
  MODIFY `invline_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `Lab_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `labtest`
--
ALTER TABLE `labtest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locationtype`
--
ALTER TABLE `locationtype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `medication_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `noteattachment`
--
ALTER TABLE `noteattachment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `notetype`
--
ALTER TABLE `notetype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `numberofdoses`
--
ALTER TABLE `numberofdoses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orderrequesttype`
--
ALTER TABLE `orderrequesttype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `packagelogs`
--
ALTER TABLE `packagelogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `personalhabits`
--
ALTER TABLE `personalhabits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `PrescriptionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `prescriptionline`
--
ALTER TABLE `prescriptionline`
  MODIFY `PrescriptionLine_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `productgroup`
--
ALTER TABLE `productgroup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rxhowoften`
--
ALTER TABLE `rxhowoften`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rxusage`
--
ALTER TABLE `rxusage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rxwhattime`
--
ALTER TABLE `rxwhattime`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sex`
--
ALTER TABLE `sex`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `usermeta`
--
ALTER TABLE `usermeta`
  MODIFY `user_meta_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `usermeta_doc`
--
ALTER TABLE `usermeta_doc`
  MODIFY `DocID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `UserType_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vitals`
--
ALTER TABLE `vitals`
  MODIFY `Vital_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `waitingstatus`
--
ALTER TABLE `waitingstatus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
