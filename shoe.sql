-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 08, 2023 lúc 02:40 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_banner`
--

DROP TABLE IF EXISTS `tbl_banner`;
CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `title`, `image`, `active`) VALUES
(1, 'Banner 2', 'sl3.jpg', 1),
(2, 'Đăng ký thành viên', 'slideshow_3.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `idcate` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idcate`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`idcate`, `title`, `content`) VALUES
(5, 'SUKEM', 'SUKEM'),
(6, 'DONUT', 'DONUT'),
(7, 'BÁNH KEM', 'BÁNH KEM'),
(8, 'BÁNH NGỌT', 'BÁNH NGỌT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproduct` int(11) NOT NULL,
  `namemember` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `idproduct`, `namemember`, `noidung`) VALUES
(2, 74, 'John Doe', 'how to buy'),
(3, 74, 'John Doe', 'Sale'),
(4, 72, 'John Doe', '123'),
(5, 72, 'John Doe', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_img_product`
--

DROP TABLE IF EXISTS `tbl_img_product`;
CREATE TABLE IF NOT EXISTS `tbl_img_product` (
  `idpost` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_img_product`
--

INSERT INTO `tbl_img_product` (`idpost`, `id_product`, `file_name`, `uploaded_on`) VALUES
(1, 57, '20.png', '2019-01-03 16:36:07'),
(2, 57, '20.png', '2019-01-03 16:36:07'),
(3, 57, '20.png', '2019-01-03 16:36:07'),
(4, 57, '24.png', '2019-01-03 17:03:07'),
(5, 58, '13.png', '2019-01-03 17:03:53'),
(6, 58, '6.png', '2019-01-03 17:05:25'),
(7, 59, '3.png', '2019-01-03 17:31:18'),
(8, 59, '8.png', '2019-01-03 17:31:18'),
(9, 59, '9.png', '2019-01-03 17:31:18'),
(10, 60, '16.png', '2019-01-03 17:32:17'),
(11, 60, '19.png', '2019-01-03 17:32:17'),
(12, 61, '9.png', '2019-01-03 17:32:59'),
(13, 61, '14.png', '2019-01-03 17:32:59'),
(14, 61, '18.png', '2019-01-03 17:32:59'),
(15, 62, '15.png', '2019-01-03 17:51:14'),
(16, 62, '20.png', '2019-01-03 17:51:14'),
(17, 63, '9.png', '2019-01-03 17:53:57'),
(18, 63, '15.png', '2019-01-03 17:53:57'),
(19, 63, '24.png', '2019-01-03 17:53:57'),
(20, 64, '1.png', '2019-01-03 17:54:46'),
(21, 64, '9.png', '2019-01-03 17:54:46'),
(22, 64, '15.png', '2019-01-03 17:54:46'),
(23, 65, '12.png', '2019-01-03 17:57:39'),
(24, 66, '11.png', '2019-01-03 17:58:08'),
(25, 67, '20.png', '2019-01-03 18:00:13'),
(26, 68, '7.png', '2019-01-03 18:00:43'),
(27, 69, '2.png', '2019-01-03 18:01:40'),
(28, 70, '5.png', '2019-01-03 18:02:47'),
(29, 71, '6.png', '2019-01-04 14:25:05'),
(30, 72, '3.png', '2019-01-04 14:47:07'),
(31, 72, '4.png', '2019-01-04 14:47:07'),
(32, 73, '7.png', '2019-01-04 14:47:42'),
(33, 73, '20.png', '2019-01-04 14:47:42'),
(34, 74, '3.png', '2019-01-04 16:08:16'),
(35, 74, '13.png', '2019-01-04 16:08:16'),
(36, 74, '19.png', '2019-01-04 16:08:16'),
(37, 74, '20.png', '2019-01-04 16:08:16'),
(38, 74, '23.png', '2019-01-04 16:08:16'),
(39, 74, '25.png', '2019-01-04 16:08:16'),
(40, 75, '3.png', '2019-01-17 17:48:48'),
(41, 75, '8.png', '2019-01-17 17:48:48'),
(42, 75, '15.png', '2019-01-17 17:48:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder`
--

DROP TABLE IF EXISTS `tbl_oder`;
CREATE TABLE IF NOT EXISTS `tbl_oder` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` float NOT NULL,
  `tenkhachhang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhthuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder`
--

INSERT INTO `tbl_oder` (`id`, `diachi`, `tongtien`, `tenkhachhang`, `email`, `phone`, `note`, `hinhthuc`, `tinhtrang`, `username`) VALUES
(145, 'HCM', 900000, 'Admin', 'admin@gmail.com', '0868313206', 'HEHEHE', 'Thanh toán t?i c?a hàng', '?ang x? lý', 'Admin'),
(146, 'HCM', 900000, 'Admin', 'admin@gmail.com', '0868313206', 'test111', 'Thanh toán online', '?ang x? lý', 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder_detail`
--

DROP TABLE IF EXISTS `tbl_oder_detail`;
CREATE TABLE IF NOT EXISTS `tbl_oder_detail` (
  `maoder` int(10) UNSIGNED NOT NULL,
  `idproduct` int(10) UNSIGNED NOT NULL,
  `soluong` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder_detail`
--

INSERT INTO `tbl_oder_detail` (`maoder`, `idproduct`, `soluong`) VALUES
(1, 74, 1),
(1, 48, 1),
(2, 73, 4),
(3, 72, 5),
(4, 63, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_session`
--

DROP TABLE IF EXISTS `tbl_order_session`;
CREATE TABLE IF NOT EXISTS `tbl_order_session` (
  `id` int(11) UNSIGNED NOT NULL,
  `idproduct` int(11) NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  PRIMARY KEY (`idproduct`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page`
--

DROP TABLE IF EXISTS `tbl_page`;
CREATE TABLE IF NOT EXISTS `tbl_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE IF NOT EXISTS `tbl_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `uploaded_on` datetime NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `content`, `image`, `description`, `uploaded_on`, `author`) VALUES
(1, 'LOREM IPSUM DOLOR SIT AMET', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n', '5.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...', '2019-01-03 16:36:07', 'Trương Công Lợi'),
(2, 'LOREM IPSUM DOLOR SIT AMET', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n', '6.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...', '2019-01-03 16:36:07', 'Trương Công Lợi'),
(3, 'LOREM IPSUM DOLOR SIT AMET', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n', '1.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...', '2019-01-03 16:36:07', 'Trương Công Lợi'),
(4, 'LOREM IPSUM DOLOR SIT AMET', '<p>LOREM IPSUM DOLOR SIT AMETLOREM IPSUM DOLOR SIT AMETLOREM IPSUM DOLOR SIT AMETLOREM IPSUM DOLOR SIT AMETLOREM IPSUM DOLOR SIT AMET</p>\r\n', '2.jpg', 'LOREM IPSUM DOLOR SIT AMET....', '2019-01-04 14:43:13', 'LoiTruong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idcate` int(11) NOT NULL,
  `sale` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idproduct`),
  KEY `idcate` (`idcate`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`idproduct`, `name`, `price`, `amount`, `image`, `idcate`, `sale`, `description`, `sex`) VALUES
(1, 'Bánh SuKem Matcha', 200000, 100, 'cake-1.jpg', 5, 50000, 'Nguyên liệu gồm: bột mì, trứng gà, nước, muối, bơ, đường cát, sữa tươi.', 'all'),
(2, 'BÁNH SUKEM MINI', 179000, 100, 'cake-2.jpg', 5, 159000, 'Bánh tươi nhà làm Linhh Linhh Cake\r\n...vì là bánh tươi nên khi khách hàng đặt tiệm mới bắt đầu làm; sẽ mất khoảng 6 tiếng cho đến 18 tiếng mới có hàng giao cho khách, vì vậy mọi người cân nhắc đặt nếu có thể đợi được nhé.\r\nBánh sạch với nguyên liệu được nhập từ các siêu thị chuyên đồ làm bánh, đảm bảo VSATTP.', 'all'),
(3, 'BÁNH SUKEM VỊ DÂU', 199000, 100, 'cake-3.jpg', 5, 179000, 'Khuôn Làm Kem 4 / 9 Ngăn Sử Dụng Tiện Lợi\r\n\r\nThời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày', 'all'),
(4, 'BÁNH SUKEM VỊ SOCOLA', 79000, 100, 'cake-4.jpg', 5, 69000, '\r\nNhững chiếc bánh không những xinh xinh mà lại còn rất đậm vị sô cô la, thơm lắm….cắn một cái là ta nói nó ngất ngây…nhâm nhi với trà, với sữa…rất tuyệt vời…đặc biệt không thể thiếu cho các buổi tiệc nhẹ, các buổi sum họp gia đình, hay đơn giản là làm cái gì đó cho tụi nhỏ nó ăn!', 'all'),
(5, 'Bánh SUKEM vị Cherry', 155000, 100, 'cake-5.jpg', 5, 140000, 'Bento Cake size 10cm cốt bánh bông lan mịn màng kèm với lớp kem phô mai thơm nhẹ ít béo ít ngọt độc quyền nhà em ( nói không với kem sữa topping ngọt gắt ạ ) ', 'all'),
(6, 'bánh sukem dâu', 99000, 100, 'cake-6.jpg', 5, 89000, '- Kem không ngấy, ít béo, ngọt vừa, cốt bánh bông lan mềm mịn, thơm ngon vừa miệng!!!', 'all'),
(7, 'Bánh donut kem trứng', 155000, 100, 'dunut-1.jpg', 6, 149000, 'Bạn có thích những chiếc bánh donut thơm phức mùi bơ sữa không? Đây cũng là món bánh ngọt cực hấp dẫn với lớp vỏ giòn tan phủ đường, lớp nhân kem béo ngậy bên trong. Fan bánh ngọt chắc hẳn  không thể kìm lòng với lớp ruột bánh dai dai nhai đến đâu “ghiền” đến đó.', 'all'),
(8, 'Bánh donut', 99000, 100, 'dunut-2.jpg', 6, 89000, 'Bánh donut ngoài có thể ăn kèm cùng với những loại topping khác nhau thì bánh còn thể cho các loại thức ăn mà bạn yêu thích kẹp vào giưa giống như hamburger hay bánh bao. Bánh donut nướng dùng cho bữa sáng cùng sữa sẽ cung cấp đủ dưỡng chất cho bạn một ngày dài năng động.', 'all'),
(9, 'Bánh donut Socola', 149000, 100, 'donut-3.jpg', 6, 139000, 'Chiếc bánh rán tròn tròn được bọc sốt bên trên tạo cảm giác thèm ăn. Bên cạnh đó, donut có rất nhiều topping đi kèm. Có rất nhiều loại topping như hạnh nhân, chocolate… tha hồ bạn lựa chọn để ăn kèm chung với bánh.', 'all'),
(10, 'Bánh gato', 355000, 100, 'kem-1.webp', 7, 349000, 'Đây có lẽ là một trong 5 loại bánh kem sinh nhật quen thuộc nhất với chúng ta phải không nào. Mẫu mã các loại bánh càng ngày càng đẹp, hương vị bánh và kem cũng dần thay đổi để phù hợp với xu thế.\r\nMột chiếc bánh gato ngon cần phải có phần cốt bánh bông xốp, nhẹ, ăn không bị bứ. Bên cạnh đó thì lượng kem cũng cần vừa phải, không quá nhiều hay quá ít, không quá ngọt cũng không quá nhạt, và quan trọng nhất là không bị ngán.', 'all'),
(11, 'Bánh Kem Tiramisu', 455000, 100, 'kem-2.webp', 7, 100, 'Chiếc bánh này còn có tên là “pick me up”, hay dịch tiếng Việt có nghĩa là “hãy mang em đi”. Bánh có xuất xứ từ Ý, tượng trưng cho tình yêu mãnh liệt do bánh vừa có vị đắng vừa có vị ngọt cũng như tình yêu vừa hạnh phúc vừa đau khổ. Ngoài ra, bánh được giới bánh ngọt gọi là nữ hoàng của mọi loại bánh.Về độ nổi tiếng thì có lẽ không bánh nào qua được. Người đam mê bánh ngọt lẫn người thường có lẽ đều đã một lần nghe đến tên bánh này.', 'all'),
(12, 'Bánh mousse', 500000, 100, 'kem-3.webp', 7, 479000, 'Mousse là một loại bánh có lớp kem mát lạnh mềm mịn, tan trong miệng, đây là những đặc trưng đầu tiên khi người ta nghĩ đến mousse. Với ý nghĩa là \"bọt\" trong tiếng Pháp, mousse chính là chiếc bánh có vẻ ngoài đẹp mắt với lớp bánh gato mỏng bên dưới, phía trên là kem mịn, tan nhanh tự bọt biển chỉ để lại sự vấn vương nơi đầu lưỡi thực khách.', 'all'),
(13, ' Bánh kem lạnh (ice cream cake)', 399000, 100, 'kem-4.webp', 7, 399000, 'Dòng bánh này khá mới lạ và vô cùng độc đáo. Thay vì phần cốt bánh gato thông thường, nguyên liệu của dòng bánh này là kem lạnh mà chúng ta vẫn hay thưởng thức. Kem được đổ vào khuôn bánh gato, cho vào ngăn đá tủ lạnh cho đông lại, tách ra và xếp các lớp mỏng lại với nhau và trang trí thành 1 chiếc bánh lớn.\r\nVì thành phần chủ yếu là kem lạnh nên dòng bánh này sẽ thích hợp với các bữa tiệc sinh nhật trong phòng có bật điều hòa hơn.', 'all'),
(14, 'Bánh Tiramisu Ý', 300000, 100, 'kem-5.jpg', 7, 279000, 'Chiếc bánh là sự quy tụ hoàn hảo của đủ các tầng vị như ngọt, béo, đắng và hương thơm của cacao, rượu rum. Có lẽ vì vậy mà nó gợi lên cho chúng ta từng cung bậc cảm xúc trong tình yêu có cả hạnh phúc lẫn niềm đau.', 'all'),
(75, 'Bánh Macaron Pháp', 69000, 100, 'khac-1.jpg', 8, 65000, 'Bánh Macaron được tạo từ hai miếng bánh tròn kẹp lại, vỏ bánh hơi nhám, phần đế phẳng. Bánh có độ ẩm nhẹ và mềm tan trong miệng, vị beo béo mang đầy sự ngọt ngào, đậm đà và tinh tế của lớp kem bên trong.', 'all'),
(76, 'Bánh Táo Mỹ', 109000, 100, 'khac-2.jpg', 8, 105000, 'Bánh Táo thường có dạng lưới kết hợp với nhiều loại táo khác nhau, thường là táo tây. Bên ngoài được nướng nên có vỏ bánh có màu vàng nâu, thơm mùi bơ và giòn tan. Khi ăn vào, bạn sẽ cảm nhận được phần nhân là những miếng táo mềm, vị ngọt dịu của đường và mùi thơm từ bột quế.', 'all'),
(77, 'Bánh Mochi Nhật Bản', 155000, 100, 'khac-3.jpg', 8, 140000, 'Đây là loại bánh nhân ngọt, được làm từ gạo nếp dẻo thơm, vỏ bánh mềm dai. Ngoài ra, bánh không chỉ có một loại nhân mà có rất nhiều loại nhân khác nhau tùy theo sở thích và khẩu vị của mỗi địa phương như bánh mochi kem xoài, bánh mochi kem trà xanh,...', 'all'),
(78, 'Bánh Black Forest Đức', 350000, 100, 'khac-4.jpg', 8, 345000, 'Món bánh này có vị béo ngậy vì được tạo từ nhiều lớp cốt bánh chocolate phủ kem, rượu anh đào. Bên ngoài, Black Forest được phủ lớp chocolate bào mỏng, trang trí thêm những trái anh đào.\r\n\r\nĐây là sự kết hợp hoàn hảo giữa sự ngọt ngào của bánh đen xen hơi ấm nồng của rượu Kirsch Wasser rất phù hợp để giúp cho mùa đông của bạn không bao giờ cảm thấy lạnh lẽo.\r\n\r\n', 'all'),
(79, 'Bánh Limburg Pie Hà Lan', 450000, 100, 'khac-5.jpg', 8, 425000, 'Hãy cùng tạo ngay một kỉ niệm đáng nhớ cho những ngày mưa, nhâm nhi một tách cà phê nóng và thưởng thức vị chua ngọt của nhân bánh từ táo, mơ hay anh đào nhé!', 'all'),
(80, 'Bánh Pavlova Úc', 479000, 100, 'khac-6.jpg', 8, 450000, 'Lớp vỏ bánh được phủ đầy kem và trái cây, vậy nên khi nhìn vào sẽ thấy vị ngọt béo, mát lạnh tràn đầy. Bánh Pavlova không chỉ thu hút bởi vẻ đẹp mà còn cả hương vị còn thơm ngon khó cưỡng.', 'all'),
(81, 'Bánh Cheesecake New York', 450000, 100, 'khac-7.jpg', 8, 440000, 'Bánh có cấu tạo dạng đặc, mềm mịn với hương vị của đậm đà, ngọt ngào. Cheesecake là sự kết hợp hài hoà của phô mai tươi, kem, sữa và trứng. Ngoài ra, bánh có rất nhiều phiên bản mang đầy đủ các hương vị khác nhau tùy vào sở thích hoặc nơi làm ra chúng như cheesecake trà xanh, cheesecake đào,...', 'all');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isadmin` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `name`, `email`, `phone`, `address`, `password`, `isadmin`) VALUES
('Admin', 'Admin', 'admin@gmail.com', '0868313206', 'HCM', '123456', 1),
('doan', 'Đoàn', 'vandoan9480@gmail.com', '0393263948', 'TP Thủ Đức', 'pham1311', 0);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_oder`
--
ALTER TABLE `tbl_oder`
  ADD CONSTRAINT `tbl_oder_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tbl_user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_order_session`
--
ALTER TABLE `tbl_order_session`
  ADD CONSTRAINT `tbl_order_session_ibfk_1` FOREIGN KEY (`idproduct`) REFERENCES `tbl_product` (`idproduct`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`idcate`) REFERENCES `tbl_category` (`idcate`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
