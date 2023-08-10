-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-08-09 17:18:59
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
  `income_level` varchar(11) NOT NULL,
  `income_vote` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `vote_income`
--

INSERT INTO `vote_income` (`id`, `option_id`, `income_level`, `income_vote`) VALUES
(1, 2, '0', 0),
(2, 3, '0', 0),
(3, 4, '0', 0),
(4, 5, '0', 0),
(5, 6, '0', 0);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
