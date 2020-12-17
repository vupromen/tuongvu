-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2020 lúc 03:37 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `onishop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `MaAnh` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `NoiDung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`MaBL`, `MaSP`, `MaKH`, `NoiDung`, `ThoiGian`) VALUES
(1, 4, 1, 'Sản phẩm đẹp , chất lượng . ', '2019-10-27 00:00:00'),
(2, 4, 6, ' sản phẩm rất ok', '2019-10-27 20:58:25'),
(3, 4, 6, '  sản phẩm dùng tốt', '2019-10-27 23:29:35'),
(4, 4, 1, 'ok', '2019-10-29 14:38:48'),
(5, 4, 1, ' cho 5 sao', '2019-10-29 14:39:24'),
(6, 12, 1, 'a', '2019-10-31 14:41:10'),
(7, 4, 1, 'sản phẩm chất lượng', '2019-11-06 09:19:36'),
(8, 4, 1, 'toot', '2019-11-12 15:29:30'),
(9, 4, 1, 'ok', '2019-11-12 15:31:12'),
(10, 4, 1, 'ok', '2019-11-12 15:31:51'),
(11, 4, 1, 'ok', '2019-11-12 15:32:20'),
(12, 5, 1, 'ok', '2019-11-13 09:15:31'),
(14, 5, 1, 'sản phẩm tốt', '2019-12-18 17:12:34'),
(15, 10, 1, 'Rất đẹp', '2020-01-10 14:19:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` int(11) NOT NULL,
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES
(21, 4, 1, '3829000', '3829000', 38, 'Xanh'),
(21, 68, 2, '1230000', '2460000', 38, 'Trắng'),
(22, 4, 3, '3829000', '11487000', 36, 'Đỏ'),
(22, 68, 5, '1230000', '6150000', 38, 'Trắng'),
(23, 4, 1, '3829000', '3829000', 36, 'Đỏ'),
(25, 5, 1, '3519000', '3519000', 36, 'Trắng'),
(26, 5, 2, '3519000', '7038000', 36, 'Trắng'),
(26, 7, 1, '2499000', '2499000', 38, 'none'),
(26, 68, 2, '1230000', '2460000', 36, 'Đen'),
(27, 6, 1, '3500000', '3500000', 37, 'Đen'),
(28, 68, 2, '1230000', '2460000', 38, 'Đen '),
(29, 7, 4, '1299400', '5197600', 38, 'none'),
(29, 54, 5, '630000', '3150000', 37, 'Đen '),
(30, 7, 1, '1299400', '1299400', 38, 'none'),
(31, 53, 1, '1600000', '1600000', 36, 'Đen '),
(32, 55, 1, '1230000', '1230000', 38, 'none'),
(33, 4, 1, '3829000', '3829000', 36, 'Đỏ'),
(34, 4, 1, '3829000', '3829000', 36, 'Đỏ'),
(35, 4, 1, '3829000', '3829000', 36, 'Đỏ'),
(36, 5, 2, '3519000', '7038000', 37, 'Xanh'),
(37, 5, 1, '3519000', '3519000', 36, 'Trắng'),
(37, 5, 1, '3519000', '3519000', 37, 'Trắng'),
(37, 5, 1, '3519000', '3519000', 37, 'Xanh'),
(38, 5, 1, '3519000', '3519000', 36, 'Trắng'),
(39, 5, 1, '3519000', '3519000', 36, 'Trắng'),
(39, 5, 2, '3519000', '7038000', 36, 'Xanh'),
(39, 5, 1, '3519000', '3519000', 37, 'Trắng'),
(40, 53, 5, '1600000', '8000000', 36, 'Đen '),
(41, 74, 1, '2200000', '2200000', 38, 'Đen '),
(42, 53, 1, '1550000', '1550000', 36, 'Đen '),
(43, 9, 1, '2599000', '2599000', 38, 'none'),
(44, 9, 1, '2599000', '2599000', 38, 'none'),
(45, 10, 3, '3862300', '11586900', 39, 'Trắng'),
(46, 72, 1, '1260000', '1260000', 40, 'Đen - Trắng'),
(47, 12, 1, '1398300', '1398300', 40, 'Vàng'),
(47, 53, 1, '1090000', '1090000', 42, 'none'),
(48, 7, 1, '1699300', '1699300', 39, 'Đen - Trắng'),
(48, 9, 1, '1804300', '1804300', 38, 'Đen - Trắng'),
(49, 76, 5, '1050000', '5250000', 38, 'Đen '),
(50, 11, 5, '3239300', '16196500', 39, 'none'),
(50, 11, 5, '3239300', '16196500', 40, 'none'),
(50, 11, 5, '3239300', '16196500', 41, 'none'),
(51, 10, 10, '3862300', '38623000', 39, 'Trắng'),
(52, 7, 5, '1699300', '8496500', 40, 'Đen - Trắng'),
(53, 70, 5, '1190000', '5950000', 39, 'Trắng'),
(54, 55, 5, '831000', '4155000', 39, 'Đen '),
(54, 71, 5, '840000', '4200000', 41, 'Đen '),
(55, 68, 1, '861000', '861000', 39, 'Đen '),
(56, 75, 5, '980000', '4900000', 38, 'Đen '),
(57, 56, 1, '1090000', '1090000', 39, 'Đen - Trắng'),
(57, 76, 1, '1050000', '1050000', 39, 'Đen '),
(58, 69, 1, '1090000', '1090000', 39, 'none'),
(58, 69, 1, '1090000', '1090000', 40, 'none'),
(59, 53, 5, '1090000', '5450000', 42, 'none'),
(60, 55, 1, '831000', '831000', 39, 'Đen '),
(61, 53, 1, '1090000', '1090000', 42, 'none'),
(61, 54, 2, '411000', '822000', 38, 'Đen '),
(62, 7, 1, '1699300', '1699300', 39, 'Đen - Trắng'),
(63, 70, 2, '1190000', '2380000', 39, 'Trắng'),
(64, 73, 1, '1750000', '1750000', 38, 'Đen '),
(65, 68, 1, '861000', '861000', 39, 'Đen '),
(65, 68, 1, '861000', '861000', 39, 'Đen - Trắng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` int(11) NOT NULL,
  `MaSize` int(11) NOT NULL,
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaSize`, `MaMau`, `SoLuong`) VALUES
(4, 36, 'none', 60),
(4, 37, 'none', 100),
(4, 38, 'none', 100),
(4, 39, 'none', 100),
(4, 40, 'none', 100),
(4, 41, 'none', 100),
(4, 42, 'none', 100),
(4, 43, 'none', 100),
(5, 39, 'Xanh', 100),
(5, 40, 'Xanh', 100),
(5, 41, 'Xanh', 100),
(5, 42, 'Xanh', 100),
(6, 38, 'Đen ', 40),
(6, 39, 'Đen ', 40),
(6, 40, 'Đen ', 40),
(6, 41, 'Đen ', 40),
(6, 42, 'Đen ', 40),
(7, 39, 'Đen - Trắng', 18),
(7, 39, 'Trắng', 50),
(7, 40, 'Đen - Trắng', 15),
(7, 40, 'Trắng', 50),
(7, 41, 'Đen - Trắng', 20),
(7, 41, 'Trắng', 50),
(9, 38, 'Đen - Trắng', 39),
(9, 39, 'Đen - Trắng', 40),
(9, 40, 'Đen - Trắng', 40),
(9, 41, 'Đen - Trắng', 40),
(9, 42, 'Đen - Trắng', 40),
(10, 39, 'Trắng', 87),
(10, 40, 'Trắng', 100),
(10, 41, 'Trắng', 100),
(10, 42, 'Trắng', 100),
(11, 39, 'none', 95),
(11, 40, 'none', 95),
(11, 41, 'none', 95),
(11, 42, 'none', 100),
(12, 39, 'Vàng', 100),
(12, 40, 'Vàng', 99),
(12, 41, 'Vàng', 100),
(53, 42, 'none', 494),
(54, 36, 'Đen ', 500),
(54, 37, 'Đen ', 500),
(54, 38, 'Đen ', 500),
(54, 39, 'Đen ', 500),
(54, 40, 'Đen ', 500),
(54, 41, 'Đen ', 500),
(54, 42, 'Đen ', 500),
(54, 43, 'Đen ', 500),
(55, 39, 'Đen ', 194),
(55, 40, 'Đen ', 200),
(55, 41, 'Đen ', 200),
(56, 38, 'Đen - Trắng', 100),
(56, 39, 'Đen - Trắng', 99),
(56, 40, 'Đen - Trắng', 100),
(56, 41, 'Đen - Trắng', 100),
(68, 39, 'Đen ', 499),
(68, 39, 'Đen - Trắng', 29),
(68, 40, 'Đen ', 500),
(68, 40, 'Đen - Trắng', 30),
(68, 41, 'Đen ', 500),
(68, 41, 'Đen - Trắng', 30),
(69, 39, 'none', 100),
(69, 40, 'none', 100),
(69, 41, 'none', 100),
(70, 39, 'Đen - Trắng', 100),
(70, 39, 'Trắng', 98),
(70, 40, 'Đen - Trắng', 100),
(70, 40, 'Trắng', 100),
(70, 41, 'Đen - Trắng', 100),
(70, 41, 'Trắng', 100),
(71, 40, 'Đen ', 100),
(71, 41, 'Đen ', 95),
(71, 42, 'Đen ', 100),
(72, 39, 'Đen - Trắng', 100),
(72, 39, 'Trắng', 200),
(72, 40, 'Đen - Trắng', 99),
(72, 40, 'Trắng', 200),
(72, 41, 'Đen - Trắng', 100),
(72, 41, 'Trắng', 200),
(73, 36, 'Đen ', 100),
(73, 37, 'Đen ', 100),
(73, 38, 'Đen ', 100),
(73, 39, 'Đen ', 100),
(73, 40, 'Đen ', 100),
(73, 41, 'Đen ', 100),
(73, 42, 'Đen ', 100),
(73, 43, 'Đen ', 100),
(74, 38, 'Đen - Trắng', 100),
(74, 39, 'Đen - Trắng', 100),
(74, 40, 'Đen - Trắng', 100),
(74, 41, 'Đen - Trắng', 100),
(75, 38, 'Đen ', 95),
(75, 38, 'Đen - Trắng', 40),
(75, 38, 'Trắng', 50),
(75, 39, 'Đen ', 100),
(75, 39, 'Đen - Trắng', 40),
(75, 39, 'Trắng', 50),
(75, 40, 'Đen ', 100),
(75, 40, 'Đen - Trắng', 40),
(75, 40, 'Trắng', 50),
(75, 41, 'Đen ', 100),
(75, 41, 'Đen - Trắng', 40),
(75, 41, 'Trắng', 50),
(75, 42, 'Đen ', 100),
(75, 42, 'Đen - Trắng', 40),
(75, 42, 'Trắng', 50),
(76, 38, 'Đen ', 95),
(76, 38, 'Trắng', 40),
(76, 39, 'Đen ', 99),
(76, 39, 'Trắng', 40),
(76, 40, 'Đen ', 100),
(76, 40, 'Trắng', 40),
(76, 41, 'Đen ', 100),
(76, 41, 'Trắng', 40),
(76, 42, 'Đen ', 100),
(76, 42, 'Trắng', 40),
(77, 39, 'Đen - Trắng', 500),
(77, 40, 'Đen - Trắng', 500),
(77, 41, 'Đen - Trắng', 500);

--
-- Bẫy `chitietsanpham`
--
DELIMITER $$
CREATE TRIGGER `tongsl` AFTER UPDATE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_del` AFTER DELETE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = OLD.MaSP) WHERE MaSP = OLD.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_insert` AFTER INSERT ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sản Phẩm Nổi Bật'),
(2, 'Sản Phẩm Mới'),
(3, 'Sản Phẩm bán chạy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `NgayDat` datetime DEFAULT current_timestamp(),
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `MaNVGH` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `NgayDat`, `NgayGiao`, `TinhTrang`, `TongTien`, `MaNVGH`) VALUES
(21, 1, 1, '2019-01-05 21:29:56', '2020-01-01 20:00:43', 'hoàn thành', '6289000', '1'),
(22, 6, 1, '2019-11-06 09:17:00', '2020-01-07 09:17:07', 'hoàn thành', '17637000', '1'),
(23, 1, 1, '2019-11-11 20:05:20', '2019-10-12 20:08:06', 'hoàn thành', '3829000', '1'),
(25, 1, 1, '2019-11-24 13:07:58', '2019-11-25 13:12:14', 'hoàn thành', '3519000', '1'),
(26, 1, 1, '2019-12-08 20:10:52', '2019-12-13 14:35:27', 'hoàn thành', '11997000', '1'),
(27, 1, 1, '2019-12-15 14:54:30', '2019-12-21 11:18:42', 'hoàn thành', '3500000', '1'),
(28, 1, 1, '2019-12-19 14:49:54', '2019-12-21 11:18:44', 'hoàn thành', '2460000', '1'),
(29, 1, 1, '2019-12-20 11:16:20', '2019-12-21 11:19:46', 'hoàn thành', '8347600', '1'),
(30, 1, 1, '2019-12-23 21:14:06', '2019-12-25 19:48:16', 'hoàn thành', '1299400', '1'),
(31, 12, 1, '2019-12-28 13:05:23', '2019-12-29 13:05:44', 'hoàn thành', '1600000', '1'),
(32, 1, 1, '2020-01-02 15:31:23', NULL, 'Hủy Bỏ', '1230000', NULL),
(33, 1, 1, '2020-01-02 15:41:32', NULL, 'Hủy Bỏ', '3829000', NULL),
(34, 1, 1, '2020-01-02 15:47:28', NULL, 'Hủy Bỏ', '3829000', NULL),
(35, 1, 1, '2020-01-02 15:48:31', NULL, 'Hủy Bỏ', '3829000', NULL),
(36, 1, 1, '2020-01-02 15:49:11', '2020-01-03 16:59:25', 'hoàn thành', '7038000', '3'),
(37, 1, 1, '2020-01-02 15:50:08', '2020-01-03 15:57:15', 'Hủy Bỏ', '10557000', NULL),
(38, 1, 1, '2020-01-02 16:14:04', NULL, 'Hủy Bỏ', '3519000', NULL),
(39, 1, 1, '2020-01-02 16:54:41', NULL, 'Hủy Bỏ', '14076000', NULL),
(40, 1, 1, '2020-01-02 17:01:09', '2020-01-03 17:01:27', 'hoàn thành', '8000000', '3'),
(41, 1, 2, '2020-01-05 20:18:01', '2020-01-11 20:55:59', 'Đã duyệt', '2200000', NULL),
(42, 1, 3, '2020-01-05 21:13:42', '2020-01-06 21:13:54', 'Đã duyệt', '1550000', NULL),
(43, 1, 3, '2020-01-07 20:54:01', '2020-01-08 20:54:32', 'Đã duyệt', '2599000', NULL),
(44, 1, 2, '2020-01-07 21:02:44', '2020-01-11 20:55:49', 'Đã duyệt', '2599000', NULL),
(45, 6, 3, '2020-01-10 13:54:34', '2020-01-11 13:54:52', 'hoàn thành', '11586900', '3'),
(46, 6, 3, '2020-01-10 13:55:54', '2020-01-11 13:57:17', 'hoàn thành', '1260000', '3'),
(47, 6, 3, '2020-01-10 13:57:10', '2020-01-11 13:57:16', 'hoàn thành', '2488300', '3'),
(48, 6, 3, '2020-01-10 13:58:45', '2020-01-11 13:59:14', 'hoàn thành', '3503600', '3'),
(49, 6, 3, '2020-01-10 13:59:08', '2020-01-11 13:59:12', 'hoàn thành', '5250000', '3'),
(50, 6, 3, '2020-01-10 13:59:55', '2020-01-11 14:00:41', 'hoàn thành', '48589500', '3'),
(51, 6, 3, '2020-01-10 14:00:37', '2020-01-11 14:00:40', 'hoàn thành', '38623000', '3'),
(52, 12, 3, '2020-01-10 14:02:23', '2020-01-11 14:06:41', 'Đã duyệt', '8496500', NULL),
(53, 12, 3, '2020-01-10 14:02:37', NULL, 'Hủy Bỏ', '5950000', NULL),
(54, 12, NULL, '2020-01-10 14:02:58', NULL, 'chưa duyệt', '8355000', NULL),
(55, 12, 3, '2020-01-10 14:03:07', NULL, 'Hủy Bỏ', '861000', NULL),
(56, 12, 3, '2020-01-10 14:03:18', '2020-01-11 14:06:46', 'Đã duyệt', '4900000', NULL),
(57, 11, NULL, '2020-01-10 14:03:55', NULL, 'chưa duyệt', '2140000', NULL),
(58, 11, 3, '2020-01-10 14:04:08', NULL, 'Hủy Bỏ', '2180000', NULL),
(59, 11, NULL, '2020-01-10 14:04:21', NULL, 'chưa duyệt', '5450000', NULL),
(60, 1, NULL, '2020-01-10 14:04:42', NULL, 'chưa duyệt', '831000', NULL),
(61, 1, 3, '2020-01-10 14:05:00', NULL, 'Hủy Bỏ', '1912000', NULL),
(62, 1, 3, '2020-01-10 14:05:09', '2020-01-11 14:06:48', 'Đã duyệt', '1699300', NULL),
(63, 1, 3, '2020-01-10 14:05:28', '2020-01-11 14:06:49', 'hoàn thành', '2380000', '3'),
(64, 1, 3, '2020-01-10 14:05:39', NULL, 'Hủy Bỏ', '1750000', NULL),
(65, 1, 3, '2020-01-10 14:05:51', '2020-01-11 14:06:50', 'hoàn thành', '1722000', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` bigint(12) NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`) VALUES
(6, 'Nguyễn Nam Cường', 'cuong@gmail.com', 1228923743, 'diachi', '123456'),
(12, 'luffy', 'luffy@gmail.com', 9989898, '19 Phan Dang Luu - Da Nang', '123456'),
(11, 'saitama', 'saitama@gmail.com', 9113115, 'diachi', '123456'),
(1, 'Nguyễn Đình Trí', 'tringuyen25071998@gmail.com', 778923743, '1092 Trường Chinh - Đà nẵng', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MoTa` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `KM_PT` int(5) DEFAULT NULL,
  `TienKM` decimal(10,0) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `MoTa`, `KM_PT`, `TienKM`, `NgayBD`, `NgayKT`) VALUES
