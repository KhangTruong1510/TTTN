-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2022 lúc 06:41 PM
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
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `status`, `slug`, `position`) VALUES
(2, 'Phim Lẻ', 'Phim lẻ cập nhật hằng ngày', 1, 'phim-le', 0),
(4, 'Phim Bộ', 'Phim bộ cập nhật hằng ngày', 1, 'phim-bo', 1),
(5, 'Phim Hoạt Hình', 'Phim hoạt hình cập nhật nhanh nhất', 1, 'phim-hoat-hinh', 4),
(6, 'Phim Mới', 'Phim mới cập nhật nhanh nhất', 1, 'phim-moi', 2),
(9, 'Phim Chiếu Rạp', 'Phim chiếu rạp cập nhật nhanh nhất', 0, 'phim-chieu-rap', 5),
(11, 'Phim Thuyết Minh', 'Phim thuyết minh mới nhất', 1, 'phim-thuyet-minh', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Việt Nam', 'Phim Việt Nam cập nhật nhanh nhất', 1, 'viet-nam'),
(2, 'Mỹ', 'Phim Mỹ cập nhật hằng ngày', 1, 'my'),
(3, 'Anh', 'Phim Anh cập nhật nhanh nhất', 1, 'anh'),
(4, 'Nhật Bản', 'Phim Nhật Bản cập nhật nhanh nhất', 1, 'nhat-ban'),
(5, 'Hàn Quốc', 'Phim Hàn Quốc cập nhật nhanh nhất', 1, 'han-quoc'),
(6, 'Trung quốc', 'Phim Trung Quốc cập nhật nhanh nhất', 1, 'trung-quoc'),
(7, 'Thái Lan', 'Phim Thái Lan cập nhật nhanh nhất', 1, 'Thái Lan'),
(8, 'Đài Loan', 'Phim Đài Loan cập nhật nhanh nhất', 1, 'Đài Loan'),
(9, 'Singapo', 'phim singapo', 1, 'Singapo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `linkphim` varchar(255) NOT NULL,
  `episode` varchar(11) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`, `updated_at`, `created_at`) VALUES
(1, 27, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/q83Wuondewc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '1', '2022-11-22 22:23:30', '2022-11-22 22:23:30'),
(2, 27, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9mbGOrXLMhE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2', '2022-11-23 02:24:22', '2022-11-23 02:24:22'),
(4, 26, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L-aFL-bX1ao\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'FullHD', '2022-11-23 17:10:32', '2022-11-23 17:10:32'),
(5, 26, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L-aFL-bX1ao\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '1', '2022-11-23 17:13:51', '2022-11-23 17:13:51'),
(7, 28, '<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/2pD50-A3OKk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay;   allowfullscreen></iframe>', 'FullHD', '2022-11-23 22:47:31', '2022-11-23 22:47:31'),
(8, 33, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fJ2zWY7KHFw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay;  allowfullscreen></iframe>', '1', '2022-11-24 00:26:16', '2022-11-24 00:26:16'),
(9, 33, '<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/-rRtWp8R7uo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay;  allowfullscreen></iframe>', '2', '2022-11-24 00:27:56', '2022-11-24 00:27:56'),
(10, 33, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3uhyQiOezm4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '3', '2022-11-24 00:29:49', '2022-11-24 00:29:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Hành Động', 'Phim hành động cập nhật nhanh nhất', 0, 'hanh-dong'),
(3, 'Hài Hước', 'Phim hài hước cập nhật hằng ngày', 1, 'hai-huoc'),
(4, 'Lãng Mạn', 'Phim lãng mạn cập nhật nhanh nhất', 1, 'lang-man'),
(5, 'Viễn Tưởng', 'Phim viễn tưởng cập nhật nhanh nhất', 1, 'vien-tuong'),
(6, 'Võ Thuật', 'Phim võ thuật cập nhật nhanh nhất', 1, 'vo-thuat'),
(7, 'Kinh Dị', 'Phim kinh dị cập nhật nhanh nhất', 1, 'kinh-di'),
(8, 'Tâm Lý', 'Phim tâm lý cập nhật nhanh nhất', 0, 'tam-ly'),
(9, 'Tội phạm', 'Phim tội phạm cập nhật nhanh nhất', 1, 'toi-pham');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `phimbo` int(11) NOT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `name_eng` varchar(255) NOT NULL,
  `phude` int(11) NOT NULL DEFAULT 0,
  `ngaytao` varchar(50) DEFAULT NULL,
  `ngaycapnhat` varchar(50) DEFAULT NULL,
  `topview` int(11) DEFAULT NULL,
  `season` int(11) NOT NULL DEFAULT 0,
  `trailer` varchar(100) DEFAULT NULL,
  `sotap` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `title`, `thoiluong`, `description`, `status`, `image`, `slug`, `category_id`, `genre_id`, `country_id`, `phim_hot`, `phimbo`, `resolution`, `name_eng`, `phude`, `ngaytao`, `ngaycapnhat`, `topview`, `season`, `trailer`, `sotap`) VALUES
(26, 'vua hải tặc', '45 phút/tập', 'Đảo Hải Tặc - One Piece là chuyện về cậu bé Monkey D. Luffy do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết bơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để thành một băng hải tặc, biệt hiệu Hải tặc Mũ Rơm. Khi đó của phiêu lưu tìm kiếm kho báu One Piece bắt đầu. Trong cuộc phiêu lưu tìm kiếm One Piece, băng Hải tặc mũ rơm phải chiến đấu với nhiều băng hải tặc xấu khác cũng muốn độc chiếm One Piece và Hải quân của Chính phủ muốn diệt trừ hải tặc. Băng Hải tặc Mũ Rơm phải trải qua biết bao nhiêu khó khăn, không lùi bước với ước mơ \"Trở thành Vua Hải Tặc và chiếm được kho báu One Piece\".', 1, 'one_piece7795.png', 'vua-hai-tac', 5, 8, 4, 1, 1, 5, 'one piece', 0, '2022-11-22 15:15:25', '2022-11-24 00:18:45', NULL, 0, 'fJ2zWY7KHFw', 24),
(27, 'thám tử lừng danh', '45 phút/tập', 'Đây là bộ phim hoạt hình chuyển thể từ truyện tranh hấp dẫn nhất: Thám Tử Lừng Danh Conan của tác giả Aoyama Gosho. Phim Conan kể về thần đồng 17 tuổi Shinichi Kudo - còn được biết đến với biệt danh “Cứu tinh của Sở Cảnh sát Nhật Bản” - người thường xuyên giúp lực lượng cảnh sát giải quyết các vụ án phức tạp.\r\n\r\nPhim hoạt hình Conan bắt đầu sau vụ việc xảy ra tại công viên giải trí nổi tiếng Tropical Land tại khu tàu lượn siêu tốc. Kudo đang điều tra một trong hai người đàn ông có vẻ ngoài khả nghi được cho là nghi phạm trong vụ việc. Anh ta bị tấn công bởi một trong số họ có mật danh là Gin và đồng đội của anh ta tên là Vodka. Sau khi đánh Shinichi, Gin đã đưa cho anh ta một loại thuốc mà sau này được gọi là APTX 4869 để giết anh ta. Trên thực tế, chất độc có một tác dụng phụ hiếm gặp, biến Shinichi từ một cơ thể trưởng thành thành một đứa trẻ thay vì giết chết. Sau sự cố quan trọng, Shinichi về nhà và lấy tên là Conan Edogawa sau khi bị người bạn thời thơ ấu Ran gây áp lực. Shinichi đã cố gắng che giấu danh tính bí mật của mình với những người anh quan tâm để điều tra về tổ chức Áo Đen.', 1, 'Edogawa-Conan-3870.jpg', 'tham-tu-lung-danh', 5, 8, 4, 1, 1, 0, 'Conan', 1, '2022-11-22 15:50:53', '2022-11-23 15:28:06', NULL, 0, NULL, 64),
(28, 'ONE PIECE FILM RED', '115 phút', 'Đây là phần phim thứ mười lăm trong loạt phim điện ảnh của One Piece, dựa trên bộ truyện manga nổi tiếng cùng tên của tác giả Eiichiro Oda. Phim được công bố lần đầu tiên vào ngày 21 tháng 11, 2021 để kỷ niệm sự ra mắt của tập phim thứ 1000 của bộ anime One Piece và sau khi tập phim này được phát sóng, đoạn quảng cáo và áp phích chính thức của phim cũng chính thức được công bố. Phim dự kiến sẽ phát hành vào ngày 6 tháng 8 năm 2022. Bộ phim được giới thiệu sẽ là hành trình xoay quanh một nhân vật nữ mới cùng với Shanks \"Tóc Đỏ\".', 1, 'Red-1-game4v-1660099550-283046.jpg', 'one-piece-film-red', 6, 8, 4, 1, 0, 5, 'ONE PIECE FILM RED', 0, '2022-11-23 22:45:03', '2022-11-23 23:37:16', NULL, 0, 'r0FvP_Ui-xY', 1),
(29, 'Avatar (Phần 2) : Dòng Chảy Của Nước', '115 phút', 'Câu chuyện của “Avatar: Dòng Chảy Của Nước” lấy bối cảnh 10 năm sau những sự kiện xảy ra ở phần đầu tiên. Phim kể câu chuyện về gia đình mới của Jake Sully (Sam Worthington thủ vai) cùng những rắc rối theo sau và bi kịch họ phải chịu đựng khi phe loài người xâm lược hành tinh Pandora.', 1, 'avatar_2__teaser_poster_1_2065.jpg', 'avatar-phan-2-dong-chay-cua-nuoc', 2, 8, 1, 1, 0, 5, 'Avatar 2', 0, '2022-11-23 23:04:35', '2022-11-23 23:04:35', NULL, 0, 'gq2xKJXYZ80', 1),
(30, 'BỐ GIÀ PHẦN 1', '175 phút', 'Phim Bố Già Phần 1 – The Godfather full hd thuyết minh câu chuyện bắt đầu như “Don” Vito Corleone, người đứng đầu của một “gia đình” New York Mafia, giám sát đám cưới của con gái với người vợ Carmela. Con trai yêu quý của mình Michael vừa trở về nhà từ chiến tranh, nhưng không có ý định trở thành một phần của kinh doanh của cha mình. Thông qua cuộc sống của Michael bản chất của doanh nghiệp gia đình trở nên rõ ràng. Việc kinh doanh của gia đình cũng giống như người đứng đầu của gia đình, tử tế và nhân từ đối với những người cung cấp cho sự tôn trọng, nhưng cho bạo lực tàn nhẫn bất cứ khi nào đứng chống lại lợi ích của gia đình. Don Vito sống cuộc sống của mình theo cách của nước cũ, nhưng lần đang thay đổi và một số không muốn làm theo cách cũ và tìm ra cho cộng đồng và “gia đình”. Một đối thủ sắp tới của gia đình Corleone muốn bắt đầu bán ma túy ở New York, và cần ảnh hưởng của Don cho những kế hoạch của mình. Các cuộc đụng độ của các giá trị thế giới cũ phai của Don và những cách mới sẽ yêu cầu một mức giá khủng khiếp, đặc biệt là từ Michael, tất cả vì lợi ích của gia đình.', 1, '29a-the-godfather-19723675.jpg', 'bo-gia-phan-1', 2, 9, 2, 0, 0, 2, 'The Godfather (1972)', 1, '2022-11-23 23:26:37', '2022-11-23 23:27:46', NULL, 0, NULL, 1),
(31, 'ĐẠI CHIẾN NGƯỜI KHỔNG LỒ 1', '25 phút/tập', 'Phim Đại Chiến Người Khổng Lồ (Attack On Titan hay Đại Chiến Titan) là bộ phim anime Nhật Bản được chuyển thể từ bộ truyện manga nổi tiếng cùng tên của tác giả Hajime Isayama. Bộ phim xoay quanh bộ ba bạn thân Eren Jaeger, Mikasa Ackerman và Armin Arlert trong hành trình chiến đấu chống lại những Titan ăn thịt người. Trong một lần tấn công bất ngờ của Khổng Lồ Đại Hình, lớp thành Maria ngoài cùng bảo vệ con người khỏi các Titan bị phá hủy, lũ Titan ồ ạt tràn vào tàn phá quận Shiganshina. Cả 3 tận mắt chứng kiến cảnh người thân của mình bị Titan ăn thịt một cách tàn nhẫn. Để trả thù và giành lại thế giới từ tay các Titan, Eren, Mikasa và Armin gia nhập quân trinh sát, một nhóm binh lính tinh nhuệ có nhiệm vụ thăm dò và chiến đấu với các Titan bên ngoài bức tường. Xuyên suốt những cuộc đại chiến Titan, những bí mật về nguồn gốc, sức mạnh của Titan và thân thế của Eren cũng được hé lộ. Bên cạnh những trận đấu mãn nhãn giữa Titan và những con người bé nhỏ, bộ phim hoạt hình Attack On Titan cũng thu hút khán giả với câu chuyện về tình bạn, tình đồng đội cảm động giữa các nhân vật trong phim.', 1, 'Attack-on-Titan-Omnibus-1-Vol9530.webp', 'dai-chien-nguoi-khong-lo-1', 4, 8, 1, 0, 1, 0, 'Attack on Titan season 1 (2013)', 0, '2022-11-24 00:06:43', '2022-11-24 00:06:43', NULL, 0, NULL, 25),
(32, 'Hành trình Pokémon', '25 phút/tập', 'Nhà huấn luyện trẻ tuổi Satoshi và người bạn mới Go trở thành nghiên cứu sinh tại phòng nghiên cứu của Giáo sư Sakuragi. Họ đi khắp thế giới để tìm hiểu về Pokémon.', 1, 'li2-16203753979189972368201218.webp', 'hanh-trinh-pokemon', 11, 5, 4, 0, 1, 0, 'Pokémon Journeys', 1, '2022-11-24 00:12:12', '2022-11-24 00:12:12', NULL, 0, NULL, 48),
(33, 'Miền Đất Phúc', '47 phút/tập', 'Bộ phim xoay quanh về cuộc đời của những con người trong một làng gốm, với những biến đổi theo từng thời kì lịch sử.', 1, 'Miền_đất_phúc4398.jpg', 'mien-dat-phuc', 4, 8, 1, 0, 1, 0, 'Land of Happiness', 1, '2022-11-24 00:24:42', '2022-11-24 00:24:42', NULL, 0, NULL, 48);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(1, 27, 1),
(2, 27, 8),
(3, 27, 1),
(4, 27, 3),
(5, 27, 8),
(6, 26, 3),
(7, 26, 6),
(8, 26, 8),
(21, 28, 1),
(22, 28, 3),
(23, 28, 6),
(24, 28, 8),
(25, 29, 1),
(26, 29, 5),
(27, 29, 8),
(28, 30, 1),
(29, 30, 8),
(30, 30, 9),
(31, 31, 1),
(32, 31, 5),
(33, 31, 7),
(34, 31, 8),
(35, 32, 1),
(36, 32, 3),
(37, 32, 5),
(38, 33, 4),
(39, 33, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user01', 'user01@gmail.com', NULL, '$2y$10$UYX7Phik6ozCMxYBsPZAcOJOAgiRX2kABKPSRMi4Mn.b03/5eQmzy', NULL, '2022-01-03 07:00:17', '2022-01-03 07:00:17'),
(3, 'admin', '12345@gmail.com', NULL, '$2y$10$TnqQrmmJ7l7TgDn2Z71OkuredEamShauqd.08ONHhrzOamPYhlEii', NULL, '2022-10-20 09:54:11', '2022-10-20 09:54:11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
