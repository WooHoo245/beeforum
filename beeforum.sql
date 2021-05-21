-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 12:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beeforum`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatter_categories`
--

CREATE TABLE `chatter_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_categories`
--

INSERT INTO `chatter_categories` (`id`, `parent_id`, `order`, `name`, `color`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'LIS', '#5680E9', 'tvtth', NULL, NULL),
(2, NULL, 2, 'Đoàn Khoa', '#085F63', 'doan', NULL, NULL),
(3, NULL, 3, 'LCH', '#5588A3', 'lch', NULL, NULL),
(4, NULL, 4, 'Club', '#84CEEB', 'club', NULL, NULL),
(5, NULL, 5, 'Books Review', '#E6B89C', 'books_review', NULL, NULL),
(6, NULL, 6, 'New Arrival', '#EAD2AC', 'new', NULL, NULL),
(7, NULL, 7, 'Survival Tips', '#5AB9EA', 'tip', NULL, NULL),
(8, NULL, 8, 'Bee Store', '#D698B9', 'store', NULL, NULL),
(9, NULL, 9, 'Jobs Review', '#32DBC6', 'job_review', NULL, NULL),
(10, NULL, 10, 'Part-time Jobs', '#49BEB7', 'part-time_jobs', NULL, NULL),
(11, NULL, 11, 'Lecturer\'s Info', '#FFBEA3', 'contact_lecturer', NULL, NULL),
(12, 4, 1, 'PROLIS', '#00334E', 'prolis', NULL, NULL),
(13, 4, 2, 'VoLIS', '#038C65', 'volis', NULL, NULL),
(14, 4, 3, 'MSLIS', '#D96685', 'mslis', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chatter_discussion`
--

CREATE TABLE `chatter_discussion` (
  `id` int(10) UNSIGNED NOT NULL,
  `chatter_category_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `answered` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '#232629',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_reply_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_discussion`
--

INSERT INTO `chatter_discussion` (`id`, `chatter_category_id`, `title`, `user_id`, `sticky`, `views`, `answered`, `created_at`, `updated_at`, `slug`, `color`, `deleted_at`, `last_reply_at`) VALUES
(23, 14, 'THÔNG BÁO TÂN CHỦ NHIỆM♥️♥️', 4, 0, 14, 0, '2020-12-07 20:39:34', '2021-01-03 08:08:44', 'thong-bao-tan-chu-nhiem', '#74b1ee', NULL, '2020-12-08 20:10:44'),
(24, 14, 'TẠM HOÃN KHAI MẠC HỘI THAO SINH VIÊN 2020', 5, 0, 5, 0, '2020-12-10 01:29:15', '2021-01-03 08:08:39', 'tam-hoan-khai-mac-hoi-thao-sinh-vien-2020', '#0f171f', NULL, '2020-12-10 08:29:15'),
(25, 13, '[🌷🌷COMING SOON🌷🌷]', 4, 0, 19, 0, '2020-12-10 08:09:27', '2020-12-22 02:14:18', 'coming-soon', '#e5e980', NULL, '2020-12-11 03:48:25'),
(27, 12, '[ BẠN THÍCH ĐI ĐƯỜNG QUYỀN NHƯNG LẠI SỢ THIẾU TIỀN ]', 4, 0, 11, 0, '2020-12-10 08:12:26', '2021-01-03 08:07:49', 'ban-thich-di-duong-quyen-nhung-lai-so-thieu-tien', '#61a7ed', NULL, '2020-12-10 15:12:26'),
(28, 2, '|HỘI TRẠI TẬP HUẤN 2020| ♥️♥️🍀🍀', 5, 0, 12, 0, '2020-12-10 08:16:24', '2021-01-05 07:07:20', 'hoi-trai-tap-huan-2020', '#73e27a', NULL, '2021-01-05 07:07:20'),
(29, 3, 'MỘT NGÀY LÀ CÁN BỘ HỘI, MÃI MÃI LÀ CÁN BỘ HỘI ♥️♥️♥️♥️', 5, 0, 66, 0, '2020-12-10 08:23:37', '2021-01-04 10:05:12', 'mot-ngay-la-can-bo-hoi-mai-mai-la-can-bo-hoi', '#0c66c0', NULL, '2020-12-20 06:00:09'),
(32, 5, '👉BƯỚC CHẬM LẠI GIỮA THẾ GIAN VỘI VÃ👈', 7, 0, 35, 0, '2020-12-10 08:48:32', '2020-12-28 21:06:31', 'buoc-cham-lai-giua-the-gian-voi-va', '#f3b4f0', NULL, '2020-12-10 15:48:32'),
(36, 1, '[LỜI CẢM ƠN THÁNG 11]', 6, 0, 18, 0, '2020-12-12 08:14:36', '2021-01-03 01:59:57', 'loi-cam-on-thang-11-1', '#e98cad', NULL, '2020-12-19 20:43:31'),
(38, 6, 'MICROSOFT RA MẮT SURFACE LAPTOP GO GIÁ RẺ🍀💻', 6, 0, 15, 0, '2020-12-26 09:31:49', '2021-01-05 07:05:03', 'microsoft-ra-mat-surface-laptop-go-gia-re', '#6aabeb', NULL, '2020-12-26 16:31:49'),
(39, 10, 'CẦN GẤP 20 BẠN PHỤC VỤ TIỆC😀😀', 6, 0, 9, 0, '2020-12-28 21:58:37', '2021-01-03 08:08:27', 'can-gap-20-ban-phuc-vu-tiec', '#79b5f1', NULL, '2020-12-29 04:58:37'),
(40, 8, 'BAO LÌ XÌ XINH XINH CHO TẾT 2021🎟️🎟️', 6, 0, 4, 0, '2020-12-30 21:03:34', '2021-01-04 10:06:02', 'bao-li-xi-xinh-xinh-cho-tet-2021', '#f43535', NULL, '2020-12-31 04:03:34'),
(41, 11, 'THÔNG TIN GIẢNG VIÊN \"ThS. NGUYỄN TẤN CÔNG\"🧑‍💻', 4, 0, 2, 0, '2020-12-30 21:15:14', '2020-12-30 21:16:07', 'thong-tin-giang-vien-ths-nguyen-tan-cong', '#57eedb', NULL, '2020-12-31 04:15:14'),
(42, 11, 'THÔNG TIN GIẢNG VIÊN \"ThS. TRẦN ĐÌNH ANH HUY\"🧑‍🏫👨‍🏫', 7, 0, 1, 0, '2020-12-30 21:22:56', '2020-12-30 21:22:56', 'thong-tin-giang-vien-ths-tran-dinh-anh-huy', '#dcc3f4', NULL, '2020-12-31 04:22:56'),
(43, 11, 'THÔNG TIN GIẢNG VIÊN \"ThS. NGUYỄN DANH MINH TRÍ\"👨‍🏫💻', 7, 0, 2, 0, '2020-12-30 21:36:22', '2021-01-03 01:55:36', 'thong-tin-giang-vien-ths-nguyen-danh-minh-tri', '#234366', NULL, '2020-12-31 04:36:22'),
(44, 11, 'THÔNG TIN GIẢNG VIÊN \"TS. NGÔ THỊ HUYỀN\"👩‍🏫🧑‍💻', 4, 0, 2, 0, '2020-12-30 21:43:56', '2021-01-02 20:21:11', 'thong-tin-giang-vien-ts-ngo-thi-huyen', '#fda1d1', NULL, '2020-12-31 04:43:56'),
(45, 11, 'THÔNG TIN GIẢNG VIÊN \"ThS. NGUYỄN VĂN HIỆP\"👨‍🏫👨‍💼', 4, 0, 6, 0, '2020-12-30 21:49:48', '2021-01-05 06:50:59', 'thong-tin-giang-vien-ths-nguyen-van-hiep', '#24ade7', NULL, '2020-12-31 04:49:48'),
(46, 8, 'QUÀ TẾT TỐT - CHỐT CAMELLIA VỚI LOẠT HỘP QUÀ TẾT CHẤT LƯỢNG GIÁ TỐT😚😚', 11, 0, 4, 0, '2021-01-04 19:58:36', '2021-01-05 07:04:28', 'qua-tet-tot-chot-camellia-voi-loat-hop-qua-tet-chat-luong-gia-tot', '#12bcee', NULL, '2021-01-04 19:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `chatter_post`
--

CREATE TABLE `chatter_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `chatter_discussion_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `markdown` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_post`
--

INSERT INTO `chatter_post` (`id`, `chatter_discussion_id`, `user_id`, `body`, `created_at`, `updated_at`, `markdown`, `locked`, `deleted_at`) VALUES
(27, 23, 4, '<p><strong>|KIỆN TOÀN MSLIS|</strong></p>\r\n<p>📢📢📢 Lại một nhiệm kỳ nữa đi qua với nhiều đóng góp tâm huyết của BCN. Và năm nay, CLB MSLIS đã kiện toàn thành công với các bạn ban chủ nhiệm mới. 🎊🎊🎊</p>\r\n<p>Buổi kiện toàn vinh dự khi có sự góp mặt:</p>\r\n<p>✅ Về phía Chi Uỷ - BCN Khoa:</p>\r\n<p>Thạc sĩ: Trần Đình Anh Huy - Trợ lý công tác sinh viên.</p>\r\n<p>✅ Về phía LC HSV Khoa:</p>\r\n<p>Đồng chí Đỗ Hà Phương Thảo - LCH phó LC HSV Khoa.</p>\r\n<p>✅ Và hơn 30 bạn sinh viên thuộc BCN, thành viên CLB Văn nghệ Thể thao MSLIS.</p>\r\n<p>🔥🔥🔥 Sau khi xem lại những gì đã làm được và những thiếu sót, CLB rút ra được kinh nghiệm cho hành trình tiếp theo cùng với sự đồng hành của các bạn BCN mới nhiệm kỳ 2020 - 2021, gồm các đồng chí:</p>\r\n<p>1️⃣ Đồng chí: Phan Thanh Tuyền - Chủ nhiệm CLB.</p>\r\n<p>2️⃣ Đồng chí: Đinh Thị Cẩm Tú - Phó chủ nhiệm CLB.</p>\r\n<p>3️⃣ Đồng chí: Trần Cao Hoàng Thân - Phó chủ nhiệm CLB.</p>\r\n<p>4️⃣ Đồng chí: Nguyễn Văn Đức - Trưởng nhóm hát CLB.</p>\r\n<p>5️⃣ Đồng chí: Phạm Ngọc Gia Hân - Trưởng nhóm múa CLB.</p>\r\n<p>6️⃣ Đồng chí: Phạm Đình Minh Tiến - Trưởng nhóm nhảy CLB.</p>\r\n<p>7️⃣ Đồng chí: Lâm Thị Ái Linh - Trưởng nhóm kịch CLB.</p>\r\n<p>🎉🎉🎉 CLB chúc các bạn có một nhiệm kỳ công tác thành công tốt đẹp.</p>\r\n<p>🍀🍀🍀 Qua đó, MSLIS xin chân thành cảm ơn BCN nhiệm kỳ 2019 - 2020 đã đóng góp rất nhiều công sức lẫn tâm tư tình cảm cho CLB, tạo tiền đề vững chắc để MSLIS có thể phát triển mạnh hơn nữa trong tương lai sắp tới.</p>\r\n<p>Một lần nữa, xin chân thành cảm ơn. ❤️❤️❤️</p>\r\n<p>#KIENTOAN</p>\r\n<p>#CLBMSLIS</p>\r\n<p><img src=\"https://scontent.fvca1-2.fna.fbcdn.net/v/t1.0-9/129960013_2833954610209478_1680386956135257847_n.jpg?_nc_cat=101&amp;ccb=2&amp;_nc_sid=8bfeb9&amp;_nc_ohc=8PE-qs3ICvEAX-_s61g&amp;_nc_ht=scontent.fvca1-2.fna&amp;oh=eecee5be4aef030a2d0d04d0e940cab6&amp;oe=5FF2B893\" width=\"860\" height=\"645\" /></p>', '2020-12-07 20:39:34', '2020-12-07 20:39:34', 0, 0, NULL),
(28, 23, 4, '<p>Ch&uacute;c mừng CLB m&igrave;nh nha &lt;3&nbsp;🥳🥳</p>', '2020-12-08 20:10:44', '2020-12-08 20:10:44', 0, 0, NULL),
(29, 24, 5, '<p><strong>|HỘI THAO SINH VI&Ecirc;N 2020|</strong></p>\r\n<p>MSLIS xin th&ocirc;ng b&aacute;o:</p>\r\n<p>Theo chỉ đạo của Nh&agrave; trường, trước t&igrave;nh h&igrave;nh dịch như hiện tại, HTSV 2020 phải tạm ho&atilde;n:</p>\r\n<p>- Các hoạt động tập thể (b&oacute;ng chuyền, b&oacute;ng đ&aacute;) BTC sẽ th&ocirc;ng b&aacute;o thời gian thi đấu trở lại cho đến khi c&oacute; chỉ đạo được ph&eacute;p tổ chức.</p>\r\n<p>- Khai mạc v&agrave;o ng&agrave;y 5/12/2020 cho đến khi có thông báo mới nhất.&nbsp;</p>\r\n<p>Riêng các hoạt động cá nhân (cờ vua, cờ tướng, bóng bàn và cầu lông) sẽ diễn ra bình thường theo kế hoạch.</p>\r\n<p>⏰ Thời gian cụ thể sẽ được th&ocirc;ng b&aacute;o sau.</p>\r\n<p>Mong c&aacute;c bạn th&ocirc;ng cảm v&agrave; nắm bắt th&ocirc;ng tin để chuẩn bị tinh thần thi đấu. Giữ g&igrave;n sức khoẻ an to&agrave;n cho bản th&acirc;n v&agrave; cộng đồng.</p>\r\n<p>MSLIS tr&acirc;n trọng cảm ơn ❤️</p>\r\n<p>#HOITHAOSINHVIEN2020</p>\r\n<p>#CLBMSLIS</p>', '2020-12-10 01:29:15', '2020-12-10 01:29:15', 0, 0, NULL),
(30, 25, 4, '<p>“Cỏ non xanh rợn chân trời</p>\r\n<p>Cành lê trắng, điểm một vài bông hoa”</p>\r\n<p>Các bạn đã cảm nhận được điều gì chưa?? 🤭</p>\r\n<p>Một mùa xuân nữa lại sắp đến, gạt bỏ những âu lo, gạt đi cái lạnh của mùa đông buốt giá, hòa mình vào không khí ấm áp, rộn ràng của những ngày xuân. ☀️</p>\r\n<p>Và cũng trong thời gian này, một chiến dịch tình nguyện được mong đợi nhất trong năm sắp quay trở lại. Cùng đoán chờ nhaaaa!!! 💃💃</p>\r\n<p>Hãy theo dõi fanpage Câu lạc bộ Tình nguyện VOLIS để cùng cập nhật những thông tin mới nhất nha! 😍😍</p>\r\n<p>Đố mấy bạn năm nay đi đâu nè :))</p>\r\n<p>#XTN2021</p>\r\n<p>#VOLIS</p>\r\n<p><img src=\"https://scontent-xsp1-2.xx.fbcdn.net/v/t1.0-9/130902188_2806630739574202_5236734054756362552_o.jpg?_nc_cat=104&amp;ccb=2&amp;_nc_sid=8bfeb9&amp;_nc_ohc=DygwizrsveYAX_i6kAq&amp;_nc_ht=scontent-xsp1-2.xx&amp;oh=ca2594f93a5ff623d8414da01a38037d&amp;oe=5FF806E1\" alt=\"130902188_2806630739574202_5236734054756362552_o.jpg?_nc_cat=104&amp;ccb=2&amp;_nc_sid=8bfeb9&amp;_nc_ohc=DygwizrsveYAX_i6kAq&amp;_nc_ht=scontent-xsp1-2.xx&amp;oh=ca2594f93a5ff623d8414da01a38037d&amp;oe=5FF806E1\" width=\"710\" height=\"473\"></p>', '2020-12-10 08:09:27', '2020-12-20 02:18:26', 0, 0, NULL),
(32, 27, 4, '<p>🥰Úi giời , chuyện nhỏ… Cứ để PROLIS lo !</p>\r\n<p>🎉Chương trình “ KĨ NĂNG CHINH PHỤC NHÀ TUYỂN DỤNG” của CLB sắp tới đây sẽ hứa hẹn mang đến nhiều thông tin bổ ích mới mẻ cho các bạn sinh viên về những vấn đề thường xuyên gặp phải khi đi phỏng vấn, những kĩ năng giúp bạn thành công ghi điểm trong mắt các nhà tuyển dụng.</p>\r\n<p>🔒Bạn gặp nhiều khó khăn trong việc viết CV .</p>\r\n<p>🔒Bạn thiếu tự tin khi giao tiếp.</p>\r\n<p>🔒Bạn chưa biết mình phải làm gì để gây ấn tượng tốt khi đi phỏng vấn.</p>\r\n<p>🔒Phải chăng bạn đang lo lắng về những câu hỏi bất ngờ mà các nhà tuyển dụng sẽ đưa ra ?</p>\r\n<p>🔑Vậy thì hỡi các bạn sinh viên nhà mình ơi còn chờ đợi gì mà không đến ngay với chúng tớ. Chương trình “KĨ NĂNG CHINH PHỤC NHÀ TUYỂN DỤNG”  của CLB  ProLis được tổ chức hằng năm với mong muốn tiếp thêm kiến thức và kĩ năng chinh phục các nhà tuyển dụng khó tính giúp các bạn sinh viên dễ dàng có được công việc mà mình mơ ước nhé.</p>\r\n<p>💓Ngoài ra góp mặt với chương trình này chúng tớ đã mời được một vị diễn giả siêu siêu dễ thương luôn nha ! </p>\r\n<p>Đó là ai 🤨 ?... hãy chờ đón nhé !</p>\r\n<p>⏰Thời gian dự kiến:</p>\r\n<p>Vào lúc đó  7 giờ, thứ 7, 19/12/2020</p>\r\n<p>🛎Tại trường ĐH Khoa học Xã hội và Nhân văn , CS Linh Trung – Thủ Đức</p>\r\n<p><img src=\"https://scontent-xsp1-2.xx.fbcdn.net/v/t1.0-9/130737791_1505565676306091_8073354421721971226_o.jpg?_nc_cat=106&amp;ccb=2&amp;_nc_sid=8bfeb9&amp;_nc_ohc=VAMYo0txU3YAX8QSH5j&amp;_nc_ht=scontent-xsp1-2.xx&amp;oh=4a1f57cfdaba4ce7c406401a39dc3051&amp;oe=5FF866D5\" alt=\"130737791_1505565676306091_8073354421721971226_o.jpg?_nc_cat=106&amp;ccb=2&amp;_nc_sid=8bfeb9&amp;_nc_ohc=VAMYo0txU3YAX8QSH5j&amp;_nc_ht=scontent-xsp1-2.xx&amp;oh=4a1f57cfdaba4ce7c406401a39dc3051&amp;oe=5FF866D5\" width=\"700\" height=\"700\"></p>', '2020-12-10 08:12:26', '2020-12-20 08:43:08', 0, 0, NULL),
(33, 28, 5, '<p><strong>💐💐 Ờ MẤY DINH G&Uacute;T CH&Oacute;P HTTH 2020 💐💐</strong></p>\r\n<p>⌛⌛Hội trại tập huấn 2020 đ&atilde; ch&iacute;nh thức kh&eacute;p lại với những kỉ niệm đ&aacute;ng nhớ cho tất cả trại sinh tham gia. ⌛⌛</p>\r\n<p>✨✨Với những hoạt động s&ocirc;i nổi trong 2 ng&agrave;y 28,29/11/2020 tại KDL Th&aacute;c Đ&aacute; H&agrave;n- Đồng Nai. HTTH đ&atilde; tạo n&ecirc;n những niềm vui trong c&aacute;c mật thư, c&aacute;c hoạt động dựng trại v&agrave; tr&ograve; chơi đầy th&uacute; vị, được thiết kế ho&agrave;n to&agrave;n bởi c&aacute;c trại sinh đầy s&aacute;ng tạo.&nbsp;</p>\r\n<p>👑Hội trại c&ograve;n mang đến những kh&ocirc;ng gian ấm c&uacute;ng, đầy cảm x&uacute;c với lửa trại v&agrave; trao khăn truyền lửa cho c&aacute;c mần non của Đo&agrave;n-Hội.</p>\r\n<p>💯💯HTTH cũng mang đến những điều &yacute; nghĩa, đầy gi&aacute; trị với buổi chia sẻ về chủ đề \" BREAK YOURSELF \" của 2 vị kh&aacute;ch mời.&nbsp;</p>\r\n<p>🎏🎏Thay mặt BTC HTTH 2020, xin gửi lời cảm ơn đến</p>\r\n<p>❇Th.S Trần Đ&igrave;nh Anh Huy- Trợ l&yacute; c&ocirc;ng t&aacute;c sinh vi&ecirc;n</p>\r\n<p>❇Đ/c Nguyễn Thị Thương- Nguy&ecirc;n Ph&oacute; chủ tịch Hội Sinh vi&ecirc;n trường ĐHKHXH&amp;NV</p>\r\n<p>Đ&atilde; d&agrave;nh thời gian qu&iacute; b&aacute;u đến tham dự v&agrave; mang đến cho HTTH những điều v&ocirc; c&ugrave;ng hấp dẫn, l&agrave; h&agrave;nh trang bổ &iacute;ch cho c&aacute;c bạn trại sinh.&nbsp;</p>\r\n<p>🍀🍀Hi vọng HTTH lần n&agrave;y sẽ mang lại nhiều gi&aacute; trị, kỉ niệm v&agrave; nhiều niềm vui. Ch&uacute;c c&aacute;c bạn trại sinh c&oacute; những bước tiến vững chắc trong hoạt động Đo&agrave;n - Hội sau n&agrave;y.</p>\r\n<p>#HTTH2020</p>\r\n<p>#BREAKYOURSELF</p>\r\n<p>#DOANHOIKHOATVTTH</p>\r\n<p><img src=\"https://scontent-xsp1-2.xx.fbcdn.net/v/t1.0-9/127818199_2769721229951043_6312633671180352556_o.jpg?_nc_cat=101&amp;ccb=2&amp;_nc_sid=730e14&amp;_nc_ohc=ebxDe1JleCoAX_sRRPX&amp;_nc_ht=scontent-xsp1-2.xx&amp;oh=e0f9c862399ed275efdad69cdc05d57f&amp;oe=5FF916CE\" alt=\"\" width=\"700\" height=\"467\" /></p>', '2020-12-10 08:16:24', '2020-12-10 08:16:24', 0, 0, NULL),
(34, 29, 5, '<p>| 20 giờ đếm ngược |</p>\r\n<p>😘Chỉ c&ograve;n chưa đầy 24 giờ nữa, ch&uacute;ng t&ocirc;i sẽ ch&iacute;nh thức chuyển giao giữa hai thế hệ c&aacute;n bộ Hội &ndash; thời khắc ch&uacute;ng t&ocirc;i phải rời đi.</p>\r\n<p>😘Ch&uacute;ng t&ocirc;i &ndash; Những người anh em trong gia đ&igrave;nh LC HSV Thư viện &ndash; Th&ocirc;ng tin học, đ&atilde; trải qua một năm đầy sự thăng trầm trong cảm x&uacute;c, trong ch&iacute;nh nơi m&agrave; ch&uacute;ng t&ocirc;i c&ocirc;ng t&aacute;c. Để giờ đ&acirc;y l&agrave; sự tiếc nuối khi sắp phải rời xa nhau, kh&ocirc;ng c&ograve;n được l&agrave;m việc c&ugrave;ng nhau.</p>\r\n<p>😘Trước thời khắc n&agrave;y, h&atilde;y c&ugrave;ng 07 con người của LC HSV Khoa TV-TTH chia sẻ những k&yacute; ức kh&oacute; phai của thời thanh xu&acirc;n gắn liền với Hội. H&atilde;y để ch&uacute;ng t&ocirc;i b&agrave;y tỏ sự y&ecirc;u thương, tr&acirc;n trọng với nơi m&agrave; ch&uacute;ng t&ocirc;i gọi đ&oacute; l&agrave; Nh&agrave;. Để rồi d&ugrave; thế n&agrave;o đi nữa sau n&agrave;y ch&uacute;ng t&ocirc;i vẫn mỉm cười gọi nhau l&agrave; anh em</p>\r\n<p>#LCH2019_2021</p>\r\n<p>#HOILANHA</p>\r\n<p>#MotngaylacanboHoi_maimailacanboHoi</p>\r\n<p><img src=\"https://scontent-xsp1-2.xx.fbcdn.net/v/t1.0-9/131026904_2777057699217396_5253608276783032496_n.jpg?_nc_cat=109&amp;ccb=2&amp;_nc_sid=0debeb&amp;_nc_ohc=eC_j43ZdJBgAX9FXmHk&amp;_nc_ht=scontent-xsp1-2.xx&amp;oh=35312e97bc7d2be1b53eac5f1a6a003d&amp;oe=5FF8E076\" alt=\"\" width=\"700\" height=\"560\" /></p>', '2020-12-10 08:23:37', '2020-12-10 08:23:37', 0, 0, NULL),
(37, 32, 7, '<p>✨ G&Oacute;C REVIEW S&Aacute;CH✨</p>\r\n<p>Nội dung ch&iacute;nh của s&aacute;ch l&agrave; c&aacute;i nh&igrave;n v&agrave; cảm nhận của t&aacute;c giả về những điều trong cuộc sống, gồm: tương lai, t&igrave;nh y&ecirc;u, những mối quan hệ, nhiệt huyết. L&agrave; người theo đạo n&ecirc;n trong s&aacute;ch cũng c&oacute; d&agrave;nh 2 chương để n&oacute;i về &ldquo;Tu h&agrave;nh&rdquo; v&agrave; &ldquo;T&ocirc;n gi&aacute;o&rdquo;. C&aacute;ch h&agrave;nh văn nhẹ nh&agrave;nh, đơn giản, mang t&iacute;nh chất an ủi, sẻ chia, c&oacute; lồng một v&agrave;i triết l&yacute; Phật gi&aacute;o đơn giản v&agrave; quen thuộc. C&aacute;c chương đều ngắn, đọc kh&ocirc;ng thấy l&ecirc; th&ecirc;.</p>\r\n<p>C&aacute;c bạn c&oacute; bao giờ nghĩ, tại sao đối với người kh&aacute;c lại rất rộng r&atilde;i, c&ograve;n đối với bản th&acirc;n m&igrave;nh th&igrave; lại h&agrave; khắc đến thế. &ldquo;Ch&uacute;ng ta phải y&ecirc;u thương bản th&acirc;n m&igrave;nh hơn bất kỳ ai kh&aacute;c. Nếu ta y&ecirc;u ch&iacute;nh m&igrave;nh th&igrave; thế giới cũng sẽ y&ecirc;u lấy ta.&rdquo;</p>\r\n<p>[&hellip;]</p>\r\n<p>Khi nh&igrave;n thế gian, dường như ta chỉ nh&igrave;n những thứ t&acirc;m hồn ta muốn nh&igrave;n. T&ocirc;i ngộ ra một điều mới mẻ, rằng thế gian m&agrave; ch&uacute;ng ta nh&igrave;n thấy kh&ocirc;ng phải to&agrave;n bộ vũ trụ rộng lớn kia, m&agrave; thế gian bị giới hạn bởi tầm nh&igrave;n của đ&ocirc;i mắt trong t&acirc;m.</p>\r\n<p>[&hellip;]</p>\r\n<p>L&yacute; do bạn trở n&ecirc;n đẹp đẽ,</p>\r\n<p>Kh&ocirc;ng phải v&igrave; bạn xinh hơn, hấp dẫn hơn, hay t&agrave;i giỏi hơn người kh&aacute;c.</p>\r\n<p>M&agrave; l&agrave; v&igrave; tr&ecirc;n thế gian n&agrave;y kh&ocirc;ng c&oacute; ai giống bạn.</p>\r\n<p>H&atilde;y y&ecirc;u sự hiện diện đặc biệt của m&igrave;nh.</p>\r\n<p>[&hellip;]</p>\r\n<p>Những điều nhỏ nhặt tr&ocirc;i qua mỗi ng&agrave;y c&oacute; l&agrave;m cho bạn cảm thấy kh&ocirc;ng gian v&agrave; thời gian dường như đang xoay chuyển qu&aacute; vội v&agrave;ng kh&ocirc;ng?</p>\r\n<p>Nếu c&oacute; thể, h&atilde;y tạm dừng một bước!</p>\r\n<p><img src=\"https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/120847105_1410063349196766_6186779772769544504_o.jpg?_nc_cat=105&amp;ccb=2&amp;_nc_sid=825194&amp;_nc_ohc=DumLyUtlEf4AX8ID4S6&amp;_nc_ht=scontent.fsgn4-1.fna&amp;oh=a39195494a34b7682cc99da0ed329f40&amp;oe=5FF99939\" alt=\"\" width=\"700\" height=\"394\" /></p>', '2020-12-10 08:48:32', '2020-12-10 08:48:32', 0, 0, NULL),
(38, 25, 4, '<p>Mong chờ qu&aacute; đi &aacute; mọi người ơi &lt;3</p>', '2020-12-11 03:48:25', '2020-12-11 03:48:25', 0, 0, NULL),
(42, 36, 6, '<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Th&aacute;ng 11, Khoa Thư viện &ndash; Th&ocirc;ng tin học c&oacute; 2 niềm vui lớn,</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">Một l&agrave; h&atilde;nh diện ch&agrave;o đ&oacute;n hơn 150 sinh vi&ecirc;n mới kh&oacute;a 2020</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">Một l&agrave; ngập tr&agrave;n hạnh ph&uacute;c đ&oacute;n nhận t&igrave;nh cảm của học tr&ograve; trong những ng&agrave;y Tri &acirc;n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">Thật ra, Thầy v&agrave; Tr&ograve; ch&uacute;ng t&ocirc;i kh&ocirc;ng cần phải đợi đến ng&agrave;y 20.11 để sẻ chia c&ugrave;ng nhau những t&igrave;nh cảm ch&acirc;n th&agrave;nh.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">Nhưng th&uacute; thật, những lời ch&uacute;c mừng nh&acirc;n ng&agrave;y Nh&agrave; gi&aacute;o Việt Nam lu&ocirc;n l&agrave;m ch&uacute;ng t&ocirc;i ấm l&ograve;ng v&agrave; x&uacute;c động.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">Từ những cuộc thi của c&aacute;c CLB trải d&agrave;i từ đầu th&aacute;ng 11 đến Chương tr&igrave;nh Tri &acirc;n người khai s&aacute;ng của c&aacute;c bạn Đo&agrave;n - Hội.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">Từ những b&ocirc;ng h&oacute;a tươi thắm tr&ecirc;n giảng đường đến sự trở về ấm c&uacute;ng nghĩa t&igrave;nh của nhiều thế hệ cựu sinh vi&ecirc;n...</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">C&ugrave;ng với Nhiều thế hệ giảng vi&ecirc;n, Tập thể Khoa TV-TTH tr&acirc;n qu&yacute; tất cả những t&igrave;nh cảm đ&atilde; nhận được, nguồn năng lượng t&iacute;ch cực đ&oacute; sẽ gi&uacute;p ch&uacute;ng t&ocirc;i nu&ocirc;i dưỡng t&igrave;nh y&ecirc;u với nghề nghiệp v&agrave; sinh vi&ecirc;n của m&igrave;nh.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">❤ Lời cảm ơn \"WITH LOVE\" từ Tập thể Khoa Thư viện - Th&ocirc;ng tin học ❤</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">------------------------------------------------------------------------------</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">Cảm ơn t&igrave;nh cảm ấm &aacute;p từ c&aacute;c Kh&oacute;a Cựu sinh vi&ecirc;n:</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; Kh&oacute;a 2006-2010 kỷ niệm 10 năm ra trường</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; Nh&oacute;m CSV đang c&ocirc;ng t&aacute;c tại TV Trường Đại học Kinh tế - Luật</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; Cựu SV c&aacute;c Kh&oacute;a: 1994-1998;&nbsp; 2000-2004; 2002-2006; 2006-2010; 2007-2011; 2008-2012; 2009-2013, 2010-2014; 2012--2016, 2013-2017; 2014-2018, 2015-2019, 2016-2020;...&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; CSV Trương Minh Ho&agrave; c&ugrave;ng đồng nghiệp v&agrave; cựu học vi&ecirc;n trường Fulbright</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; Lớp quản trị K33</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; BCH Đo&agrave;n Khoa</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; Lớp cao học K19</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; C&ocirc; Linh, C&ocirc; Tr&uacute;c, C&ocirc; Ngọc Anh nghi&ecirc;n cứu sinh&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; C&ocirc; B&ugrave;i Phan Bảo Vi</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; HV L&ecirc; Na học vi&ecirc;n cao học</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; Nguyễn Hồng Sơn - Huỳnh Duy Thạch K31</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; Anh Mai Vũ Dương, anh Đỗ Kim L&acirc;m Từ C&ocirc;ng ty Rich Land</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">&bull; Thầy Ph&ugrave;ng Ngọc T&uacute; - Cựu Giảng vi&ecirc;n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">V&agrave; rất nhiều hoa tươi k&egrave;m với lời ch&uacute;c từ c&aacute;c Anh Chị CSV v&agrave; c&aacute;c bạn SV giấu t&ecirc;n nữa...</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\">Love you all ❤</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; font-family: \'Open Sans\', sans-serif; color: #151a1f;\"><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/video.php?height=314&amp;href=https%3A%2F%2Fwww.facebook.com%2FKhoaTVTTH%2Fvideos%2F164425818704252%2F&amp;show_text=false&amp;width=560\" width=\"560\" height=\"314\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\"></iframe></p>', '2020-12-12 08:14:36', '2020-12-12 08:14:36', 0, 0, NULL),
(44, 36, 6, '<p>Tuyệt qu&aacute;!!</p>', '2020-12-13 06:09:59', '2020-12-13 06:09:59', 0, 0, NULL),
(45, 36, 4, '<p>Dễ thương gh&ecirc; &lt;3</p>', '2020-12-19 20:43:31', '2020-12-19 20:43:31', 0, 0, NULL),
(46, 29, 4, '<p>Iu iu&nbsp;&hearts;️&hearts;️</p>', '2020-12-20 06:00:09', '2020-12-20 06:00:09', 0, 0, NULL),
(48, 38, 6, '<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Surface Laptop Go - Chiếc m&aacute;y t&iacute;nh l&yacute; tưởng cho học sinh, sinh vi&ecirc;n</span><span style=\"box-sizing: border-box; font-weight: bold;\">💻💻</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Surface Laptop Go &ndash; chiếc PC mới nhất của Microsoft kh&ocirc;ng những mang đến t&iacute;nh di động vượt trội m&agrave; c&ograve;n khắc phục được nhược điểm hơi &ldquo;thiếu m&aacute;u&rdquo; của Surface Go năm 2018.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Trong b&agrave;i đ&aacute;nh gi&aacute; mới nhất v&agrave; ti&ecirc;n phong nhất của Windows Central về Laptop Go, t&aacute;c giả Daniel Rubino chia sẻ &ldquo;Sau khi d&agrave;nh cả một ng&agrave;y cuối tuần để d&ugrave;ng thử chiếc laptop mới nhất của Microsoft, t&ocirc;i tin rằng Laptop Go chắc chắn sẽ trở th&agrave;nh một người bạn đồng h&agrave;nh ho&agrave;n hảo &ndash; một chiếc m&aacute;y t&iacute;nh x&aacute;ch tay l&yacute; tưởng học sinh, sinh vi&ecirc;n. Surface Laptop Go c&oacute; thể sẽ sớm lọt v&agrave;o top những chiếc laptop Windows tốt nhất của Windows Central&rdquo;.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Surface Laptop Go - Th&ocirc;ng số kỹ thuật</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Hệ điều h&agrave;nh: Windows 10 Home ở chế độ S mode</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">M&agrave;n h&igrave;nh: 12,45 inch PixelSense</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Tỷ lệ khung h&igrave;nh: 3: 2</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Độ ph&acirc;n giải: 1536x1024 (148 PPI)</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Bộ xử l&yacute;: Intel Core i5-1035G1</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Đồ họa: Intel UHD</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">RAM: 4GB, 8GB LPDDR4x hoặc 16GB (Chỉ c&oacute; tr&ecirc;n bản doanh nghiệp)</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Bộ nhớ: 64GB eMMC, 128GB hoặc 256GB SSD</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Camera trước: HD 720p f/2.0</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Bảo mật: Cảm biến v&acirc;n tay - Fingerprint Reader (Kh&ocirc;ng c&oacute; tr&ecirc;n bản i5/4GB/64GB)</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Kết nối: Wi-Fi 6, Bluetooth 5.0</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Cổng kết nối: 1x USB-C, 1x USB-A, giắc 3,5 mm, 1x Surface Connect</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">&Acirc;m thanh: Loa Omnisonic (&acirc;m thanh Dolby Premium)</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Thời lượng pin: L&ecirc;n đến 13 giờ</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">K&iacute;ch thước: 10,95x8,10x0,62 inch (278,18x 205,67x15,69mm)</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">Trọng lượng: 2,45lbs (1,110g)</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">M&agrave;u sắc: Platinum, Sandstone, Ice Blue</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\">👇Video giới thiệu sản phẩm👇</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 11px; color: #151a1f;\"><iframe src=\"//www.youtube.com/embed/kp4Acofumyg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>', '2020-12-26 09:31:49', '2020-12-26 09:31:49', 0, 0, NULL),
(49, 39, 6, '<p>🌺Nhà Hàng ADORA CENTER:</p>\r\n<p>🏡 Địa chỉ: 431 Hoàng Văn Thụ , phường 4, Quận Tân Bình.</p>\r\n<p>Xe bus đưa về ngày 31/1, 2/1, 3/1.</p>\r\n<p>💢31/12/2020+01,02/01/2021</p>\r\n<p>+ Ca 14h00 - 22h15 : 160k + cơm</p>\r\n<p>+ Ca 15h00 - 22h15 : 140k + cơm</p>\r\n<p>+ Ca 16h00 -  22h15 : 120k + cơm</p>\r\n<p>+ Ca 17h00 - 22h15 : 110k + cơm</p>\r\n<p>💢03/01/2021</p>\r\n<p>+ Ca 8h00 - 22h15 : 320k + 2 cơm</p>\r\n<p>+ ca 14h00- 22h15 : 160k + cơm</p>\r\n<p>+ Ca 16h00-22h15 : 120k + cơm</p>\r\n<p>🌹Dẫn bạn + 10k/ bạn/tiệc, doup 20k</p>\r\n<p>🚩Lịch tiệc đều đặn, rảnh giờ nào đăng ký giờ đó, bor tip tự giữ, không thu phí.</p>\r\n<p>📌 Đồng Phục bạn tự chuẩn bị: Sơ mi trắng dài tay trơn có cổ, quần tây đen, vớ đen, bật lửa.</p>\r\n<p>🧒 Nam:giày tây đen.</p>\r\n<p>👩 Nữ: búp bê đen không nhuộm tóc, không sơn móng.</p>\r\n<p>🚩Soạn tin đăng ký: [Họ tên / Ngày + Ca / Nhà hàng]</p>\r\n<p>📞 0354057395 a Hiếu sms/zalo</p>\r\n<p><img src=\"https://cdn.123job.vn/123job//uploads/images/viec-lam-part-time.jpg\" alt=\"\" width=\"750\" height=\"413\"></p>', '2020-12-28 21:58:37', '2020-12-30 20:56:48', 0, 0, NULL),
(50, 40, 6, '<p><strong>🥰🥰BAO L&Igrave; X&Igrave;</strong></p>\r\n<p>👉Lẻ 10k/ xấp 10 c&aacute;i, mua 5 xấp tặng 1 xấp nha kh&aacute;ch</p>\r\n<p>❌Kh&aacute;ch Sỉ ib ạ</p>\r\n<p>Mọi người ib cho e để chọn mẫu ạ.</p>\r\n<p>Li&ecirc;n hệ Facebook:</p>\r\n<p><a href=\"https://www.facebook.com/profile.php?id=100050127017195\">Nguyễn Oanh | Facebook</a></p>\r\n<p><img src=\"https://scontent.fvca1-2.fna.fbcdn.net/v/t1.0-9/131942155_222491329431766_773564915976087079_n.jpg?_nc_cat=107&amp;ccb=2&amp;_nc_sid=8bfeb9&amp;_nc_ohc=RINzQiG6AysAX_yt1Ui&amp;_nc_ht=scontent.fvca1-2.fna&amp;oh=2c8e1f4a299aec1efd5ed6a175b3b79e&amp;oe=6012097C\" alt=\"\" width=\"750\" height=\"750\" /></p>', '2020-12-30 21:03:34', '2020-12-30 21:03:34', 0, 0, NULL),
(51, 41, 4, '<p>ThS. Nguyễn Tấn Công</p>\r\n<p>- Giảng viên;</p>\r\n<p>- Lĩnh vực giảng dạy và nghiên cứu: Thiết kế Web, Kỹ thuật lập trình, Máy học, Xử lý ảnh và Thị giác máy tính, Nhận dạng mẫu.</p>\r\n<p>Liên hệ:</p>\r\n<p>- Email: <a href=\"mailto:ntcong@hcmussh.edu.vn\">ntcong@hcmussh.edu.vn</a></p>\r\n<p>- Facebook: <a href=\"https://www.facebook.com/nguyentan.cong.338\">Hina Spin | Facebook</a></p>\r\n<p><img src=\"https://scontent.fvca1-2.fna.fbcdn.net/v/t1.0-9/34178814_2079880202337692_8346948956122513408_o.jpg?_nc_cat=104&amp;ccb=2&amp;_nc_sid=e3f864&amp;_nc_ohc=OtP8Sk0AwBkAX-3ZI3w&amp;_nc_ht=scontent.fvca1-2.fna&amp;oh=a7070df20de16be2abc1099dac4df84a&amp;oe=60140B4A\" width=\"750\" height=\"501\" alt=\"34178814_2079880202337692_8346948956122513408_o.jpg?_nc_cat=104&amp;ccb=2&amp;_nc_sid=e3f864&amp;_nc_ohc=OtP8Sk0AwBkAX-3ZI3w&amp;_nc_ht=scontent.fvca1-2.fna&amp;oh=a7070df20de16be2abc1099dac4df84a&amp;oe=60140B4A\"></p>', '2020-12-30 21:15:14', '2020-12-30 21:16:06', 0, 0, NULL),
(52, 42, 7, '<p>ThS. Trần Đ&igrave;nh Anh Huy</p>\r\n<p>- Giảng vi&ecirc;n.</p>\r\n<p>- Lĩnh vực giảng dạy v&agrave; nghi&ecirc;n cứu: Cơ sở dữ liệu, Kiến tr&uacute;c m&aacute;y t&iacute;nh v&agrave; hệ điều h&agrave;nh, Tối ưu h&oacute;a, Bổ đề Farkas v&agrave; ứng dụng.</p>\r\n<p>Li&ecirc;n hệ:</p>\r\n<p>- Email: <a href=\"mailto:tdahuy@hcmussh.edu.vn\">tdahuy@hcmussh.edu.vn</a></p>\r\n<p>- Facebook:&nbsp;<a href=\"https://www.facebook.com/ryu.wtnb.5\">Trần Đ&igrave;nh Anh Huy | Facebook</a></p>\r\n<p><img src=\"https://scontent.fvca1-1.fna.fbcdn.net/v/t1.0-9/73143801_3126267727389090_5187099739308425216_o.jpg?_nc_cat=106&amp;ccb=2&amp;_nc_sid=730e14&amp;_nc_ohc=cc7epdhbxHYAX8tj5gs&amp;_nc_ht=scontent.fvca1-1.fna&amp;oh=98ed6d7aebe416517be92588ce8b1bcf&amp;oe=601179A0\" alt=\"\" width=\"750\" height=\"500\" /></p>', '2020-12-30 21:22:56', '2020-12-30 21:22:56', 0, 0, NULL),
(53, 43, 7, '<p><strong>ThS.Nguyễn Danh Minh Tr&iacute;</strong><strong>👨&zwj;🏫</strong></p>\r\n<p>- Giảng vi&ecirc;n v&agrave; Quản trị vi&ecirc;n Website,</p>\r\n<p>- Lĩnh vực giảng dạy v&agrave; nghi&ecirc;n cứu: X&acirc;y dựng cổng th&ocirc;ng tin, Ph&aacute;t triển phần mềm m&atilde; nguồn mở, Khai th&aacute;c dữ liệu, Nguy&ecirc;n l&yacute; ng&ocirc;n ngữ lập tr&igrave;nh, Tr&igrave;nh bi&ecirc;n dịch, Lập tr&igrave;nh song song, Tr&iacute; tuệ nh&acirc;n tạo v&agrave; hệ thống th&ocirc;ng minh.</p>\r\n<p>Li&ecirc;n hệ:</p>\r\n<p>- Email: <a href=\"mailto:ndmtri@hcmussh.edu.vn\">ndmtri@hcmussh.edu.vn</a></p>\r\n<p>Facebook:&nbsp;<a href=\"https://www.facebook.com/mtri28\">Tri Minh | Facebook</a></p>\r\n<p><img src=\"https://scontent.fvca1-1.fna.fbcdn.net/v/t1.0-9/71826610_1143777819151547_8156603869648912384_o.jpg?_nc_cat=106&amp;ccb=2&amp;_nc_sid=8bfeb9&amp;_nc_ohc=Du4uhLkobSQAX8RBMGi&amp;_nc_ht=scontent.fvca1-1.fna&amp;oh=7531c1d5d3ceac5c0c7c7488f9c92a19&amp;oe=601457CC\" alt=\"\" width=\"750\" height=\"500\" /></p>', '2020-12-30 21:36:22', '2020-12-30 21:36:22', 0, 0, NULL),
(54, 44, 4, '<p><strong>TS. Ng&ocirc; Thị Huyền</strong></p>\r\n<p>- Ph&oacute; Trưởng Khoa (NCKH, ĐBCL, HTQT), Giảng vi&ecirc;n,</p>\r\n<p>- Lĩnh vực giảng dạy v&agrave; nghi&ecirc;n cứu: Kiến thức th&ocirc;ng tin, Thư viện số, Hệ quản trị thư viện t&iacute;ch hợp, H&agrave;nh vi th&ocirc;ng tin.</p>\r\n<p>Li&ecirc;n hệ:</p>\r\n<p>- Email: <a href=\"mailto:ngohuyen@hcmussh.edu.vn\">ngohuyen@hcmussh.edu.vn</a></p>\r\n<p>- Facebook:&nbsp;<a href=\"https://www.facebook.com/ngo.huyen.9\">Huyen Ngo | Facebook</a></p>\r\n<p><img src=\"https://scontent.fhan3-2.fna.fbcdn.net/v/t1.0-9/65890668_2590009817678266_284540118776152064_o.jpg?_nc_cat=111&amp;ccb=2&amp;_nc_sid=8bfeb9&amp;_nc_ohc=YXU-eXB9evYAX-TNPe_&amp;_nc_ht=scontent.fhan3-2.fna&amp;oh=938c70735ca5c8a95b04f045a25d619a&amp;oe=6012FFF6\" alt=\"\" width=\"750\" height=\"563\" /></p>\r\n<p>&nbsp;</p>', '2020-12-30 21:43:56', '2020-12-30 21:43:56', 0, 0, NULL),
(55, 45, 4, '<p><strong>ThS. Nguyễn Văn Hiệp</strong></p>\r\n<p>- Ph&oacute; Trưởng Khoa (CTSV), Giảng vi&ecirc;n,</p>\r\n<p>- Lĩnh vực giảng dạy v&agrave; nghi&ecirc;n cứu: An to&agrave;n v&agrave; bảo mật th&ocirc;ng tin, Mạng m&aacute;y t&iacute;nh 1, Mạng m&aacute;y t&iacute;nh 2, Ứng dụng C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng trong hoạt động Th&ocirc;ng tin thư viện.</p>\r\n<p>Li&ecirc;n hệ:</p>\r\n<p>- Email: <a href=\"mailto:hiepnguyen@hcmussh.edu.vn\">hiepnguyen@hcmussh.edu.vn</a></p>\r\n<p>- Facebook:&nbsp;&nbsp;<a href=\"https://www.facebook.com/hiepnguyenussh\">Hiep Nguyen | Facebook</a></p>\r\n<p><img src=\"https://scontent.fhph1-1.fna.fbcdn.net/v/t31.0-8/21167654_1426048940764604_8620117778524280149_o.jpg?_nc_cat=111&amp;ccb=2&amp;_nc_sid=174925&amp;_nc_ohc=ngLUoHY8XPIAX8MEHJp&amp;_nc_ht=scontent.fhph1-1.fna&amp;oh=12917c20273fb236cc044a299e97053d&amp;oe=601102D8\" alt=\"\" width=\"800\" height=\"800\" /></p>', '2020-12-30 21:49:48', '2020-12-30 21:49:48', 0, 0, NULL),
(56, 46, 11, '<p><em>\"2020 sắp hết, 2021 sắp sang, kh&ocirc;ng kh&iacute; Xu&acirc;n cũng đ&atilde; sắp về. Nh&agrave; m&igrave;nh giới thiệu đến bạn c&aacute;c mẫu hộp qu&agrave; Tết, cực kỳ th&iacute;ch hợp để biếu tặng cho nh&acirc;n vi&ecirc;n v&agrave; người th&acirc;n.\"</em></p>\r\n<p>Mỗi hộp qu&agrave; Tết, với c&aacute;c loại hạt kh&aacute;c nhau, ph&ugrave; hợp với nhu cầu của bạn. Camellia d&agrave;nh tặng bạn h&agrave;ng ng&agrave;n gợi &yacute; mới lạ với mức gi&aacute; hấp dẫn. H&atilde;y tham khảo v&agrave; chọn lựa hộp qu&agrave; ph&ugrave; hợp với nhu cầu nh&eacute;!</p>\r\n<p>❌❌ĐẶC BIỆT, KHI MUA H&Agrave;NG TẠI CAMELLIA - SẢN PHẨM TỪ THI&Ecirc;N NHI&Ecirc;N, VỚI BẤT K&Igrave; ĐƠN H&Agrave;NG N&Agrave;O KH&Aacute;CH CŨNG SẼ C&Oacute; QU&Agrave; N&Egrave;:</p>\r\n<p>🌻🌻H&Oacute;A ĐƠN NHỎ HƠN 100.000 VNĐ KH&Aacute;CH H&Agrave;NG ĐƯỢC TẶNG COMBO 5 BAO L&Igrave; X&Igrave; (mẫu ngẫu nhi&ecirc;n)</p>\r\n<p>🍀🍀H&Oacute;A ĐƠN TỪ 100.000 VNĐ TRỞ L&Ecirc;N KH&Aacute;CH H&Agrave;NG ĐƯỢC TẶNG COMBO 10 BAO L&Igrave; X&Igrave; (mẫu ngẫu nhi&ecirc;n)</p>\r\n<p>❌❌ĐẶC BIỆT, VỚI H&Oacute;A ĐƠN TỪ 500.000 VNĐ TRỞ L&Ecirc;N KH&Aacute;CH H&Agrave;NG SẼ ĐƯỢC GIẢM GI&Aacute; 5%&nbsp;</p>\r\n<p>MỘT HỘP QU&Agrave; ĐỰNG ĐƯỢC 1 KG HẠT, N&Ecirc;N KH&Aacute;CH C&Oacute; THỂ LỰA CHỌN BAO GỒM:</p>\r\n<p>2 LOẠI HẠT = 2 HŨ 500GR&nbsp;</p>\r\n<p>3 LOẠI HẠT = 1 HŨ 500GR + 2 HŨ 250GR&nbsp;</p>\r\n<p>4 LOẠI HẠT = 4 HŨ 250GR</p>\r\n<p>Nếu cần hỗ trợ th&ocirc;ng tin HỘP QU&Agrave; TẾT, h&atilde;y nhắn tin trực tiếp cho CAMELLIA tr&ecirc;n Facebook v&agrave; Zalo: 0915164653, Shop sẽ cung cấp th&ocirc;ng tin cho m&igrave;nh nhanh ch&oacute;ng nha.</p>\r\n<p><a href=\"https://www.facebook.com/camelia.sanphamtuthiennhien/\">Camellia - Sản phẩm từ thi&ecirc;n nhi&ecirc;n | Facebook</a></p>\r\n<p><img src=\"https://scontent.fvca1-1.fna.fbcdn.net/v/t1.0-9/135838220_1496368760554570_6895853613679350490_o.jpg?_nc_cat=103&amp;ccb=2&amp;_nc_sid=8bfeb9&amp;_nc_ohc=8LwWJBWT_q0AX8aHNwU&amp;_nc_oc=AQkT0uqOoUgcZVZMEYAHVrvPbExo7AsrMhfQ7a3e3ensWmVkm_1C0gnRa8r4yPRkZnA&amp;_nc_ht=scontent.fvca1-1.fna&amp;oh=eeae325ac82a9608a8fd0d0394ca8f02&amp;oe=601B11FD\" alt=\"\" width=\"720\" height=\"540\" /></p>', '2021-01-04 19:58:37', '2021-01-04 19:58:37', 0, 0, NULL),
(57, 46, 4, '<p>N&ocirc;n đến Tết qu&aacute; đi, m&igrave;nh mua 5 phần nha bạn ơi!!</p>', '2021-01-04 19:59:42', '2021-01-04 19:59:42', 0, 0, NULL),
(58, 28, 4, '<p>Vui qu&aacute;, ch&uacute;c mọi người thật nhiều sức khỏe v&agrave; nhiệt huyết. Ch&uacute;c Đo&agrave;n - Hội khoa TVTTH ng&agrave;y c&agrave;ng ph&aacute;t triển&nbsp;<img src=\"../../../vendor/devdojo/chatter/assets/vendor/tinymce/plugins/emoticons/img/smiley-laughing.gif\" alt=\"laughing\" /></p>\r\n<p>&nbsp;</p>', '2021-01-05 07:07:20', '2021-01-05 07:07:20', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chatter_user_discussion`
--

CREATE TABLE `chatter_user_discussion` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_user_discussion`
--

INSERT INTO `chatter_user_discussion` (`user_id`, `discussion_id`) VALUES
(4, 23),
(4, 25),
(4, 27),
(4, 29),
(4, 41),
(4, 44),
(4, 45),
(5, 24),
(5, 28),
(5, 29),
(6, 36),
(6, 38),
(6, 39),
(6, 40),
(7, 32),
(7, 42),
(7, 43),
(11, 46);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_10_12_000000_create_users_table', 1),
(2, '2020_10_12_100000_create_password_resets_table', 1),
(3, '2020_07_29_171118_create_chatter_categories_table', 1),
(4, '2020_07_29_171118_create_chatter_discussion_table', 1),
(5, '2020_07_29_171118_create_chatter_post_table', 1),
(6, '2020_07_29_171128_create_foreign_keys', 1),
(7, '2020_08_02_183143_add_slug_field_for_discussions', 1),
(8, '2020_08_03_121747_add_color_row_to_chatter_discussions', 1),
(9, '2020_08_16_121747_add_markdown_and_lock_to_chatter_posts', 1),
(10, '2020_08_16_121747_create_chatter_user_discussion_pivot_table', 1),
(11, '2020_08_07_165345_add_chatter_soft_deletes', 1),
(12, '2020_10_10_221227_add_chatter_last_reply_at_discussion', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'banner1.jpg'),
(2, '', 'banner2.jpg'),
(3, '', 'banner3.jpg'),
(4, '', 'banner4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'WooHoo245', 'huy10986@gmail.com', '1607572346.jpg', '$2y$10$XTc9CGrkZlGbaC30yaaoZurczGEbsY8HdnKKXCeltgCr754s8CK3q', 'XzWF8u7NZ3qimgX1I3YEik3ZEVKYQG5XdlNtESZ9Dp7GXqMllh2tfU6PZeeS', '2020-10-23 10:10:56', '2020-12-09 20:52:27'),
(5, 'MaTha', 'tranthimaithao6699@gmail.com', '1607588743.jpg', '$2y$10$30A1Xc45HQbyjmQfFnbo2Oufr3nsZ3gk8SW44BKmPMXokJbDcc.ym', 'KQB3TDoD27x9o7wNIeceS2Wyc2HBkHg4pgUqNaNTz15eDQGpqdmeLFK86Okd', '2020-12-10 01:25:03', '2020-12-10 01:25:43'),
(6, 'Xí Muội 1999', 'ximuoilovebb@gmail.com', 'default.jpg', '$2y$10$iMGlsntlx8zNyTjXJAyjbu9MSBD/t8p9LaS1SggEbeQgMDXuEZmYq', 'MqBPal9yjUFZo3m76jG9zIaaNLJ3GZyUevNLar7VWQfthmP6Q3pUCZFHlEG6', '2020-12-10 08:34:00', '2020-12-10 08:34:00'),
(7, 'Minh Thương Hanuri', '1756100079@hcmussh.edu.vn', '1607615173.jpg', '$2y$10$LyMMjlCNLXXt.E0ka4qWiO6KJng/2zDX7llfRCeX2LyskIV52BfCK', 'pBhjDsSa8yvfFE0b1X0UuT9soDnNkAbS5gjJBjxc0JEJPAp44rHUW5AsDAk1', '2020-12-10 08:45:53', '2020-12-10 08:46:14'),
(11, 'MaiThảo', '1756100074@hcmussh.edu.vn', '1609815347.jpg', '$2y$10$R3eHVJTIdwRY4gMP7qgdBOKbxSexMM3/nGjzIZLb5RC0bssVpJaMe', '3BJcTfqDga2BW0edPsOH1Kjcf3N0uJC8SDlDPa01tVRyRA63msEKojoRKlNy', '2021-01-04 19:55:31', '2021-01-04 19:55:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatter_categories`
--
ALTER TABLE `chatter_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chatter_discussion_slug_unique` (`slug`),
  ADD KEY `chatter_discussion_chatter_category_id_foreign` (`chatter_category_id`),
  ADD KEY `chatter_discussion_user_id_foreign` (`user_id`);

--
-- Indexes for table `chatter_post`
--
ALTER TABLE `chatter_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chatter_post_chatter_discussion_id_foreign` (`chatter_discussion_id`),
  ADD KEY `chatter_post_user_id_foreign` (`user_id`);

--
-- Indexes for table `chatter_user_discussion`
--
ALTER TABLE `chatter_user_discussion`
  ADD PRIMARY KEY (`user_id`,`discussion_id`),
  ADD KEY `chatter_user_discussion_user_id_index` (`user_id`),
  ADD KEY `chatter_user_discussion_discussion_id_index` (`discussion_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatter_categories`
--
ALTER TABLE `chatter_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `chatter_post`
--
ALTER TABLE `chatter_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  ADD CONSTRAINT `chatter_discussion_chatter_category_id_foreign` FOREIGN KEY (`chatter_category_id`) REFERENCES `chatter_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chatter_discussion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatter_post`
--
ALTER TABLE `chatter_post`
  ADD CONSTRAINT `chatter_post_chatter_discussion_id_foreign` FOREIGN KEY (`chatter_discussion_id`) REFERENCES `chatter_discussion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chatter_post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatter_user_discussion`
--
ALTER TABLE `chatter_user_discussion`
  ADD CONSTRAINT `chatter_user_discussion_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `chatter_discussion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chatter_user_discussion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
