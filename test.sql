-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2017 lúc 06:09 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitailieu`
--

CREATE TABLE `loaitailieu` (
  `MATL` varchar(15) NOT NULL,
  `TENTL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaitailieu`
--

INSERT INTO `loaitailieu` (`MATL`, `TENTL`) VALUES
('001', 'Toan hoc'),
('002', 'Lap trinh web'),
('003', 'Lap trinh java');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tailieu`
--

CREATE TABLE `tailieu` (
  `id` int(11) NOT NULL,
  `tentailieu` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tenfile` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tenloaitailieu` varchar(255) NOT NULL,
  `tenngdang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tailieu`
--

INSERT INTO `tailieu` (`id`, `tentailieu`, `tenfile`, `tenloaitailieu`, `tenngdang`) VALUES
(1, 'Dai So', 'daiso.txt', 'Toan hoc', 'Dong Kien Loi'),
(2, 'Giai tich', 'giaitich.docx', 'Toan hoc', 'Dong Kien Loi'),
(5, 'Toan Cao Cap', 'toancaocap.txt', 'Toan hoc', 'Luu Vinh Hung'),
(14, 'HTML', 'html.txt', 'Lap trinh web', 'Luu Vinh Hung'),
(15, 'CSS', 'CSS.txt', 'Lap trinh web', 'Dong Kien Thuan'),
(16, 'Huong Doi Tuong', 'huongdoituong.xlsx', 'Lap trinh java', 'Dong Kien Loi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `USERNAME` varchar(32) CHARACTER SET ascii NOT NULL,
  `PASSWORD` varchar(32) CHARACTER SET ascii NOT NULL,
  `HOTEN` text,
  `EMAIL` varchar(255) CHARACTER SET ascii DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`USERNAME`, `PASSWORD`, `HOTEN`, `EMAIL`) VALUES
('kienloidong', 'mylinh', 'Dong Kien Loi', 'kienloi1996@gmail.com'),
('kienthuan', 'quyen', 'Dong Kien Thuan', 'kienthuan1996@gmail.com'),
('quocbao', 'quocbao', 'Ngo Hoang Quoc Bao', 'quocbao1996@gmail.com'),
('truongloc', 'bestcautruc', 'Nguyen Truong Loc', 'truongloc1996@gmail.com'),
('vinhhung', 'hungvip', 'Luu Vinh Hung', 'vinhhung@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `loaitailieu`
--
ALTER TABLE `loaitailieu`
  ADD PRIMARY KEY (`MATL`);
ALTER TABLE `loaitailieu` ADD FULLTEXT KEY `TENTAILIEU` (`TENTL`);

--
-- Chỉ mục cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USERNAME`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