(1, 'Tri Ân Khách Hàng', 'sale', 0, '50000', '2020-01-01', '2020-01-31'),
(3, 'Vui Xuân - Đón Tết ', NULL, 30, NULL, '2019-12-19', '2020-02-29'),
(4, 'Khuyến Mãi Đặc Biệt', NULL, NULL, '100000', '2019-12-19', '2020-01-31'),
(5, 'khuyễn mãi đặc biệt trị giá 500.000 đ', 'ok', 1, '500000', '2020-01-02', '2020-01-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`MaMau`) VALUES
('Đen '),
('Đen - Trắng'),
('Đỏ'),
('Hồng'),
('none'),
('Trắng'),
('Vàng'),
('Xanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoinhan`
--

CREATE TABLE `nguoinhan` (
  `MaHD` int(11) NOT NULL,
  `TenNN` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DiaChiNN` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDTNN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoinhan`
--

INSERT INTO `nguoinhan` (`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES
(21, 'Lâm Nhật Phi', '1092 Trường chinh - Đà nẵng', 778923743),
(22, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(23, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(25, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(26, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(27, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(28, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(29, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(30, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(31, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(32, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(33, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(34, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(35, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(36, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(37, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(38, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(39, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(40, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(41, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(42, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(43, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(44, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(45, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(46, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(47, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(48, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(49, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(50, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(51, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(52, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(53, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(54, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(55, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(56, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(57, 'saitama', 'diachi', 9113115),
(58, 'saitama', 'diachi', 9113115),
(59, 'saitama', 'diachi', 9113115),
(60, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(61, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(62, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(63, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(64, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(65, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Converse'),
(4, 'Balenciaga'),
(6, 'Vans'),
(7, 'Gucci');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` int(12) NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Quyen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Email`, `SDT`, `DiaChi`, `MatKhau`, `Quyen`) VALUES
(3, 'Admin', 'admin.onishop@gmail.com', 905027527, 'Số 451 Hoàng Diệu - Thành phố Đà Nẵng', 'admin', 1),
(4, 'Nguyễn Nam Cường', 'cuong@gmail.com', 132465798, 'Số 451 Hoàng Diệu - Thành phố Đà Nẵng', '123456', 3),
(5, 'Nhân viên F', 'F@gmail.com', 123456789, 'đà nẵng', '123456', 5),
(2, 'Nhân Viên Bán Hàng ', 'NVBH@gmail.com', 123456789, 'Đà Nẵng', '123456', 4),
(1, 'Quản Lý', 'thongkul@gmail.com', 778923743, '12 núi thàng - đà nẵng', '123456', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT current_timestamp(),
  `Note` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Size` int(11) NOT NULL,
  `Mau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNV`, `MaSP`, `SoLuong`, `DonGia`, `TongTien`, `NgayNhap`, `Note`, `Size`, `Mau`) VALUES
(28, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 36, 'none'),
(29, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 37, 'none'),
(30, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 38, 'none'),
(31, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 39, 'none'),
(32, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 40, 'none'),
(33, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 41, 'none'),
(34, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 42, 'none'),
(35, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 43, 'none'),
(36, 3, 5, 100, '3300000', '330000000', '2020-01-10 13:37:09', '', 39, 'Xanh'),
(37, 3, 5, 100, '3300000', '330000000', '2020-01-10 13:37:09', '', 40, 'Xanh'),
(38, 3, 5, 100, '3300000', '330000000', '2020-01-10 13:37:09', '', 41, 'Xanh'),
(39, 3, 5, 100, '3300000', '330000000', '2020-01-10 13:37:09', '', 42, 'Xanh'),
(40, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 38, 'Đen'),
(41, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 39, 'Đen'),
(42, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 40, 'Đen'),
(43, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 41, 'Đen'),
(44, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 42, 'Đen'),
(45, 3, 7, 50, '2000000', '100000000', '2020-01-10 13:38:29', '', 39, 'Trắng'),
(46, 3, 7, 50, '2000000', '100000000', '2020-01-10 13:38:29', '', 40, 'Trắng'),
(47, 3, 7, 50, '2000000', '100000000', '2020-01-10 13:38:29', '', 41, 'Trắng'),
(48, 3, 7, 20, '2000000', '40000000', '2020-01-10 13:39:19', 'màu giới hạn', 39, 'Đen - Trắng'),
(49, 3, 7, 20, '2000000', '40000000', '2020-01-10 13:39:19', 'màu giới hạn', 40, 'Đen - Trắng'),
(50, 3, 7, 20, '2000000', '40000000', '2020-01-10 13:39:19', 'màu giới hạn', 41, 'Đen - Trắng'),
(51, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 38, 'Đen - Trắng'),
(52, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 39, 'Đen - Trắng'),
(53, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 40, 'Đen - Trắng'),
(54, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 41, 'Đen - Trắng'),
(55, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 42, 'Đen - Trắng'),
(56, 3, 10, 100, '5000000', '500000000', '2020-01-10 13:39:59', '', 39, 'Trắng'),
(57, 3, 10, 100, '5000000', '500000000', '2020-01-10 13:39:59', '', 40, 'Trắng'),
(58, 3, 10, 100, '5000000', '500000000', '2020-01-10 13:39:59', '', 41, 'Trắng'),
(59, 3, 10, 100, '5000000', '500000000', '2020-01-10 13:39:59', '', 42, 'Trắng'),
(60, 3, 11, 100, '3500000', '350000000', '2020-01-10 13:40:23', '', 39, 'none'),
(61, 3, 11, 100, '3500000', '350000000', '2020-01-10 13:40:23', '', 40, 'none'),
(62, 3, 11, 100, '3500000', '350000000', '2020-01-10 13:40:23', '', 41, 'none'),
(63, 3, 11, 100, '3500000', '350000000', '2020-01-10 13:40:23', '', 42, 'none'),
(64, 3, 12, 100, '1800000', '180000000', '2020-01-10 13:40:58', '', 39, 'Vàng'),
(65, 3, 12, 100, '1800000', '180000000', '2020-01-10 13:40:58', '', 40, 'Vàng'),
(66, 3, 12, 100, '1800000', '180000000', '2020-01-10 13:40:58', '', 41, 'Vàng'),
(67, 3, 53, 500, '1500000', '750000000', '2020-01-10 13:42:37', '', 42, 'none'),
(68, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 36, 'Đen'),
(69, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 37, 'Đen'),
(70, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 38, 'Đen'),
(71, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 39, 'Đen'),
(72, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 40, 'Đen'),
(73, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 41, 'Đen'),
(74, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 42, 'Đen'),
(75, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 43, 'Đen'),
(76, 3, 55, 200, '1000000', '200000000', '2020-01-10 13:43:25', '', 39, 'Đen'),
(77, 3, 55, 200, '1000000', '200000000', '2020-01-10 13:43:25', '', 40, 'Đen'),
(78, 3, 55, 200, '1000000', '200000000', '2020-01-10 13:43:25', '', 41, 'Đen'),
(80, 3, 56, 100, '1500000', '150000000', '2020-01-10 13:44:49', '', 38, 'Đen - Trắng'),
(81, 3, 56, 100, '1500000', '150000000', '2020-01-10 13:44:49', '', 39, 'Đen - Trắng'),
(82, 3, 56, 100, '1500000', '150000000', '2020-01-10 13:44:49', '', 40, 'Đen - Trắng'),
(83, 3, 56, 100, '1500000', '150000000', '2020-01-10 13:44:49', '', 41, 'Đen - Trắng'),
(84, 3, 69, 100, '1500000', '150000000', '2020-01-10 13:46:02', '', 39, 'none'),
(85, 3, 69, 100, '1500000', '150000000', '2020-01-10 13:46:02', '', 40, 'none'),
(86, 3, 69, 100, '1500000', '150000000', '2020-01-10 13:46:02', '', 41, 'none'),
(87, 3, 68, 500, '1000000', '500000000', '2020-01-10 13:46:39', '', 39, 'Đen'),
(88, 3, 68, 500, '1000000', '500000000', '2020-01-10 13:46:39', '', 40, 'Đen'),
(89, 3, 68, 500, '1000000', '500000000', '2020-01-10 13:46:39', '', 41, 'Đen'),
(90, 3, 68, 30, '1000000', '30000000', '2020-01-10 13:46:52', '', 39, 'Đen - Trắng'),
(91, 3, 68, 30, '1000000', '30000000', '2020-01-10 13:46:52', '', 40, 'Đen - Trắng'),
(92, 3, 68, 30, '1000000', '30000000', '2020-01-10 13:46:52', '', 41, 'Đen - Trắng'),
(93, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:31', '', 39, 'Đen - Trắng'),
(94, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:31', '', 40, 'Đen - Trắng'),
(95, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:31', '', 41, 'Đen - Trắng'),
(96, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:43', '', 39, 'Trắng'),
(97, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:43', '', 40, 'Trắng'),
(98, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:43', '', 41, 'Trắng'),
(99, 3, 71, 100, '1000000', '100000000', '2020-01-10 13:47:59', '', 40, 'Đen'),
(100, 3, 71, 100, '1000000', '100000000', '2020-01-10 13:47:59', '', 41, 'Đen'),
(101, 3, 71, 100, '1000000', '100000000', '2020-01-10 13:47:59', '', 42, 'Đen'),
(102, 3, 72, 100, '1500000', '150000000', '2020-01-10 13:48:13', '', 39, 'Trắng'),
(103, 3, 72, 100, '1500000', '150000000', '2020-01-10 13:48:13', '', 40, 'Trắng'),
(104, 3, 72, 100, '1500000', '150000000', '2020-01-10 13:48:13', '', 41, 'Trắng'),
(105, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:48:22', '', 39, 'Trắng'),
(106, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:48:22', '', 40, 'Trắng'),
(107, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:48:22', '', 41, 'Trắng'),
(108, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 36, 'Đen'),
(109, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 37, 'Đen'),
(110, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 38, 'Đen'),
(111, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 39, 'Đen'),
(112, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 40, 'Đen'),
(113, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 41, 'Đen'),
(114, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 42, 'Đen'),
(115, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 43, 'Đen'),
(116, 3, 74, 100, '2000000', '200000000', '2020-01-10 13:49:03', '', 38, 'Đen - Trắng'),
(117, 3, 74, 100, '2000000', '200000000', '2020-01-10 13:49:03', '', 39, 'Đen - Trắng'),
(118, 3, 74, 100, '2000000', '200000000', '2020-01-10 13:49:03', '', 40, 'Đen - Trắng'),
(119, 3, 74, 100, '2000000', '200000000', '2020-01-10 13:49:03', '', 41, 'Đen - Trắng'),
(120, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 38, 'Đen'),
(121, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 39, 'Đen'),
(122, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 40, 'Đen'),
(123, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 41, 'Đen'),
(124, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 42, 'Đen'),
(125, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 38, 'Đen - Trắng'),
(126, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 39, 'Đen - Trắng'),
(127, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 40, 'Đen - Trắng'),
(128, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 41, 'Đen - Trắng'),
(129, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 42, 'Đen - Trắng'),
(130, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 38, 'Trắng'),
(131, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 39, 'Trắng'),
(132, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 40, 'Trắng'),
(133, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 41, 'Trắng'),
(134, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 42, 'Trắng'),
(135, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 38, 'Đen'),
(136, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 39, 'Đen'),
(137, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 40, 'Đen'),
(138, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 41, 'Đen'),
(139, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 42, 'Đen'),
(140, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:10', '', 38, 'Trắng'),
(141, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:11', '', 39, 'Trắng'),
(142, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:11', '', 40, 'Trắng'),
(143, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:11', '', 41, 'Trắng'),
(144, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:11', '', 42, 'Trắng'),
(145, 3, 77, 500, '1000000', '500000000', '2020-01-10 13:50:22', '', 39, 'Đen - Trắng'),
(146, 3, 77, 500, '1000000', '500000000', '2020-01-10 13:50:22', '', 40, 'Đen - Trắng'),
(147, 3, 77, 500, '1000000', '500000000', '2020-01-10 13:50:22', '', 41, 'Đen - Trắng'),
(148, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:55:46', '', 39, 'Đen - Trắng'),
(149, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:55:46', '', 40, 'Đen - Trắng'),
(150, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:55:46', '', 41, 'Đen - Trắng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `Mau` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Size` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `Note` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NgayXuat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPX`, `MaNV`, `MaSP`, `Mau`, `Size`, `SoLuong`, `DonGia`, `TongTien`, `Note`, `NgayXuat`) VALUES
(5, 3, 4, 'none', 36, 40, '1000000', '40000000', 'test', '2020-01-10 21:18:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` int(11) NOT NULL,
  `Ten` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MoTa` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `Ten`, `MoTa`) VALUES
(1, 'Manager', 'chủ cửa hàng'),
(2, 'Project Manager', 'quản trị viên'),
(3, 'Quản lý Kho', ''),
(4, 'Nhân viên Bán Hàng', ''),
(5, 'Nhân viên giao hàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaDM` int(11) DEFAULT NULL,
  `MaNCC` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT 0,
  `MoTa` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `MaAnh` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `AnhNen` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `SoLuong`, `MoTa`, `DonGia`, `MaAnh`, `AnhNen`) VALUES
(4, 'Nike Free Metcon 2 UT', 3, 1, 760, 'Nike Free Metcon 2 UT mang đến một lớp hỗ trợ khác cho một loạt các bài tập huấn luyện. Dây đai bền giúp giữ bàn chân của bạn, trong khi bọt linh hoạt giúp bạn di chuyển tự nhiên từ trọng lượng đến máy khoan nhanh nhẹn.', '3829000', NULL, 'NikeFreeMetcon2UT.png'),
(5, 'Zoom Freak 1', 3, 1, 400, 'Nhận được sự kỳ dị của bạn trong chiếc giày đặc trưng đầu tay của Giannis Antetokounmpo, lần đầu tiên Nike mang lại cảm giác bóng rổ quốc tế. Zoom Freak 1 có bộ đệm siêu nhạy, khóa trước và lực kéo đa hướng cần thiết để bổ sung cho trò chơi thể thao kỳ dị của anh ta.', '3519000', NULL, 'ZoomFreak1.png'),
(6, 'Nike Air VaporMax Flyknit 3', 3, 1, 200, 'Nổi bật và bồng bềnh trong Nike Air VaporMax Flyknit 3. Các tính năng phía trên chảy 2 dòng của cấu trúc Flyknit thoáng khí, có thể kéo dài cho phong cách độc đáo, sẵn sàng trên đường phố. Công nghệ VaporMax Air mang tính cách mạng giúp duy trì mùa xuân trong bước chân của bạn với đệm từ gót chân đến gót chân.', '3500000', NULL, 'NikeAirVaporMaxFlyknit3.png'),
(7, 'Nike Drop-Type Premium', 1, 1, 203, 'Nike Drop-Type Premium được lấy cảm hứng từ những đôi giày tennis cổ điển trong gia đình NikeCourt. Một phần của gia đình N354 gật đầu với dặm bay nhanh nhất của Steve Prefontaine, nó cung cấp các dòng thiết kế riêng biệt mượn từ All Court 2.', '2499000', '', 'NikeDropTypePremium.png'),
(9, 'Nike Zoom Rival Fly', 1, 1, 199, 'Lấy cảm hứng từ các vận động viên tiếp sức Ekiden của Nhật Bản, Nike Zoom Rival Fly mang dáng vẻ tương lai với bộ phận Zoom Air ở bàn chân trước mang đến cho bạn lực đẩy nhạy. Rãnh uốn cong bên dưới tối ưu hóa ngón chân cái và đệm bọt mềm mại sải chân của bạn. Lưới và tổng hợp trên pha trộn sức mạnh và hơi thở.', '2649000', NULL, 'NikeZoomRivalFly.png'),
(10, 'Nike Air Max 720 Waves', 1, 1, 387, 'Mang lại một quan điểm mới cho văn hóa ngoài tòa án trong Nike Air Max 720 Waves của bạn. Lập trường cấu hình thấp của nó cho thấy đơn vị Air cao nhất của Nike cho đến nay trong khi thiết kế D / MS / X của nó pha trộn văn hóa với thể thao, cho phép bạn bước vào một chiều hướng mới của phong cách hoops với sự thoải mái vô song.', '5589000', NULL, 'NikeAirMax720Waves.PNG'),
(11, 'Nike Zoom Fly Flyknit ', 1, 1, 385, 'Giày chạy bộ Nike Zoom Fly Flyknit được sản xuất với tốc độ kỷ lục. Flyknit trên cung cấp hỗ trợ siêu nhẹ phù hợp như một chiếc găng tay.', '4699000', NULL, 'NikeZoomFlyFlyknit.png'),
(12, 'Nike SB Solarsoft Portmore II', 1, 1, 299, 'Được thiết kế cho đế giày đặc biệt, Giày trượt ván nam Nike SB Solarsoft Portmore II kết hợp đệm mềm với đế ngoài bền, chắc chắn để bạn có thể tập trung vào buổi tập của mình.', '2069000', NULL, 'NikeSBSolarsoftPortmoreII.PNG'),
(53, 'BALENCIAGA TRIPLE S 2019', 1, 4, 494, 'ok', '1700000', NULL, 'BALENCIAGA TRIPLE S.PNG'),
(54, 'BALENCIAGA SPEED TRAINER ĐEN', 3, 4, 4000, 'Một sản phẩm tuyệt vời được nhiều bạn trẻ lựa chọn.', '730000', NULL, 'BALENCIAGA SPEED TRAINER ĐEN.PNG'),
(55, 'BALENCIAGA BALEN DAD', 1, 4, 594, 'Đây là mẫu giày cũng được nhiều người nghệ sĩ thế giới lựa chọn. Tại Việt Nam, giày Triple S được rất nhiều nghệ sĩ nổi tiếng yêu thích.\r\n\r\nThiết kế đột phá.\r\nMột đôi giày ra đời đã phá vỡ những tiêu chuẩn về thời trang hiện nay.\r\nPhần đế cao, uốn lượn hơn hẳn để bạn ăn gian thêm vài centimet\r\nPha trộn những gam màu vintage và nhiều chất liệu vải khác nhau.\r\nTrên thân, gót hay đế giày cũng đều được thêu và khắc tên thương hiệu, tạo sự đẳng cấp.', '1330000', NULL, 'BALEN DAD.PNG'),
(56, 'Balenciaga Track', 3, 4, 399, '', '1700000', NULL, 'Balenciaga Track.PNG'),
(68, 'Off-White & Orange Track', 1, 6, 1588, 'ok', '1230000', NULL, 'Black OG Old Skool LX.PNG'),
(69, 'BALENCIAGA TRIPLE S 2018', 1, 4, 300, 'sản phẩm hot 2017', '1700000', NULL, 'Off-White & Orange Track.PNG'),
(70, ' ADVANTAGE', 1, 2, 598, 'GIÀY TENNIS ĐƯỢC SÁNG TẠO LẠI ĐỂ MANG PHONG CÁCH ĐƯỜNG PHỐ.\r\nPhong cách thể thao thiết yếu. Với kiểu dáng đơn giản, mẫu giày lấy cảm hứng từ quần vợt này có phần thân giày bằng da mịn. 3 Sọc đục lỗ tạo điểm nhấn bên hông giày. Lót giày có đệm mang đến sự êm ái trong mỗi bước đi.', '1700000', NULL, 'GIÀY ADVANTAGE.PNG'),
(71, 'ULTRABOOST 20', 1, 2, 295, 'KIỂM SOÁT LỰC KHI CHẠM ĐẤT, THOẢI MÁI TRONG TỪNG BƯỚC CHẠY.\r\nMỗi ngày mới. Mỗi buổi chạy mới. Hãy tận dụng tối đa. Đôi giày hiệu năng cao này có thân giày bằng vải dệt kim ôm chân. Các đường may trong trợ lực được bố trí chuẩn xác để tạo độ nâng đỡ ở đúng những vị trí cần thiết. Gót giày làm từ chất liệu elastane mềm mại cho độ ôm thoải mái hơn. Lớp đệm đàn hồi hoàn trả năng lượng cho từng sải bước tạo cảm giác như có thể chạy mãi mãi.', '1200000', NULL, 'ULTRABOOST 20.PNG'),
(72, 'GRAND COURT', 1, 2, 899, '', '1800000', NULL, 'GRAND COURT.PNG'),
(73, 'CONTINENTAL 80', 2, 2, 800, 'PHONG CÁCH QUẦN VỢT TỪ NHỮNG NĂM 1980 TRỞ LẠI VỚI KIỂU DÁNG TƯƠI MỚI.\r\nMang dáng vẻ hoài cổ, Continental 80 giữ trọn kiểu dáng xưa cũ của những đôi giày thể thao trong nhà từ đầu những năm 1980. Mẫu giày da nổi bật với sọc kẻ hai màu hướng xuống dưới và đế cupsole khác biệt bằng cao su phân tách cho cảm giác thoải mái và linh hoạt.', '2500000', NULL, 'CONTINENTAL 80.PNG'),
(74, 'Chuck 70 Specialty Suede Utility', 1, 3, 400, 'Chất liệu: Suede', '2200000', NULL, 'Chuck 70 Specialty Suede Utility.PNG'),
(75, 'Chuck Taylor All Star Utility', 2, 3, 945, 'Chất liệu: Suede', '1400000', NULL, 'Chuck Taylor All Star Utility.PNG'),
(76, 'Chuck Taylor All Star Space Utility', 1, 3, 694, '', '1500000', NULL, 'Chuck Taylor All Star Space Utility.PNG'),
(77, 'Chuck Taylor Classic', 2, 3, 1500, '', '1400000', NULL, 'Chuck Taylor Classic.PNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `MaSP` int(11) NOT NULL,
  `MaKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`MaSP`, `MaKM`) VALUES
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(53, 3),
(53, 4),
(54, 3),
(54, 4),
(55, 3),
(55, 4),
(56, 3),
(56, 4),
(68, 3),
(68, 5),
(69, 3),
(69, 4),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `MaSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`MaSize`) VALUES
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`MaAnh`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`,`MaSP`,`MaKH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`,`Size`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `Size` (`Size`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaSize`,`MaMau`),
  ADD KEY `MaSize` (`MaSize`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`MaMau`);

--
-- Chỉ mục cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MauSP` (`MaSP`),
  ADD KEY `Mau` (`Mau`),
  ADD KEY `Size` (`Size`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Chỉ mục cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`MaSP`,`MaKM`),
  ADD KEY `MaKH` (`MaKM`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`MaSize`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  MODIFY `MaAnh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `MaPX` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD CONSTRAINT `anhsp_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitiethoadon_ibfk_4` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`MaSize`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitietsanpham_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitietsanpham_ibfk_3` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD CONSTRAINT `nguoinhan_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`Quyen`) REFERENCES `quyen` (`id`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieuxuat_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `phieuxuat_ibfk_3` FOREIGN KEY (`Mau`) REFERENCES `mau` (`MaMau`),
  ADD CONSTRAINT `phieuxuat_ibfk_4` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacc` (`MaNCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`);

--
-- Các ràng buộc cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_1` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`),
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
