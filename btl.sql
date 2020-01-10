-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2020 lúc 08:55 AM
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
-- Cơ sở dữ liệu: `btl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap`
--

CREATE TABLE `dangnhap` (
  `STT` int(11) NOT NULL,
  `MaGV` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MatKhau` char(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Email` char(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Quyen` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh`
--

CREATE TABLE `diemdanh` (
  `ID` int(11) DEFAULT NULL,
  `MaSV` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TenSV` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DiemDanh` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Lido` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `diemdanh`
--

INSERT INTO `diemdanh` (`ID`, `MaSV`, `TenSV`, `DiemDanh`, `Lido`) VALUES
(1, '175A071412', 'Lê Văn Đức', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `MaGV` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenGV` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `TrinhDo` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaKhoa` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`MaGV`, `TenGV`, `TrinhDo`, `MaKhoa`) VALUES
('GV100', 'Bùi Minh Tú', 'Thạc sĩ', 'CNTT'),
('GV102', 'Bùi Minh Tú', 'Thạc sĩ', 'CNTT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `MaKhoa` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenKhoa` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`MaKhoa`, `TenKhoa`) VALUES
('CNTT', 'Công nghệ thông tin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_trinh_giang_day`
--

CREATE TABLE `lich_trinh_giang_day` (
  `ID` int(11) NOT NULL,
  `MaMon` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaLop` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaGV` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Ngayhoc` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `Cahoc` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_trinh_giang_day`
--

INSERT INTO `lich_trinh_giang_day` (`ID`, `MaMon`, `MaLop`, `MaGV`, `Ngayhoc`, `Cahoc`) VALUES
(1, 'CNW', 'TH', 'GV100', '15/01/2019', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `MaLop` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenLop` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`MaLop`, `TenLop`) VALUES
('PM', '59PM2'),
('TH', '59TH1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMon` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenMon` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `Tongsotiet` int(11) DEFAULT NULL,
  `SotietLT` int(11) DEFAULT NULL,
  `SotietTH` int(11) DEFAULT NULL,
  `MaNganh` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`MaMon`, `TenMon`, `Tongsotiet`, `SotietLT`, `SotietTH`, `MaNganh`) VALUES
('CNW', 'Công nghê Web', 50, 25, 25, 'CNTT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc_lophoc`
--

CREATE TABLE `monhoc_lophoc` (
  `MaLop` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaMon` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Namhoc` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `HocKi` int(11) DEFAULT NULL
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

--
-- Đang đổ dữ liệu cho bảng `nganh`
--

INSERT INTO `nganh` (`MaNganh`, `MaKhoa`, `TenNganh`) VALUES
('CNTT', 'CNTT', 'Công nghệ thông tin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` char(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenSV` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `QueQuan` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `MaLop` char(10) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`MaSV`, `TenSV`, `GioiTinh`, `QueQuan`, `MaLop`) VALUES
('175A071412', 'Lê Văn Đức', 'Nam', 'Bắc Ninh', 'TH');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `MaGV` (`MaGV`);

--
-- Chỉ mục cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD KEY `ID` (`ID`),
  ADD KEY `MaSV` (`MaSV`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`MaGV`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Chỉ mục cho bảng `lich_trinh_giang_day`
--
ALTER TABLE `lich_trinh_giang_day`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaMon` (`MaMon`),
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaGV` (`MaGV`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMon`),
  ADD KEY `MaNganh` (`MaNganh`);

--
-- Chỉ mục cho bảng `monhoc_lophoc`
--
ALTER TABLE `monhoc_lophoc`
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaMon` (`MaMon`);

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
-- Các ràng buộc cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD CONSTRAINT `dangnhap_ibfk_1` FOREIGN KEY (`MaGV`) REFERENCES `giaovien` (`MaGV`);

--
-- Các ràng buộc cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `diemdanh_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `lich_trinh_giang_day` (`ID`),
  ADD CONSTRAINT `diemdanh_ibfk_2` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`);

--
-- Các ràng buộc cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `giaovien_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`);

--
-- Các ràng buộc cho bảng `lich_trinh_giang_day`
--
ALTER TABLE `lich_trinh_giang_day`
  ADD CONSTRAINT `lich_trinh_giang_day_ibfk_1` FOREIGN KEY (`MaMon`) REFERENCES `monhoc` (`MaMon`),
  ADD CONSTRAINT `lich_trinh_giang_day_ibfk_2` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `lich_trinh_giang_day_ibfk_3` FOREIGN KEY (`MaGV`) REFERENCES `giaovien` (`MaGV`);

--
-- Các ràng buộc cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`MaNganh`) REFERENCES `nganh` (`MaNganh`);

--
-- Các ràng buộc cho bảng `monhoc_lophoc`
--
ALTER TABLE `monhoc_lophoc`
  ADD CONSTRAINT `monhoc_lophoc_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `monhoc_lophoc_ibfk_2` FOREIGN KEY (`MaMon`) REFERENCES `monhoc` (`MaMon`);

--
-- Các ràng buộc cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD CONSTRAINT `nganh_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
