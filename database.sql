-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 12:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project_ppl`
--
CREATE DATABASE IF NOT EXISTS `db_project_ppl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_project_ppl`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(2, 'OLI SHELL', 'oli shell', 'Oli', 40000, 14, 'olishell.png'),
(3, 'Oli Enduro', 'oli enduro ', 'Oli', 38000, 37, 'olienduro.jpg'),
(4, 'Oli Castrol', 'Oli Castrol', 'Oli', 46000, 8, 'olicastrol.png'),
(26, 'Kampas Rem', 'Kampas rem untuk honda', 'Kampas Rem', 20000, 14, 'kampasremhonda.png'),
(27, 'Kampas Rem', 'Kampas rem mio', 'Kampas Rem', 20000, 13, 'kampasremdepanmio.png'),
(28, 'Filter Oli', 'filter oli dari yamaha', 'Filter Oli', 50000, 20, 'filteroliyamaha.png'),
(29, 'Ban FDR', 'Ban FDR Sport', 'Ban Luar', 280000, 10, 'banfdrsportxr.png'),
(30, 'Ban Maxxis', 'Ban Luar Maxxis', 'Ban Luar', 182000, 10, 'banmaxxis.png'),
(31, 'Ban Corsa', 'Ban Corsa', 'Ban Luar', 186000, 50, 'bancorsa.png'),
(32, 'Filter Oli Aizoma', 'Filter Oli', 'Filter Oli', 40000, 15, 'filter_oli_aizoma.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'rifan', 'gbu', '2022-12-05 13:19:59', '2022-12-06 13:19:59'),
(2, 'dani', 'antasari', '2022-12-05 13:36:36', '2022-12-06 13:36:36'),
(3, 'dani', 'antasari', '2022-12-05 15:03:02', '2022-12-06 15:03:02'),
(4, 'rilo', 'gbu', '2022-12-05 15:42:38', '2022-12-06 15:42:38'),
(6, 'RE', 'gbu', '2022-12-23 02:31:00', '2022-12-24 02:31:00'),
(7, '', '', '2022-12-23 02:31:40', '2022-12-24 02:31:40'),
(8, '', '', '2022-12-23 03:08:05', '2022-12-24 03:08:05'),
(9, 'rifan', 'gbu', '2023-01-05 22:58:20', '2023-01-06 22:58:20'),
(10, 'pandu', 'gbu', '2023-01-16 13:37:21', '2023-01-17 13:37:21'),
(11, 'rey', 'gbu', '2023-01-16 16:14:09', '2023-01-17 16:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `harga` int(20) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 2, 'OLI SHELL', 1, 40000, ''),
(2, 1, 3, 'Oli Enduro', 1, 38000, ''),
(3, 1, 4, 'Oli Castrol', 1, 46000, ''),
(4, 2, 2, 'OLI SHELL', 1, 40000, ''),
(5, 4, 2, 'OLI SHELL', 1, 40000, ''),
(6, 4, 3, 'Oli Enduro', 1, 38000, ''),
(7, 4, 4, 'Oli Castrol', 1, 46000, ''),
(8, 5, 2, 'OLI SHELL', 1, 40000, ''),
(9, 6, 3, 'Oli Enduro', 1, 38000, ''),
(10, 7, 2, 'OLI SHELL', 2, 40000, ''),
(11, 8, 2, 'OLI SHELL', 1, 40000, ''),
(12, 9, 3, 'Oli Enduro', 1, 38000, ''),
(13, 9, 2, 'OLI SHELL', 1, 40000, ''),
(14, 9, 14, 'Filter Oli Yamaha', 1, 39000, ''),
(15, 9, 4, 'Oli Castrol', 1, 46000, ''),
(16, 10, 2, 'OLI SHELL', 1, 40000, ''),
(17, 10, 3, 'Oli Enduro', 1, 38000, ''),
(18, 11, 2, 'OLI SHELL', 1, 40000, ''),
(19, 11, 26, 'Kampas Rem', 1, 20000, ''),
(20, 11, 4, 'Oli Castrol', 1, 46000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_Penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'rifan', 'rifan', '123', 2),
(4, 'rara', 'rara', '123', 2),
(5, 'pandu', 'pandu', '123', 2),
(6, 'rey', 'rey', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
