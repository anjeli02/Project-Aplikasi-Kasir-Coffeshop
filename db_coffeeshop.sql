-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2026 at 11:28 AM
-- Server version: 8.0.44
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_coffeeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `no_factur` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_customer` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`no_factur`, `tanggal`, `id_customer`, `total`, `id_user`) VALUES
('', '23-12-2025', '', 69000, 0),
('TRX-24036', '28-01-2026', 'CUST-747', 289000, 4),
('TRX-40856', '23-12-2025', 'CUST-366', 100000, 4),
('TRX-42106', '15-01-2026', 'CUST-208', 162000, 4),
('TRX-51354', '28-01-2026', 'CUST-839', 135000, 3),
('TRX-59905', '23-12-2025', 'CUST-504', 292000, 4),
('TRX-60636', '28-01-2026', 'CUST-980', 115000, 4),
('TRX-62078', '23-12-2025', 'CUST-104', 54000, 4),
('TRX-80558', '28-02-2026', 'CUST-168', 110000, 3),
('TRX-90914', '1-01-2026', 'CUST-125', 105000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kasir2`
--

CREATE TABLE `kasir2` (
  `no_factur` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_barang` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_barang` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir2`
--

INSERT INTO `kasir2` (`no_factur`, `id_barang`, `nama_barang`, `jumlah`, `harga`, `total`) VALUES
('TRX-40856', '1120', 'Cappuchino', 2, 27000, 54000),
('TRX-40856', '1150', 'Roti Bakar', 2, 23000, 46000),
('TRX-62078', '1120', 'Cappuchino', 2, 27000, 54000),
('', '1150', 'Roti Bakar', 3, 23000, 69000),
('TRX-59905', '1150', 'Roti Bakar', 5, 23000, 115000),
('TRX-59905', '1140', 'Matcha', 3, 23000, 69000),
('TRX-59905', '1120', 'Cappuchino', 4, 27000, 108000),
('TRX-60636', '1150', 'Roti Bakar', 5, 23000, 115000),
('TRX-51354', '1120', 'Cappuchino', 5, 27000, 135000),
('TRX-80558', '1170', 'Ricebowl Katsu Teriyaki', 1, 35000, 35000),
('TRX-80558', '1100', 'Expresso', 5, 15000, 75000),
('TRX-24036', '1170', 'Ricebowl Katsu Teriyaki', 3, 35000, 105000),
('TRX-24036', '1150', 'Roti Bakar', 8, 23000, 184000),
('TRX-42106', '1120', 'Cappuchino', 6, 27000, 162000),
('TRX-90914', '1160', 'Butterscoth', 3, 35000, 105000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'kopi'),
(2, 'non kopi'),
(3, 'makanan'),
(4, 'snack');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int NOT NULL,
  `nama_menu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `stok` int NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `stok`, `harga`) VALUES
(1100, 'Expresso', 12, 15000),
(1120, 'Cappuchino', 21, 27000),
(1140, 'Matcha', 14, 23000),
(1150, 'Roti Bakar', 14, 23000),
(1160, 'Butterscoth', 20, 35000),
(1170, 'Ricebowl Katsu Teriyaki', 20, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `registerusers`
--

CREATE TABLE `registerusers` (
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registerusers`
--

INSERT INTO `registerusers` (`username`) VALUES
('caca'),
('Jono'),
('ayu'),
('rizki');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_detail` int NOT NULL,
  `id_transaksi` int NOT NULL,
  `id_menu` int NOT NULL,
  `jumlah` int NOT NULL,
  `harga_satuan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_detail`, `id_transaksi`, `id_menu`, `jumlah`, `harga_satuan`) VALUES
(1, 1, 5, 1, 20000),
(2, 1, 6, 1, 25000),
(3, 2, 1, 1, 15000),
(4, 2, 2, 1, 15000),
(5, 3, 10, 1, 20000),
(6, 3, 17, 1, 40000),
(7, 4, 7, 1, 23000),
(8, 4, 12, 1, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','cashier','owner') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `namauser` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`, `namauser`) VALUES
(1, 'Salsabilla', '12345', 'owner', 'Salsabilla Ayu'),
(2, 'anjeli', '12345', 'admin', 'Ain jelita'),
(3, 'toriq', '12345', 'cashier', 'Toriq'),
(4, 'akbar', '12345', 'cashier', 'Akbar '),
(8, 'ayu', '123', 'cashier', 'ayu'),
(9, 'rizki', '123', 'admin', 'Rizki Nur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`no_factur`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92893;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
