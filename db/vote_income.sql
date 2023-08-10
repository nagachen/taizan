-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-08-10 17:30:11
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
-- 資料表結構 `vote_income`
--

CREATE TABLE `vote_income` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(11) NOT NULL,
  `income_level` varchar(20) NOT NULL,
  `income_vote` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `vote_income`
--

INSERT INTO `vote_income` (`id`, `option_id`, `income_level`, `income_vote`) VALUES
(1, 3, 'income59-80', 1),
(2, 3, 'income59-80', 1),
(3, 4, 'income59-80', 1),
(4, 4, 'income30', 1),
(5, 5, 'income30', 1),
(6, 5, 'income30', 1),
(7, 6, 'income30', 1),
(8, 3, 'income30', 1),
(9, 2, 'income81-100', 1),
(10, 2, 'income59-80', 1),
(11, 2, 'income59-80', 1),
(12, 5, 'income81-100', 1),
(13, 4, 'income81-100', 1),
(14, 3, 'income46-59', 1),
(15, 2, 'income59-80', 1),
(16, 6, 'income30-45', 1),
(17, 3, 'income59-80', 1),
(18, 2, 'income30-45', 1),
(19, 3, 'income81-100', 1),
(20, 4, 'income59-80', 1),
(21, 3, 'income100', 1),
(22, 3, 'income100', 1),
(23, 4, 'income100', 1),
(24, 2, 'income30-45', 1),
(25, 2, 'income59-80', 1),
(26, 4, 'income100', 1),
(27, 4, 'income81-100', 1),
(28, 2, 'income30-45', 1),
(29, 2, 'income46-59', 1),
(30, 2, 'income59-80', 1),
(31, 6, 'income81-100', 1),
(32, 3, 'income59-80', 1),
(33, 2, 'income30', 1),
(34, 3, 'income30-45', 1),
(35, 3, 'income81-100', 1),
(36, 3, 'income81-100', 1),
(37, 2, 'income59-80', 1),
(38, 3, 'income30-45', 1),
(39, 4, 'income100', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `vote_income`
--
ALTER TABLE `vote_income`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `vote_income`
--
ALTER TABLE `vote_income`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
