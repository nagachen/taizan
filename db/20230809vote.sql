-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-08-09 14:57:30
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
-- 資料表結構 `vote`
--

CREATE TABLE `vote` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `main_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `vote`
--

INSERT INTO `vote` (`id`, `title`, `main_id`) VALUES
(1, 'FinalFantasy XVI和機戰傭兵 VI 各位玩家更喜歡那一款遊戲呢？', 0),
(2, '我是忠實FF迷，我選FFXVI', 1),
(3, '我有一個機械人的夢想，我選機戰傭兵VI', 1),
(4, '小孩子才做選擇，我倆個都要', 1),
(5, '我沒有PS5，我二款都買不起....', 1),
(6, '其實我想玩薩爾達，買switch~', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
