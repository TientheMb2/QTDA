-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2022 lúc 12:34 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ntt_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(1, 'img/banners/banner1.png'),
(2, 'img/banners/banner2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(10, 24, 1, 7990000),
(14, 24, 1, 4590000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Điện Thoại'),
(2, 'Smartwatch'),
(3, ' Phụ Kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucTT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(10, 16, '2022-12-01 15:37:44', 'Nguyễn Thế', '0366414698', 'Đông Anh', '', 7990000, '1'),
(14, 1, '2022-12-04 00:47:57', 'Lê Quỳnh', '0841642493', 'Hà Nam', '', 4590000, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2022-12-03 21:41:03', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2022-12-03 21:41:19', 1),
(3, 'Sale online', 'SaleOnline', 350000, '2022-12-03 21:41:50', 1),
(4, 'Trả góp', 'TraGop', 200000, '2022-12-03 21:42:02', 1),
(5, 'Mới về', 'MoiVe', 250000, '2022-12-03 21:42:36', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(1, 'Apple', 't_i_xu_ng_71_.png', 'Apple', 1),
(7, 'Oppo', 'dtop.png', 'Oppo', 1),
(8, 'Samsung', 'dtss.png', 'Samsung', 1),
(14, 'Xiaomi', 'dtxiao.png', 'Xiaomi', 1),
(15, 'Xiaomi Watch', 'xiaomiW.png', 'Xiaomi Watch', 2),
(30, 'Realme', 'dtrl.png', 'Realme', 1),
(42, 'Apple Watch', '030722-030322.png', 'Apple Watch', 2),
(43, 'Samsung Watch', '030722-030439.png', 'Samsung Watch', 2),
(45, 'Apple Care', 'photo_2022-09-22_10-49-59.png', 'Apple Care', 3),
(46, 'Dán màn hình', 'photo_2022-09-22_10-50-19.png', 'Dán màn hình', 3),
(47, 'Ốp lưng', 'photo_2022-09-22_10-50-13.png', 'Ốp lưng', 3),
(48, 'Pin dự phòng', 'photo_2022-09-22_10-50-07.png', 'Pin dự phòng', 3),
(49, 'Cáp, sạc', 'photo_2022-09-22_10-50-08.png', 'Cáp, sạc', 3),
(50, 'Vivo', 'dtvvt_i_xu_ng_67_.png', 'Vivo', 1),
(51, 'Nokia', 'dtnokiat_i_xu_ng_75_.png', 'Nokia', 1),
(52, 'Asus', 'dtasust_i_xu_ng_77_.png', 'Asus', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(1, 'Lê', 'Quỳnh', 'Nữ', '0841642493', 'lequynh@gmail.com', 'Hà Nam', 'lequynh', '21232f297a57a5a743894a0e4a801fc3', 3, 1),
(3, 'Dương', 'Hằng', 'Nữ', '0974713498', 'duonghang@gmail.com', 'Hà Nội', 'duonghang', '21232f297a57a5a743894a0e4a801fc3', 3, 1),
(13, 'Nguyễn', 'Trang', 'Nữ', '0354129852', 'trangnguyen@gmail.com', 'Nghệ An', 'trangnguyen', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(14, 'Ngô', 'Hiếu', 'Nam', '0974617187', 'ngohieu@gmail.com', 'Quảng Ninh', 'ngohieu', '21232f297a57a5a743894a0e4a801fc3', 2, 1),
(15, 'Lê', 'Minh', 'Nam', '0341792462', 'leminh@gmail.com', 'Bắc Ninh', 'leminh', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(16, 'Nguyễn', 'Thế', 'Nam', '0366414698', 'thek9mb2@gmail.com', 'Đông Anh', 'nguyentienthe', '21232f297a57a5a743894a0e4a801fc3', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnh3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `ManHinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HDH` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CamSau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CamTruoc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CPU` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ram` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDCard` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(4, 8, 1, 'Samsung Galaxy S22 Ultra 128GB', 24050000, 15, 'img/products/sm-s908_galaxys22ultra_front_burgundy_211119.png', 'img/products/sm-s908_galaxys22ultra_front_green_211119.png', 'img/products/sm-s908_galaxys22ultra_front_phantomwhite_211119.png', 1, 'Dynamic AMOLED 2X', 'Android 12', ' Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP ', ' 40 MP ', 'Snapdragon 8 Gen 1 8 nhân', '8 GB', '128 GB', 'Không có', ' 5000 mAh. Sạc ngược không dây.', 0, 0, 1, '<h6 style=\"text-align: justify;\"><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s22-ultra\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung Galaxy S22 Ultra 5G kinh doanh tại Thegioididong.com\">Galaxy S22 Ultra 5G</a> chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà <a href=\"https://www.thegioididong.com/samsung\" target=\"_blank\" title=\"Tham khảo sản phẩm Samsung kinh doanh tại Thegioididong.com\">Samsung</a>\r\n đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi \r\nxử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với \r\ncụm camera không viền độc đáo mang đậm dấu ấn riêng.<br></h6><h6 style=\"text-align: justify;\">Sở hữu một diện mạo đầy nổi bật.<br></h6><h6 style=\"text-align: justify;\">Cấu hình mạnh mẽ với Snapdragon 8 Gen 1.<br></h6><h6 style=\"text-align: justify;\">Mang đến những bức ảnh đầy chất lượng.<br></h6><h6 style=\"text-align: justify;\">Trải nghiệm xem nhìn hoàn hảo.</h6><h6></h6>', '2022-12-03 17:05:31'),
(5, 8, 1, 'Samsung Galaxy Z Flip4 128GB', 20590000, 5, 'img/products/samsung_galaxy_z_flip_m_i_2022-15.png', 'img/products/samsung_galaxy_z_flip_m_i_2022-25.png', 'img/products/samsung_galaxy_z_flip_m_i_2022-11.png', 2, 'Chính: Dynamic AMOLED 2X, Phụ: Super AMOLED', ' Android 12 ', ' 2 camera 12 MP ', '10 MP', ' Snapdragon 8+ Gen 1 8 nhân ', '8 GB', '128 GB', 'Không có', '3700 mAh. Tiết kiệm pin', 0, 0, 1, '<h6 style=\"text-align: justify;\"><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-flip4\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">Samsung Galaxy Z Flip4 128GB</a>&nbsp;đã\r\n chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung\r\n trên con đường định hướng người dùng về sự tiện lợi trên những chiếc \r\nđiện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp\r\n Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm \r\n2022.<br></h6><h6 style=\"text-align: justify;\">Dẫn đầu xu hướng thiết kế mới.<br></h6><h6 style=\"text-align: justify;\">Nâng tầm trải nghiệm smartphone.<br></h6><h6 style=\"text-align: justify;\">Sở hữu màn hình cao cấp.<br></h6><h6 style=\"text-align: justify;\">Ảnh chụp bắt trọn vẻ đẹp từ mọi khung cảnh.</h6><h6></h6>', '2022-12-03 17:10:30'),
(6, 8, 1, 'Samsung Galaxy S22 Plus 128GB', 19200000, 10, 'img/products/s22_3_1.png', 'img/products/s22_4_1.png', 'img/products/s22_2_1.png', 1, ' Dynamic AMOLED 2X ', ' Android 12 ', 'Chính 50 MP & Phụ 12 MP, 10 MP', '10 MP', ' Snapdragon 8 Gen 1 8 nhân ', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 1 TB', '4500 mAh', 0, 0, 1, '<h6><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s22-plus\" target=\"_blank\" title=\"Samsung Galaxy S22+ 5G 128GB\">Samsung Galaxy S22+&nbsp;5G 128GB</a>\r\n được Samsung cho ra mắt với ngoại hình không có quá nhiều thay đổi \r\nnhưng được nâng cấp đáng kể về thông số cấu hình bên trong và thời gian \r\nsử dụng, chắc hẳn sẽ mang lại những trải nghiệm thú vị dành cho bạn.</h6><h3 style=\"text-align: justify;\"><br></h3><div><br></div>', '2022-12-03 17:14:40'),
(7, 7, 1, 'OPPO Reno8 ', 8390000, 10, 'img/products/combo_product_-_reno8_4g_-_gold.png', 'img/products/combo_product_-_reno8_4g_-_black.png', 'img/products/oppo_reno4g.png', 2, 'AMOLED', 'Android 12', '64MP, f/1.7 ', ' 32MP, f/2.4', ' Qualcomm Snapdragon 680', '8 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4500mAh (Typ)', 0, 0, 1, '<h6><span style=\"font-family: arial, helvetica, sans-serif;\"><strong>OPPO Reno8</strong> - chuyên gia chụp ảnh chân dung hàng đầu nhờ sự kết hợp giữa <strong>cảm biến cao cấp Sony IMX709</strong>(camera trước) và <strong>IMX766</strong>(camera sau) với <strong>ống kính Micro30x</strong>. Ngoài ra, <strong>phiên bản Reno 8</strong> mang lại cho người dùng khả năng <strong>cân bằng cuộc sống theo khung giờ 8 tiếng</strong> giúp làm việc hiệu quả và nghỉ ngơi đầy đủ. Hiệu năng mà OPPO Reno 8 sở hữu <strong>8GB RAM</strong>, <strong>256GB bộ nhớ trong</strong> đi cùng với vi xử lý <strong>MediaTek Dimensity 1300</strong> giúp tối ưu các tác vụ hiệu quả cùng hiệu năng chơi game đỉnh cao.</span></h6><h6><span style=\"font-family: arial, helvetica, sans-serif;\"></span></h6><h6><strong>CHUYÊN GIA CHÂN DUNG: Bừng sáng khoảnh khắc đêm với Reno8.<br></strong></h6><h6><strong>DẪN ĐẦU XU HƯỚNG THIẾT KẾ 2022: Tinh xảo và cao cấp.<br></strong></h6><h6><strong>NHANH NHẤT, AN TOÀN NHẤT: Sạc siêu nhanh Super VOOC 80W.<br></strong></h6><h6><strong>Thiết kế Reno8 sang trọng, mặt lưng hiệu ứng độc đáo.</strong></h6>', '2022-12-03 18:11:59'),
(8, 7, 1, 'OPPO Reno7 4G 128GB', 6490000, 20, 'img/products/combo_product_-_orange_-_reno7_4g.png', 'img/products/combo_product_-_black_-_reno7_4g.png', 'img/products/4096-2731-max_7__2_3.png', 2, '5000 mAh', 'ColorOS 6.1 (Android 9.0)', 'Chính 12 MP & Phụ 2 MP, 2 MP', '8 MP', '4 nhân 2.3 GHz & 4 nhân 1.8 GHz', '6 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4230 mAh', 0, 0, 1, '<h6>Hãng OPPO đã giới thiệu <a href=\"https://cellphones.com.vn/oppo-reno7-128gb.html\" target=\"_blank\"><strong>OPPO Reno7 4G</strong></a>\r\n tại thị trường Việt Nam vào cuối tháng 4.&nbsp;Dường như phiên bản này chỉ \r\nthiếu đi kết nối 5G còn các yếu tố khác như thiết kế, màn hình, hệ thống\r\n camera đều không có quá nhiều sự thay đổi.</h6><h6 style=\"text-align: justify;\"><strong>Camera chất lượng với cảm biến thế hệ mới.<br></strong></h6><h6 style=\"text-align: justify;\"><strong>Thiết kế sang trọng với màu sắc độc đáo.</strong></h6><h6 style=\"text-align: justify;\"><strong>Hiệu năng vượt trội, chơi game mượt mà, bộ nhớ RAM có thể mở rộng.<br></strong></h6><h6 style=\"text-align: justify;\"><strong>Pin 4500 mAh, sạc nhanh SUPERVOOCTM&nbsp;33W.</strong></h6><h3 style=\"text-align: justify;\"></h3><div><br></div>', '2022-12-03 18:14:57'),
(9, 7, 1, 'OPPO Reno6 Z 5G', 6590000, 10, 'img/products/oppo_reno6.png', 'img/products/12345678.png', 'img/products/1536-1024_9__2_3.png', 1, 'AMOLED, 6.4\"', 'ColorOS 6.1 (Android 9.0)', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '16 MP', 'MediaTek Helio P70 8 nhân', '6 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4025 mAh, có sạc nhanh', 0, 0, 1, '<h6>Tiếp nối sự thành công của Reno5 Series, Oppo tiếp tục mang đến cho người dùng dòng sản phẩm mới mang tên <a href=\"https://cellphones.com.vn/oppo-reno-6z.html\">Oppo&nbsp;Reno6</a>\r\n với nhiều nâng cấp đáng giá. Trong series lần này, người dùng sẽ thấy \r\nvô cùng ngạc nhiên khi xuất hiện tới 4 phiên bản. Sự có mặt của <strong></strong><strong>Oppo Reno6 Z 5G</strong> trong lần ra mắt này sẽ thu hút được đông đảo người chú ý bởi hiệu năng cực đỉnh để mang đến những trải nghiệm đỉnh cao.</h6>', '2022-12-03 18:18:40'),
(10, 7, 1, ' OPPO Reno6 5G ', 8990000, 10, 'img/products/reno6_1.png', 'img/products/reno6-1_1.png', 'img/products/reno-6-5g-nonlogo-4.png', 4, 'TFT LCD, 6.5\"', 'Android 10', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '16 MP', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '5000 mAh, có sạc nhanh', 0, 0, 1, '<h6>Tiếp theo phần ra mắt của series Reno 5 thì Oppo lại chuẩn bị trình làng\r\n mẫu smartphone mới nhất mang tên Reno6. Thiết kế sang trọng cấu hình \r\nmạnh mẽ với chipset Dimensity 900,&nbsp;<strong>OPPO Reno6 </strong>sẽ mang đến cho người dùng trải nghiệm mượt mà.</h6>', '2022-12-03 18:20:50'),
(11, 7, 1, 'OPPO Reno5', 7790000, 5, 'img/products/oppo-reno-5_2__1_1.png', 'img/products/oppo-reno-5_3_.png', 'img/products/oppo-reno-5_1__1_1.png', 5, 'AMOLED, 6.7\"', 'Android 10', 'Chính 48 MP & Phụ 13 MP, 12 MP', '32 MP', 'Snapdragon 865 8 nhân', '12 GB', '256 GB', 'Không có', '4200 mAh, có sạc nhanh', 0, 0, 1, '<p>Tiếp nối thành công vang dội của thế hệ Find X, OPPO chính thức ra mắt Find X2 với những đường nét thanh lịch từ thiết kế phần cứng cho đến trải nghiệm phần mềm, hứa hẹn một vẻ đẹp hoàn hảo, một sức mạnh xứng tầm.<br>Trải nghiệm thị giác tuyệt vời.<br>Hệ thống camera đỉnh cao.<br>Hiệu năng khủng, trải nghiệm cao.<br>Pin lớn, sạc nhanh SupperVOOC 2.0.<br>Mở khóa hiện đại, giao diện mượt mà.</p>', '2022-12-03 18:22:54'),
(12, 7, 1, 'OPPO Reno8 Pro 5G 256GB', 17090000, 10, 'img/products/oppo_reno8_pro_1_.png', 'img/products/oppo_reno8_pro.png', 'img/products/3_246.png', 2, 'AMOLED, 6.5\"', 'Android 9.0 (Pie)', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '16 MP', 'MediaTek Helio P70 8 nhân', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4000 mAh, có sạc nhanh', 0, 0, 1, '<h6><a href=\"https://cellphones.com.vn/oppo-reno-8-pro.html\"><strong>OPPO Reno8 Pro</strong></a> là một trong những sản phẩm thuộc series tiếp theo mà&nbsp;<a href=\"https://cellphones.com.vn/mobile/oppo.html\">OPPO</a>\r\n mong muốn mang tới cho người dùng. Mang trên mình thiết kế cực đỉnh \r\ncùng hiệu năng cực chất, bên cạnh đó là những nâng cấp cực chất về \r\ncamera chắc chắn sẽ giúp người dùng có những trải nghiệm cực đã.</h6>', '2022-12-03 18:25:22'),
(13, 7, 1, 'OPPO A77s', 5990000, 10, 'img/products/combo_a77s-_xanh_1.png', 'img/products/combo_a77s-_en_2.png', 'img/products/oppo-a77s-den-glr-2.png', 4, 'Sunlight Super AMOLED, 6.56\"', 'Android 10', 'Chính 64 MP & Phụ 13 MP, 8 MP, 2 MP', 'Chính 44 MP & Phụ 2 MP', 'MediaTek Helio P95 8 nhân', '8 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4025 mAh, có sạc nhanh', 0, 0, 1, '<h6>Sau màn ra mắt thành công của OPPO A77, công ty công nghệ hàng đầu xứ \r\nTrung đã có màn nâng cấp ngoạn mục cho dòng điện thoại này bằng cách cho\r\n ra mắt <strong>OPPO A77s</strong>. Vì là phiên bản nâng cấp của dòng điện thoại tầm trung siêu hot nên những chiếc A77s nhận được rất nhiều sự quan tâm.</h6><h6 style=\"text-align: justify;\"><strong>Thiết kế thanh mảnh, gọn nhẹ.<br></strong></h6><h6 style=\"text-align: justify;\"><strong>Khả năng hiển thị đỉnh cao với màn hình IPS LCD 6.56 inch.<br></strong></h6><h6 style=\"text-align: justify;\"><strong>Hiệu suất mạnh mẽ, hệ điều hành Android 12.<br></strong></h6><h6 style=\"text-align: justify;\"><strong>Khả năng nhiếp ảnh đáng nề, chất ảnh cực nghệ .<br></strong></h6>', '2022-12-03 18:28:12'),
(14, 14, 1, 'Xiaomi Redmi Note 11 Pro Plus 5G', 8890000, 5, 'img/products/11-pro-plus-blue.png', 'img/products/11-pro-plus-black-1.png', 'img/products/11-pro-plus-green-1.png', 4, 'AMOLED, 6.01\"', 'Android 9 Pie (Android One)', 'Chính 48 MP & Phụ 8 MP, 2 MP', '32 MP', 'Snapdragon 665 8 nhân', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4030 mAh, có sạc nhanh', 0, 0, 1, '<p><strong>Redmi Note 11 Pro Plus</strong> chính là mẫu smartphone tầm \r\ntrung tiếp theo được Xiaomi cho ra mắt với giá hấp dẫn cùng với thiết kế\r\n mới tinh tế, cấu hình mạnh mẽ và cụm camera chất lượng cao cho trải \r\nnghiệm nhiếp ảnh đầy hứa hẹn.<br>Cụm 3 camera ở mặt lưng.<br>Thiết kế lột xác so với thế hệ cũ.<br>Hiệu năng vẫn rất mạnh mẽ.</p>', '2022-12-03 18:31:00'),
(15, 14, 1, 'Xiaomi Redmi Note 11 Pro', 6300000, 5, 'img/products/t_i_xu_ng_2__3_9.png', 'img/products/screenshot_2_39_4.png', 'img/products/4096-2731-max_6__3_1.png', 1, 'IPS LCD, 6.53', 'Android 9.0 (Pie)', 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', '20 MP', 'MediaTek Helio G90T 8 nhân', '6 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4500 mAh, có sạc nhanh', 0, 0, 1, '<p>Vừa mới chính thức ra mắt chiếc Redmi Note 11 cách đây chưa lâu, Xiaomi lại tiếp tục rục rịch cho trình làng thêm <strong>Redmi Note 11 Pro </strong>với những trang bị ấn tượng hơn. Đây là bản nâng cấp nhẹ nhàng nhưng vẫn mang đến nhiều sự khác biệt và chênh lệch về hiệu năng.<br>Hiệu năng hàng đầu phân khúc.<br>Camera được đầu tư mạnh mẽ.<br>Pin khủng còn sạc nhanh.<br>Màn hình lớn, trải nghiệm thích hơn.</p>', '2022-12-03 18:34:53'),
(16, 14, 1, 'Xiaomi 12T Pro', 15490000, 10, 'img/products/xiaomi-12t-xam_2.png', 'img/products/xiaomi-12t-den_2.png', 'img/products/xiaomi-12t-xanh_2.png', 4, 'AMOLED, 6.47\"', 'Android 10', 'Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP', '16 MP', 'Snapdragon 730G 8 nhân', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '5260 mAh, có sạc nhanh', 0, 0, 1, '<p>Xiaomi Mi 12T Pro sở hữu vi xử lý Snapdragon 8 Gen 1+ mạnh mẽ, RAM 12GB +\r\n Bộ nhớ trong 256GB cho không gian lưu trữ thoải mái. Thêm vào đó, cụm \r\ncamera cảm biến 200MP cùng camera selfie 20MP cho ảnh chụp, video chi \r\ntiết, sắc nét. Không chỉ vậy, màn hình AMOLED DotDisplay độ phân giải \r\nFHD+ với tần số quét 120Hz mang đến hình ảnh rực rỡ, sống động.<br>Thời trang và thanh thoát với màn hình tràn viền 3D.<br>Chụp ảnh với bộ 4 camera lên đến 64 MP.<br>Pin vượt ngưỡng 5000 mAh, sử dụng thả ga.<br>Hệ điều hành Android 10 sử dụng giao diện MIUI nhiều tính năng hấp dẫn.</p>', '2022-12-03 18:37:43'),
(17, 14, 1, 'Xiaomi Poco F4', 8050000, 10, 'img/products/xiaomi_poco_f4_verde_01_l.png', 'img/products/xiaomi_poco_f4_plata_01_l.png', 'img/products/xiaomi_poco_f4_negro_01_l.png', 1, 'AMOLED, 6.47\"', 'Android 9.0 (Pie)', 'Chính 108 MP & Phụ 20 MP, 12 MP, 5 MP, 2 MP', '32 MP', 'Snapdragon 730G 8 nhân', '8 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '5260 mAh, có sạc nhanh', 0, 0, 1, '<p><a href=\"https://cellphones.com.vn/xiaomi-poco-f4.html\" title=\"Xiaomi Poco F4\"><strong>Xiaomi Poco F4</strong></a> sản phẩm làm nhiều tính đồ công nghệ mong chờ, với thiết kế và hiệu năng nổi bật, mang sự đặt biệt của thương hiệu <a href=\"https://cellphones.com.vn/mobile/hang-sap-ve/xiaomi.html\" title=\"Điện thoại Xiaomi chính hãng\" target=\"_self\">điện thoại Xiaomi</a>.&nbsp;Poco\r\n 4 đã được hoàn thiện trong quá trình sản xuất và đưa ra thị trường sau \r\nmột thời gian dài, chắc chắn sẽ không khiến người dùng thất vọng về cả \r\ngiá tiền và chất lượng mà máy mang lại.<br>Thiết kế cao cấp.<br>Màn hình cong trà. </p>', '2022-12-03 18:39:54'),
(18, 14, 1, 'Xiaomi Mi 11 Lite 5G', 7490000, 10, 'img/products/xiaomi-mi-11-lite-5g-1_12.png', 'img/products/xiaomi-mi-11-lite-5g-3_13.png', 'img/products/mi-11-lite-5g-12.png', 4, 'IPS LCD, 6.67\"', 'Android 10', 'Chính 48 MP & Phụ 8 MP, 5 MP, 2 MP', '16 MP', 'Snapdragon 720 8 nhân', '6 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '5020 mAh, có sạc nhanh', 0, 0, 1, '<h6>Điện thoại Mi 11 Lite 5G <strong></strong>là sản phẩm tầm trung nhưng vẫn\r\n sở hữu rất nhiều điểm nổi bật từ thiết kế đến cấu hình, như trên những \r\nchiếc smartphone cao cấp. Đây&nbsp;là một máy đáng để trải nghiệm, với những \r\nngười dùng có nhu cầu tìm kiếm cho mình một chiếc điện thoại thông minh \r\nvới màn hình lớn, sạc nhanh và dung lượng lớn nhưng có mức giá tốt.<br>Thiết kế cao cấp, vân tay dời sang cạnh bên.<br>Mạnh mẽ vượt trội trong phân khúc.<br>Chụp ảnh ấn tượng với cụm camera lên đến 48 MP</h6>', '2022-12-03 18:43:31'),
(23, 30, 1, 'Realme C11 (2021)', 2290000, 20, 'img/products/download_15_5.png', 'img/products/realme-c11-2021-gray-600x600.png', 'img/products/realme_c11_0000_layer_4_2.png', 3, 'IPS LCD, 6.3\"', 'Android 9.0 (Pie)', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '16 MP', 'Snapdragon 712 8 nhân', '4 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4035 mAh, có sạc nhanh', 0, 0, 1, '<p>Với người dùng có nhu cầu đọc báo, lướt web, nghe nhạc hay thực hiện công việc cơ bản, <strong>Realme C11 </strong>sẽ\r\n là chiếc smartphone đáp ứng tốt những nhu cầu trên với mức \r\ngiá vô cùng phải chăng. Cùng CellphoneS đánh giá chi tiết chiếc điện \r\nthoại giá rẻ này nhé!<br>Hiệu năng nâng cấp mạnh mẽ.<br>Camera hàng đầu phân khúc.<br>Nhiều trang bị chỉ có trên những chiếc máy cao cấp.</p>', '2022-12-03 18:46:14'),
(24, 30, 1, 'Realme C35 4GB 128GB', 4590000, 10, 'img/products/h732_4_.png', 'img/products/h732_5_.png', 'img/products/h732_6_.png', 4, 'IPS LCD, 6.6', 'Android 10', 'Chính 64 MP & Phụ 12 MP, 8 MP, 2 MP', 'Chính 16 MP & Phụ 8 MP', 'Snapdragon 720G 8 nhân', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4300 mAh, có sạc nhanh', 0, 0, 1, '<h6>Realme C35 là mẫu smartphone cao cấp hơn trong bộ đôi Realme C35 Series mới ra mắt của Realme. Vẫn với tiêu chí smartphone cấu hình mạnh - giá tốt, Realme C35 còn nổi bật với cụm 6 camera ấn tượng, màn hình siêu mượt 90 Hz theo xu hướng.<br>Cấu hình mạnh mẽ trong phân khúc.<br>Màn nhình 90Hz siêu mượt.<br>Pin lớn kèm sạc nhanh.</h6>', '2022-12-03 19:59:14'),
(43, 1, 1, 'iPhone 11 64GB | VN/A', 11690000, 5, 'img/products/5_158.png', 'img/products/2_242.png', 'img/products/4_187.png', 1, 'IPS LCD, 6.1\'\'', 'iOS 15', '2 camera 12 MP', '12 MP', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', 'Không có', '3110 mAh', 0, 0, 1, '<blockquote><p></p><blockquote><h5><span style=\"font-family: \" nunito\";\"=\"\"></span><span style=\"font-family: \" nunito\";\"=\"\"></span>Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.</h5><h6>Nâng cấp mạnh mẽ về camera.<br>Hiệu năng mạnh mẽ hàng đầu thế giới.<br>Thời lượng pin tốt nhất từ trước đến nay.</h6></blockquote><p></p></blockquote>', '2022-12-03 16:26:58'),
(44, 1, 1, 'iPhone 14 Pro Max 1TB | VN/A', 32590000, 10, 'img/products/t_m_18.png', 'img/products/v_ng_18.png', 'img/products/x_m_24.png', 5, 'OLED, 6.7\'\'', 'iOS 16', ' Chính 48 MP & Phụ 12 MP, 12 MP ', '12 MP', ' Apple A16 Bionic 6 nhân ', '6 GB', '1 TB', 'Không có', ' 4323 mAh. Sạc nhanh PD 2.0 30W.', 0, 0, 1, '<blockquote><h5 style=\"text-align: justify;\">Cuối cùng thì chiếc <a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro-max\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">iPhone 14 Pro Max</a> cũng\r\n đã chính thức lộ diện tại sự kiện ra mắt thường niên vào ngày 08/09 đến\r\n từ nhà Apple, kết thúc bao lời đồn đoán bằng một bộ thông số cực kỳ ấn \r\ntượng cùng vẻ ngoài đẹp mắt sang trọng. Từ ngày 14/10/2022 người dùng đã\r\n có thể mua sắm các sản phẩm iPhone 14 series với đầy đủ phiên bản tại NTT Shop.<br></h5><h6 style=\"text-align: justify;\">Thiết kế cao cấp và vẻ ngoài sành điệu.<br></h6><h6 style=\"text-align: justify;\">Đột phá với thiết kế Dynamic island.<br></h6><h6 style=\"text-align: justify;\">iPhone 14 Pro Max với nhiều màu sắc rực rỡ.<br></h6><h6 style=\"text-align: justify;\"><span style=\"text-align: justify;\">Màn hình chất lượng cho những trải nghiệm xem tuyệt vời.</span></h6></blockquote>', '2022-12-03 16:24:07'),
(45, 1, 1, 'iPhone 13 Pro Max 128GB | VN/A', 36490000, 10, 'img/products/2_61_8_2_1_12.png', 'img/products/3_51_1_7.png', 'img/products/4_36_3_2_1_9.png', 4, 'OLED, 6.7\'\'', 'iOS 15', '3 camera 12 MP', '12 MP', ' Apple A15 Bionic 6 nhân ', '6 GB', '128 GB', 'Không có', ' 4352 mAh. Sạc nhanh 20W.', 0, 0, 1, '<blockquote><h5 style=\"text-align: justify;\"><a href=\"https://www.thegioididong.com/dtdd/iphone-13-pro-max-256gb\" target=\"_blank\" title=\"Tham khảo giá điện thoại iPhone 13 Pro Max 256GB chính hãng\">iPhone 13 Pro Max 128GB</a>&nbsp;-\r\n siêu phẩm mang trên mình bộ vi xử lý Apple A15 Bionic hàng đầu, màn \r\nhình Super Retina XDR 120 Hz, cụm camera khẩu độ f/1.5 cực lớn, tất cả \r\nsẽ mang lại cho bạn những trải nghiệm tuyệt vời chưa từng có.<br></h5><h6 style=\"text-align: justify;\">Thiết kế đẳng cấp, sang trọng.<br></h6><h6 style=\"text-align: justify;\">Màn hình OLED với thiết kế tai thỏ gọn hơn.<br></h6><h6 style=\"text-align: justify;\">Cụm camera nâng cấp, hỗ trợ chụp ảnh, quay phim chuyên nghiệp.<br></h6><h6 style=\"text-align: justify;\">Sức mạnh vượt trội với Apple A15 Bionic.<br></h6></blockquote>', '2022-12-03 16:33:26'),
(46, 1, 1, 'iPhone 12 64GB | VN/A', 15990000, 10, 'img/products/3_224.png', 'img/products/5_157.png', 'img/products/2_241.png', 4, 'OLED, 6.1\'\'', 'iOS 15', '2 camera 12 MP ', '12 MP', 'Apple A14 Bionic 6 nhân', '4 GB', '64 GB', 'Không có', ' 2815 mAh. Sạc không dây MagSafe.', 0, 0, 1, '<blockquote><h5 style=\"text-align: justify;\">Trong những tháng cuối năm 2020,&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo sản phẩm chính hãng của Apple tại Thế Giới Di Động\">Apple</a>&nbsp;đã\r\n chính thức giới thiệu đến người dùng cũng như iFan thế hệ \r\niPhone&nbsp;12&nbsp;series&nbsp;mới với hàng loạt tính năng bứt phá, thiết kế được lột \r\nxác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là&nbsp;<a href=\"https://www.topzone.vn/iphone/iphone-12\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại TopZone.vn\">iPhone 12 64GB</a>.</h5></blockquote><h6 style=\"text-align: justify;\">Hiệu năng vượt xa mọi giới hạn.<br></h6><h6 style=\"text-align: justify;\">Cụm camera không ngừng cải tiến.<br></h6><h6 style=\"text-align: justify;\">Ghi dấu ấn về mặt thiết kế.<br></h6><h6 style=\"text-align: justify;\">Trải nghiệm xuyên suốt, liền mạch cả ngày dài.</h6><p></p>', '2022-12-03 16:38:41'),
(47, 1, 1, 'iPhone 14 Plus 128GB | VN/A', 23590000, 10, 'img/products/photo_2022-09-28_21-58-54_5.png', 'img/products/photo_2022-09-28_21-58-51_4.png', 'img/products/photo_2022-09-28_21-58-48_5.png', 2, 'OLED, 6.7\'\'', ' iOS 16 ', ' 2 camera 12 MP ', ' 12 MP ', 'Apple A15 Bionic 6 nhân', '6 GB', '128 GB', 'Không có', '4325 mAh. Sạc nhanh 20W.', 0, 0, 1, '<blockquote><h5 style=\"text-align: justify;\"><a href=\"https://www.thegioididong.com/dtdd/iphone-14-plus\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">iPhone 14 Plus</a>&nbsp;thu\r\n hút mọi ánh nhìn trong sự kiện Far Out diễn ra ngày 8/9 nhờ có vẻ ngoài\r\n cao cấp, trang bị bộ xử lý mạnh mẽ, cụm camera kép đặc trưng cho khả \r\nnăng chụp ảnh cực nét cùng màn hình chất lượng cao cho bạn tận hưởng cảm\r\n giác sử dụng smartphone tuyệt vời hơn.<br></h5><h6 style=\"text-align: justify;\">iPhone 14 Plus sử dụng thiết kế nguyên khối, hiện đại.<br></h6><h6 style=\"text-align: justify;\">Màn hình sắc nét, trọn vẹn giải trí.<br></h6><h6 style=\"text-align: justify;\">Chụp ảnh chuyên nghiệp hơn trên&nbsp;iPhone 14 Plus.<br></h6><h6 style=\"text-align: justify;\">Hiệu năng của quái vật.</h6></blockquote>', '2022-12-03 16:53:35'),
(48, 1, 1, 'iPhone 12 Pro Max 128GB | VN/A', 25590000, 20, 'img/products/1_251_1.png', 'img/products/4_185_2.png', 'img/products/2_240_1.png', 1, 'OLED, 6.7\'\'', ' iOS 15 ', ' 3 camera 12 MP ', ' 12 MP ', ' Apple A14 Bionic 6 nhân ', '6 GB', '128 GB', 'Không có', '3687 mAh. Power Delivery 2.0.', 0, 0, 1, '<h5 style=\"text-align: justify;\"><a href=\"https://www.thegioididong.com/dtdd/iphone-12-pro-max\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 12 Pro Max 128GB chính hãng tại Thế Giới Di Động\">iPhone 12 Pro Max 128 GB</a>&nbsp;một siêu phẩm&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại smartphone chính hãng tại Thế Giới Di Động\">smartphone</a>&nbsp;đến từ&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo sản phẩm chính hãng của Apple tại Thế Giới Di Động\">Apple</a>.\r\n Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ\r\n người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.<br></h5><h6 style=\"text-align: justify;\">Thay đổi thiết kế mới sau 6 năm.</h6><h6 style=\"text-align: justify;\">Chất lượng hiển thị tuyệt vời.<br></h6><h6 style=\"text-align: justify;\">Cụm camera sau được nâng cấp mạnh mẽ.<br></h6><h6 style=\"text-align: justify;\">Hiệu năng khủng từ “quái vật” A14 Bionic.</h6><p style=\"text-align: justify;\"></p>', '2022-12-03 16:59:07'),
(49, 42, 2, 'Apple Watch Ultra 49mm', 21490000, 10, 'img/products/ultra-cao-su.png', 'img/products/1_362.png', 'img/products/2_338_4.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<br><p></p>', '2022-12-03 15:50:11'),
(50, 42, 2, 'Apple Watch Ultra 49MM (4G)', 20490000, 10, 'img/products/49mm.png', 'img/products/7_89.png', 'img/products/9_46.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<h6><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"></span><span style=\"font-size: 14px;\"><br></span></span></h6>', '2022-12-03 15:52:33'),
(51, 42, 2, 'Apple Watch Series 6 Nike (GPS)', 7990000, 20, 'img/products/apple-watch-series-6-nike-44mm-vien-nhom-day-cao-su.png', 'img/products/apple_mg173ll_a_watch_nike_series_6_1600203941_1594551_09e72addf17f4b4fb60b2ee00e17623b_grande.png', 'img/products/apple-watch-series-6-nike-44mm-vien-nhom-day-cao-su-1.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<br><p></p>', '2022-12-03 16:07:58'),
(52, 43, 2, 'Samsung Galaxy Watch 5', 6490000, 15, 'img/products/watch-lte-44_1.png', 'img/products/2_167.png', 'img/products/4_146.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<br>', '2022-12-03 15:32:11'),
(53, 42, 2, 'Apple Watch Series 8', 12990000, 10, 'img/products/41mm_1.png', 'img/products/5_169_3.png', 'img/products/2_251_1.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<br>', '2022-12-03 15:46:38'),
(54, 15, 2, 'Xiaomi Watch S1 Active', 2990000, 10, 'img/products/active-s1-blue-thumb.png', 'img/products/yellow_2_1.png', 'img/products/white_3_5.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<div class=\"kP-bM3\" style=\"background: rgba(0, 0, 0, 0.02); padding: 0.875rem;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;\"=\"\"><br></div>', '2022-12-03 16:05:21'),
(55, 15, 2, 'Xiaomi Mi Watch', 1990000, 10, 'img/products/mi_watch_base.png', 'img/products/dong-ho-thong-minh-xiaomi-mi-watch-5.png', 'img/products/dong-ho-thong-minh-xiaomi-mi-watch-8.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<br>', '2022-12-03 15:43:56'),
(57, 1, 1, 'iPhone SE 2022 64GB | VN/A ', 10390000, 10, 'img/products/1_359_1.png', 'img/products/2_337_1.png', 'img/products/3_306_1.png', 1, 'IPS LCD, 4.7', 'iOS 15', '12 MP', '7 MP', 'Apple A15 Bionic 6 nhân', '4 GB', '64 GB', 'Không có', ' 2018 mAh. Sạc pin nhanh, sạc không dây.', 0, 0, 1, '<h6 style=\"text-align: justify;\">Như vậy là sau bao ngày chờ đợi thì <a href=\"https://www.thegioididong.com/dtdd/iphone-se-2022\" target=\"_blank\" title=\"iPhone SE 64 GB (2022)\" type=\"iPhone SE 64 GB (2022)\">iPhone SE 64GB (2022)</a> cũng đã được giới thiệu tại sự kiện Apple Peek Performance. Thiết bị nổi bật với cấu hình mạnh mẽ, chạy chip hiện đại nhất của <a href=\"https://thegioididong.com/apple\" target=\"_blank\" title=\"Apple\" type=\"Apple\">Apple</a> hiện tại nhưng giá bán lại rất phải chăng.<br></h6><h6 style=\"text-align: justify;\">Thiết kế hoài niệm.<br></h6><h6 style=\"text-align: justify;\">Hiệu năng vượt trội với vi xử lý mới nhất.<br></h6><h6>Camera cải tiến.</h6><h3 style=\"text-align: justify;\"><br></h3>', '2022-12-03 16:48:25'),
(58, 1, 2, 'Apple Watch Series 7 GPS 41mm', 9490000, 20, 'img/products/apple-watch-s7-41mm-den-thumbnew-600x600.png', 'img/products/2_167.png', 'img/products/4_146.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<h6>Kiểu dáng hiện đại, thời thượng.<br>Hệ điều hành WatchOS 8 với những cải tiến nổi bật.<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762\" target=\"_blank\" title=\"Màn hình OLED là gì? Đặc điểm nổi bật của màn hình OLED\"><br>Màn hình OLED</a> luôn luôn hiển thị.<br>Sử dụng lên đến 1.5 ngày cho một lần sạc.<br>Dễ dàng kết nối với <a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Xem thêm các mẫu điện thoại đang kinh doanh tại Thế Giới Di Động\">điện thoại</a> qua Bluetooth.</h6><p></p><p></p><p></p><p></p><p></p>', '2022-12-03 15:25:54'),
(59, 42, 2, 'Apple Watch SE 40mm', 5990000, 15, 'img/products/1_280.png', '/img/products/4_210.png', '/img/products/6_146.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 15:38:38'),
(60, 43, 2, 'Samsung Galaxy Watch 4', 3990000, 15, 'img/products/sm-r870_003_1.png', '/img/products/sm-r870_003_r-perspective_green.png', '/img/products/sm-r870_003_r-perspective_silver.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 15:59:52'),
(61, 43, 2, 'Samsung Watch 5 40mm LTE ', 7490000, 15, 'img/products/watch-5-lte_1.png', '/img/products/8_63_1.png', '/img/products/10_30_1.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 16:07:37'),
(62, 45, 3, 'Apple Magic Mouse 2021 MK2E3', 1690000, 5, 'img/products/group_145_2.png', '/img/products/chuot-apple-magic-mouse-2021-1.png', '/img/products/chuot-apple-magic-mouse-2021-3.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:34:34'),
(63, 45, 3, 'Bluetooth Apple AirPods 2 VN/A ', 2690000, 5, 'img/products/group_169_1.png', '/img/products/azaudio-tai-nghe-bluetooth-apple-airpod-2_2.png', '/img/products/image_2019-03-29_09-12-07_2.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:36:11'),
(64, 45, 3, 'Apple AirPods Pro 2022 | VN/A', 6390000, 4, 'img/products/group_111_5_.png', '/img/products/3_237.png', '/img/products/5_167.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:38:17'),
(65, 45, 3, 'Apple Pencil 2 MU8F2 | VN/A', 3390000, 6, 'img/products/but-cam-ung-apple-pencil-2.png', '/img/products/mu8f2.png', '/img/products/mu8f2_av1.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:39:59'),
(66, 45, 3, 'Apple AirTag | VN/A', 790000, 10, 'img/products/airtag.png', '/img/products/airtag-3.png', '/img/products/airtag-2_1.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:41:32'),
(67, 46, 3, 'MiPow Kingbull HD Premium', 331500, 10, 'img/products/3_49_5.png', '/img/products/mieng-dan-cuong-luc-cho-iphone-11-pro-max-mipow-ki_1.png', '/img/products/mieng-dan-cuong-luc-cho-iphone-11-pro-max-mipow-ki9722_1.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:43:54'),
(68, 47, 3, 'iPhone 13 Pro Apple Silicone Clear Case', 795000, 20, 'img/products/op-lung-magsafe-iphone-13-pro-apple-silicone-case-clear-4.png', '/img/products/op-lung-magsafe-iphone-13-pro-apple-silicone-case-clear-1.png', '/img/products/op-lung-magsafe-iphone-13-pro-apple-silicone-case-clear-2.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:47:56'),
(69, 47, 3, 'iPhone 13 Pro Max Apple Silicone Case', 1130000, 15, 'img/products/_0007_mm2m3_2.png', '/img/products/_0003_mm2n3_2.png', '/img/products/_0000_mm2p3_2.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:49:19'),
(70, 49, 3, '20W Apple MHJE3ZA | VN/A', 490000, 15, 'img/products/group_117_1.png', '/img/products/637387863045632122_pk-apple-00720432-3.png', '/img/products/adapter-20w-apple-5_1_1.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:51:07'),
(71, 49, 3, 'Samsung 25W Type-C to Type-C', 450000, 20, 'img/products/frame_1_5__3.png', '/img/products/download_5__2_5.png', '/img/products/screenshot_12_1_1.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:52:46'),
(72, 49, 3, 'Apple Type C to Lightning 1M MM0A3FE/A ', 4900000, 20, 'img/products/group_118_2.png', '/img/products/cap-type-c-to-lightning-apple-mm0a3fe-a-1m_3.png', '/img/products/cap-type-c-to-lightning-apple-mm0a3fe-a-1m_4.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:54:09'),
(73, 48, 3, 'Energizer 10.000mAh 10W QE10007PQ', 790000, 25, 'img/products/pin-sac-du-phong-energizer-10000mah-tich-hop-sac-khong-day-10w-qe10007pq.png', '/img/products/p0135_20191114151128.png', '/img/products/p0135_20191114151018.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:56:56'),
(74, 48, 3, ' Aukey PB-N83S 20W PD 10.000mAh', 490000, 14, 'img/products/pin-sac-du-phong-aukey-pb-n83s-20w-pd-10000mah.png', '/img/products/pin-sac-du-phong-aukey-pb-n83s-18w-pd-10000mah-1.png', '/img/products/pin-sac-du-phong-aukey-pb-n83s-18w-pd-10000mah-4.png', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2022-12-03 17:57:38'),
(75, 50, 1, ' Vivo V23e ', 5790000, 7, 'img/products/c91ba5bf721d5b2d4eae4f821b8e4ced.png', '/img/products/66f28c6dfb784145079efaf494a83f8c.png', '/img/products/1536-1024_5__5_16.png', 1, 'AMOLED, 6.44', 'Android 11', '64MP AF', '50MP AF, f/2.0', 'MediaTek Helio G96', '8 GB', '128 GB', 'Hỗ trợ tối đa 256GB', ' 4050mAh', 0, 0, 1, '<h6>Tiếp nối sự thành công của các phiên bản trước đó, Vivo tiếp tục cho ra mắt mẫu smartphone tầm trung mang tên <strong>Vivo V23e</strong>.\r\n Với thiết kế mỏng nhẹ, hiệu năng ấn tượng cùng camera chất lượng và \r\ndung lượng pin khủng đây là chiếc điện thoại thông minh mang đến cho \r\nngười dùng những trải nghiệm vô cùng tuyệt vời. Chắc chắn đây là sản \r\nphẩm mà rất nhiều người đang tìm kiếm.</h6>', '2022-12-03 19:46:56'),
(76, 51, 1, 'Nokia C31 3GB 32GB ', 2390000, 8, 'img/products/1_250.png', '/img/products/nokia-c31-xl.png', '/img/products/3_222.png', 1, ' IPS LCD, 6.7\"', 'Android 12', '13MP + 2MP độ sâu trường ảnh + 2MP macro', '5 MP', 'Octa-core với xung nhịp lên đến 1.6Ghz', '3 GB', '32 GB', 'Hỗ trợ tối đa 256GB', '5050 mAh', 0, 0, 1, '<h6><strong>Nokia C31</strong> là sản phẩm mới của hãng <a href=\"https://cellphones.com.vn/mobile/hang-sap-ve/nokia.html\" title=\"Điện thoại Nokia chính hãng\" target=\"_blank\"><strong>điện thoại Nokia</strong></a>\r\n có kích thước 6.7 inch, độ phân giải cao, trọng lượng máy gọn nhẹ chỉ \r\n200gr, với con chip Unisoc 9863A1 mạnh mẽ. Người dùng có thể sử dụng máy\r\n cả ngày giải nhờ dung lượng pin lên đến 5.050 mAh, thỏa sức với đam mê \r\nxem phim, lướt web, phục vụ nhu cầu của cá nhân. Camera của điện thoại \r\nrõ nét, phù hợp người dùng thích chụp ảnh.</h6>', '2022-12-03 19:50:43'),
(77, 52, 1, 'ASUS ROG Phone 6 12GB 256GB', 20490000, 6, 'img/products/bgf.png', '/img/products/dbnjllo.png', '/img/products/fbhgjj.png', 1, 'AMOLED, 6.78\"', 'Android 12', '50 MP, f/1.9, 1 / 1.56 ”, 1 µm. ', '12 MP', 'Qualcomm ® Snapdragon ® 8+ thế hệ 1', '12 GB', '256 GB', 'Hỗ trợ tối đa 256GB', '6000 mAh ', 0, 0, 1, '<h6>Hiệu năng dẫn đầu mọi trận đấu - Chip Snapdragon® 8+ Gen 1 mạnh mẽ cùng RAM 12GB.<br>Chất lượng hiển thị đúng chuẩn gaming - Màn hình 6.78 inches, FullHD+, HDR10+ cùng tần số quét 165Hz.<br>Thiết kế thân thiện cho chơi game, mặt lưng ánh sáng Aura RGB độc đáo.<br>Bùng nổ năng lượng cho ngày dài ấn tượng - Viên pin 6000 mAh, sạc nhanh siêu tốc 65W</h6><h6></h6>', '2022-12-03 19:55:24');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
