-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2024 at 02:50 AM
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
-- Database: `shopping_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL,
  `m_user` varchar(20) NOT NULL,
  `m_pass` varchar(20) NOT NULL,
  `m_level` varchar(50) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_email` varchar(100) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `m_address` varchar(200) NOT NULL,
  `m_img` varchar(250) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `m_user`, `m_pass`, `m_level`, `m_name`, `m_email`, `m_tel`, `m_address`, `m_img`, `date_save`) VALUES
(1, 'admin', 'admin', 'admin', 'admin_dev', 'atomid026@gmail.com', '0918283181', 'SUT', '187803055720240206_035333.jfif', '2021-06-01 19:04:28'),
(2, 'member', '55', 'member', 'member', 'waiyawoot@gmail.com', '0931294710', 'กรุงเทพมหานคร', '145010926420210602_090554.png', '2021-06-01 19:05:54');

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
  `p_price` int(11) NOT NULL,
  `p_qty` varchar(11) NOT NULL,
  `p_unit` varchar(20) NOT NULL,
  `p_view` int(10) NOT NULL DEFAULT 0,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `type_id`, `p_detail`, `p_img`, `p_price`, `p_qty`, `p_unit`, `p_view`, `datesave`) VALUES
(1, 'การันตีแรงค์ Gold', 3, '-รับประกัน 30 นาทีหลังสั่งซื้อ', '94826162120240206_034808.png', 30, '12', 'ชิ้น', 2, '2021-06-26 16:38:28'),
(2, 'การันตีแรงค์ Bronze', 3, '-ประกัน 30 นาทีหลังสั่งซื้อ', '179312348120240206_034659.png', 10, '99', 'ชิ้น', 3, '2021-06-26 16:46:13'),
(3, '1-50 SKIN RANDOM', 3, 'สุ่ม 1-50 skin++ ไม่รวมบัดดี้ ✅ สกินปืนนับสีที่ปลดล็อก ✅ สุ่มเติม battle pass แล้ว ✅ เอเจนเกือบครบ บางรหัสครบ ✅ สุ่มพ้อยคงเหลือ ✅ รับประกันไม่โดนแบน ✅ รับประกันหากรหัสเข้าไมได้ ✅ รหัสอาจมีคนเข้าซ้อนหรือถูกเปลี่ยนแต่ถ้าโชคดีก็ได้เล่นยาวๆ ⚠️ หมายเหตุ : เข้าไม่ได้สามารถเคลมได้ภายใน 1 ชั่วโมงหลังซื้อ ⚠️', '11970645620240206_034337.jpg', 50, '10', 'ชิ้น', 18, '2021-06-26 16:46:35'),
(4, 'Set Spectrum', 2, 'Set Skin Spectrum ไม่รวมบัดดี้ ✅ สกินปืนนับสีที่ปลดล็อก ✅ สุ่มเติม battle pass แล้ว ✅ เอเจนเกือบครบ บางรหัสครบ ✅ สุ่มพ้อยคงเหลือ ✅ รับประกันไม่โดนแบน ✅ รหัสอาจมีคนเข้าซ้อนหรือถูกเปลี่ยนแต่ถ้าโชคดีก็ได้เล่นยาวๆ ⚠️ เปลี่ยนรหัสไม่ได้ ⛔ ไม่รับประกัน ⛔ หมายเหตุ : เข้าไม่ได้สามารถเคลมได้ภายใน 10 นาทีหลังซื้อ ⚠️', '17362993020240206_034502.jpg', 1, '15', 'ชิ้น', 27, '2021-06-26 16:46:51');

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
(1, 'ValorantRandom'),
(2, 'IDShop'),
(3, 'ValorantRank');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
