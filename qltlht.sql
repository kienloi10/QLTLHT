-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 23, 2018 lúc 05:49 PM
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
  `ID` int(11) NOT NULL,
  `TENTAILIEU` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitailieu`
--

INSERT INTO `loaitailieu` (`ID`, `TENTAILIEU`) VALUES
(1, 'Toán học'),
(2, ' Lập trình Website'),
(3, 'Lập trình Java'),
(5, 'Kinh tế');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tailieu`
--

CREATE TABLE `tailieu` (
  `ID` int(11) NOT NULL,
  `TENTAILIEU` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TENFILE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ID_LTL` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tailieu`
--

INSERT INTO `tailieu` (`ID`, `TENTAILIEU`, `TENFILE`, `ID_LTL`, `ID_USER`) VALUES
(1, 'Đại số', 'daiso.txt', 1, 1),
(2, 'Gỉai tích', 'giaitich.docx', 1, 3),
(3, 'HTML', 'html.txt', 2, 2),
(4, 'CSS', 'css.txt', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HOTEN` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID`, `USERNAME`, `PASSWORD`, `HOTEN`) VALUES
(1, ' kienloi', 'kienloi', 'Đổng Kiến Lợi'),
(2, '  truongloc', 'truongloc', 'Nguyễn Trương Lộc'),
(3, 'kienthuan', 'kienthuan', 'Kiến Thuận'),
(4, 'nguyenvana', ' 123', 'Nguyễn Văn A');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `loaitailieu`
--
ALTER TABLE `loaitailieu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_LTL` (`ID_LTL`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `loaitailieu`
--
ALTER TABLE `loaitailieu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD CONSTRAINT `tailieu_ibfk_1` FOREIGN KEY (`ID_LTL`) REFERENCES `loaitailieu` (`ID`),
  ADD CONSTRAINT `tailieu_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
