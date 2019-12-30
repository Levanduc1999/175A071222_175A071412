-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2019 lúc 02:33 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdiemdanh`
--

CREATE TABLE `chitietdiemdanh` (
  `IDDIEMDANH` int(11) DEFAULT NULL,
  `MaSV` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SoTietVang` int(11) DEFAULT NULL,
  `LiDo` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap`
--

CREATE TABLE `dangnhap` (
  `MaGV` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenGV` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `SDT` int(11) DEFAULT NULL,
  `Quyen` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `MaGV` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenGV` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Trinhdo` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaNganh` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien_diemdanh_sv`
--

CREATE TABLE `giangvien_diemdanh_sv` (
  `IDDiemDanh` int(11) NOT NULL,
  `MaGV` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaLop` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NgayDiemDanh` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `MaKhoa` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenKhoa` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `MaLop` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenLop` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMH` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenMH` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Tongsotiet` int(11) DEFAULT NULL,
  `SoTietLT` int(11) DEFAULT NULL,
  `SotietTH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc_lophoc`
--

CREATE TABLE `monhoc_lophoc` (
  `MaLop` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaMH` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Namhoc` int(11) DEFAULT NULL,
  `Hocki` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `MaNganh` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `MaKhoa` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TenNganh` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenSV` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Gioitinh` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Quequan` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaLop` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdiemdanh`
--
ALTER TABLE `chitietdiemdanh`
  ADD KEY `MaSV` (`MaSV`),
  ADD KEY `IDDIEMDANH` (`IDDIEMDANH`);

--
-- Chỉ mục cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`MaGV`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`MaGV`),
  ADD KEY `MaNganh` (`MaNganh`);

--
-- Chỉ mục cho bảng `giangvien_diemdanh_sv`
--
ALTER TABLE `giangvien_diemdanh_sv`
  ADD PRIMARY KEY (`IDDiemDanh`),
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaGV` (`MaGV`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`MaLop`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMH`);

--
-- Chỉ mục cho bảng `monhoc_lophoc`
--
ALTER TABLE `monhoc_lophoc`
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaMH` (`MaMH`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`MaNganh`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`),
  ADD KEY `MaLop` (`MaLop`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdiemdanh`
--
ALTER TABLE `chitietdiemdanh`
  ADD CONSTRAINT `chitietdiemdanh_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`),
  ADD CONSTRAINT `chitietdiemdanh_ibfk_2` FOREIGN KEY (`IDDIEMDANH`) REFERENCES `giangvien_diemdanh_sv` (`IDDiemDanh`);

--
-- Các ràng buộc cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD CONSTRAINT `dangnhap_ibfk_1` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`);

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `giangvien_ibfk_1` FOREIGN KEY (`MaNganh`) REFERENCES `nganh` (`MaNganh`);

--
-- Các ràng buộc cho bảng `giangvien_diemdanh_sv`
--
ALTER TABLE `giangvien_diemdanh_sv`
  ADD CONSTRAINT `giangvien_diemdanh_sv_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lophoc` (`MaLop`),
  ADD CONSTRAINT `giangvien_diemdanh_sv_ibfk_2` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`);

--
-- Các ràng buộc cho bảng `monhoc_lophoc`
--
ALTER TABLE `monhoc_lophoc`
  ADD CONSTRAINT `monhoc_lophoc_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lophoc` (`MaLop`),
  ADD CONSTRAINT `monhoc_lophoc_ibfk_2` FOREIGN KEY (`MaMH`) REFERENCES `monhoc` (`MaMH`);

--
-- Các ràng buộc cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD CONSTRAINT `nganh_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lophoc` (`MaLop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
