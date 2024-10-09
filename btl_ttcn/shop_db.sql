-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2024 lúc 12:55 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(6, 3, 1, 'laptop_asus_expertbook_b14', 239999, 1, 'laptop_asus_expertbook_b14.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 1, 'Hamim Al Fardin', '0153399595', 'hamim.al.fardin@gmail.com', 'cash on delivery', 'flat no. Mirpur 12, road: 23, Dhaka, Dhaka, Bangladesh - 1216', 'Xiaomi Mijia Dafang Square IP Camera (3490 x 1) - ', 3490, '2022-09-12', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'laptop_asus_expertbook_b14', 'LAPTOP ASUS EXPERTBOOK B1400CBA-EB0678W \r\n(CORE I3-1215U | 8GB | 256GB | INTEL® UHD | 14.0-INCH FHD | WIN 11 | ĐEN)\r\nHãng sản xuất	Laptop Asus\r\nTên sản phẩm	Asus ExpertBook B1400CBA-EB0678W\r\nCông nghệ CPU	Intel® Core™ i3-1215U\r\nSố nhân	6\r\nSố luồng	8\r\nTốc độ CPU	Up to 4.40 GHz\r\nBộ nhớ đệm	10 MB\r\nRAM	8GB DDR4 on board', 239999, 'laptop_asus_expertbook_b14.jpg', 'laptop_asus_expertbook_b14.jpg', 'laptop_asus_expertbook_b14.jpg'),
(2, 'laptop-dell-inspiron-t7430-n7430i', 'Laptop Dell Inspiron T7430 N7430I58W1 (Core I5 1335U | 8GB | 512GB | Intel Iris Xe | 14 Inch FHD + | Cảm Ứng | Win 11 | Bạc)\r\nCPU: Intel Core i5 1335U (Up to 4.6Ghz, 12Mb Cache)\r\nRAM: 8GB LPDDR5 4800MHz (onboard)\r\nỔ cứng: 512GB M.2 PCIe NVMe SSD\r\nVGA: Intel Iris Xe Graphics\r\nMàn hình: 14.0Inch FHD+ (1920 x 1200) Touch ComfortView\r\nTính năng: Bảo mật vân tay\r\nPin: 4 cell - 54Whr\r\nOS: Windows 11 Home + Office Home and Student 2021\r\nMàu sắc: Bạc', 39990, 'laptop-dell-inspiron-t7430-n7430i58w1-1.jpg', 'laptop-dell-inspiron-t7430-n7430i58w1-2.jpg', 'laptop-dell-inspiron-t7430-n7430i58w1-3.jpg'),
(3, 'laptop-macbook-pro-14-2023-m3', 'laptop-macbook-pro-14-2023-m3-1\r\nCPU: Apple M3 8-core; 10-core GPU\r\nMàn hình: 14.2 inch, 3024 x 1964 Pixels, IPS, 120 , 1600 nit, Liquid Retina XDR\r\nRAM: 16 GB\r\nBộ nhớ: 512GB', 19599, 'laptop-macbook-pro-14-2023-m3-.jpg', 'laptop-macbook-pro-14-2023-m3-.jpg', 'laptop-macbook-pro-14-2023-m3-.jpg'),
(4, 'laptop_asus_vivobook_14x_a', 'laptop_asus_vivobook_14x_a\r\nCPU: Intel Core i3-1220P (upto 4.4GHz, 12MB)\r\nRAM: 8GB DDR4 on board + 1 slot\r\nỔ cứng: 512GB M.2 NVMe PCIe 3.0 SSD\r\nVGA: Intel UHD Graphics\r\nMàn hình: 14 inch WUXGA (1920X1200) 16:10 aspect ratio, 60Hz, 300 nits, IPS\r\nPin: 3 Cells 50WHrs\r\nCân nặng: 1.6Kg\r\nMàu sắc: Bạc\r\nTính năng: Bảo mật vân tay\r\nOS: Windows 11 Home', 199900, 'laptop_asus_vivobook_14x_ab.jpg', 'laptop_asus_vivobook_14x_abc.jpg', 'laptop_asus_vivobook_14x_abcd.jpg'),
(5, 'laptop asus_rog_zephyrus_g16_gu603', 'Laptop Gaming ASUS ROG Zephyrus G16 GU603VV (I7-13620H/ 16GB/ 512GB SSD/ RTX 4060 8GB/ FHD 165Hz)\r\nCPU: Intel® Core™ i7-13620H (2.40GHz up to 4.90GHz, 24MB Cache)\r\nRam: 16GB DDR4-3200MHz\r\nỔ cứng: 512GB PCIe® 4.0 NVMe™ M.2 SSD\r\nVGA: NVIDIA® GeForce RTX™ 4060 8GB GDDR6\r\nDisplay: 16inch FHD(1920x 1080), Anti-glare display, 100%sRGB, 165Hz\r\nPin: 4Cell 90WHrs\r\nWeight: 2.00 Kg\r\nColor: Gray\r\nBacklit Chiclet Keyboard 1-Zone RGB', 49999, 'asus_rog_zephyrus_g16_gu603vv-a.jpg', 'asus_rog_zephyrus_g16_gu603vv-b.jpg', 'asus_rog_zephyrus_g16_gu603vv-c.jpg'),
(6, 'Laptop GIGABYTE G5 MF5-52VN383SH ', 'Laptop GIGABYTE G5 MF5-52VN383SH (Intel Core I5-13500H, 8GB, 512GB, RTX 4050, 15.6inch, FHD, Win 11, Đen)\r\nCPU: Intel Core i5-13500H (12 nhân, 16 luồng, upto 4.70GHz, 18MB)\r\nRAM: 8GB (1x8GB) DDR5-4800MHz\r\nỔ cứng: 512GB SSD Gen4 + 1 PCIe 3.0 Upgrade Slot\r\nVGA: NVIDIA GeForce RTX 4050 6GB GDDR6\r\nMàn hình: 15.6 inch FHD (1920x1080) 144Hz Display\r\nPin: 54Wh\r\nTrọng lượng: 2.08 kg\r\nMàu sắc: Đen\r\nOS: Windows 11 Home', 234390, 'laptop_gigabyte_a.jng', 'laptop_gigabyte_b.jng', 'laptop_gigabyte_c.jng'),
(7, 'Laptop Gaming ASUS TUF Gaming', 'Laptop Gaming ASUS TUF Gaming F15 FX507VI-LP088W (Core I7-13620H | 16GB | 512GB | RTX 4070 | 15.6 Inch FHD | Win 11 | Xám)\r\nCPU: Intel® Core™ i7-13620H (2.40GHz up to 4.90GHz, 24MB Cache)\r\nRam: 16GB DDR4-3200MHz SO-DIMM (2x SO-DIMM slots, Max 32GB)\r\nỔ cứng: 512GB PCIe® 4.0 NVMe™ M.2 SSD\r\nVGA: NVIDIA® GeForce RTX™ 4070 8GB GDDR6\r\nDisplay: 15.6 inch FHD (1920 x 1080) 16:9 IPS, 144Hz, 250nits, 75% NTSC, 100%sRGB, anti-glare display, G-Sync\r\nPin: 4Cell 90WHrs, 4S1P\r\nWeight: 2.20 Kg\r\nColor: Jaeger Gr', 141700, 'laptop2-a.png', 'laptop2-b.jpg', 'laptop2-c.jpg'),
(8, 'Laptop Dell Inspiron 5430 ', 'Laptop Dell Inspiron 5430 (Core I7 1360P | 16GB | 1TB SSD | 14 Inch 2.5K | Windows 11 Home | Bạc)\r\nBộ VXL: Core i7 1360P 2.2GHz\r\nBộ nhớ RAM: 16Gb (Onboard) DDR5 4800\r\nỔ cứng: 1TB SSD\r\nCard màn hình: VGA Nvidia - Nvidia GeForce RTX 2050 4GB GDDR6\r\nKích thước màn hình: 14.0inch 2.5K\r\nHệ điều hành: Windows 11 Home + Office Student', 1699, 'laptop-dell-inspiron-a.jpg', 'laptop-dell-inspiron-b.jpg', 'laptop-dell-inspiron-c.jpg'),
(9, 'Laptop Asus Vivobook A1403ZA-KM066W ', 'Bộ VXL: Core i5 12500H 2.5GHz\r\nBộ nhớ RAM: 8Gb (Onboard) DDR4 3200\r\nỔ cứng: 512Gb SSD\r\nCard màn hình: Intel UHD Graphics\r\nKích thước màn hình: 14.0inch 2.8K\r\nHệ điều hành: Windows 11 Home', 2499, 'laptop-asus-vivoboo-a.jpg', 'laptop-asus-vivoboo-b.jpg', 'laptop-asus-vivoboo-c.jpg'),
(10, 'Màn Hình Đồ Họa LG 27UP850N-W (Hàng Giá Sốc)', 'Màn Hình Đồ Họa LG 27UP850N-W (Hàng Giá Sốc)\r\nKiểu dáng màn hình: Phẳng (Màu Trắng)\r\nTỉ lệ khung hình: 16:9\r\nKích thước mặc định: 27.0 inch\r\nCông nghệ tấm nền: IPS\r\nPhân giải điểm ảnh: 4K - UHD - 3840 x 2160\r\nĐộ sáng hiển thị: 400 Nits cd/m2\r\nTần số quét màn: 60 Hz (Hertz)\r\nThời gian đáp ứng: 5ms (GTG)\r\nChỉ số màu sắc: 1.07 tỷ màu - sRGB 100% - DCI-P3 95% (Thông Thường) - 10 bits (8 bits + FRC)\r\nHỗ trợ tiêu chuẩn: VESA (100 mm x 100 mm), AMD FreeSync, Dynamic Action Sync, DisplayHDR™ 400, HDR10,', 5499, 'maytinh-a.png', 'maytinh-a.png', 'maytinh-a.png'),
(11, 'Màn Hình ViewSonic VX2528', 'Kiểu dáng màn hình: Phẳng\r\nTỉ lệ khung hình: 16:9\r\nKích thước mặc định: 24.5 inch\r\nCông nghệ tấm nền: IPS\r\nPhân giải điểm ảnh: FHD - 1920 x 1080\r\nĐộ sáng hiển thị: 250 cd/m² (typ)\r\nTần số quét màn: 180Hz\r\nThời gian đáp ứng: 0.5ms MPRT\r\nChỉ số màu sắc: 16.7 triệu màu - 8 bit (6 bit + FRC), NTSC: 72% size (Typ), sRGB: 102% size (Typ)', 13499, 'maytinh2-a.jpg', 'maytinh2-b.jpg', 'maytinh2-c.jpg'),
(12, 'Máy tính All in one HP ProOne 440 ', 'CPU: Intel Core i5-13500T (24MB, up to 4.60GHz)\r\nRAM: 8GB (1 x 8GB) DDR4-3200MHz (2 khe)\r\nỔ cứng: 512GB PCIe® NVMe SSD\r\nVGA: Intel UHD Graphics 770\r\nMàn hình: 23.8inch FHD (1920 x 1080) Touch, IPS, anti-glare, 250 nits, 72% NTSC\r\nPhụ kiện: Chuột + Phím\r\nKết nối: Wlan + Bluetooth\r\nHệ điều hành: Windows 11 Home 64\r\nMàu sắc: Đen', 4949, 'maytinh3-a.jpg', 'maytinh3-b.jpg', 'maytinh3-c.jpg'),
(13, 'Máy tính để bàn ASUS M3402WFAK', 'Chíp xử lý: AMD Ryzen 5 7520U (4-core/8-thread, 2 MB cache, up to 4.3 GHz max boost)\r\nBộ nhớ Ram: 8GB LPDDR5 on board\r\nỔ đĩa cứng: 512GB M.2 NVMe™ PCIe® 3.0 SSD\r\nCard đồ họa: AMD Radeon Graphics\r\nMàn hình: 23.8-inch, FHD (1920 x 1080) 16:9, Wide view, Anti-glare display, LED Backlit, 250nits, sRGB: 100%, Screen-to-body ratio88 %, non touch\r\nKết nối: Lan Gigabit, Wifi + Bluetooth', 3490, 'maytinh4-a.jpg', 'maytinh4-b.jpg', 'maytinh4-c.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Hamim Al Fardin', 'hamim.al.fardin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(3, 'trung toan', 'trantrungtoannn@gmail.com', 'ddac418a1be76098d01107464026f65d2a3192bf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(3, 3, 2, 'laptop-dell-inspiron-t7430-n7430i', 39990, 'laptop-dell-inspiron-t7430-n7430i58w1-1.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
