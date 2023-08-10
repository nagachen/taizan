-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-08-10 17:29:46
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `s1120208`
--

-- --------------------------------------------------------

--
-- 資料表結構 `vote_age`
--

CREATE TABLE `vote_age` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(11) NOT NULL,
  `age_level` varchar(20) NOT NULL,
  `age_vote` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `vote_age`
--

INSERT INTO `vote_age` (`id`, `option_id`, `age_level`, `age_vote`) VALUES
(1, 3, 'age19-24', 1),
(2, 3, 'age18', 1),
(3, 4, 'age18', 1),
(4, 4, 'age18', 1),
(5, 5, 'age18', 1),
(6, 5, 'age19-24', 1),
(7, 6, 'age19-24', 1),
(8, 3, 'age45-64', 1),
(9, 2, 'age25-29', 1),
(10, 2, 'age25-29', 1),
(11, 2, 'age25-29', 1),
(12, 5, 'age65', 1),
(13, 4, 'age65', 1),
(14, 3, 'age30-44', 1),
(15, 2, 'age30-44', 1),
(16, 6, 'age19-24', 1),
(17, 3, 'age25-29', 1),
(18, 2, 'age45-64', 1),
(19, 3, 'age25-29', 1),
(20, 4, 'age30-44', 1),
(21, 3, 'age25-29', 1),
(22, 3, 'age25-29', 1),
(23, 4, 'age25-29', 1),
(24, 2, 'age30-44', 1),
(25, 2, 'age25-29', 1),
(26, 4, 'age65', 1),
(27, 4, 'age30-44', 1),
(28, 2, 'age30-44', 1),
(29, 2, 'age65', 1),
(30, 2, 'age30-44', 1),
(31, 6, 'age30-44', 1),
(32, 3, 'age45-64', 1),
(33, 2, 'age45-64', 1),
(34, 3, 'age30-44', 1),
(35, 3, 'age19-24', 1),
(36, 3, 'age19-24', 1),
(37, 2, 'age25-29', 1),
(38, 3, 'age30-44', 1),
(39, 4, 'age25-29', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `vote_age`
--
ALTER TABLE `vote_age`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `vote_age`
--
ALTER TABLE `vote_age`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
