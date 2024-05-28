-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2024 lúc 01:33 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `weblaptopphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `iduser` int(10) DEFAULT 0,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(255) NOT NULL,
  `bill_email` varchar(255) NOT NULL,
  `bill_pttt` varchar(200) NOT NULL,
  `ngaydathang` varchar(255) DEFAULT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0. Đơn hàng mới\r\n1. Đang chuẩn bị \r\n2. Đang giao hàng \r\n3. Đã giao hàng thành công',
  `bill_thanhtoan` tinyint(1) NOT NULL COMMENT '1. Chưa thanh toán\r\n2. Đã thanh toán',
  `recelve_name` varchar(255) DEFAULT NULL,
  `recelve_address` varchar(255) DEFAULT NULL,
  `recelve_tel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `iduser`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `total`, `bill_status`, `bill_thanhtoan`, `recelve_name`, `recelve_address`, `recelve_tel`) VALUES
(88, 27, 'khachhang', '', '', 'khachhang@gmail.com', '1', '07:41:50pm 13/04/24', 3000, 0, 0, NULL, NULL, NULL),
(89, 1, 'admin', 'HaNoi', '0946974355', 'duongvanduy792002@gmail.com', '1', '04:18:28pm 17/05/24', 849, 0, 0, NULL, NULL, NULL),
(90, 27, 'khachhang', '', '', 'khachhang@gmail.com', '1', '10:40:26am 18/05/24', 849, 0, 0, NULL, NULL, NULL),
(91, 27, 'khachhang', '', '', 'khachhang@gmail.com', '1', '10:41:34am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(92, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '10:41:47am 18/05/24', 699, 0, 0, NULL, NULL, NULL),
(93, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:08:10am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(94, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:12:13am 18/05/24', 699, 0, 0, NULL, NULL, NULL),
(95, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:12:31am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(96, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:14:04am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(97, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:14:11am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(98, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:14:21am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(99, 27, 'khachhang', '', '', 'khachhang@gmail.com', '1', '11:21:37am 18/05/24', 699, 0, 0, NULL, NULL, NULL),
(100, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:23:37am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(101, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:25:09am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(102, 27, 'khachhang', '', '', 'khachhang@gmail.com', '1', '11:39:46am 18/05/24', 699, 0, 0, NULL, NULL, NULL),
(103, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:40:26am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(104, 27, 'khachhang', '', '', 'khachhang@gmail.com', '1', '11:41:01am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(105, 27, 'khachhang', '', '', 'khachhang@gmail.com', '1', '11:42:02am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(106, 27, 'khachhang', '', '', 'khachhang@gmail.com', '1', '11:43:18am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(107, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '11:45:19am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(108, 27, 'khachhang', '', '', 'khachhang@gmail.com', '1', '11:55:21am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(109, 27, 'khachhang', '', '', 'khachhang@gmail.com', '2', '11:55:28am 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(110, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:02:07pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(111, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:02:36pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(112, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:03:14pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(113, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:06:08pm 18/05/24', 699, 0, 0, NULL, NULL, NULL),
(114, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:06:46pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(115, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:09:10pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(116, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:09:42pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(117, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:09:55pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(118, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:10:22pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(119, 27, 'khachhang', '', '', 'khachhang@gmail.com', '0', '12:11:31pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(120, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'T', '12:12:20pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(121, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'THanh toán khi nhận hàng', '12:12:46pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(122, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '12:13:49pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(123, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '12:18:07pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(124, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '12:18:44pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(125, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '12:19:00pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(126, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '12:21:16pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(127, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '12:52:24pm 18/05/24', 3000, 0, 0, NULL, NULL, NULL),
(128, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '12:59:16pm 18/05/24', 3000, 0, 0, NULL, NULL, NULL),
(129, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '01:00:09pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(130, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '01:17:21pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(131, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '01:20:03pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(132, 27, '', '', '', '', 'Online', '01:22:08pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(133, 27, 'khachhang', '', '', 'khachhang@gmail.com', 'Thanh toán khi nhận hàng', '01:22:29pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(134, 27, '', '', '', '', 'Online', '01:22:37pm 18/05/24', 0, 0, 0, NULL, NULL, NULL),
(135, 1, 'admin', 'HaNoi', '0946974355', 'duongvanduy792002@gmail.com', 'Thanh toán khi nhận hàng', '02:11:24pm 18/05/24', 12003000, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(10, 'ok', 27, 60, '04/05/2024'),
(11, 'Sản phẩm tốt !', 27, 61, '16/05/2024'),
(12, 'Sản phẩm oke', 1, 61, '17/05/2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(26, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 22),
(27, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 23),
(28, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 24),
(29, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 25),
(30, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 26),
(31, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 27),
(32, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 28),
(33, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 29),
(34, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 30),
(35, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 31),
(36, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 32),
(37, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 33),
(38, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 34),
(39, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 35),
(40, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 36),
(41, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 37),
(42, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 38),
(43, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 39),
(44, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 40),
(45, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 41),
(46, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 42),
(47, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 43),
(48, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 44),
(49, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 45),
(50, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 46),
(51, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 48),
(52, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 48),
(53, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 48),
(54, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 49),
(55, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 49),
(56, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 49),
(57, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 49),
(58, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 49),
(59, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 50),
(60, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 50),
(61, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 50),
(62, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 50),
(63, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 50),
(64, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 51),
(65, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 51),
(66, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 51),
(67, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 51),
(68, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 51),
(69, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 52),
(70, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 52),
(71, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 52),
(72, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 52),
(73, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 52),
(74, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 53),
(75, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 53),
(76, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 53),
(77, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 53),
(78, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 53),
(79, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 53),
(80, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 53),
(81, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 54),
(82, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 54),
(83, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 54),
(84, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 54),
(85, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 54),
(86, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 54),
(87, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 54),
(88, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 55),
(89, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 55),
(90, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 55),
(91, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 55),
(92, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 55),
(93, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 55),
(94, 1, 1, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 55),
(95, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 56),
(96, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 56),
(97, 1, 1, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 57),
(98, 26, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 58),
(99, 26, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 59),
(100, 26, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 59),
(101, 26, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 59),
(102, 26, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 60),
(103, 26, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 60),
(104, 26, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 60),
(105, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 61),
(106, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 61),
(107, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 61),
(108, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 61),
(109, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 62),
(110, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 62),
(111, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 62),
(112, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 62),
(113, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 63),
(114, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 63),
(115, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 63),
(116, 1, 26, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 63),
(117, 26, 26, 'upload/2.jpg', 'Laptop MSI ', 600, 4, 600, 64),
(118, 26, 26, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 65),
(119, 26, 26, 'upload/1.jpg', 'Laptop acer', 500, 2, 500, 66),
(120, 26, 26, 'upload/1.jpg', 'Laptop acer', 500, 2, 500, 67),
(121, 26, 26, 'upload/1.jpg', 'Laptop acer', 500, 2, 500, 68),
(122, 26, 0, '', '', 0, 0, 0, 69),
(123, 26, 0, '', '', 0, 0, 0, 69),
(124, 26, 52, 'Laptop MSI ', 'upload/2.jpg', 600, 4, 600, 70),
(125, 26, 50, 'Macbook Pro M2', 'upload/macbook-air-gold-select-201810_4.webp', 1500, 1, 1500, 70),
(126, 26, 52, 'Laptop MSI ', 'upload/2.jpg', 600, 4, 600, 71),
(127, 26, 50, 'Macbook Pro M2', 'upload/macbook-air-gold-select-201810_4.webp', 1500, 1, 1500, 71),
(128, 1, 50, 'Macbook Pro M2', 'upload/macbook-air-gold-select-201810_4.webp', 1500, 2, 1500, 72),
(129, 1, 52, 'Laptop MSI ', 'upload/2.jpg', 600, 2, 600, 72),
(130, 1, 50, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 74),
(131, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 75),
(132, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 76),
(133, 26, 50, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 2, 1500, 77),
(134, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 78),
(135, 26, 50, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 79),
(136, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 80),
(137, 26, 50, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 80),
(138, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 81),
(139, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 2, 500, 82),
(140, 26, 50, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 1, 1500, 82),
(141, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 1, 500, 83),
(142, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 3, 500, 84),
(143, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 4, 500, 85),
(144, 26, 51, 'upload/1.jpg', 'Laptop acer', 500, 3, 500, 86),
(145, 26, 50, 'upload/macbook-air-gold-select-201810_4.webp', 'Macbook Pro M2', 1500, 8, 1500, 86),
(146, 26, 59, 'upload/9.webp', 'Laptop Dell Inspiron 14 Plus', 949, 1, 949, 87),
(147, 27, 61, 'upload/Asus1.jpg', 'Asus ROG Zephyrus G16', 3000, 1, 3000, 88),
(148, 1, 60, 'upload/10.webp', 'Laptop Dell Inspiron 15 Plus', 849, 1, 849, 89),
(149, 27, 60, 'upload/10.webp', 'Laptop Dell Inspiron 15 Plus', 849, 1, 849, 90),
(150, 27, 58, 'upload/8.webp', 'Laptop Acer Gaming Aspire 7', 699, 1, 699, 92),
(151, 27, 58, 'upload/8.webp', 'Laptop Acer Gaming Aspire 7', 699, 1, 699, 94),
(152, 27, 58, 'upload/8.webp', 'Laptop Acer Gaming Aspire 7', 699, 1, 699, 99),
(153, 27, 58, 'upload/8.webp', 'Laptop Acer Gaming Aspire 7', 699, 1, 699, 102),
(154, 27, 58, 'upload/8.webp', 'Laptop Acer Gaming Aspire 7', 699, 1, 699, 113),
(155, 27, 61, 'upload/Asus1.jpg', 'Asus ROG Zephyrus G16', 3000, 1, 3000, 127),
(156, 27, 61, 'upload/Asus1.jpg', 'Asus ROG Zephyrus G16', 3000, 1, 3000, 128),
(157, 1, 61, 'upload/Asus1.jpg', 'Asus ROG Zephyrus G16', 3000, 1, 3000, 135),
(158, 1, 60, 'upload/10.webp', 'Laptop Dell Inspiron 15 Plus', 12000000, 1, 12000000, 135);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(34, 'Laptop Gaming'),
(37, 'Laptop Dell'),
(38, 'Laptop Asus'),
(39, 'Laptop MSI'),
(40, 'Laptop HP'),
(41, 'Laptop Acer'),
(42, 'Macbook');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(50, 'Apple MacBook Air M1', 24500000.00, 'macbook-air-gold-select-201810_4.webp', 'Máy mới 100%, đầy đủ phụ kiện từ nhà sản xuất. Sản phẩm có mã SA/A (được Apple Việt Nam phân phối chính thức).\r\nMáy, Sách HDSD, Cáp sạc USB-C (2 m), Cốc sạc USB-C 30W\r\n1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple: CareS(xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 1782, 42),
(51, 'Dell Inspiron i7-1360P', 17800000.00, '1.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 235, 37),
(52, 'Laptop MSI Gaming GF63', 21300000.00, '2.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 770, 39),
(53, 'Apple MacBook Pro M2', 20100000.00, '6.webp', 'Máy mới 100%, đầy đủ phụ kiện từ nhà sản xuất. Sản phẩm có mã SA/A (được Apple Việt Nam phân phối chính thức).\r\nMáy, Sách HDSD, Cáp sạc USB-C (2 m), Cốc sạc USB-C 30W\r\n1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple: CareS(xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 1523, 42),
(54, 'Laptop MSI Gaming i7-12650', 19300000.00, '4.webp', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 781, 39),
(55, 'ASUS TUF GAMING I5-12450', 26400000.00, '5.webp', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 172, 38),
(56, 'ASUS TUF GAMING I7-11800H', 13900000.00, '1.webp', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 578, 38),
(57, 'Laptop Gaming Acer Nitro 5', 16700000.00, '3.webp', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nDây nguồn, Sách hướng dẫn, Sạc Laptop\r\nBảo hành chính hãng 12 tháng tại trung tâm bảo hành ủy quyền, 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ NSX. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 536, 34),
(58, 'Laptop Acer Gaming Aspire 7', 15700000.00, '8.webp', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nBảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 300, 41),
(59, 'Laptop Dell Inspiron 14 Plus', 13500000.00, '9.webp', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nSạc, sách hướng dẫn sử dụng\r\nTìm hiểu thêm về laptop nhập khẩu\r\n\r\nBảo hành 1 đổi 1 trong vòng 12 tháng bởi Nhà Phân Phối (Áp dụng máy bán từ 1.7.2022) Các máy mua trước đó áp dụng bảo hành 12 tháng tại các trung tâm Bảo hành FPT Service trên toàn quốc(xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 200, 37),
(60, 'Laptop Dell Inspiron 15 Plus', 12000000.00, '10.webp', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nSạc, sách hướng dẫn sử dụng\r\nTìm hiểu thêm về laptop nhập khẩu\r\n\r\nBảo hành 1 đổi 1 trong vòng 12 tháng bởi Nhà Phân Phối (Áp dụng máy bán từ 1.7.2022) Các máy mua trước đó áp dụng bảo hành 12 tháng tại các trung tâm Bảo hành FPT Service trên toàn quốc(xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 0, 37),
(61, 'Asus ROG Zephyrus G16', 30000000.00, 'Asus1.jpg', 'Intel® Core™ Ultra 9 185H (2.50GHz up to 5.10GHz, 24MB Cache)\r\nRam 32GB LPDDR5X 7467MHz\r\nỔ cứng 1TB SSD NVMe M.2 PCIe Gen4x4\r\nVGA  RTX 4070 8GB GDDR6\r\nDisplay: 16inch 2.5K (2560 x 1600, WQXGA) 16:10, OLED, 240Hz, 100% DCI-P3, Glossy display, 3ms, G-Sync, Pantone Validated\r\nPin 4Cell 90WHrs, 4S1P\r\nColor: Xám\r\nBảo hành: 24 Tháng chính hãng Asus Việt Nam', 0, 38);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'admin', 'admin', 'duongvanduy792002@gmail.com', 'HaNoi', '0946974355', 1),
(27, 'khachhang', 'khachhang', 'khachhang@gmail.com', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `tieu_de` varchar(200) DEFAULT NULL,
  `noi_dung` text DEFAULT NULL,
  `hinh_anh` varchar(250) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`tieu_de`, `noi_dung`, `hinh_anh`, `id`) VALUES
('LAPTOP HOT 2024', 'Hầu hết các laptop hiện đại đều có màn hình ma trận hoạt động màu 13 inch (33 cm) hoặc lớn hơn dựa trên ánh sáng LED với độ phân giải 1280 × 800 (16:10) hoặc 1366 × 768 (16: 9) pixel trở lên. Các mô hình với ánh sáng dựa trên LED cung cấp mức tiêu thụ điện năng ít hơn và thường tăng độ sáng. Các netbook có màn hình 10 inch (25 cm) hoặc nhỏ hơn thường sử dụng độ phân giải 1024 × 600, trong khi các netbook và subnotebook có màn hình 11,6 inch (29 cm) hoặc 12 inch (30 cm) sử dụng độ phân giải notebook tiêu chuẩn. Có màn hình độ phân giải cao hơn cho phép nhiều mặt hàng vừa vặn trên màn hình hơn, cải thiện khả năng đa nhiệm của người dùng, mặc dù ở độ phân giải cao hơn trên màn hình nhỏ hơn, độ phân giải chỉ có thể phục vụ để hiển thị đồ họa và văn bản sắc nét hơn thay vì tăng diện tích sử dụng. Kể từ khi giới thiệu MacBook Pro với màn hình Retina vào năm 2012, đã có sự gia tăng sẵn có của màn hình độ phân giải rất cao (1920 × 1080 trở lên), ngay cả trong các hệ thống tương đối nhỏ và ở độ phân giải màn hình 15 inch thông thường cao tới 3200 × 1800 có sẵn. Màn hình ngoài có thể được kết nối với hầu hết các máy tính xách tay và các model có Mini DisplayPort có thể xử lý tối đa ba.', 'background3.jpg', 19),
('AAA', 'Bộ xử lý trung tâm (CPU) của laptop có các tính năng tiết kiệm năng lượng tiên tiến và tạo ra ít nhiệt hơn so với mục đích sử dụng hoàn toàn cho máy tính để bàn. Thông thường, CPU laptop có hai lõi xử lý, mặc dù các mô hình 4 lõi cũng có sẵn. Đối với giá thấp và hiệu năng chính, không còn có sự khác biệt đáng kể về hiệu năng giữa CPU laptop và máy tính để bàn, nhưng ở cấp cao, CPU máy tính để bàn 4 đến 8 lõi nhanh nhất vẫn vượt trội hơn hẳn bộ xử lý laptop 4 lõi nhanh nhất, tại chi phí tiêu thụ điện năng và sản xuất nhiệt lớn hơn; bộ xử lý laptop nhanh nhất đứng đầu ở nhiệt độ 56 watt, trong khi bộ xử lý máy tính để bàn nhanh nhất đứng đầu ở mức 150 watt.  Đã có một loạt các CPU được thiết kế cho laptop có sẵn từ cả Intel, AMD và các nhà sản xuất khác. Trên các kiến ​​trúc không phải là x86, Motorola và IBM đã sản xuất chip cho các laptop Apple dựa trên PowerPC trước đây (iBook và PowerBook). Nhiều laptop có CPU có thể tháo rời, mặc dù điều này đã trở nên ít phổ biến hơn trong vài năm qua khi xu hướng này hướng tới các mẫu mỏng hơn và nhẹ hơn. Trong các laptop khác, CPU được hàn trên bo mạch chủ và không thể thay thế; điều này là gần như phổ biến trong ultrabook.  Trước đây, một số laptop đã sử dụng bộ xử lý máy tính để bàn thay vì phiên bản laptop và có hiệu suất cao với chi phí trọng lượng lớn hơn, nhiệt độ và thời lượng pin hạn chế, nhưng thực tế phần lớn đã bị tuyệt chủng vào năm 2013. Không giống như các đối tác máy tính để bàn của họ, CPU laptop gần như không thể ép xung. Một chế độ hoạt động nhiệt của laptop rất gần với giới hạn của nó và hầu như không có khoảng trống để tăng nhiệt độ hoạt động liên quan đến ép xung. Khả năng cải thiện hệ thống làm mát của laptop để cho phép ép xung là cực kỳ khó thực hiện.', '441474203_739687951707967_6690860679502089152_n.jpg', 20),
('Lịch sử Laptop', 'Khi máy tính cá nhân (PC) trở nên khả thi vào năm 1971, ý tưởng về một máy tính cá nhân di động đã sớm xuất hiện. Một \"trình xử lý thông tin cá nhân, di động\" đã được Alan Kay tưởng tượng tại Xerox PARC vào năm 1968, và được mô tả trong bài báo năm 1972 của ông là \"Dynabook\". Máy tính cầm tay APL Machine Portable (SCAMP) của IBM đã được trình diễn vào năm 1973. Nguyên mẫu này dựa trên bộ xử lý PALM của IBM. IBM 5100, máy tính xách tay thương mại đầu tiên xuất hiện vào tháng 9 năm 1975 và dựa trên nguyên mẫu SCAMP. Khi các máy CPU 8 bit được chấp nhận rộng rãi, số lượng thiết bị di động tăng lên nhanh chóng. Máy tính xách tay có kích thước máy tính xách tay đầu tiên là Epson HX-20, được phát minh (được cấp bằng sáng chế) bởi Yukio Yokozawa của Suwa Seikosha vào tháng 7 năm 1980, được giới thiệu tại triển lãm máy tính COMDEX ở Las Vegas của công ty Nhật Bản Seiko Epson vào năm 1981, và phát hành vào tháng 7 năm 1982. Nó có màn hình LCD, pin sạc và máy in cỡ máy tính, trong khung máy nặng 1,6 kg (3,5 lb), kích thước của một máy tính xách tay A4. Nó được mô tả như một máy tính \"máy tính xách tay\" và \"máy tính xách tay\" trong bằng sáng chế của nó. Một máy tính xách tay Siemens PCD-3Psx, được phát hành vào năm 1989 Powerbook 100 của dòng sản phẩm Macintosh vào năm 1991 Cổng máy tính siêu nhỏ cầm tay của công ty Pháp R2E Micral CCMC chính thức xuất hiện vào tháng 9 năm 1980 tại triển lãm Sicob ở Paris. Đó là một máy vi tính cầm tay được thiết kế và tiếp thị bởi bộ phận nghiên cứu và phát triển của R2E Micral theo yêu cầu của công ty CCMC chuyên về biên chế và kế toán. Nó dựa trên bộ xử lý Intel 8085, 8 bit, tốc độ 2 MHz. Nó được trang bị RAM 64 KB trung tâm, bàn phím với 58 phím số alpha và 11 phím số (khối riêng biệt), màn hình 32 ký tự, đĩa mềm: dung lượng = 140 00 ký tự, của máy in nhiệt: speed = 28 ký tự / giây, kênh không đồng bộ, kênh đồng bộ, nguồn điện 220 V. Nó nặng 12 kg và kích thước của nó là 45 x 45 x 15 cm. Nó cung cấp tổng số di động. Hệ điều hành của nó là Prologue có tên thích hợp. Chiếc Laptop đầu tiên là một chiếc Osborne 1 ra đời năm 1981, là một máy tính có thể sử dụng được, sử dụng Zilog Z80 và nặng 24,5 pound (11,1 kg).Nó không có pin, màn hình ống tia âm cực (CRT) 5 in (13 cm) và ổ đĩa mềm mật độ đơn 5,25 in (13,3 cm). Cả Tandy / RadioShack và Hewlett Packard (HP) cũng sản xuất laptop có thiết kế khác nhau trong giai đoạn này. Những laptop đầu tiên sử dụng yếu tố hình thức lật xuất hiện vào đầu những năm 1980. Dulmont Magnum được phát hành tại Úc vào năm 1981 1982, nhưng không được bán trên thị trường quốc tế cho đến năm 1984. 8.150 đô la Mỹ (21.160 đô la Mỹ ngày nay) GRiD Compass 1101, phát hành năm 1982, được sử dụng tại NASA và quân đội, trong số những người khác. Sharp PC-5000, Ampere và Gavilan SC được phát hành vào năm 1983. Gavilan SC được nhà sản xuất mô tả là \"máy tính xách tay\", trong khi Ampere có thiết kế vỏ sò hiện đại. Toshiba T1100 đã giành được sự chấp nhận không chỉ trong số các chuyên gia PC mà cả thị trường đại chúng như một cách để có tính di động của PC. Từ năm 1983 trở đi, một số kỹ thuật nhập liệu mới đã được phát triển và đưa vào laptop, bao gồm bàn di chuột (Gavilan SC, 1983), thanh trỏ (IBM ThinkPad 700, 1992) và nhận dạng chữ viết (Linus Write-Top, 1987).', 'background1.jpg', 22);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
