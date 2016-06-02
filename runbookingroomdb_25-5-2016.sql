-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2016 at 10:43 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `runbookingroomdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `events_rec`
--

DROP TABLE IF EXISTS `events_rec`;
CREATE TABLE IF NOT EXISTS `events_rec` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events_rec`
--

INSERT INTO `events_rec` (`event_id`, `types`, `notes`, `start_date`, `end_date`, `tablename`, `event_length`, `event_pid`, `rec_type`, `text`, `readonly`, `rooms`, `rec_pattern`, `groupnames`, `password`) VALUES
(11, '', '', '2016-04-18 09:00:00', '9999-02-01 00:00:00', NULL, 5400, 0, 'week_1___2,3,4,5#no', 'MEETING Z.COM', NULL, '30', 'week_1___2,3,4,5', 'Z.Com', '123456ZCOM'),
(12, '', '', '2016-07-18 11:00:00', '9999-02-01 00:00:00', NULL, 5400, 0, 'week_1___5#no', 'MEETING DIV1- LÊ QUANG TRUNG', NULL, '20', 'week_1___5', 'DIV1', '123456DIV1'),
(13, 'Training', '', '2016-07-22 16:00:00', '2016-07-22 18:00:00', NULL, 0, 0, '', 'TRAINING', NULL, '30', '', 'TrainingCenter', '123456TRAINING'),
(14, '', '', '2016-04-22 14:00:00', '2016-04-22 17:30:00', NULL, 0, 0, '', 'MEETING', NULL, '20', '', 'TrainingCenter', '123456TRAINING'),
(15, 'Other', '', '2016-04-22 13:30:00', '2016-04-22 16:00:00', NULL, 0, 0, '', 'PHỎNG VẤN NHÂN SỰ', NULL, '30', '', 'HR', ''),
(16, 'Other', '', '2016-04-26 10:30:00', '2016-04-26 12:30:00', NULL, 0, 0, '', 'PHỎNG VẤN NHÂN SỰ', NULL, '30', '', 'HR', '123456HR'),
(17, '', '', '2016-04-26 14:00:00', '2016-04-26 15:30:00', NULL, 0, 0, '', 'MEETING BIZ JP', NULL, '20', '', 'Tokyo', ''),
(19, 'Training', '', '2016-04-26 09:00:00', '2016-04-26 11:30:00', NULL, 0, 0, '', 'TRAINING', NULL, '20', '', 'TrainingCenter', ''),
(20, 'Other', '', '2016-04-27 10:30:00', '2016-04-27 12:30:00', NULL, 0, 0, '', 'PHỎNG VẤN NHÂN SỰ', NULL, '30', '', 'HR', ''),
(21, '', '', '2016-04-28 15:00:00', '2016-04-28 16:00:00', NULL, 0, 0, '', 'MEETING BIZ JP- 15H-16H', NULL, '20', '', 'Tokyo', ''),
(23, '', 'Tổng kết tháng 4/2016\nThành (Android) \n- Xong ứng dụng quản lý tài sản\n- Hết lỗi\n- Chỉnh lại giao diện\nCông việc tiếp: log time cho mỗi function, test performace.\n\nChung(Java)\n- Xong 5/6 báo cáo\n- Xuất ra excel\nCông việc tiếp: fix bug, customer giao diện\n\nHùng cùng với chị Tâm làm TMS\n\nNgoan(Php)\n- Admin, backend', '2016-04-25 14:00:00', '2016-04-25 15:00:00', NULL, 0, 0, '', 'Họp báo cáo tuần R&D', NULL, '30', '', 'R&D', '123'),
(24, '', '', '2016-04-25 11:30:00', '2016-04-25 13:00:00', NULL, 0, 0, '', 'MEETTING BRSE', NULL, '30', '', 'BrSE', ''),
(25, 'Other', '', '2016-04-26 14:00:00', '2016-04-26 15:30:00', NULL, 0, 0, '', 'PHỎNG VẤN TENTEN VÀ Z.COM- HR', NULL, '30', '', 'HR', ''),
(26, 'Other', '', '2016-04-27 13:30:00', '2016-04-27 18:00:00', NULL, 0, 0, '', 'PHỎNG VẤN DESIGNER NEW PRODUCT- HR', NULL, '30', '', 'HR', ''),
(27, '', '', '2016-04-27 14:00:00', '2016-04-27 16:00:00', NULL, 0, 0, '', 'MEETING DIV1- DỰ ÁN', NULL, '20', '', 'DIV1', ''),
(28, '', '', '2016-04-27 11:00:00', '2016-04-27 12:30:00', NULL, 0, 0, '', 'MEETING TENTEN', NULL, '20', '', 'TenTen', ''),
(29, '', '', '2016-05-11 10:00:00', '2016-05-11 11:00:00', NULL, 0, 0, '', 'MTG/Murase@Minh', NULL, '20', '', 'BGĐ', 'minh'),
(30, '', '', '2016-04-27 16:00:00', '2016-04-27 17:30:00', NULL, 0, 0, '', 'MEETING COMN', NULL, '20', '', 'Comm', ''),
(31, '', '', '2016-05-18 13:00:00', '2016-05-18 14:30:00', NULL, 0, 0, '', 'MTG/Shimokawa-san@Minh', NULL, '20', '', 'BGĐ', 'minh'),
(32, '', '', '2016-04-28 14:00:00', '2016-04-28 15:00:00', NULL, 0, 0, '', 'training', NULL, '30', '', 'TrainingCenter', ''),
(33, '', '', '2016-04-28 14:00:00', '2016-04-28 15:00:00', NULL, 0, 0, '', 'MEETING BRSE- A THẮNG', NULL, '20', '', 'BrSE', ''),
(35, '', '', '2016-04-29 09:00:00', '2016-04-29 10:00:00', NULL, 1461895200, 11, '', 'MEETING Z.COM', NULL, '30', '', 'Z.Com', '123456ZCOM'),
(36, '', '', '2016-04-29 10:00:00', '2016-04-29 11:00:00', NULL, 0, 0, '', 'SQA/PQA MEETING- MS NGOC', NULL, '30', '', 'TrainingCenter', ''),
(37, '', '', '2016-04-29 10:30:00', '2016-04-29 12:30:00', NULL, 0, 0, '', 'A Huỳnh- Div1 - meeting', NULL, '20', '', 'DIV1', ''),
(38, '', '', '2016-04-29 14:00:00', '2016-04-29 15:30:00', NULL, 0, 0, '', 'VNLab review', NULL, '30', '', 'VNLab', 'minh'),
(39, '', '', '2016-05-17 16:00:00', '2016-05-17 17:30:00', NULL, 0, 0, '', 'MTG/SSC', NULL, '20', '', 'BGĐ', 'minh'),
(40, '', '', '2016-05-18 10:00:00', '2016-05-18 12:00:00', NULL, 0, 0, '', 'MTG/SSC', NULL, '20', '', 'BSD', 'minh'),
(41, '', '', '2016-05-18 14:00:00', '2016-05-18 17:30:00', NULL, 0, 0, '', 'MTG/SSC', NULL, '30', '', 'BSD', 'minh'),
(42, '', '', '2016-05-19 10:00:00', '2016-05-19 12:30:00', NULL, 0, 0, '', 'MTG/SSC', NULL, '20', '', 'BSD', ''),
(43, '', '', '2016-04-29 14:00:00', '2016-04-29 15:30:00', NULL, 0, 0, '', 'MEETING TRAINING', NULL, '20', '', 'TrainingCenter', ''),
(44, '', '', '2016-05-09 15:00:00', '2016-05-09 16:30:00', NULL, 0, 0, '', 'Họp nhóm', NULL, '30', '', 'DIV1', '123456'),
(45, '', '', '2016-05-09 14:30:00', '2016-05-09 15:00:00', NULL, 0, 0, '', 'Tiếp khách', NULL, '30', '', 'KeToan', '123456'),
(46, '', '', '2016-05-09 14:00:00', '2016-05-09 15:30:00', NULL, 0, 0, '', 'họp nhóm', NULL, '20', '', 'TenTen', '123456'),
(47, '', '', '2016-05-09 16:00:00', '2016-05-09 18:00:00', NULL, 0, 0, '', 'Họp khách hàng', NULL, '30', '', 'Z.Com', '123456'),
(48, '', '', '2016-05-09 17:00:00', '2016-05-09 18:00:00', NULL, 0, 0, '', 'Họp nhóm', NULL, '20', '', 'Smart', '123456'),
(50, '', '', '2016-05-11 09:30:00', '2016-05-11 10:00:00', NULL, 0, 0, '', 'Trao Doi Noi Bo', NULL, '40', '', 'VNLab', ''),
(51, '', 'Test(Sao lai book duoc ngay trong qua khu)\r\n', '2016-03-10 08:00:00', '2016-03-10 08:30:00', NULL, 0, 0, '', 'Test(Sao lai book duoc ngay trong qua khu)\r\n=> vì trong trường hợp một số nhóm họp và note lại kết quả cuộc họp muộn hơn. Việc cho đăng ký cuộc họp ở quá khứ k ảnh hưởng gì đến chức năng của phần mềm.', NULL, '20', '', 'TrainingCenter', ''),
(52, '', '', '2016-03-02 08:30:00', '2016-03-02 09:00:00', NULL, 0, 0, '', 'Nhập nội dung cuộc họp', NULL, '20', '', 'TrainingCenter', ''),
(53, '', '', '2016-05-12 09:00:00', '2016-05-12 09:30:00', NULL, 0, 0, '', 'Mendan/VNlab@HoanTP', NULL, '20', '', 'BGĐ', ''),
(54, '', '', '2016-05-10 11:00:00', '2016-05-10 12:00:00', NULL, 0, 0, '', 'MTG/mr NghiaVC', NULL, '30', '', 'BGĐ', ''),
(55, '', '', '2016-05-10 14:00:00', '2016-05-10 15:00:00', NULL, 0, 0, '', 'họp nhóm', NULL, '30', '', 'DIV1', '123456'),
(56, '', '', '2016-05-11 09:00:00', '2016-05-11 09:30:00', NULL, 0, 0, '', 'MTG/RD', NULL, '35', '', 'R&D', ''),
(57, '', '', '2016-05-11 14:00:00', '2016-05-11 15:30:00', NULL, 0, 0, '', 'BSD- A HÒA', NULL, '30', '', 'BSD', ''),
(58, '', '', '2016-05-11 14:00:00', '2016-05-11 15:30:00', NULL, 0, 0, '', 'MEETING- A TRUNG BSD', NULL, '20', '', 'BSD', ''),
(59, '', '', '2016-05-11 16:00:00', '2016-05-11 18:00:00', NULL, 0, 0, '', 'MEETING- A TRUNG- BSD', NULL, '20', '', 'BSD', ''),
(60, 'Training', '', '2016-05-09 08:00:00', '9999-02-01 00:00:00', NULL, 5400, 0, 'week_1___3,5#no', 'TRAINING JAPANESE BEGINNER', NULL, '20', 'week_1___3,5', 'TrainingCenter', ''),
(61, '', '', '2016-05-13 10:00:00', '2016-05-13 11:30:00', NULL, 0, 0, '', 'TRANING NEW STAFF', NULL, '20', '', 'TrainingCenter', ''),
(62, 'Seminar', '', '2016-05-23 15:00:00', '2016-05-23 18:00:00', NULL, 0, 0, '', 'TRANING AGILE SCRUM', NULL, '20', '', 'TrainingCenter', ''),
(64, '', '', '2016-05-11 11:00:00', '2016-05-11 12:30:00', NULL, 0, 0, '', 'trinh anh chien- meeting', NULL, '20', '', 'TrainingCenter', ''),
(66, '', '', '2016-05-12 10:00:00', '2016-05-12 10:30:00', NULL, 0, 0, '', 'Mendan/TruongDX', NULL, '20', '', 'BGĐ', ''),
(68, '', '', '2016-05-09 10:30:00', '9999-02-01 00:00:00', NULL, 5400, 0, 'week_1___5#no', 'MEETING- SQA/PQA', NULL, '30', 'week_1___5', 'Others', ''),
(70, '', '', '2016-05-20 10:00:00', '2016-05-20 12:00:00', NULL, 0, 0, '', 'MTG/SSC', NULL, '20', '', 'BGĐ', ''),
(71, '', '', '2016-05-16 10:00:00', '2016-05-16 10:30:00', NULL, 0, 0, '', 'MTG/Slabo', NULL, '30', '', 'BGĐ', ''),
(72, '', '', '2016-05-13 08:30:00', '2016-05-13 09:00:00', NULL, 0, 0, '', 'Họp skype với JP', NULL, '30', '', 'DIV3', '123456'),
(76, 'Seminar', '', '2016-05-20 15:00:00', '2016-05-20 16:30:00', NULL, 0, 0, '', 'meeting- lê vĩnh yên', NULL, '20', '', 'BSD', ''),
(77, '', '', '2016-05-13 15:30:00', '2016-05-13 16:30:00', NULL, 0, 0, '', 'họp nhóm', NULL, '30', '', 'DIV1', '123456'),
(78, '', '', '2016-05-13 14:30:00', '2016-05-13 15:30:00', NULL, 0, 0, '', 'Họp KH', NULL, '20', '', 'DIV1', '123456'),
(79, '', '', '2016-05-13 16:00:00', '2016-05-13 18:00:00', NULL, 0, 0, '', 'Nhập nội dung cuộc họp', NULL, '20', '', 'DIV1', '123456'),
(81, '', '', '2016-05-16 17:00:00', '2016-05-16 18:00:00', NULL, 0, 0, '', 'MEETING- TENTEN', NULL, '20', '', 'TenTen', ''),
(82, '', '', '2016-05-16 11:00:00', '9999-02-01 00:00:00', NULL, 5400, 0, 'week_1___1,2,3,4,5#no', 'MEETING- TENTEN', NULL, '35', 'week_1___1,2,3,4,5', 'TrainingCenter', ''),
(83, '', '', '2016-05-16 14:00:00', '2016-05-16 16:00:00', NULL, 0, 0, '', 'MEETING- TRAINING', NULL, '30', '', 'TrainingCenter', ''),
(84, '', '', '2016-05-16 15:30:00', '2016-05-16 17:00:00', NULL, 0, 0, '', 'MEETING- Z.COM', NULL, '20', '', 'TrainingCenter', ''),
(85, '', '', '2016-05-17 14:00:00', '2016-05-17 16:00:00', NULL, 0, 0, '', 'MEETING- DIV1- TEST', NULL, '30', '', 'DIV1', ''),
(86, '', '', '2016-05-17 14:00:00', '2016-05-17 16:00:00', NULL, 0, 0, '', 'MEETING- ZCOM', NULL, '20', '', 'TrainingCenter', ''),
(87, '', '', '2016-05-19 15:00:00', '2016-05-19 17:30:00', NULL, 0, 0, '', 'MEETING- A TRUNG', NULL, '20', '', 'BSD', ''),
(88, '', '', '2016-05-19 14:00:00', '2016-05-19 15:30:00', NULL, 0, 0, '', 'MEETING- A MẬP- BSD', NULL, '30', '', 'BSD', ''),
(89, '', '', '2016-05-25 08:00:00', '2016-05-25 09:00:00', NULL, 0, 0, '', 'MEETING- SLABO- A LONG', NULL, '30', '', 'DIV3', ''),
(90, '', '', '2016-05-19 10:30:00', '2016-05-19 12:30:00', NULL, 0, 0, '', 'MEETING- KT', NULL, '30', '', 'KeToan', ''),
(91, '', '', '2016-05-18 17:00:00', '2016-05-18 18:00:00', NULL, 0, 0, '', 'Phỏng vấn', NULL, '20', '', 'TenTen', '123456'),
(92, '', '', '2016-05-19 13:00:00', '2016-05-19 15:00:00', NULL, 0, 0, '', 'MEETING- Z.COM- A TÂM', NULL, '20', '', 'Z.Com', ''),
(93, '', '', '2016-05-19 15:30:00', '2016-05-19 18:00:00', NULL, 0, 0, '', 'MEETING- HR- PHỎNG VẤN', NULL, '30', '', 'HR', ''),
(94, '', '', '2016-05-19 13:30:00', '2016-05-19 18:00:00', NULL, 0, 0, '', 'MEETING- BRSE- A CÔNG', NULL, '35', '', 'BrSE', ''),
(96, 'Training', '', '2016-05-27 15:00:00', '2016-05-27 17:00:00', NULL, 0, 0, '', 'TRAINING NVM thang 05/2016', NULL, '20', '', 'TrainingCenter', ''),
(97, '', '', '2016-05-27 16:00:00', '2016-05-27 18:00:00', NULL, 0, 0, '', 'BSD-Game : Weekly meeting', NULL, '30', '', 'BSD', ''),
(99, '', '', '2016-05-10 15:00:00', '2016-05-10 16:00:00', NULL, 0, 0, '', 'Nhóm bizjp họp hàng tuần', NULL, '20', '', 'DIV2', 'tuanla'),
(100, '', '', '2016-05-10 16:00:00', '2016-05-10 16:30:00', NULL, 0, 0, '', 'Nhập nội dung cuộc họp', NULL, '20', '', 'TrainingCenter', ''),
(104, 'Other', '', '2016-05-23 09:30:00', '2016-05-23 12:00:00', NULL, 0, 0, '', 'Recruitment', NULL, '30', '', 'HR', ''),
(105, '', '', '2016-05-20 10:30:00', '2016-05-20 12:00:00', NULL, 1463715000, 68, '', 'MEETING- SQA/PQA', NULL, '30', '', 'Others', ''),
(106, 'Other', '', '2016-05-23 14:00:00', '2016-05-23 15:00:00', NULL, 0, 0, '', 'Recruitment', NULL, '30', '', 'HR', ''),
(107, '', '', '2016-05-20 15:00:00', '2016-05-20 16:00:00', NULL, 0, 0, '', 'GMO MEDIA', NULL, '30', '', 'BSD', ''),
(109, '', '', '2016-05-20 16:00:00', '2016-05-20 18:00:00', NULL, 0, 0, '', 'BSD game - Weekly meeting', NULL, '30', '', 'BSD', 'bsdgameunity'),
(110, '', '', '2016-05-24 09:00:00', '2016-05-24 15:00:00', NULL, 0, 0, '', 'MTG/Neos', NULL, '20', '', 'BGĐ', ''),
(111, '', '', '2016-05-26 09:00:00', '2016-05-26 10:00:00', NULL, 0, 0, '', 'MTG/JAFTAC', NULL, '20', '', 'BGĐ', ''),
(112, '', '', '2016-05-26 14:00:00', '2016-05-26 15:00:00', NULL, 0, 0, '', 'MTG/Reseller@zcom', NULL, '30', '', 'BSD', ''),
(113, '', '', '2016-05-26 15:30:00', '2016-05-26 17:00:00', NULL, 0, 0, '', 'MTG BrSE@Jpese+MECE', NULL, '30', '', 'BrSE', ''),
(114, '', '', '2016-05-31 09:30:00', '2016-05-31 11:00:00', NULL, 0, 0, '', 'Review MBO@BrSE', NULL, '20', '', 'BrSE', ''),
(115, '', '', '2016-05-31 16:30:00', '2016-05-31 18:00:00', NULL, 0, 0, '', 'Review MBO@BrSE', NULL, '20', '', 'BrSE', ''),
(119, '', '', '2016-05-25 14:00:00', '2016-05-25 15:30:00', NULL, 0, 0, '', 'Bizjp_BSD Họp với khách hàng', NULL, '30', '', 'BSD', '123456'),
(121, '', '', '2016-05-01 11:30:00', '9999-02-01 00:00:00', NULL, 7200, 0, 'month_1_1_1_#no', 'Nhập nội dung cuộc họp', NULL, '60', 'month_1_1_1_', 'TrainingCenter', ''),
(123, '', '', '2016-05-24 14:00:00', '2016-05-24 15:00:00', NULL, 0, 0, '', 'Bizjp BSD họp nhóm hàng tuần', NULL, '30', '', 'BSD', '123456'),
(124, '', 'I''m introduce Ha to Japanese development team.', '2016-05-23 13:30:00', '2016-05-23 14:00:00', NULL, 0, 0, '', 'GMO Media PHP Development MTG', NULL, '35', '', 'VNLab', 'vietnam'),
(125, '', 'GMO Media <=> GMO Run System HAL member', '2016-05-01 16:00:00', '9999-02-01 00:00:00', NULL, 3600, 0, 'month_1_1_1_#no', 'GMO Media Weekly MTG', NULL, '30', 'month_1_1_1_', 'VNLab', 'vietnam'),
(126, '', 'GMO Media <=> GMO Run System', '2016-05-24 16:00:00', '2016-05-24 17:00:00', NULL, 0, 0, '', 'GMO Media MTG', NULL, '30', '', 'VNLab', 'vietnam'),
(127, '', '', '2016-05-31 16:00:00', '2016-05-31 17:00:00', NULL, 0, 0, '', 'GMO Media', NULL, '30', '', 'BSD', ''),
(128, 'Seminar', '', '2016-05-24 16:30:00', '2016-05-24 17:30:00', NULL, 0, 0, '', '読書会（hội đọc sách）', NULL, '20', '', 'VNLab', 'tremocoi'),
(129, '', '', '2016-05-24 11:00:00', '2016-05-24 12:30:00', NULL, 0, 0, '', 'Trao đổi spec project FM', NULL, '30', '', 'PHP1', '12345'),
(130, '', '', '2016-05-25 11:00:00', '2016-05-25 12:30:00', NULL, 1464148800, 82, '', 'MEETING- TENTEN', NULL, '35', '', 'TenTen', ''),
(131, 'Training', '', '2016-05-25 15:00:00', '2016-05-25 16:30:00', NULL, 0, 0, '', 'Training NVM thang 5 dot 1', NULL, '20', '', 'TrainingCenter', 'vananhham'),
(132, '', '', '2016-05-24 11:00:00', '2016-05-24 12:30:00', NULL, 1464062400, 82, '', 'MEETING- TENTEN', NULL, '35', '', 'TenTen', ''),
(133, '', '', '2016-05-26 11:00:00', '2016-05-26 12:30:00', NULL, 1464235200, 82, '', 'MEETING- TENTEN', NULL, '35', '', 'TenTen', ''),
(134, 'Training', '', '2016-05-27 09:30:00', '2016-05-27 12:00:00', NULL, 0, 0, '', 'Training NVM: HungPT, ThuyNTT', NULL, '20', '', 'TrainingCenter', ''),
(135, 'Other', '', '2016-05-24 17:30:00', '2016-05-24 18:00:00', NULL, 0, 0, '', 'MG HienNV metting', NULL, '30', '', 'R&D', ''),
(136, '', '', '2016-05-25 08:30:00', '2016-05-25 11:00:00', NULL, 0, 0, '', 'Họp với khách hàng MMS', NULL, '35', '', 'BSD', ''),
(137, '', '', '2016-05-25 10:30:00', '2016-05-25 11:00:00', NULL, 0, 0, '', 'Nhập nội dung cuộc họp', NULL, '60', '', 'TrainingCenter', ''),
(138, '', '', '2016-05-25 11:30:00', '2016-05-25 16:00:00', NULL, 0, 0, '', 'MTG/Neos', NULL, '20', '', 'BGĐ', ''),
(139, '', '', '2016-05-31 11:00:00', '2016-05-31 12:30:00', NULL, 1464667200, 82, '', 'MEETING- TENTEN', NULL, '35', '', 'TenTen', ''),
(140, '', '', '2016-05-24 16:00:00', '2016-05-24 17:00:00', NULL, 0, 0, '', 'zcom reseller DB review', NULL, '30', '', 'BSD', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
