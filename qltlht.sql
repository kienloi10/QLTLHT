-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 29, 2018 lúc 07:56 AM
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
-- Cơ sở dữ liệu: `qltlht`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitailieu`
--

CREATE TABLE `loaitailieu` (
  `LOAITAILIEU` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NGANH` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitailieu`
--

INSERT INTO `loaitailieu` (`LOAITAILIEU`, `NGANH`) VALUES
('Kinh tế', 'Quản trị kinh doanh'),
('Lập trình Web', 'Công nghệ thông tin'),
('Toán học', 'Cơ bản');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tailieu`
--

CREATE TABLE `tailieu` (
  `ID` int(11) NOT NULL,
  `TENTAILIEU` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TENFILE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LOAITL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENUSER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tailieu`
--

INSERT INTO `tailieu` (`ID`, `TENTAILIEU`, `TENFILE`, `LOAITL`, `TENUSER`) VALUES
(2, 'Đại số', 'daiso.txt', 'Toán học', 'kienloi'),
(3, 'CSS', 'css.txt', 'Lập trình Web', 'truongloc'),
(8, 'Tin học quản lý', 'b.txt', 'Kinh tế', 'truongloc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `USERNAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HOTEN` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`USERNAME`, `PASSWORD`, `HOTEN`) VALUES
('kienloi', 'kienloi', 'Đổng Kiến Lợi'),
('kienthuan', '1234', 'Đổng Kiến Thuận'),
('truongloc', 'truonglocnguyen', 'Lộc'),
('vinhhung', 'vinhhung', 'Lưu Vĩnh Hùng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `loaitailieu`
--
ALTER TABLE `loaitailieu`
  ADD PRIMARY KEY (`LOAITAILIEU`);

--
-- Chỉ mục cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TENUSER` (`TENUSER`),
  ADD KEY `LOAITL` (`LOAITL`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD CONSTRAINT `tailieu_ibfk_1` FOREIGN KEY (`TENUSER`) REFERENCES `user` (`USERNAME`),
  ADD CONSTRAINT `tailieu_ibfk_2` FOREIGN KEY (`LOAITL`) REFERENCES `loaitailieu` (`LOAITAILIEU`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
