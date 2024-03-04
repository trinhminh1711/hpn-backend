-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 04, 2024 at 05:26 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hpn_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `Feedback`
--

CREATE TABLE `Feedback` (
  `ID` int(11) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `FeedbackContent` text DEFAULT NULL,
  `LinkImage` varchar(10000) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Question`
--

CREATE TABLE `Question` (
  `ID` int(11) NOT NULL,
  `Content` varchar(5555) DEFAULT NULL,
  `Answer1` varchar(255) DEFAULT NULL,
  `Answer2` varchar(2000) DEFAULT NULL,
  `Answer3` varchar(255) DEFAULT NULL,
  `Answer4` varchar(255) DEFAULT NULL,
  `CorrectAnswer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Question`
--

INSERT INTO `Question` (`ID`, `Content`, `Answer1`, `Answer2`, `Answer3`, `Answer4`, `CorrectAnswer`) VALUES
(1, 'Đảng ủy phường Máy Chai đã thành lập mấy tổ tuyên truyền về công tác giải phóng mặt bằng?', '01 tổ', '02 tổ', '03 tổ', '', '03 tổ'),
(2, 'Có bao nhiêu Hội viên Hội Phụ nữ bị ảnh hưởng trực tiếp khi dự án triển khai thực hiện', '98 HVPN', '142 HVPN', '158 HVPN', NULL, '142 HVPN'),
(3, 'Hãy chọn phương án đúng', 'Bồi thường về đất đai là việc Nhà nước trả lại giá trị quyền sử dụng đất đối với diện tích đất thu hồi cho người sử dụng đất', 'Hỗ trợ khi nhà nước thu hồi là việc Nhà nước trợ giúp cho người có đất thu hồi để ổn định đời sống, sản xuất và phát triển', 'Cả A và B đều đúng', 'Cả A và B đều sai', 'Cả A và B đều đúng'),
(4, 'Người có đất thu hồi không chấp hành quyết định thu hồi đất sau khi UBND phường, UB MTTQ và các tổ chức chính trị xã hội nơi có đất thu hồi và tổ chức làm nhiệm vụ bồi thường, giải phóng mặt bằng đã vận động, thuyết phục thì cơ quan có thẩm quyền sẽ thực hiện quy trình gì để thu hồi đất?', 'Không thu hồi đất.', 'Cưỡng chế thu hồi đất.', NULL, NULL, 'Cưỡng chế thu hồi đất.'),
(5, 'Người sử dụng đất vi phạm pháp luật về đất đai sẽ bị nhà nước xem xét thu hồi đất?', 'Đúng', 'Sai', NULL, NULL, 'Đúng'),
(6, 'Hãy chọn phương án đúng:', 'Bồi thường về đất là việc Nhà nước trả lại giá trị quyền sử dụng đất đối với diện tích đất thu hồi cho người sử dụng đất.', 'Hỗ trợ khi Nhà nước thu hồi đất là việc Nhà nước trợ giúp cho người có đất thu hồi để ổn định đời sống, sản xuất và phát triển.', 'Cả A và B đều đúng.', 'Cả A và B đều sai.', 'Cả A và B đều đúng.'),
(7, 'Hãy chọn phương án đúng:', 'Giá đất là giá trị của quyền sử dụng đất.', 'Giá đất là giá trị của quyền sử dụng đất tính trên một đơn vị diện tích đất.', 'Giá đất là giá trị bằng tiền của quyền sử dụng đất đối với một diện tích đất xác định trong thời hạn sử dụng đất xác định.', 'A, B, C đều sai.', 'Giá đất là giá trị của quyền sử dụng đất tính trên một đơn vị diện tích đất.'),
(8, 'Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên được thực hiện trên địa bàn phường nào?', 'Phường Cầu Tre', 'Phường Máy Chai', 'Cả A và B', NULL, 'Cả A và B'),
(9, 'Mục tiêu của dự án là gì?', 'Đầu tư xây dựng khu nhà ở xã hội để bán và cho thuê (bán 80%, cho thuê 20%).', 'Phát triển diện tích nhà ở tại quận Ngô Quyền, đáp ứng nhu cầu nhà ở cho người dân, đặc biệt là người dân tại các chung cư cũ trên địa bàn quận Ngô Quyền và Hồng Bàng; đảm bảo về môi trường tạo cảnh quan khu vực dân cư đô thị hiện hữu, khuyến khích người dân sử dụng nhà ở chung cư, nâng cao hiệu quả sử dụng đất, tiết kiệm quỹ đất đô thị và cung cấp các dịch vụ tập trugn phụ vụ đời sống của nhân dân.', 'Cả A và B', NULL, 'Cả A và B'),
(10, 'Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên không xây dựng công viên cây xanh?', 'Đúng', 'Sai', NULL, NULL, 'Sai'),
(11, 'Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên có xây dựng trường học không?', 'Có', 'Không', NULL, NULL, 'Có'),
(12, 'Tổng mức đầu tư Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên là bao nhiêu?', '4.845 tỷ đồng', '4.855 tỷ đồng', '4.865 tỷ đồng', NULL, '4.845 tỷ đồng'),
(13, 'Diện tích thực hiện Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên là bao nhiêu?', '17ha', '16,54ha', '16,91ha', NULL, '16,91ha'),
(14, 'Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên thực hiện giải phóng mặt bằng thu hồi đất đối với bao nhiêu tổ chức?', '04 tổ chức', '07 tổ chức', '08 tổ chức', NULL, '07 tổ chức'),
(15, 'Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên thực hiện giải phóng mặt bằng thu hồi đất đối với bao nhiêu hộ dân?', '54 hộ dân', '88 hộ dân', '98 hộ dân', NULL, '98 hộ dân'),
(16, 'Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên chính thức triển khai thực hiện từ khi nào?', 'Tháng 7/2022', 'Tháng 8/2022', 'Tháng 11/2022', NULL, 'Tháng 7/2022'),
(17, 'Lễ khởi công Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên diễn ra vào ngày nào?', 'Ngày 25/02/2023', 'Ngày 07/3/2023', 'Ngày 01/4/2023', NULL, 'Ngày 07/3/2023'),
(18, 'Đơn vị nào là Chủ đầu tư dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên?', 'Tập đoàn VinGroup', 'Công ty cổ phần Thái - Holding', 'Công ty cổ phần xây dựng Hòa Bình', NULL, 'Công ty cổ phần Thái - Holding'),
(19, 'Dự án xây dựng bao nhiêu block nhà chung cư?', '05 block nhà', '10 block nhà', '15 block nhà', NULL, '10 block nhà'),
(20, 'Mỗi block nhà chung cư cao bao nhiêu tầng?', '15 tầng', '20 tầng', '29 tầng', NULL, '15 tầng'),
(21, 'Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên có 104 lô đất phục vụ tái định cư tại chỗ?.', 'Đúng.', 'Sai.', NULL, NULL, 'Đúng.'),
(22, 'Dự án xây dựng bao nhiêu căn nhà ở xã hội?', '4.156 căn hộ', '4.656 căn hộ', '4.456 căn hộ', NULL, '4.456 căn hộ'),
(23, 'Diện tích các căn hộ nhà ở xã hội tại Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên là bao nhiêu? ', 'Từ 36m2 đến 70m2', 'Từ 40m2 đến 65m2', 'Từ 40m2 đến 69m2', NULL, 'Từ 36m2 đến 70m2'),
(24, 'Dự án có bao nhiêu căn nhà thương mại?', '163 căn', '165 căn', '169 căn', NULL, '163 căn'),
(25, 'Mỗi căn nhà ở thương mại cao bao nhiêu tầng?', '05 tầng', '07 tầng', '09 tầng', NULL, '07 tầng'),
(26, 'Dự án Khu nhà ở xã hội tại Tổng kho 3 Lạc Viên có cho thuê căn hộ?', 'Đúng.', 'Sai.', NULL, NULL, 'Đúng.'),
(27, 'Trên địa bàn phường Máy Chai đang triển khai thực hiện mấy dự án GPMB?', '05 dự án (226 Lê Lai, Kho 3, 47 LL - 92 LTT, Cầu Nguyễn Trãi, Cầu Máy Chai…)', '06 dự án', '07 dự án', NULL, '05 dự án (226 Lê Lai, Kho 3, 47 LL - 92 LTT, Cầu Nguyễn Trãi, Cầu Máy Chai…)');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `WorkPlace` varchar(255) DEFAULT NULL,
  `NumberCorrect` int(11) DEFAULT NULL,
  `CompletionTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Feedback`
--
ALTER TABLE `Feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Feedback`
--
ALTER TABLE `Feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Question`
--
ALTER TABLE `Question`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
