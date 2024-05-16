-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/


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
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.Thanh toán trực tiếp 2. Thanh toán online ',
  `ngaydathang` varchar(255) DEFAULT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0. Đơn hàng mới\r\n1. Đang chuẩn bị \r\n2. Đang giao hàng \r\n3. Đã giao hàng thành công',
  `bill_thanhtoan` tinyint(1) NOT NULL COMMENT '1. Chưa thanh toán\r\n2. Đã thanh toán',
  `recelve_name` varchar(255) DEFAULT NULL,
  `recelve_address` varchar(255) DEFAULT NULL,
  `recelve_tel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(146, 26, 59, 'upload/9.webp', 'Laptop Dell Inspiron 14 Plus', 949, 1, 949, 87);

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
(50, 'Apple MacBook Air M1', 1499.00, 'macbook-air-gold-select-201810_4.webp', 'Máy mới 100%, đầy đủ phụ kiện từ nhà sản xuất. Sản phẩm có mã SA/A (được Apple Việt Nam phân phối chính thức).\r\nMáy, Sách HDSD, Cáp sạc USB-C (2 m), Cốc sạc USB-C 30W\r\n1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple: CareS(xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 1782, 42),
(51, 'Dell Inspiron i7-1360P', 649.00, '1.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 235, 37),
(52, 'Laptop MSI Gaming GF63', 599.00, '2.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 770, 39),
(53, 'Apple MacBook Pro M2', 1699.00, '6.webp', 'Máy mới 100%, đầy đủ phụ kiện từ nhà sản xuất. Sản phẩm có mã SA/A (được Apple Việt Nam phân phối chính thức).\r\nMáy, Sách HDSD, Cáp sạc USB-C (2 m), Cốc sạc USB-C 30W\r\n1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple: CareS(xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 1523, 42),
(54, 'Laptop MSI Gaming i7', 899.00, '4.webp', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 781, 39),
(55, 'ASUS TUF GAMING I5-12450', 849.00, '5.webp', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 172, 38),
(56, 'ASUS TUF GAMING I7-11800H', 899.00, '1.webp', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 578, 38),
(57, 'Laptop Gaming Acer Nitro 5', 899.00, '3.webp', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nDây nguồn, Sách hướng dẫn, Sạc Laptop\r\nBảo hành chính hãng 12 tháng tại trung tâm bảo hành ủy quyền, 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ NSX. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 536, 41),
(58, 'Laptop Acer Gaming Aspire 7', 699.00, '8.webp', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nBảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. (xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 300, 41),
(59, 'Laptop Dell Inspiron 14 Plus', 949.00, '9.webp', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nSạc, sách hướng dẫn sử dụng\r\nTìm hiểu thêm về laptop nhập khẩu\r\n\r\nBảo hành 1 đổi 1 trong vòng 12 tháng bởi Nhà Phân Phối (Áp dụng máy bán từ 1.7.2022) Các máy mua trước đó áp dụng bảo hành 12 tháng tại các trung tâm Bảo hành FPT Service trên toàn quốc(xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 200, 37),
(60, 'Laptop Dell Inspiron 15', 849.00, '10.webp', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản suất\r\nBảo hành pin 12 tháng\r\nSạc, sách hướng dẫn sử dụng\r\nTìm hiểu thêm về laptop nhập khẩu\r\n\r\nBảo hành 1 đổi 1 trong vòng 12 tháng bởi Nhà Phân Phối (Áp dụng máy bán từ 1.7.2022) Các máy mua trước đó áp dụng bảo hành 12 tháng tại các trung tâm Bảo hành FPT Service trên toàn quốc(xem chi tiết)\r\nGiá sản phẩm đã bao gồm VAT', 0, 37),
(61, 'Asus ROG Zephyrus G16', 3000.00, 'Asus1.jpg', '\r\nIntel® Core™ Ultra 9 185H (2.50GHz up to 5.10GHz, 24MB Cache)\r\nRam 32GB LPDDR5X 7467MHz\r\nỔ cứng 1TB SSD NVMe M.2 PCIe Gen4x4\r\nVGA  RTX 4070 8GB GDDR6\r\nDisplay: 16inch 2.5K (2560 x 1600, WQXGA) 16:10, OLED, 240Hz, 100% DCI-P3, Glossy display, 3ms, G-Sync, Pantone Validated\r\nPin 4Cell 90WHrs, 4S1P\r\nColor: Xám\r\nBảo hành: 24 Tháng chính hãng Asus Việt Nam', 0, 38);

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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

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
