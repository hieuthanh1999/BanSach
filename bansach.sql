-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bansach
CREATE DATABASE IF NOT EXISTS `bansach` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bansach`;

-- Dumping structure for table bansach.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bansach.categories: ~8 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
	(4, 'Kỹ năng sống', 0),
	(7, 'Dưa hấu không hạt', 3),
	(8, 'Dưa hấu ép nước', 3),
	(10, 'Truyện Ngôn Tình', 0),
	(13, 'Truyện Thiếu Nhi', 0),
	(14, 'Tiểu Thuyết', 0),
	(15, ' Dinh dưỡng học', 0),
	(16, ' SGK', 0);

-- Dumping structure for table bansach.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bansach.customers: ~10 rows (approximately)
INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`, `age`) VALUES
	(1, 'Nguyễn Văn C', 'nvc@gmail.com', 'Thanh Hóa', '123', '202cb962ac59075b964b07152d234b70', NULL),
	(2, 'Nguyễn Văn D', 'nvd@gmail.com', 'Hà Nội', '123', '202cb962ac59075b964b07152d234b70', NULL),
	(5, 'abc', 'abc@gmail.com', 'Mê Linh', '1223334444', '202cb962ac59075b964b07152d234b70', NULL),
	(7, 'thao', 'thao@gmail.com', 'Thái Bình', '1223334444', '202cb962ac59075b964b07152d234b70', NULL),
	(8, 'Test', 'test2@gmail.com', 'Thanh Hóa', '1223334444', '202cb962ac59075b964b07152d234b70', NULL),
	(9, 'test login', 'test@gmail.com', 'Thanh Hóa', '0324565446', '202cb962ac59075b964b07152d234b70', NULL),
	(10, 'Lê Thảo', 'lethao0818@gmail.com', 'Thái Bình', '0123456', '827ccb0eea8a706c4c34a16891f84e7b', NULL),
	(11, 'Thảo', 'Thao0818@gmail.com', 'An Ấp', '1234567', '202cb962ac59075b964b07152d234b70', NULL),
	(12, 'dev dev', 'admin@gmail.com', 'Ha Noi, Ha Noi', '0355668062', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
	(13, '', 'nva@gmail.com', '', '', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
	(14, 'hieu thanh', 'hieuthanh@gmail.com', 'Ha Noi', '3213213213213', 'c4ca4238a0b923820dcc509a6f75849b', 22);

-- Dumping structure for table bansach.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bansach.news: ~4 rows (approximately)
INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `photo`) VALUES
	(1, 'Một mình bạn cũng có thể đẩy xe khi có sự cố: Đây là cách làm hiệu quả nhất  ', '<p>Khi di chuyển bằng &ocirc; t&ocirc;, &iacute;t nhiều sẽ c&oacute; trường hợp bạn gặp phải c&aacute;c t&igrave;nh huống rắc rối, thậm ch&iacute; nguy cấp. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao bạn n&ecirc;n trang bị những kiến thức v&agrave; phụ kiện cứu hộ cần thiết. Video dưới đ&acirc;y l&agrave; một mẹo nhỏ sẽ gi&uacute;p bạn trong một v&agrave;i trường hợp khẩn cấp khi sử dụng xe &ocirc; t&ocirc; con.</p>\r\n', '<p>Chiếc xe đầu ti&ecirc;n bị ch&aacute;y v&agrave;o th&aacute;ng 9-2018, nhưng do t&igrave;nh trạng huỷ hoại nặng của xe n&ecirc;n h&atilde;ng kh&ocirc;ng thể t&igrave;m ra manh m&ocirc;i n&agrave;o.</p>\r\n\r\n<p>T&igrave;nh trạng n&agrave;y diễn ra li&ecirc;n tục sau đ&oacute; nhưng việc t&igrave;m kiếm mọi đầu mối nguy&ecirc;n nh&acirc;n vẫn thất bại. Đến đầu năm 2020, Hyundai buộc phải thu&ecirc; b&ecirc;n thứ 3 để t&igrave;m lỗi v&agrave; cuối c&ugrave;ng nguy&ecirc;n nh&acirc;n được x&aacute;c định do chập điện.</p>\r\n\r\n<p>Theo đ&oacute;, dầu phanh ABS bị r&ograve; rỉ, rớt v&agrave;o bộ điều khiển điện tử ECU, dẫn đến ăn m&ograve;n bảng mạch in của ECU g&acirc;y chập điện.</p>\r\n\r\n<p>Dầu thuỷ lực cũng chảy tr&agrave;n l&ecirc;n vỏ động cơ, n&ecirc;n Hyundai đưa ra cảnh b&aacute;o chủ xe Santa Fe n&ecirc;n để &yacute; đến m&ugrave;i kh&eacute;t, kh&oacute;i từ động cơ bốc ra, v&agrave; kết hợp c&aacute;c cảnh b&aacute;o đ&egrave;n trong xe để nhanh ch&oacute;ng đưa xe đến đại l&yacute; sửa chữa.</p>\r\n\r\n<p>Bắt đầu v&agrave;o cuối th&aacute;ng 10 đến, Hyundai y&ecirc;u cầu c&aacute;c xe Santa Fe đời 2013-2015 đến c&aacute;c đại l&yacute; để thay thế cụm thắng ABS bị lỗi.</p>\r\n\r\n<p><strong>Theo Phương Minh (Ph&aacute;p Luật TPHCM)</strong></p>\r\n', 1, '1664791908_1664373699_dulich.jpg'),
	(2, 'Siêu xe McLaren 720S màu tím độc nhất Việt Nam được nâng cấp gói độ Novitec N-Largo phiên bản giới hạn.  ', '<p>Tại Việt Nam, McLaren 720S l&agrave; một trong những d&ograve;ng si&ecirc;u xe phổ biến nhất với số lượng hơn 10 chiếc, cả bản Coupe v&agrave; Spider. Đặc biệt nhất l&agrave; chiếc 720S Coupe của đại gia Vũng T&agrave;u với m&agrave;u t&iacute;m Lantana Purple độc nhất Việt Nam.</p>\r\n', '<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 1" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-1.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 1" /></p>\r\n\r\n<p>Vẫn chưa h&agrave;i l&ograve;ng với m&agrave;u sơn đặc biệt, đại gia n&agrave;y đ&atilde; chi khoản tiền khủng để lột x&aacute;c ho&agrave;n to&agrave;n chiếc si&ecirc;u xe. Cụ thể, chiếc 720S được n&acirc;ng cấp g&oacute;i độ N-Largo của Novitec.</p>\r\n\r\n<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 2" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-2.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 2" /></p>\r\n\r\n<p>Nếu c&aacute;c g&oacute;i độ kh&aacute;c chỉ lắp đặt v&agrave;i chi tiết tăng t&iacute;nh kh&iacute; động học th&igrave; g&oacute;i độ N-Largo thay đổi gần như to&agrave;n bộ ngoại thất xe. Phần th&acirc;n vỏ mới được l&agrave;m bằng carbon, vừa tăng t&iacute;nh thẩm mỹ vừa giảm khối lượng cho xe.</p>\r\n\r\n<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 3" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-3.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 3" /></p>\r\n\r\n<p>Sau khi n&acirc;ng cấp bodykit mới, chiều rộng th&acirc;n xe tăng đ&ocirc;i ch&uacute;t. Cụ thể, v&ograve;m b&aacute;nh trước rộng hơn 60 mm v&agrave; v&ograve;m b&aacute;nh sau rộng hơn 130 mm. Sự thay đổi n&agrave;y vừa tăng vẻ hầm hố cho xe, vừa cung cấp th&ecirc;m kh&ocirc;ng gian để bổ sung c&aacute;c chi tiết kh&iacute; động học.</p>\r\n\r\n<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 4" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-4.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 4" /></p>\r\n\r\n<p>Do si&ecirc;u xe mang m&agrave;u Lantana Purple độc quyền của bộ phận MSO, chủ nh&acirc;n phải đặt h&agrave;ng m&agrave;u sơn n&agrave;y từ McLaren để phủ l&ecirc;n bodykit mới. D&ugrave; kh&ocirc;ng tiết lộ, mức gi&aacute; cho những hộp sơn từ bộ phận MSO kh&aacute; đắt đỏ.</p>\r\n\r\n<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 5" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-5.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 5" /></p>\r\n\r\n<p>Điểm thay đổi nhiều nhất l&agrave; nửa th&acirc;n trước của xe. Nhờ bộ kit mới, phần đầu xe trở n&ecirc;n hầm hố hơn với cảm hứng từ đ&agrave;n anh Senna. V&ograve;m b&aacute;nh xe được bổ sung khe gi&oacute; kh&iacute; động học mới.</p>\r\n\r\n<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 6" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-6.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 6" /></p>\r\n\r\n<p>Bộ m&acirc;m nguy&ecirc;n bản được thay bằng la-zăng đa chấu của Vossen với k&iacute;ch thước 20 inch ở ph&iacute;a trước v&agrave; 21 inch ở ph&iacute;a sau.</p>\r\n\r\n<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 7" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-7.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 7" /></p>\r\n\r\n<p>Để tạo điểm nhấn cho ngoại thất, một số chi tiết được phủ m&agrave;u v&agrave;ng như viền cản trước/sau, viền ốp h&ocirc;ng, khe gi&oacute; tr&ecirc;n v&ograve;m b&aacute;nh trước, kh&oacute;a t&acirc;m b&aacute;nh xe v&agrave; kẹp phanh.</p>\r\n\r\n<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 8" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-8.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 8" /></p>\r\n\r\n<p>Ở ph&iacute;a sau, xe được trang bị c&aacute;nh gi&oacute; mới l&agrave;m bằng carbon. Hệ thống ống xả cũng được n&acirc;ng cấp l&ecirc;n thương hiệu FI Exhaust. Hệ thống ống xả n&agrave;y thuộc d&ograve;ng Signature Titanium, được l&agrave;m từ titanium m&agrave;u v&agrave;ng v&agrave; phần chụp ống xả bằng carbon.</p>\r\n\r\n<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 9" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-9.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 9" /></p>\r\n\r\n<p>Đ&aacute;ng tiếc l&agrave; si&ecirc;u xe n&agrave;y kh&ocirc;ng được n&acirc;ng cấp động cơ. Cung cấp sức mạnh cho 720S vẫn l&agrave; động cơ tăng &aacute;p k&eacute;p V8 4.0L cho c&ocirc;ng suất tối đa 720 m&atilde; lực v&agrave; m&ocirc;-men xoắn 770 Nm. Nhờ sức mạnh n&agrave;y, 720S c&oacute; thể tăng tốc 0-100 km/h chỉ trong 2,9 gi&acirc;y. Nếu được n&acirc;ng cấp hiệu suất theo cấu h&igrave;nh N-Largo, 720S sẽ cho ra c&ocirc;ng suất hơn 800 m&atilde; lực.</p>\r\n\r\n<p><img alt="McLaren 720S với gói độ độc nhất Việt Nam - 10" src="https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-10.jpg" title="McLaren 720S với gói độ độc nhất Việt Nam - 10" /></p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh n&acirc;ng cấp g&oacute;i độ N-Largo cho 720S được thực hiện trong khoảng 1 th&aacute;ng với chi ph&iacute; kh&ocirc;ng được tiết lộ. Novitec chỉ sản xuất 15 bộ bodykit N-Largo cho McLaren 720S. Với độ đặc biệt n&agrave;y, chi ph&iacute; cho g&oacute;i độ N-Largo kh&ocirc;ng thấp hơn con số 1 tỷ đồng.</p>\r\n', 1, '1664791896_1664373552_mercedes.jpg'),
	(3, ' Tour săn mây Cầu Đất, Café Panorama, cầu gỗ săn mây, đồi chè Cầu Đất, quạt gió, hồ vô cực. ', '<p>Tour du lịch săn m&acirc;y tại Cầu Đất &ndash; Đ&agrave; Lạt diễn ra từ s&aacute;ng sớm khi b&igrave;nh minh chưa thức giấc, tiếng g&agrave; g&aacute;y ven những ngọn đồi ch&egrave; mờ sương ch&agrave;o đ&oacute;n du kh&aacute;ch đặt ch&acirc;n đến khu vực n&ocirc;ng trại được bao bọc bởi thung lũng Cầu Đất xanh mướt ch&egrave;</p>\r\n', '<p>Tour du lịch săn m&acirc;y tại Cầu Đất &ndash; Đ&agrave; Lạt diễn ra từ s&aacute;ng sớm khi b&igrave;nh minh chưa thức giấc, tiếng g&agrave; g&aacute;y ven những ngọn đồi ch&egrave; mờ sương ch&agrave;o đ&oacute;n du kh&aacute;ch đặt ch&acirc;n đến khu vực n&ocirc;ng trại được bao bọc bởi thung lũng Cầu Đất xanh mướt ch&egrave;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="298962742_5722547264424961_8856966137648180244_n" src="https://dalat.travel/wp-content/uploads/2022/08/298962742_5722547264424961_8856966137648180244_n.jpg" />&nbsp;Hướng đi cầu gỗ săn m&acirc;y Cầu Đất</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; tour:&nbsp;<strong>390.000đ</strong></li>\r\n	<li>Điện thoại: 0263.2226888</li>\r\n	<li>Hot/Zalo: 038.38.38.309</li>\r\n	<li>Địa chỉ: 214 Phan Đ&igrave;nh Ph&ugrave;ng, TP Đ&agrave; Lạt</li>\r\n	<li>Email: booking@gotour.com.vn</li>\r\n	<li>Web: www.dalat.travel / www.gotour.com.vn</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Săn mây Đà Lạt" src="https://dalat.travel/wp-content/uploads/2022/08/Du-khach-check-in-cau-go-san-may.jpg" />&nbsp;Du kh&aacute;ch check in tại Cầu Gỗ Tour Săn M&acirc;y Đ&agrave; Lạt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>BUỔI S&Aacute;NG: Đ&Oacute;N KH&Aacute;CH &ndash; THAM QUAN C&Aacute;C THẮNG CẢNH (Ăn s&aacute;ng)</h3>\r\n\r\n<p>04:00&nbsp;<a href="https://gotour.com.vn/bang-gia-cho-thue-xe-tai-da-lat-tu-4-cho-den-45-cho/">Xe du lịch Đ&agrave; Lạt</a>&nbsp;v&agrave; HDV đ&oacute;n Qu&yacute; kh&aacute;ch tại kh&aacute;ch sạn trung t&acirc;m Th&agrave;nh Phố Đ&agrave; Lạt</p>\r\n\r\n<p>(Lưu &yacute;: qu&yacute; kh&aacute;ch mang theo &aacute;o kho&aacute;c giữ ấm, đồ che mưa, khăn cho&agrave;ng, bao tay, mũ len, trang phục chụp ảnh ph&ugrave; hợp v&agrave; gi&agrave;y d&eacute;p c&oacute; độ b&aacute;m tốt, đường đi trơn trượt)</p>\r\n\r\n<p>05:30&nbsp;<a href="https://xedalat.com.vn/">Xe du lịch</a>&nbsp;đưa đo&agrave;n đến Cầu Đất. Qu&yacute; kh&aacute;ch bắt đầu tự do tham quan:</p>\r\n\r\n<ul>\r\n	<li>Khu vực cầu gỗ săn m&acirc;y</li>\r\n	<li>Xe cổ ho&agrave;i niệm</li>\r\n	<li>Hồ tr&ecirc;n m&acirc;y</li>\r\n	<li>Thưởng thức bữa s&aacute;ng v&agrave; ly Caf&eacute; ngắm cảnh m&acirc;y &ugrave;a về tr&ecirc;n thung lũng Cầu Đất</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Cầu Đất - Đà Lạt" src="https://dalat.travel/wp-content/uploads/2022/08/299480353_5722547937758227_7491962006001701989_n.jpg" />&nbsp;Chụp ảnh b&ecirc;n xe cỗ tại Cầu Đất</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>08:00&nbsp;Sau bữa s&aacute;ng qu&yacute; kh&aacute;ch tiếp tục tham quan:</p>\r\n\r\n<ul>\r\n	<li>Chụp ảnh Tuabin quạt gi&oacute; khổng lồ</li>\r\n	<li>Chụp ảnh tại đồi ch&egrave; Cầu Đất</li>\r\n	<li>Vườn hồng treo gi&oacute;</li>\r\n	<li>Viếng ch&ugrave;a Linh Phước hay c&ograve;n gọi l&agrave; ch&ugrave;a Ve Chai</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="299327605_5722548027758218_5758118809912515326_n" src="https://dalat.travel/wp-content/uploads/2022/08/299327605_5722548027758218_5758118809912515326_n.jpg" />&nbsp;Đồi ch&egrave; Cầu Đất Đ&agrave; Lạt</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>KẾT TH&Uacute;C TOUR</h3>\r\n\r\n<p>10:00 Về đến Đ&agrave; Lạt. Xe đưa đo&agrave;n về điểm hẹn ban đầu, kết th&uacute;c&nbsp;<a href="https://gotour.com.vn/tour-ghep-da-lat-tour-da-lat-1-ngay-daily-tour-da-lat/">tour Đ&agrave; Lạt</a>&nbsp;săn m&acirc;y, chia tay v&agrave; hẹn gặp lại Qu&yacute; Kh&aacute;ch</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Gi&aacute; tour bao gồm:</h3>\r\n\r\n<ul>\r\n	<li>Xe du lịch đời mới đưa đ&oacute;n qu&yacute; kh&aacute;ch</li>\r\n	<li>Hướng dẫn vi&ecirc;n du lịch tiếng Việt</li>\r\n	<li>V&eacute; tham quan khu vực cầu gỗ săn m&acirc;y</li>\r\n	<li>Bữa s&aacute;ng tại Cầu Đất</li>\r\n	<li>Bảo hiểm du lịch</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Kh&ocirc;ng bao gồm:</h3>\r\n\r\n<ul>\r\n	<li>Cafe</li>\r\n	<li>Mua sắm ngo&agrave;i tour</li>\r\n	<li>VAT</li>\r\n</ul>\r\n', 1, '1665035840_tour-dalat.jpg'),
	(4, ' Ẩm thực Hà Nội đã tồn tại qua nhiều thế kỷ ', '<p>Danh s&aacute;ch m&oacute;n ngon H&agrave; Nội nhiều v&ocirc; số kể. D&ugrave; bắt đầu h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; ẩm thực H&agrave; v&agrave;o buổi s&aacute;ng, buổi trưa, buổi chiều hay... giữa đ&ecirc;m khuya, bạn vẫn sẽ c&oacute; được trải nghiệm vẹn tr&ograve;n &quot;hư</p>\r\n', '<h2><strong>C&aacute;c M&oacute;n Ngon H&agrave; Nội Vừa Nghe T&ecirc;n Đ&atilde; Th&egrave;m</strong></h2>\r\n\r\n<p>Danh s&aacute;ch m&oacute;n ngon H&agrave; Nội nhiều v&ocirc; số kể. D&ugrave; bắt đầu h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; ẩm thực H&agrave; v&agrave;o buổi s&aacute;ng, buổi trưa, buổi chiều hay... giữa đ&ecirc;m khuya, bạn vẫn sẽ c&oacute; được trải nghiệm vẹn tr&ograve;n &quot;hương - vị - sắc&quot;.</p>\r\n\r\n<h2><strong>C&aacute;c M&oacute;n Ăn S&aacute;ng, Ăn Trưa H&agrave; Nội Ngon - Bổ - Rẻ</strong></h2>\r\n\r\n<h3><strong>1. B&uacute;n Ốc H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="bun-oc-ha-noi" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1611205493/blog/sb0hdewypxzruulmc66j.webp" /></p>\r\n\r\n<p>Ảnh: Unsplash</p>\r\n\r\n<p>M&oacute;n b&uacute;n ốc H&agrave; Nội trứ danh được l&agrave;m từ nguy&ecirc;n liệu đơn giản v&agrave; d&acirc;n d&atilde; gồm: ốc văn hoặc ốc nhồi, b&uacute;n, c&agrave; chua, rau thơm k&egrave;m gia vị l&agrave; m&oacute;n ăn ngon H&agrave; Nội được l&ograve;ng du kh&aacute;ch gần xa. M&agrave;u sắc m&oacute;n ăn bắt mắt, hương vị nước ốc đậm đ&agrave; được người H&agrave; Nội chọn l&agrave;m bữa s&aacute;ng hoặc bữa trưa cho gia đ&igrave;nh.</p>\r\n\r\n<p><strong><u>Địa chỉ ăn b&uacute;n ốc ngon:</u></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>B&uacute;n ốc Giang &ndash; 36 Lương Ngọc Quyến, Q. Ho&agrave;n Kiếm</p>\r\n	</li>\r\n	<li>\r\n	<p>B&uacute;n ốc sườn &ndash; 57 Hai B&agrave; Trưng, Q, Ho&agrave;n Kiếm</p>\r\n	</li>\r\n	<li>\r\n	<p>B&uacute;n ốc sườn C&ocirc; S&aacute;u &ndash; Tầng trệt, 354 Bạch Mai, Q.Hai B&agrave; Trưng</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>2. Phở H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="pho-ha-noi" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1611204074/blog/lah4tyakxzcwryj0yr29.webp" /></p>\r\n\r\n<p>Phở H&agrave; Nội l&agrave; m&oacute;n ăn truyền thống l&acirc;u đời, mang hương vị ri&ecirc;ng của đất Bắc. Sự kh&aacute;c biệt dễ nhận thấy nhất giữa phở H&agrave; Nội v&agrave; phở trong Nam ch&iacute;nh l&agrave; b&aacute;nh phở dẹp v&agrave; to hơn, đồng thời, một số nơi sẽ ăn k&egrave;m phở với quẩy. Kh&aacute;ch du lịch H&agrave; Nội c&oacute; thể chọn phở g&agrave;, phở b&ograve; hay phở ngan t&ugrave;y theo sở th&iacute;ch ăn uống của mỗi người.</p>\r\n\r\n<p><strong><u>Địa chỉ b&aacute;n phở ngon ở H&agrave; Nội:</u></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phở Gia Truyền: 49 B&aacute;t Đ&agrave;n, Q.Ho&agrave;n Kiếm</p>\r\n	</li>\r\n	<li>\r\n	<p>Phở Th&igrave;n: 13 L&ograve; Đ&uacute;c, Q.Hai B&agrave; Trưng</p>\r\n	</li>\r\n	<li>\r\n	<p>Phở Vui (chuy&ecirc;n b&ograve;): 25 H&agrave;ng Giấy, Q.Ho&agrave;n Kiếm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>3. Phở Cuốn H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="dac-san-ha-noi" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1611204023/blog/mfx04dfqytdfoukqoixv.webp" /></p>\r\n\r\n<p>Phở cuốn H&agrave; Nội l&agrave; m&oacute;n ngon H&agrave; Nội quen thuộc của người d&acirc;n thủ đ&ocirc;. M&oacute;n ăn được l&agrave;m từ b&aacute;nh phở, g&oacute;i b&ecirc;n trong l&agrave; thịt, rau chả, h&agrave;nh, gi&aacute;, v.v... Vị ngọt thanh vừa miệng từ thịt, rau v&agrave; nước chấm khiến n&oacute; trở th&agrave;nh m&oacute;n ăn xế kho&aacute;i khẩu thơm ngon lại kh&ocirc;ng qu&aacute; đầy bụng.</p>\r\n\r\n<p><strong><u>Địa chỉ ăn phở cuốn ngon:</u></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phở cuốn Hương Mai: 25 Ngũ X&aacute;, Q.Ba Đ&igrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Phở cuốn Hưng Bền: 35 Nguyễn Khắc Hiếu, Q.Ba Đ&igrave;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Phở cuốn Ngũ X&aacute;: 233A T&ocirc; Hiệu, Q.Cầu Giấy</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>4. B&uacute;n Chả H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="bun-cha-ha-noi" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1611204575/blog/smcot2lbqbaevozcrhdg.webp" /></p>\r\n\r\n<p>Thoạt nh&igrave;n, bạn c&oacute; thể nghĩ ngay đến m&oacute;n b&uacute;n thịt nướng trong Nam, nhưng kh&ocirc;ng nh&eacute;, hương vị nước chấm của b&uacute;n chả H&agrave; Nội ho&agrave;n to&agrave;n kh&aacute;c biệt. Một phần b&uacute;n chả gồm: b&uacute;n, nước chấm vị chua ngọt c&oacute; k&egrave;m su h&agrave;o v&agrave; c&agrave; rốt ng&acirc;m giấm, th&ecirc;m v&agrave;i miếng chả thịt nướng thơm phức dậy m&ugrave;i than lửa v&agrave; hạt ti&ecirc;u. Khi ăn, d&ugrave;ng k&egrave;m rau sống, mỗi thứ một ch&uacute;t h&ograve;a quyện c&ugrave;ng nhau tạo n&ecirc;n vị đậm đ&agrave;, ngon kh&oacute; cưỡng.</p>\r\n\r\n<p><strong><u>Địa chỉ b&aacute;n b&uacute;n chả H&agrave; Nội:&nbsp;</u></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>B&uacute;n chả Cửa Đ&ocirc;ng: 41 Cửa Đ&ocirc;ng, Q.Ho&agrave;n Kiếm</p>\r\n	</li>\r\n	<li>\r\n	<p>B&uacute;n chả Đắc Kim: 1 H&agrave;ng M&agrave;nh, Q.Ho&agrave;n Kiếm</p>\r\n	</li>\r\n	<li>\r\n	<p>B&uacute;n chả Sinh Từ: 57 Nguyễn Khuyến, Q.Đống Đa</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Tour ẩm thực phố cổ</p>\r\n\r\n<p>★ 4.8</p>\r\n\r\n<p>(614)</p>\r\n\r\n<p>&bull;</p>\r\n\r\n<p>4K+ Đ&atilde; đặt</p>\r\n\r\n<p>X&aacute;c nhận tức thời</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Từ&nbsp;<strong>₫ 405,609</strong></p>\r\n\r\n<h3><strong>5. B&uacute;n Mọc Dọc M&ugrave;ng H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="mon-ngon-ha-noi-5" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1596029303/blog/caocr0tzcw2fdffa7cwj.webp" /></p>\r\n\r\n<p>&copy;vietnamnet.vn</p>\r\n\r\n<p>B&uacute;n mọc dọc m&ugrave;ng l&agrave; m&oacute;n b&uacute;n rất đ&aacute;ng thử khi du lịch H&agrave; Nội. Th&agrave;nh phần đơn giản với b&uacute;n, khoanh thịt ch&acirc;n gi&ograve;, vi&ecirc;n mọc, k&egrave;m nước ninh từ xương. Vi&ecirc;n mọc tr&ograve;n thơm c&ugrave;ng với sợi mang gi&ograve;n dai c&ugrave;ng với đ&oacute; l&agrave; vị cay của ớt, khiến thực kh&aacute;ch kh&ocirc;ng khỏi xu&yacute;t xoa khi thưởng thức. Thiếu đi m&oacute;n đặc sản H&agrave; Nội n&agrave;y th&igrave; chuyến du lịch của bạn cũng k&eacute;m phần đậm đ&agrave; đấy!</p>\r\n\r\n<p><strong><u>Tiệm b&uacute;n mọc dọc m&ugrave;ng H&agrave; Nội:</u></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>B&uacute;n mọc H&agrave;ng Lược: 57-59 H&agrave;ng Lược, Q.Ho&agrave;n Kiếm</p>\r\n	</li>\r\n	<li>\r\n	<p>B&uacute;n mọc sườn chua X&atilde; Đ&agrave;n: 181 X&atilde; Đ&agrave;n, Phương Li&ecirc;n, Q.Đống Đa</p>\r\n	</li>\r\n	<li>\r\n	<p>B&uacute;n mọc ch&acirc;n g&agrave;: 45A Mai Hắc Đế, B&ugrave;i Thị Xu&acirc;n, Q.Ho&agrave;n Kiếm</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>6. B&uacute;n Ri&ecirc;u Cua H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="mon-ngon-ha-noi-7" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1596029295/blog/da3pizwongsr5mh4a5xl.webp" /></p>\r\n\r\n<p>&copy;24h.com.vn</p>\r\n\r\n<p>Nguy&ecirc;n liệu ch&iacute;nh l&agrave;m n&ecirc;n t&ocirc; b&uacute;n ri&ecirc;u cua H&agrave; Nội đặc sắc đ&oacute; l&agrave; cua đồng tươi gi&atilde; nhuyễn, lọc lấy nước đun nhỏ lửa để thịt cua đ&oacute;ng th&agrave;nh khối v&agrave; nổi tr&ecirc;n mặt nước l&egrave;o. Cho th&ecirc;m c&agrave; chua đỏ, mắm t&ocirc;m, h&agrave;nh xanh, đậu chi&ecirc;n v&agrave;ng, miếng gi&ograve; ăn k&egrave;m rau v&agrave; b&uacute;n l&agrave; đủ vị!</p>\r\n\r\n<p><strong><u>Qu&aacute;n b&uacute;n ri&ecirc;u cua H&agrave; Nội ngon:</u></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>B&uacute;n ri&ecirc;u phố Quang Trung: 2F Quang Trung, Ho&agrave;n Kiếm</p>\r\n	</li>\r\n	<li>\r\n	<p>B&uacute;n ri&ecirc;u phố Nguyễn Si&ecirc;u: 32 Nguyễn Si&ecirc;u, Ho&agrave;n Kiếm</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>7. B&aacute;nh Đa Cua H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="mon-ngon-ha-noi-8" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1596029294/blog/cyu9an476aezi7topycd.webp" /></p>\r\n\r\n<p>&copy;aFamily.vn</p>\r\n\r\n<p>Bạn c&oacute; thể t&igrave;m thấy b&aacute;nh đa cua tại nhiều th&agrave;nh phố kh&aacute;c tại miền Bắc, nhưng hương vị b&aacute;nh đa cua H&agrave; Nội mộc mạc, giản dị l&agrave; điều khiến người ta kh&oacute; qu&ecirc;n. Sợi b&aacute;nh đa dai dai ăn c&ugrave;ng nước d&ugrave;ng đậm vị, th&ecirc;m ch&uacute;t giấm chua thanh thanh v&agrave; ớt cay nồng l&agrave; đ&uacute;ng chuẩn.</p>\r\n\r\n<p><strong><u>Chỗ ăn b&aacute;nh đa cua ngon ở H&agrave; Nội:</u></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>B&aacute;nh đa cua H&agrave;ng Đồng: 8 H&agrave;ng Đồng, Q.Ho&agrave;n Kiếm</p>\r\n	</li>\r\n	<li>\r\n	<p>B&aacute;nh đa cua Phố Trung Liệt: 143 Trung Liệt, Q.Đống Đa</p>\r\n	</li>\r\n	<li>\r\n	<p>B&aacute;nh đa cua v&agrave; miến trộn Huỳnh Th&uacute;c Kh&aacute;ng: 16 Huỳnh Th&uacute;c Kh&aacute;ng, Q.Đống Đa</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>8. X&ocirc;i Kh&uacute;c H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="mon-ngon-ha-noi-15" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1596029285/blog/yqq3cblltu4xqxtgf5nk.webp" /></p>\r\n\r\n<p>&copy;baomoi.com</p>\r\n\r\n<p>X&ocirc;i kh&uacute;c hay b&aacute;nh kh&uacute;c l&agrave; một trong những m&oacute;n ăn tạo n&ecirc;n n&eacute;t đẹp ẩm thực cổ truyền H&agrave; Nội. B&aacute;nh c&oacute; dạng khối tr&ograve;n, b&ecirc;n trong nh&acirc;n đậu xanh nhuyễn c&ugrave;ng thịt heo cắt nhỏ, c&ugrave;ng gia vị. Mua b&aacute;nh kh&uacute;c l&agrave;m qu&agrave; đặc sản H&agrave; Nội sẽ rất tuyệt n&oacute; chứa đựng đầy đủ hương đồng cỏ nội, m&ugrave;i vị l&uacute;a nếp qu&ecirc; hương.</p>\r\n\r\n<p><strong><u>Địa chỉ mua b&aacute;nh kh&uacute;c H&agrave; Nội ngon</u></strong><strong>:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>B&aacute;nh kh&uacute;c C&ocirc; Lan: 69B Nguyễn C&ocirc;ng Trứ, Phố Huế, Q.Hai B&agrave; Trưng</p>\r\n	</li>\r\n	<li>\r\n	<p>B&aacute;nh kh&uacute;c Qu&acirc;n: 35 Cầu Gỗ, H&agrave;ng Bạc, Q.Ho&agrave;n Kiếm</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>9. B&aacute;nh M&igrave; Sốt Vang H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="bo-xot-vang-ha-noi" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1611205352/blog/ujdcaeyiswyhgnjhqq86.webp" /></p>\r\n\r\n<p>Ảnh: Pixabay</p>\r\n\r\n<p>Thời tiết l&agrave;nh lạnh tại H&agrave; Nội l&agrave; l&uacute;c tuyệt nhất để bạn thưởng thức m&oacute;n b&aacute;nh m&igrave; sốt vang. B&aacute;nh m&igrave; nướng v&agrave;ng gi&ograve;n chấm c&ugrave;ng sốt vang đậm đ&agrave; c&ugrave;ng thịt b&ograve; mềm. M&oacute;n ăn s&aacute;ng nhẹ nh&agrave;ng, vừa đủ no để bạn bắt đầu một ng&agrave;y mới l&agrave; đ&acirc;y chứ đ&acirc;u.&nbsp;</p>\r\n\r\n<p><strong><u>Ăn b&aacute;nh m&igrave; sốt vang ở đ&acirc;u ngon?</u></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Beefsteak Sauce Bread Shop: ng&otilde; 35 Th&aacute;i Thịnh, ng&atilde; Tư Sở, Đống Đa</p>\r\n	</li>\r\n	<li>\r\n	<p>Tiệm số 252 H&agrave;ng B&ocirc;ng, Cửa Nam, Ho&agrave;n Kiếm</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&acirc;m &ndash; B&aacute;nh m&igrave; sốt vang Đ&igrave;nh Ngang: 30 Đ&igrave;nh Ngang, quận Ho&agrave;n Kiếm</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>10. B&aacute;nh Gi&ograve; Đ&ocirc;ng C&aacute;c H&agrave; Nội</strong></h3>\r\n\r\n<p><img alt="banh-gio-dong-cac-ha-noi" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1611205269/blog/ahoihfpcnx6qez4upins.webp" /></p>\r\n\r\n<p>Ảnh: Pixabay</p>\r\n\r\n<p>B&aacute;nh gi&ograve; l&agrave; m&oacute;n ăn d&acirc;n d&atilde; của người d&acirc;n H&agrave; Nội, rất dễ t&igrave;m thấy ở c&aacute;ch h&agrave;ng qu&aacute;n ăn vặt hay được rao b&aacute;n tr&ecirc;n c&aacute;c con phố. B&aacute;nh được g&oacute;i cẩn thận trong lớp l&aacute; chuối d&agrave;y v&agrave; cầu kỳ. Phần nh&acirc;n thịt mặn b&ecirc;n trong c&oacute; vị vừa miệng v&agrave; b&eacute;o ngậy. Một chiếc b&aacute;nh gi&ograve; l&uacute;c đ&oacute;i sẽ gi&uacute;p bạn giữ ấm v&agrave; no l&acirc;u trong suốt nhiều tiếng đồng hồ.</p>\r\n\r\n<p><u><strong>Qu&aacute;n b&aacute;n b&aacute;nh gi&ograve; Đ&ocirc;ng C&aacute;c ngon:</strong></u></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>33 Đ&ocirc;ng C&aacute;c, quận Đống Đa, H&agrave; Nội</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>11. Caf&eacute; Trứng - Giảng</strong></h3>\r\n\r\n<p><a href="https://www.klook.com/vi/city/34-hanoi-things-to-do/" target="_blank"><img alt="mon-ngon-ha-noi" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1000/v1657881365/blog/bphgqlxndkwclxcwuqje.webp" /></a></p>\r\n', 1, '1665046074_an-hanoi.jpg');

-- Dumping structure for table bansach.orderdetails
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bansach.orderdetails: ~82 rows (approximately)
INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
	(1, 2, 3, 12, 200000000),
	(2, 3, 3, 20, 300000000),
	(3, 7, 3, 1, 30000),
	(4, 7, 7, 1, 100000),
	(5, 8, 9, 1, 100000),
	(6, 8, 8, 1, 200000),
	(7, 8, 6, 1, 30000),
	(8, 8, 5, 1, 400000),
	(9, 9, 10, 1, 50000000),
	(10, 9, 3, 1, 30000),
	(11, 11, 10, 1, 50000000),
	(12, 11, 7, 1, 100000),
	(13, 21, 10, 1, 50000000),
	(14, 21, 1, 1, 120000),
	(15, 23, 5, 2, 400000),
	(16, 23, 1, 1, 120000),
	(17, 28, 10, 1, 50000000),
	(18, 30, 10, 1, 50000000),
	(19, 30, 3, 1, 30000),
	(20, 30, 9, 1, 100000),
	(21, 33, 5, 3, 400000),
	(22, 33, 1, 3, 120000),
	(23, 34, 5, 1, 400000),
	(24, 34, 8, 1, 200000),
	(26, 35, 10, 1, 50000000),
	(27, 35, 1, 1, 120000),
	(28, 35, 8, 1, 200000),
	(29, 36, 10, 1, 50000000),
	(30, 36, 1, 1, 120000),
	(31, 36, 8, 1, 200000),
	(32, 37, 9, 1, 100000),
	(33, 37, 1, 1, 120000),
	(34, 39, 11, 1, 10000),
	(35, 39, 9, 1, 100000),
	(36, 39, 12, 1, 200000),
	(37, 40, 11, 2, 10000),
	(38, 40, 5, 1, 400000),
	(39, 40, 12, 1, 200000),
	(40, 40, 7, 1, 100000),
	(41, 40, 10, 1, 50000000),
	(42, 40, 4, 1, 100000),
	(43, 41, 11, 1, 10000),
	(44, 41, 7, 1, 100000),
	(45, 41, 5, 1, 400000),
	(46, 42, 7, 2, 100000),
	(47, 42, 5, 5, 400000),
	(48, 42, 3, 1, 30000),
	(49, 42, 12, 1, 200000),
	(50, 42, 1, 2, 120000),
	(51, 42, 4, 1, 100000),
	(52, 43, 8, 3, 200000),
	(53, 43, 14, 1, 100000),
	(54, 43, 12, 1, 200000),
	(55, 44, 15, 2, 2000),
	(56, 46, 9, 1, 100000),
	(57, 47, 14, 1, 100000),
	(58, 47, 12, 3, 200000),
	(59, 48, 10, 1, 50000000),
	(60, 48, 14, 2, 100000),
	(61, 49, 12, 1, 200000),
	(62, 54, 14, 1, 100000),
	(63, 55, 14, 1, 100000),
	(64, 56, 14, 1, 100000),
	(65, 57, 14, 1, 100000),
	(66, 58, 14, 1, 100000),
	(67, 59, 14, 1, 100000),
	(68, 60, 14, 1, 100000),
	(69, 61, 14, 1, 100000),
	(70, 62, 14, 1, 100000),
	(71, 63, 9, 1, 100000),
	(72, 64, 9, 1, 100000),
	(73, 65, 14, 1, 100000),
	(74, 67, 9, 1, 100000),
	(75, 68, 8, 1, 200000),
	(76, 69, 14, 1, 100000),
	(77, 69, 9, 1, 100000),
	(78, 73, 14, 1, 100000),
	(79, 76, 14, 1, 100000),
	(80, 77, 14, 1, 100000),
	(81, 78, 12, 1, 200000),
	(82, 79, 14, 1, 100000),
	(83, 80, 14, 1, 100000);

-- Dumping structure for table bansach.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bansach.orders: ~38 rows (approximately)
INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`) VALUES
	(1, 2, '2023-02-06', 200000000, 1),
	(2, 2, '2023-02-18', 100000000, 1),
	(8, 5, '2023-02-22', 636400, 1),
	(11, 5, '2023-02-19', 45080000, 1),
	(41, 7, '2023-02-15', 429000, 1),
	(48, 9, '2023-02-10', 45180000, 1),
	(49, 11, '2023-02-27', 180000, 0),
	(50, 11, '2023-02-27', 0, 0),
	(51, 11, '2023-02-27', 0, 0),
	(52, 11, '2023-02-27', 0, 1),
	(53, 12, '2023-03-31', 90000, 1),
	(54, 12, '2023-03-31', 90000, 1),
	(55, 12, '2023-03-31', 90000, 1),
	(56, 12, '2023-03-31', 90000, 1),
	(57, 12, '2023-03-31', 90000, 1),
	(58, 12, '2023-03-31', 90000, 1),
	(59, 12, '2023-03-31', 90000, 1),
	(60, 12, '2023-03-31', 90000, 1),
	(61, 12, '2023-03-31', 90000, 1),
	(62, 12, '2023-03-31', 90000, 1),
	(63, 12, '2023-03-31', 90000, 1),
	(64, 12, '2023-03-31', 90000, 1),
	(65, 12, '2023-03-31', 90000, 1),
	(66, 12, '2023-03-31', 0, 1),
	(67, 12, '2023-03-31', 90000, 1),
	(68, 12, '2023-04-02', 180000, 1),
	(69, 12, '2023-04-02', 180000, 1),
	(70, 12, '2023-04-02', 0, 1),
	(71, 12, '2023-04-02', 0, 1),
	(72, 12, '2023-04-02', 0, 1),
	(73, 12, '2023-04-02', 90000, 1),
	(74, 12, '2023-04-02', 0, 1),
	(75, 12, '2023-04-02', 0, 1),
	(76, 12, '2023-04-02', 90000, 1),
	(77, 12, '2023-04-02', 90000, 1),
	(78, 12, '2023-04-02', 180000, 1),
	(79, 12, '2023-04-02', 90000, 1),
	(80, 12, '2023-04-02', 90000, 1);

-- Dumping structure for table bansach.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `description` varchar(400) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `age_from` int(11) DEFAULT NULL,
  `age_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bansach.products: ~14 rows (approximately)
INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `photo`, `price`, `discount`, `category_id`, `age_from`, `age_to`) VALUES
	(1, 'Ăn uống thông minh     ', '<p><em>Ăn uống th&ocirc;ng minh &nbsp; &nbsp;</em></p>\r\n', '<p><em>Ăn uống th&ocirc;ng minh &nbsp; &nbsp;</em></p>\r\n', 1, '1670828459_đinhuong2.jpg', 120000, 10, 4, 16, 50),
	(2, 'Dinh dưỡng tối ưu', '<p>Dinh dưỡng tối ưu</p>\r\n', '<p>Dinh dưỡng tối ưu</p>\r\n', 1, '1670828426_dinh-duong.jpg', 200000, 15, 15, NULL, NULL),
	(3, 'Nghệ Thuật Tinh Tế     ', '<p>Nghệ Thuật Tinh Tế &nbsp; &nbsp;&nbsp;</p>\r\n', '<h1>Nghệ Thuật Tinh Tế &nbsp; &nbsp;&nbsp;</h1>\r\n', 1, '1670828368_kinangsong2.jpg', 30000, 30, 4, NULL, NULL),
	(4, 'Đi tìm lẽ sống', '<p>Đi t&igrave;m lẽ sống</p>\r\n', '<p>Đi t&igrave;m lẽ sống</p>\r\n', 1, '1670828329_kinangsong3.jpg', 100000, 10, 4, NULL, NULL),
	(5, 'Đắc Nhân Tâm', '<p>Đắc Nh&acirc;n T&acirc;m</p>\r\n', '<p>Đắc Nh&acirc;n T&acirc;m</p>\r\n', 1, '1670828285_dac-nhan-tam.jpg', 400000, 15, 4, NULL, NULL),
	(6, 'Tôi là BETO', '<p>T&ocirc;i l&agrave; BETO</p>\r\n', '<p>T&ocirc;i l&agrave; BETO</p>\r\n', 1, '1670828214_tthuyet4.jpg', 30000, 12, 14, NULL, NULL),
	(7, 'Làm bạn với bầu trời', '<p>L&agrave;m bạn với bầu trời</p>\r\n', '<p>L&agrave;m bạn với bầu trời</p>\r\n', 1, '1670828180_tthuyet3.jpg', 100000, 20, 14, NULL, NULL),
	(8, 'Bố Già', '<p>Bố Gi&agrave;</p>\r\n', '<p>Bố Gi&agrave;</p>\r\n', 1, '1670828140_tthuyet2.jpg', 200000, 10, 14, NULL, NULL),
	(9, 'Thị trấn vắng', '<p>Thị trấn vắng</p>\r\n', '<p>Thị trấn vắng</p>\r\n', 1, '1670828070_thi-tran-vang.jpg', 100000, 10, 10, NULL, NULL),
	(10, 'Ngôn tình Trung Quốc', '<p>Ng&ocirc;n t&igrave;nh Trung Quốc</p>\r\n', '<p>Ng&ocirc;n t&igrave;nh Trung Quốc</p>\r\n', 1, '1670828019_ngontinh4.jpg', 50000000, 10, 5, NULL, NULL),
	(11, 'Tấm cám  ', '<p>Tấm c&aacute;m&nbsp;</p>\r\n', '<p>Tấm c&aacute;m&nbsp;</p>\r\n', 1, '1670827936_truyen-tranh4.jpg', 10000, 10, 13, NULL, NULL),
	(12, 'Người vợ hiền  ', '<p>Người vợ hiền</p>\r\n', '<p>Người vợ hiền</p>\r\n', 1, '1670827878_truyen-tranh5.jpg', 200000, 10, 13, 5, 30),
	(14, 'Chú mèo Diher  ', '<p>Ch&uacute; m&egrave;o Diher</p>\r\n', '<p>Ch&uacute; m&egrave;o Diher</p>\r\n', 1, '1670827839_truyen-tranh2.jpg', 100000, 10, 13, 6, 26),
	(15, 'Hecqueen và ba quả táo vàng  ', '<p>Hesqueen v&agrave; ba quả t&aacute;o v&agrave;ng</p>\r\n', '<p>Hesqueen v&agrave; ba quả t&aacute;o v&agrave;ng</p>\r\n', 1, '1677072789_1670827806_truyen-tranh1.jpg', 45000, 10, 13, 6, 12);

-- Dumping structure for table bansach.rating
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bansach.rating: ~6 rows (approximately)
INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
	(1, 3, 4),
	(2, 4, 5),
	(3, 5, 3),
	(4, 6, 2),
	(5, 9, 5),
	(6, 8, 5);

-- Dumping structure for table bansach.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table bansach.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `password`, `age`) VALUES
	(1, 'Nguyễn Văn A', 'nva@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
	(2, 'Nguyễn Văn B', 'nvb@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
	(3, 'Lê Thị Thu Thảo   ', 'Thao0818@gmail.com', '202cb962ac59075b964b07152d234b70', 12);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
