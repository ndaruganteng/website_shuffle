-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2022 pada 09.43
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_catalog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(2, 'Ndaru Ganteng', 'ndaru', 'fd80da28bf242c7a23f9bd50993c756f', '+6285647019630', 'ndaruganteng123@gmail.com', 'Slrang Kidul');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(8, 'Android'),
(9, 'Iphone');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(8, 9, 'iphone x', 5000000, '<p>warna putih</p>\r\n', 'produk1656420837.jpg', 1, '2022-06-28 12:53:57'),
(10, 9, 'iphone xr', 6000000, '<p>warna putih</p>\r\n', 'produk1656420979.jpg', 1, '2022-06-28 12:55:13'),
(11, 9, 'iphone xr', 6000000, '<p>warna biru</p>\r\n', 'produk1656420955.jpg', 0, '2022-06-28 12:55:55'),
(12, 9, 'iphone xs', 7000000, '<p>warna putih</p>\r\n', 'produk1656421024.jpeg', 1, '2022-06-28 12:57:04'),
(13, 9, 'iphone xs', 7000000, '<p>warna hitam</p>\r\n', 'produk1656421062.jpg', 1, '2022-06-28 12:57:42'),
(14, 9, 'iphone xs max', 8000000, '<p>warna gold</p>\r\n', 'produk1656421130.jpg', 1, '2022-06-28 12:58:50'),
(15, 9, 'iphone xs max', 8000000, '<p>warna hitam</p>\r\n', 'produk1656421174.jpg', 1, '2022-06-28 12:59:34'),
(16, 9, 'iphone 11', 9000000, '<p>warna hijau tosca</p>\r\n', 'produk1656421219.jpg', 1, '2022-06-28 13:00:19'),
(17, 9, 'iphone11', 9000000, '<p>warna kuning</p>\r\n', 'produk1656421252.jpg', 1, '2022-06-28 13:00:52'),
(18, 9, 'iphone 11 pro', 10000000, '<p>warna hitam</p>\r\n', 'produk1656421307.jpg', 1, '2022-06-28 13:01:47'),
(19, 9, 'iphone 11 pro', 10000000, '<p>warna rose gold</p>\r\n', 'produk1656421350.jpg', 1, '2022-06-28 13:02:30'),
(20, 9, 'iphone 11 pro max', 11000000, '<p>warna hitam</p>\r\n', 'produk1656421405.jpg', 1, '2022-06-28 13:03:25'),
(21, 9, 'iphone 11 pro max', 11000000, '<p>warna putih</p>\r\n', 'produk1656421440.jpg', 1, '2022-06-28 13:04:00'),
(22, 9, 'iphone 12 ', 12000000, '<p>warna biru</p>\r\n', 'produk1656421488.jpg', 1, '2022-06-28 13:04:48'),
(25, 9, 'iphone 12 pro', 12000000, '<p>warna putih</p>\r\n', 'produk1656421639.jpg', 1, '2022-06-28 13:07:19'),
(26, 9, 'iphone 12 pro max', 13000000, '<p>warna gold</p>\r\n', 'produk1656421686.jpg', 1, '2022-06-28 13:08:06'),
(27, 9, 'iphone 13', 14000000, '<p>warna biru</p>\r\n', 'produk1656421754.png', 1, '2022-06-28 13:09:14'),
(28, 9, 'iphone 13', 14000000, '<p>warna putih</p>\r\n', 'produk1656421797.png', 1, '2022-06-28 13:09:57'),
(29, 9, 'iphone 13 pro', 15000000, '<p>warna putih</p>\r\n', 'produk1656421838.png', 1, '2022-06-28 13:10:38'),
(30, 9, 'iphone 13 pro max', 16000000, '<p>warna rose gold</p>\r\n', 'produk1656421894.jpg', 1, '2022-06-28 13:11:34'),
(31, 9, 'iphone 13 pro max', 16000000, '<p>warna hitam</p>\r\n', 'produk1656421938.jpg', 1, '2022-06-28 13:12:18'),
(32, 9, 'iphone 13 pro max', 16000000, '<p>warna putih</p>\r\n', 'produk1656421967.jpg', 1, '2022-06-28 13:12:47'),
(33, 8, 'xiaomi poco x3', 5000000, '<p>warna putih</p>\r\n', 'produk1656439247.jpg', 1, '2022-06-28 18:00:47'),
(34, 8, 'xiaomi redmi 9', 5000000, '<p>warna biru putih</p>\r\n', 'produk1656439285.jpg', 1, '2022-06-28 18:01:25'),
(35, 8, 'xiaomi note 10', 5000000, '<p>warna hitam</p>\r\n', 'produk1656439317.jpg', 1, '2022-06-28 18:01:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
