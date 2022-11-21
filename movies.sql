-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2022 lúc 06:40 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_phim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thoiluong` varchar(50) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phim_hot` int(11) NOT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `name_eng` varchar(255) NOT NULL,
  `phude` int(11) NOT NULL DEFAULT 0,
  `ngaytao` varchar(50) DEFAULT NULL,
  `ngaycapnhat` varchar(50) DEFAULT NULL,
  `topview` int(11) DEFAULT NULL,
  `season` int(11) NOT NULL DEFAULT 0,
  `trailer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `title`, `thoiluong`, `description`, `status`, `image`, `slug`, `category_id`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `phude`, `ngaytao`, `ngaycapnhat`, `topview`, `season`, `trailer`) VALUES
(3, 'Người Nhện: Không còn nhà', NULL, 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 1, 1, 1, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(4, 'THỜI ĐẠI MA PHÁP', NULL, 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 5, 4, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(5, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', NULL, 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 1, 2, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(6, 'HUYỀN THOẠI GAME THỦ', NULL, 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 5, 3, 4, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(7, 'Người Nhện: Không còn nhà', NULL, 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 1, 1, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(8, 'THỜI ĐẠI MA PHÁP', NULL, 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 5, 4, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(9, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', NULL, 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 1, 2, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(10, 'HUYỀN THOẠI GAME THỦ', NULL, 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 5, 3, 4, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(11, 'Người Nhện: Không còn nhà', NULL, 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 1, 1, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(12, 'THỜI ĐẠI MA PHÁP', NULL, 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 5, 4, 1, 0, 'thoi-dai-ma-phap', 0, NULL, NULL, NULL, 0, NULL),
(13, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', NULL, 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 1, 2, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(14, 'HUYỀN THOẠI GAME THỦ', NULL, 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 2, 1, 1, 1, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(15, 'Người Nhện: Không còn nhà', NULL, 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 1, 1, 1, 0, 'Spider-Man: No Way Home (2021)', 0, NULL, NULL, NULL, 0, NULL),
(16, 'THỜI ĐẠI MA PHÁP', NULL, 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 5, 4, 0, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(17, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', NULL, 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 2, 1, 1, 1, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(18, 'HUYỀN THOẠI GAME THỦ', NULL, 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 2, 1, 1, 1, 0, '', 0, NULL, NULL, NULL, 0, NULL),
(19, 'HUYỀN THOẠI GAME THỦ', NULL, 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 4, 4, 7, 1, 0, 'No Game, No Life', 0, NULL, NULL, NULL, 0, NULL),
(20, 'One Punch Man', NULL, 'one punch man c Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub Superman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đ', 1, 'thoi-dai-ma-phap6341.jpg', 'one-punch-man', 4, 6, 5, 1, 0, 'one-punch-man', 0, NULL, NULL, 1, 0, NULL),
(22, 'D4DJ: FIRST MIX', '45 phút/tập', 'D4DJ: First Mix, D4DJ First Mix, Dig Delight Direct Drive DJ 2020 Tập 11 Anime HD Vietsub\r\nD4DJ: First Mix, D4DJ First Mix, Dig Delight Direct Drive DJ 2020 Anime', 1, 'd4dj-first-mix-61500-thumbnail6547.jpg', 'd4dj-first-mix', 5, 8, 4, 1, 5, 'D4DJ First Mix, Dig Delight Direct Drive DJ (2020)', 0, NULL, '2022-11-21 14:53:04', 1, 2, 'd9MyW72ELq0'),
(23, 'No Game, No Life (2015)', NULL, 'gdhh ghđheh hhhhh fgdhdfhdh fhdhdhd fgdfd dfdfdhs dgdgd dggrgr grdggd rted', 0, 'huyen-thoai-game-thu-60196-thumbnail6913.jpg', 'no-game-no-life-2015', 11, 4, 3, 0, 0, 'No Game, No Life (2015)', 0, NULL, NULL, 2, 6, NULL),
(24, 'MA TRẬN: HỒI SINH', NULL, 'Ma Trận: Hồi Sinh, The Matrix Resurrections 2021 HD Vietsub + TM\r\nMa Trận: Hồi Sinh - The Matrix Resurrections 2021 Quay Trở Lại Một Thế Giới Của Hai Thực Tại: Một, Cuộc Sống Hàng Ngày; Khác, Những Gì Nằm Sau Nó. Để Tìm Hiểu Xem Thực Tế Của Anh Ta Có Phải Là Một Công Trình Hay Không, để Thực Sự Hiểu Rõ Bản Thân Mình, Anh Anderson Sẽ Phải Chọn Theo Dõi Con Thỏ Trắng Một Lần Nữa. Ma Trận: Hồi Sinh là phần phim tiếp theo rất được trông đợi của loạt phim “Ma Trận” đình đám, đã góp phần tái định nghĩa thể loại phim khoa học viễn tưởng. Phần phim mới nhất này đón chào sự trở lại của cặp đôi Keanu Reeves và Carrie-Anne Moss với vai diễn biểu tượng đã làm nên tên tuổi của họ, Neo và Trinity. Ngoài ra, phim còn có sự góp mặt của dàn diễn viên đầy tài năng gồm Yahya Abdul-', 1, 'thoi-dai-ma-phap3421.jpg', 'ma-tran-hoi-sinh', 6, 1, 9, 1, 2, 'The Matrix Resurrections (2021)', 0, NULL, NULL, 1, 2, NULL),
(25, 'anh hùng xạ điêu', '45 phút/tập', 'phim anh hùng xạ điêu cảu kim dung', 1, 'Khong-phai-Quach-Tuong-day-moi-la-nguoi-Duong-Qua-mang-no-suot-doi-duong-qua-1-1605350801-133-width660height4073911.jpg', 'anh-hung-xa-dieu', 4, 6, 6, 1, 4, 'hero bird', 1, NULL, '2022-11-21 20:49:25', 1, 0, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
