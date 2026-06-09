-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2026 at 03:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_dbspotify`
--
CREATE DATABASE IF NOT EXISTS `sistem_dbspotify` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistem_dbspotify`;

-- --------------------------------------------------------

--
-- Table structure for table `iklan_user`
--

DROP TABLE IF EXISTS `iklan_user`;
CREATE TABLE `iklan_user` (
  `iklan_user_id` int(11) NOT NULL,
  `iklan_id` int(11) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `waktu_tayang` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iklan_user`
--

INSERT INTO `iklan_user` (`iklan_user_id`, `iklan_id`, `user_id`, `waktu_tayang`) VALUES
(1, 801, 'u02', '2024-01-11 14:03:00'),
(2, 801, 'u04', '2024-02-11 16:03:00'),
(3, 802, 'u02', '2024-01-11 14:09:00'),
(4, 802, 'u04', '2024-02-11 16:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `listening_history`
--

DROP TABLE IF EXISTS `listening_history`;
CREATE TABLE `listening_history` (
  `history_id` int(11) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `lagu_id` int(11) NOT NULL,
  `waktu_putar` datetime DEFAULT NULL,
  `durasi_didengar` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listening_history`
--

INSERT INTO `listening_history` (`history_id`, `user_id`, `lagu_id`, `waktu_putar`, `durasi_didengar`) VALUES
(1, 'u01', 101, '2024-01-02 08:00:00', '00:05:35'),
(2, 'u01', 102, '2024-01-02 08:04:00', '00:05:38'),
(3, 'u02', 103, '2024-01-11 14:00:00', '00:04:20'),
(4, 'u02', 104, '2024-01-11 14:05:00', '00:05:01'),
(5, 'u03', 105, '2024-02-02 20:00:00', '00:04:50'),
(6, 'u03', 106, '2024-02-02 20:06:00', '00:04:55'),
(7, 'u04', 107, '2024-02-11 16:00:00', '00:05:40'),
(8, 'u04', 108, '2024-02-11 16:04:00', '00:03:55'),
(9, 'u05', 109, '2024-03-02 07:00:00', '00:06:02'),
(10, 'u05', 110, '2024-03-02 07:05:00', '00:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_lagu`
--

DROP TABLE IF EXISTS `playlist_lagu`;
CREATE TABLE `playlist_lagu` (
  `playlist_lagu_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `lagu_id` int(11) NOT NULL,
  `urutan_lagu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist_lagu`
--

INSERT INTO `playlist_lagu` (`playlist_lagu_id`, `playlist_id`, `lagu_id`, `urutan_lagu`) VALUES
(1, 401, 101, 1),
(2, 401, 102, 2),
(3, 402, 101, 1),
(4, 403, 103, 1),
(5, 403, 104, 2),
(6, 404, 103, 1),
(7, 405, 105, 1),
(8, 405, 106, 2),
(9, 406, 107, 1),
(10, 406, 108, 2),
(11, 407, 109, 1),
(12, 408, 110, 1);

-- --------------------------------------------------------

--
-- Table structure for table `search_result`
--

DROP TABLE IF EXISTS `search_result`;
CREATE TABLE `search_result` (
  `search_result_id` int(11) NOT NULL,
  `search_id` int(11) NOT NULL,
  `lagu_id` int(11) NOT NULL,
  `urutan_hasil` int(11) NOT NULL,
  `relevansi_persen` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_result`
--

INSERT INTO `search_result` (`search_result_id`, `search_id`, `lagu_id`, `urutan_hasil`, `relevansi_persen`) VALUES
(1, 701, 101, 1, 98.50),
(2, 702, 103, 1, 97.00),
(3, 703, 105, 1, 96.00),
(4, 703, 106, 2, 94.50),
(5, 704, 107, 1, 99.00),
(6, 705, 109, 1, 97.50),
(7, 705, 110, 2, 95.00);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_album`
--

DROP TABLE IF EXISTS `tabel_album`;
CREATE TABLE `tabel_album` (
  `album_id` int(11) NOT NULL,
  `nama_album` varchar(100) DEFAULT NULL,
  `tanggal_rilis` date DEFAULT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_album`
--

INSERT INTO `tabel_album` (`album_id`, `nama_album`, `tanggal_rilis`, `artist_id`) VALUES
(301, 'After Hours', '2020-03-20', 201),
(302, 'Nightmare', '1999-07-24', 202),
(303, 'Future Nostalgia', '2020-03-27', 203),
(304, 'Fearless', '2008-11-11', 204),
(305, 'A Night at the Opera', '1975-11-21', 205),
(306, 'News of the World', '1977-10-28', 205),
(307, 'BE', '2020-11-20', 206),
(308, 'Butter', '2021-05-21', 206),
(309, 'Divide', '2017-03-03', 207);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_artist`
--

DROP TABLE IF EXISTS `tabel_artist`;
CREATE TABLE `tabel_artist` (
  `artist_id` int(11) NOT NULL,
  `nama_artist` varchar(100) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `follower` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_artist`
--

INSERT INTO `tabel_artist` (`artist_id`, `nama_artist`, `bio`, `follower`) VALUES
(201, 'The Weeknd', 'Penyanyi R&B asal Kanada', 115600000),
(202, 'Avenged Sevenfold', 'Band heavy metal asal California', 6000000),
(203, 'Dua Lipa', 'Penyanyi pop asal Inggris', 47900000),
(204, 'Taylor Swift', 'Penyanyi country-pop asal Amerika', 156000000),
(205, 'Queen', 'Band rock legendaris asal Inggris', 40000000),
(206, 'BTS', 'Grup K-Pop asal Korea Selatan', 85000000),
(207, 'Ed Sheeran', 'Penyanyi pop asal Inggris', 126000000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_iklan`
--

DROP TABLE IF EXISTS `tabel_iklan`;
CREATE TABLE `tabel_iklan` (
  `iklan_id` int(11) NOT NULL,
  `konten_iklan` text DEFAULT NULL,
  `durasi_dtk` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_iklan`
--

INSERT INTO `tabel_iklan` (`iklan_id`, `konten_iklan`, `durasi_dtk`) VALUES
(801, 'Iklan Shopee: Belanja lebih hemat!', '00:00:15'),
(802, 'Iklan Tokopedia: Gratis ongkir hari ini', '00:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_lagu`
--

DROP TABLE IF EXISTS `tabel_lagu`;
CREATE TABLE `tabel_lagu` (
  `lagu_id` int(11) NOT NULL,
  `judul_lagu` varchar(100) DEFAULT NULL,
  `jenis_lagu` varchar(50) DEFAULT NULL,
  `album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `durasi_menit` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_lagu`
--

INSERT INTO `tabel_lagu` (`lagu_id`, `judul_lagu`, `jenis_lagu`, `album_id`, `artist_id`, `durasi_menit`) VALUES
(101, 'Blinding Lights', 'Pop', 301, 201, '00:05:35'),
(102, 'So Far Away', 'Rock', 302, 202, '00:05:38'),
(103, 'Levitating', 'Pop', 303, 203, '00:04:20'),
(104, 'Love Story', 'Country', 304, 204, '00:05:01'),
(105, 'Bohemian Rhapsody', 'Rock', 305, 205, '00:04:50'),
(106, 'We Will Rock You', 'Rock', 306, 205, '00:04:55'),
(107, 'Dynamite', 'K-Pop', 307, 206, '00:05:40'),
(108, 'Butter', 'K-Pop', 308, 206, '00:03:55'),
(109, 'Shape of You', 'Pop', 309, 207, '00:06:02'),
(110, 'Perfect', 'Pop', 309, 207, '00:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_playlist`
--

DROP TABLE IF EXISTS `tabel_playlist`;
CREATE TABLE `tabel_playlist` (
  `playlist_id` int(11) NOT NULL,
  `nama_playlist` varchar(100) DEFAULT NULL,
  `tanggal_dibuat` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `user_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_playlist`
--

INSERT INTO `tabel_playlist` (`playlist_id`, `nama_playlist`, `tanggal_dibuat`, `status`, `user_id`) VALUES
(401, 'Favorit', '2024-01-01', 'public', 'u01'),
(402, 'Vibes Malam', '2024-01-02', 'private', 'u01'),
(403, 'Pop Hits', '2024-01-10', 'public', 'u02'),
(404, 'Study Mode', '2024-01-15', 'private', 'u02'),
(405, 'Rock Klasik', '2024-02-01', 'public', 'u03'),
(406, 'K-Pop Mood', '2024-02-10', 'public', 'u04'),
(407, 'Santai', '2024-03-01', 'public', 'u05'),
(408, 'Workout', '2024-03-02', 'public', 'u05');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_search`
--

DROP TABLE IF EXISTS `tabel_search`;
CREATE TABLE `tabel_search` (
  `search_id` int(11) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `kata_kunci` varchar(100) DEFAULT NULL,
  `waktu_pencarian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_search`
--

INSERT INTO `tabel_search` (`search_id`, `user_id`, `kata_kunci`, `waktu_pencarian`) VALUES
(701, 'u01', 'The Weeknd', '2024-01-02 07:55:00'),
(702, 'u02', 'Dua Lipa', '2024-01-11 13:58:00'),
(703, 'u03', 'Queen rock', '2024-02-02 19:55:00'),
(704, 'u04', 'BTS Dynamite', '2024-02-11 15:58:00'),
(705, 'u05', 'Ed Sheeran', '2024-03-02 06:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_subscription`
--

DROP TABLE IF EXISTS `tabel_subscription`;
CREATE TABLE `tabel_subscription` (
  `subs_id` int(11) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `tipe_paket` varchar(50) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_berakhir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_subscription`
--

INSERT INTO `tabel_subscription` (`subs_id`, `user_id`, `tipe_paket`, `tanggal_mulai`, `tanggal_berakhir`) VALUES
(601, 'u01', 'Premium Individual', '2024-01-01', '2024-02-01'),
(602, 'u03', 'Premium Individual', '2024-02-01', '2024-03-01'),
(603, 'u05', 'Premium Duo', '2024-03-01', '2024-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

DROP TABLE IF EXISTS `tabel_transaksi`;
CREATE TABLE `tabel_transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `subs_id` int(11) NOT NULL,
  `metode_pembayaran` varchar(50) DEFAULT NULL,
  `jumlah_rp` int(11) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`transaksi_id`, `user_id`, `subs_id`, `metode_pembayaran`, `jumlah_rp`, `tanggal_transaksi`, `status`) VALUES
(501, 'u01', 601, 'GoPay', 49000, '2024-01-01', 'sukses'),
(502, 'u03', 602, 'Transfer Bank', 49000, '2024-02-01', 'sukses'),
(503, 'u05', 603, 'OVO', 79000, '2024-03-01', 'sukses');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

DROP TABLE IF EXISTS `tabel_user`;
CREATE TABLE `tabel_user` (
  `user_id` varchar(5) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tipe_akun` varchar(20) DEFAULT NULL,
  `negara` varchar(30) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`user_id`, `username`, `email`, `tipe_akun`, `negara`, `tanggal_daftar`) VALUES
('u01', 'faiz', 'faiz@gmail.com', 'premium', 'Indonesia', '2023-06-01'),
('u02', 'aulia', 'aulia@gmail.com', 'free', 'Indonesia', '2023-07-15'),
('u03', 'bustomi', 'bustomi@gmail.com', 'premium', 'Indonesia', '2023-08-20'),
('u04', 'maharda', 'maharda@gmail.com', 'free', 'Indonesia', '2023-09-10'),
('u05', 'budi', 'budi@gmail.com', 'premium', 'Indonesia', '2023-10-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iklan_user`
--
ALTER TABLE `iklan_user`
  ADD PRIMARY KEY (`iklan_user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_iklan_user_iklan_id` (`iklan_id`);

--
-- Indexes for table `listening_history`
--
ALTER TABLE `listening_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `lagu_id` (`lagu_id`);

--
-- Indexes for table `playlist_lagu`
--
ALTER TABLE `playlist_lagu`
  ADD PRIMARY KEY (`playlist_lagu_id`),
  ADD KEY `lagu_id` (`lagu_id`),
  ADD KEY `idx_playlist_lagu_playlist_id` (`playlist_id`);

--
-- Indexes for table `search_result`
--
ALTER TABLE `search_result`
  ADD PRIMARY KEY (`search_result_id`),
  ADD KEY `lagu_id` (`lagu_id`),
  ADD KEY `idx_search_result_search_id` (`search_id`);

--
-- Indexes for table `tabel_album`
--
ALTER TABLE `tabel_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `tabel_artist`
--
ALTER TABLE `tabel_artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `tabel_iklan`
--
ALTER TABLE `tabel_iklan`
  ADD PRIMARY KEY (`iklan_id`);

--
-- Indexes for table `tabel_lagu`
--
ALTER TABLE `tabel_lagu`
  ADD PRIMARY KEY (`lagu_id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `tabel_playlist`
--
ALTER TABLE `tabel_playlist`
  ADD PRIMARY KEY (`playlist_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tabel_search`
--
ALTER TABLE `tabel_search`
  ADD PRIMARY KEY (`search_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tabel_subscription`
--
ALTER TABLE `tabel_subscription`
  ADD PRIMARY KEY (`subs_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subs_id` (`subs_id`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iklan_user`
--
ALTER TABLE `iklan_user`
  MODIFY `iklan_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlist_lagu`
--
ALTER TABLE `playlist_lagu`
  MODIFY `playlist_lagu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `search_result`
--
ALTER TABLE `search_result`
  MODIFY `search_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `iklan_user`
--
ALTER TABLE `iklan_user`
  ADD CONSTRAINT `iklan_user_ibfk_1` FOREIGN KEY (`iklan_id`) REFERENCES `tabel_iklan` (`iklan_id`),
  ADD CONSTRAINT `iklan_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tabel_user` (`user_id`);

--
-- Constraints for table `listening_history`
--
ALTER TABLE `listening_history`
  ADD CONSTRAINT `listening_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tabel_user` (`user_id`),
  ADD CONSTRAINT `listening_history_ibfk_2` FOREIGN KEY (`lagu_id`) REFERENCES `tabel_lagu` (`lagu_id`);

--
-- Constraints for table `playlist_lagu`
--
ALTER TABLE `playlist_lagu`
  ADD CONSTRAINT `playlist_lagu_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `tabel_playlist` (`playlist_id`),
  ADD CONSTRAINT `playlist_lagu_ibfk_2` FOREIGN KEY (`lagu_id`) REFERENCES `tabel_lagu` (`lagu_id`);

--
-- Constraints for table `search_result`
--
ALTER TABLE `search_result`
  ADD CONSTRAINT `search_result_ibfk_1` FOREIGN KEY (`search_id`) REFERENCES `tabel_search` (`search_id`),
  ADD CONSTRAINT `search_result_ibfk_2` FOREIGN KEY (`lagu_id`) REFERENCES `tabel_lagu` (`lagu_id`);

--
-- Constraints for table `tabel_album`
--
ALTER TABLE `tabel_album`
  ADD CONSTRAINT `tabel_album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `tabel_artist` (`artist_id`);

--
-- Constraints for table `tabel_lagu`
--
ALTER TABLE `tabel_lagu`
  ADD CONSTRAINT `tabel_lagu_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `tabel_album` (`album_id`),
  ADD CONSTRAINT `tabel_lagu_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `tabel_artist` (`artist_id`);

--
-- Constraints for table `tabel_playlist`
--
ALTER TABLE `tabel_playlist`
  ADD CONSTRAINT `tabel_playlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tabel_user` (`user_id`);

--
-- Constraints for table `tabel_search`
--
ALTER TABLE `tabel_search`
  ADD CONSTRAINT `tabel_search_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tabel_user` (`user_id`);

--
-- Constraints for table `tabel_subscription`
--
ALTER TABLE `tabel_subscription`
  ADD CONSTRAINT `tabel_subscription_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tabel_user` (`user_id`);

--
-- Constraints for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD CONSTRAINT `tabel_transaksi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tabel_user` (`user_id`),
  ADD CONSTRAINT `tabel_transaksi_ibfk_2` FOREIGN KEY (`subs_id`) REFERENCES `tabel_subscription` (`subs_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
