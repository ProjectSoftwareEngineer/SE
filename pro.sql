-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 05:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `a_id` int(11) NOT NULL,
  `a_user` varchar(20) NOT NULL,
  `a_pass` varchar(20) NOT NULL,
  `a_name` varchar(100) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`a_id`, `a_user`, `a_pass`, `a_name`, `datesave`) VALUES
(1, '111', '111', 'admin1', '2018-11-16 05:34:50'),
(2, '222', '222', 'admin2', '2018-11-16 05:34:50'),
(3, '333', '333', 'admin3', '2018-11-16 05:35:30'),
(4, '444', '444', 'admin4', '2018-11-16 05:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL,
  `m_user` varchar(20) NOT NULL,
  `m_pass` varchar(20) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_email` varchar(100) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `m_address` varchar(200) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `m_user`, `m_pass`, `m_name`, `m_email`, `m_tel`, `m_address`, `date_save`) VALUES
(1, 'tonkailcom', 'ton123456', 'yasinthorn', 'atomid026@gmail.com', '0918283181', '105/728 ', '2024-02-01 22:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `p_detail` text NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `type_id`, `p_detail`, `p_img`, `datesave`) VALUES
(1, 'Set Spectrum', 12, 'การันตี Set Spectrum \r\nไม่รวมบัดดี้ ✅\r\nสกินปืนนับสีที่ปลดล็อก ✅\r\nสุ่มเติม battle pass แล้ว ✅\r\nเอเจนเกือบครบ บางรหัสครบ ✅\r\nสุ่มพ้อยคงเหลือ ✅\r\nรับประกันไม่โดนแบน ✅\r\nรหัสอาจมีคนเข้าซ้อนหรือถูกเปลี่ยนแต่ถ้าโชคดีก็ได้เล่นยาวๆ ⚠️\r\nเปลี่ยนรหัสไม่ได้ ⛔\r\nไม่รับประกัน ⛔\r\nหมายเหตุ : เข้าไม่ได้สามารถเคลมได้ภายใน 10 นาทีหลังซื้อ ⚠️', 'p_img73290961120240202_171038.jpg', '2024-02-02 10:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(1, 'อิเล็กทรอนิกส์'),
(2, 'รองเท้า'),
(4, 'แฟชั่น'),
(7, 'เครื่องแต่งกาย'),
(8, 'ของเล่น '),
(9, 'นาฬิกา'),
(10, 'เสื้อผ้า'),
(11, 'โทรศัพท์'),
(12, 'IDValorant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
