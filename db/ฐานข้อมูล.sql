-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2021 at 06:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_student`
--

CREATE TABLE `tb_student` (
  `student_id` int(11) NOT NULL COMMENT 'ไอดี',
  `student_code` varchar(11) NOT NULL COMMENT 'รหัสนักศึกษา',
  `student_prefix` set('นาย','นาง','นางสาว') NOT NULL COMMENT 'คำนำหน้า',
  `student_name` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `student_surname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `student_branch` varchar(200) NOT NULL COMMENT 'สาขา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_student`
--

INSERT INTO `tb_student` (`student_id`, `student_code`, `student_prefix`, `student_name`, `student_surname`, `student_branch`) VALUES
(1, '61141380134', 'นาย', 'วงศกร', 'จันทอน', 'คอมพิวเตอร์ธุรกิจ'),
(2, '58122030219', 'นาย', 'วงษ์วิศิษฐ์', 'นุ่มวัฒนา', 'การพัฒนาชุมชน'),
(3, '58125470305', 'นางสาว', 'วชิรญาณ์', 'อยู่สถาพร', 'การจัดการโลจิสติกส์'),
(4, '57224110129', 'นาย', 'ดนัย', 'โพธิ์เงินงาม', 'การจัดการทั่วไป'),
(5, '60222080207', 'นาง', 'ดรุษกร', 'จิรมหาศาล', 'รัฐประศาสนศาสตร์'),
(6, '61224090101', 'นางสาว', 'ดวง', 'ขุมทอง', 'คอมพิวเตอร์ธุรกิจ'),
(7, '61224120106', 'นางสาว', 'ดวงนิมิตร', 'โพธิ์พันธ์', 'การจัดการโลจิสติกส์'),
(8, '60124540122', 'นางสาว', 'ดารารัตน์', 'แสวงทอง', 'การจัดการอุตสาหกรรมบริการการท่องเที่ยว'),
(9, '57141380212', 'นางสาว', 'หทัยกาญจน์', 'ดวงตา', 'ภาษาไทย'),
(10, '58141010133', 'นาง', 'หทัยชนก', 'วิมูลชาติ', 'การศึกษาปฐมวัย'),
(11, '57124120244', 'นาย', 'หนึ่งฤทัย', 'ไทรโยคกมล', 'การจัดการโลจิสติกส์'),
(12, '59122030104', 'นาย', 'หฤทัย', 'สิทธิสร', 'การพัฒนาชุมชน'),
(13, '59124550118', 'นาย', 'หิรัญ', 'ทองหอม', 'การจัดการ'),
(14, '58122080252', 'นาย', 'สกล', 'ขำใส', 'รัฐประศาสนศาสตร์'),
(15, '57141060214', 'นางสาว', 'สกาวเดือน', 'งามยิ่ง', 'วิทยาศาสตร์ทั่วไป'),
(16, '57124120202', 'นางสาว', 'สกุณา', 'พลนำ', 'ภาษาอังกฤษธุรกิจ'),
(17, '61124090303', 'นางสาว', 'สกุมา', 'ทองสุข', 'คอมพิวเตอร์ธุรกิจ'),
(18, '57122080107', 'นาย', 'สงกรานต์', 'มีเพ็ชร', 'รัฐประศาสนศาสตร์'),
(19, '58123250112', 'นาย', 'สถาพร', 'ชมชื่น', 'วิทยาการคอมพิวเตอร์'),
(20, '59141390116', 'นาย', 'สมคนึง', 'ภุมรินทร์', 'พลศึกษา'),
(21, '59125460122', 'นาย', 'สมทบ', 'เหรา', 'การบริหารทรัพยากรอาคาร'),
(22, '59141390126', 'นาย', 'สมยศ', 'ประกินัง', 'พลศึกษา'),
(23, '60141060116', 'นาย', 'องอาจ', 'วัลมาลี', 'วิทยาศาสตร์ทั่วไป'),
(24, '59122180134', 'นางสาว', 'อณัศยา', 'สัตยากุล', 'การจัดการ'),
(25, '59125460107', 'นาย', 'อดิศร', 'ปลูกฝัง', 'การบริหารทรัพยากรอาคาร'),
(26, '61122170113', 'นาย', 'อทิษร', 'โต้งฟ้า', 'ภาษาอังกฤษธุรกิจ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(10) NOT NULL COMMENT 'ไอดีผู้ใช้',
  `user_username` varchar(30) NOT NULL COMMENT 'ชื่อผู้ใช้',
  `user_password` varchar(50) NOT NULL COMMENT 'รหัสผ่าน',
  `user_name` varchar(60) NOT NULL COMMENT 'ชื่อ',
  `user_surname` varchar(60) NOT NULL COMMENT 'นามสกุล',
  `user_sex` enum('ชาย','หญิง') NOT NULL COMMENT 'เพศ',
  `user_email` varchar(100) DEFAULT NULL COMMENT 'อีเมล์',
  `user_level` enum('member','admin') NOT NULL DEFAULT 'member' COMMENT 'ระดับผู้ใช้'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_username`, `user_password`, `user_name`, `user_surname`, `user_sex`, `user_email`, `user_level`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'วายุทธิ์', 'จันทร์ด้วน', 'ชาย', 'wayut09101999@gmail.com', 'admin'),
(2, 'member', '202cb962ac59075b964b07152d234b70', 'ขวัญมณี', 'ใจสุข', 'หญิง', '', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_student`
--
ALTER TABLE `tb_student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_code` (`student_code`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_student`
--
ALTER TABLE `tb_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดี', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีผู้ใช้', AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
