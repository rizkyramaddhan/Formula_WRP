-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Bulan Mei 2024 pada 01.36
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formula_wrp2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(50) NOT NULL,
  `catalog` varchar(255) NOT NULL,
  `dapartemen` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `nama`, `nik`, `username`, `password`, `email`, `catalog`, `dapartemen`, `jabatan`, `level`) VALUES
(1, 'Rizky Ramadhan', 221011401568, 'admin', '$2y$10$G2nxXeMpHmUc8J98ntrFT.FgubPNIORhNwpVeCoPW9lFA4OHpPT5e', 'rizkyramaddhan648@gmail.com', 'PT Wajah Rejuvenasi Perempuan Indonesia', 'RnD', 'RnD', 1),
(2, 'Rizky Ramadhan', 221011401568, 'user', '$2y$10$16q5gdxxPtoKzY30bBbFL.riTaQsbL6YEtia1.LFfMX/r2ioiK22W', 'rizkyramaddhan648@gmail.com', 'PT Wajah Rejuvenasi Perempuan Indonesia', 'RnD', 'RnD', 1),
(4, 'Rizky Ramadhan', 221011401568, 'manager', '$2y$10$PAV7lNTymmdh6.8a30kEaegSJZZ7wFnmdyS0wUerhNlaBrudsqOqW', 'rizkyramaddhan648@gmail.com', 'PT Wajah Rejuvenasi Perempuan Indonesia', 'RnD', 'Administrasi RnD', 2),
(7, 'YUDHA ARDIYANSYAHHHHHH', 221011401568, 'yudha', '$2y$10$NT7cpl/rxbt9wPNz6HEbnuQpNJByhbgwX9SLCKLH4bAprBj.Xdy0q', 'yudha.ardiyansyah07@gmail.com', 'PT Wajah Rejuvenasi Perempuan Indonesia', 'RnD', 'RnD', 3),
(8, 'rizky ramadhan', 221011401568, 'R&D', '$2y$10$.yoy/2561jhXwTQotZyXxeV2.5QO/jWvWqqjQR.UUxobfQMWrFywK', 'rizkyramaddhan648@gmail.com', 'PT Wajah Rejuvenasi Perempuan Indonesia', 'RnD', 'AdminSuport', 5),
(10, 'Rizky Ramadhan', 221011401568, 'rizky', '$2y$10$NyLBj9/TDBKn44Ap8xsyT.Wft4rnf4yXOeTNZoFBjP6E3hI9s5mhm', 'rizkyramaddhan648@gmail.com', 'PT Wajah Rejuvenasi Perempuan Indonesia', 'RnD', 'Administrasi RnD', 2),
(11, 'Rizky Ramadhan', 221011401568, 'approval', '$2y$10$d/9bFTEDhEsmWsNhP/5/SOv2RJ5WUI7gsdF3Y4OGWeGNkn5TVKZc6', 'rizkyramaddhan648@gmail.com', 'PT Wajah Rejuvenasi Perempuan Indonesia', 'RnD', 'Administrasi RnD', 3),
(12, 'Rizky Ramadhan', 221011401568, 'rizky Ramadhan', '$2y$10$LAh8zEETcNv45BXnFT9rHuOCnCh2cG89W5T7ZWsMRa2sE/j.j6ufu', 'rizkyramaddhan648@gmail.com', 'PT Wajah Rejuvenasi Perempuan Indonesia', 'RnD', 'RnD', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `approve_formula`
--

CREATE TABLE `approve_formula` (
  `id` int(11) NOT NULL,
  `id_formula` int(11) NOT NULL,
  `kk` varchar(20) NOT NULL,
  `nama_formula` varchar(50) NOT NULL,
  `bacth` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `approve_formula`
--

INSERT INTO `approve_formula` (`id`, `id_formula`, `kk`, `nama_formula`, `bacth`, `tanggal`, `status`) VALUES
(1, 1, 'Cz', 'As', 0, '2023-11-20 10:28:09', 0),
(2, 2, 'Zxvb', 'Asd', 0, '2023-11-20 10:29:34', 0),
(3, 1, 'Kmcnx', 'Burger Mister Beast', 0, '2023-12-08 03:41:28', 0),
(4, 2, 'Muhikj', 'Martabak Keju', 0, '2023-12-08 03:41:56', 0),
(5, 3, '', '', 0, '2024-01-18 04:08:30', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan`
--

CREATE TABLE `bahan` (
  `id` int(11) NOT NULL,
  `id_formula` int(11) NOT NULL,
  `code_bahan` varchar(20) NOT NULL,
  `nama_bahan` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_formula`
--

CREATE TABLE `data_formula` (
  `id_formula` int(11) NOT NULL,
  `kategori_produk` varchar(256) NOT NULL,
  `sub_kategori_produk` varchar(256) NOT NULL,
  `nama_produk` varchar(256) NOT NULL,
  `tanggal_estimasi_berlaku` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `revisi` varchar(256) NOT NULL,
  `produk_io` varchar(256) NOT NULL,
  `lokasi_maklon` varchar(255) NOT NULL,
  `lokasi_gudang_bb` varchar(256) NOT NULL,
  `target_serving` float NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `formula_bj` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_formula`
--

INSERT INTO `data_formula` (`id_formula`, `kategori_produk`, `sub_kategori_produk`, `nama_produk`, `tanggal_estimasi_berlaku`, `revisi`, `produk_io`, `lokasi_maklon`, `lokasi_gudang_bb`, `target_serving`, `kategori`, `formula_bj`, `status`) VALUES
(1, '', '', 'dedeupdate', '0000-00-00 00:00:00', 'dedeupdate', '', '', '', 1, 'KFP_Premix', 0, 0),
(2, '', '', 'dedemaklon', '0000-00-00 00:00:00', 'dedemaklon', '1', '', '', 0, '', 0, 0),
(3, '', '', 'dedemaklon1', '0000-00-00 00:00:00', 'dedemaklon1', '1', '', '', 0, '', 0, 0),
(4, '', '', '1', '0000-00-00 00:00:00', '1', '', '0', '', 1, '', 123, 0),
(5, '', '', 'Rizky1', '0000-00-00 00:00:00', '', '', '0', '', 0, '', 0, 0),
(6, '', '', '', '0000-00-00 00:00:00', '', '', '0', '', 0, '', 0, 0),
(7, '', '', 'rizky123', '0000-00-00 00:00:00', '', '', '0', '', 0, '', 0, 0),
(8, '', '', '', '0000-00-00 00:00:00', '', '', '0', '', 0, '', 0, 0),
(9, '', '', '', '0000-00-00 00:00:00', '', '', '0', '', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_formula_bahan`
--

CREATE TABLE `data_formula_bahan` (
  `id` int(11) NOT NULL,
  `no_table` int(11) NOT NULL,
  `id_formula` int(11) NOT NULL,
  `per_sarving` float NOT NULL,
  `per_bacth` float NOT NULL,
  `scale_bacth` float NOT NULL,
  `scale_serving` float NOT NULL,
  `jumlah_bacth` float NOT NULL,
  `jumlah_scale_bacth` float NOT NULL,
  `jumlah_scale_serving` float NOT NULL,
  `base_perhitungan` float NOT NULL,
  `persentase` float NOT NULL,
  `pembulatan` int(11) NOT NULL,
  `pembulatan_user` int(11) NOT NULL,
  `timbangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_formula_bahan1`
--

CREATE TABLE `data_formula_bahan1` (
  `id` int(11) NOT NULL,
  `no_table` int(11) NOT NULL,
  `id_formula` int(11) NOT NULL,
  `id_bahan` varchar(50) NOT NULL,
  `per_bacth` int(11) NOT NULL,
  `per_sarving` int(11) NOT NULL,
  `id_bah_alternatif` int(11) NOT NULL,
  `code_item` varchar(12) NOT NULL,
  `code_komputer` varchar(14) NOT NULL,
  `nama_sederhana` varchar(100) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_formula_bahan1`
--

INSERT INTO `data_formula_bahan1` (`id`, `no_table`, `id_formula`, `id_bahan`, `per_bacth`, `per_sarving`, `id_bah_alternatif`, `code_item`, `code_komputer`, `nama_sederhana`, `urutan`) VALUES
(1, 0, 12, '0', 0, 0, 0, '', '', '', 0),
(2, 0, 6, '12', 0, 0, 0, '', '', '', 0),
(3, 1, 6, '0', 0, 0, 0, '', '', '', 0),
(4, 0, 7, '12', 123, 0, 0, '', '', '', 0),
(5, 0, 8, '12/13', 123, 123, 0, '', '', '', 0),
(6, 0, 9, '12/13', 231, 123, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `formula`
--

CREATE TABLE `formula` (
  `id_formula` int(11) NOT NULL,
  `kk` varchar(20) NOT NULL,
  `nama_formula` varchar(50) NOT NULL,
  `bacth` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `histori_bahan`
--

CREATE TABLE `histori_bahan` (
  `id` int(11) NOT NULL,
  `id_histori` int(11) NOT NULL,
  `code_bahan` varchar(20) NOT NULL,
  `nama_bahan` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `histori_formula`
--

CREATE TABLE `histori_formula` (
  `id` int(11) NOT NULL,
  `id_histori` int(11) NOT NULL,
  `kk` varchar(20) NOT NULL,
  `nama_formula` varchar(50) NOT NULL,
  `bacth` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `histori_formula`
--

INSERT INTO `histori_formula` (`id`, `id_histori`, `kk`, `nama_formula`, `bacth`, `tanggal`, `status`) VALUES
(1, 1, 'Kmcnx', 'Burger Mister Beast', 0, '2023-12-08 03:41:28', 0),
(2, 2, 'Muhikj', 'Martabak Keju', 0, '2023-12-08 03:41:56', 0),
(3, 3, '', '', 0, '2024-01-18 04:08:30', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `id_data_alternatif`
--

CREATE TABLE `id_data_alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `id_bahan_utama` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `keterangan_revisi` text NOT NULL,
  `keterangan_status` text NOT NULL,
  `keterangan_approval` text NOT NULL,
  `approval` tinyint(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `id_data_alternatif`
--

INSERT INTO `id_data_alternatif` (`id_alternatif`, `id_bahan_utama`, `status`, `keterangan_revisi`, `keterangan_status`, `keterangan_approval`, `approval`, `date`) VALUES
(1, 0, 1, '', '', '', 0, '2024-05-10 04:22:11'),
(2, 0, 1, '', '', '', 0, '2024-05-10 04:22:48'),
(3, 0, 1, '', '', '', 0, '2024-05-10 04:24:21'),
(4, 0, 1, '', '', '', 0, '2024-05-10 04:27:11'),
(5, 0, 1, '', '', '', 0, '2024-05-10 04:31:36'),
(6, 0, 1, '', '', '', 0, '2024-05-10 04:34:05'),
(7, 0, 1, '', '', '', 0, '2024-05-10 04:47:19'),
(8, 0, 1, '', '', '', 0, '2024-05-10 04:50:57'),
(9, 0, 1, '', '', '', 0, '2024-05-10 04:52:37'),
(10, 0, 1, '', '', '', 0, '2024-05-10 04:53:02'),
(11, 0, 1, '', '', '', 1, '2024-05-16 09:55:23'),
(12, 0, 1, '', '', '', 1, '2024-05-10 04:54:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_activity`
--

CREATE TABLE `log_activity` (
  `id` int(11) NOT NULL,
  `id_user` int(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `level` int(1) NOT NULL,
  `action` varchar(50) NOT NULL,
  `Date_activity` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_activity`
--

INSERT INTO `log_activity` (`id`, `id_user`, `nama_user`, `level`, `action`, `Date_activity`) VALUES
(1, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Baku', '2024-01-25 06:41:52'),
(2, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Baku', '2024-01-25 06:44:08'),
(3, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-01-25 07:02:17'),
(4, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Kemas', '2024-01-26 08:31:05'),
(5, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Kemas', '2024-01-26 10:28:56'),
(6, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-01-29 07:20:31'),
(7, 10, 'Rizky Ramadhan', 2, 'INSERT Bahan Baku', '2024-01-29 12:23:20'),
(8, 10, 'Rizky Ramadhan', 2, 'NonAktifkan Kan Bahan baku', '2024-01-29 12:43:32'),
(9, 10, 'Rizky Ramadhan', 2, 'INSERT Bahan Alternatif', '2024-01-29 12:47:03'),
(10, 10, 'Rizky Ramadhan', 2, 'NonAktifkan Kan Bahan Alternatif', '2024-01-29 12:51:59'),
(11, 10, 'Rizky Ramadhan', 2, 'Mengaktif Kan Bahan Alternatif', '2024-01-29 12:53:11'),
(12, 10, 'Rizky Ramadhan', 2, 'INSERT Bahan Baku', '2024-01-29 12:55:07'),
(13, 1, 'Rizky Ramadhan', 1, 'UPDATE Bahan Baku', '2024-01-29 12:59:38'),
(14, 10, 'Rizky Ramadhan', 2, 'INSERT Bahan Kemas', '2024-01-29 13:03:08'),
(15, 10, 'Rizky Ramadhan', 2, 'NonAktifkan Kan Bahan Kemas', '2024-01-29 13:05:57'),
(16, 10, 'Rizky Ramadhan', 2, 'UPDATE Bahan Kemas', '2024-01-29 13:07:17'),
(17, 12, 'Rizky Ramadhan', 1, 'INSERT Bahan Baku', '2024-01-29 13:28:01'),
(18, 12, 'Rizky Ramadhan', 1, 'NonAktifkan Kan Bahan baku', '2024-01-29 13:29:35'),
(19, 12, 'Rizky Ramadhan', 1, 'UPDATE Bahan Baku', '2024-01-29 13:30:16'),
(20, 12, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-01-29 13:31:26'),
(21, 12, 'Rizky Ramadhan', 1, 'NonAktifkan Kan Bahan Alternatif', '2024-01-29 13:32:26'),
(22, 12, 'Rizky Ramadhan', 1, 'UPDATE Bahan Alternatif', '2024-01-29 13:32:58'),
(23, 12, 'Rizky Ramadhan', 1, 'INSERT Bahan Kemas', '2024-01-29 13:33:49'),
(24, 12, 'Rizky Ramadhan', 1, 'NonAktifkan Kan Bahan Kemas', '2024-01-29 13:34:43'),
(25, 12, 'Rizky Ramadhan', 1, 'UPDATE Bahan Kemas', '2024-01-29 13:35:36'),
(26, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-03-12 08:33:24'),
(27, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-03-12 08:35:18'),
(28, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-03-12 08:41:46'),
(29, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-03-21 07:06:24'),
(30, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Baku', '2024-04-18 07:26:15'),
(31, 1, 'Rizky Ramadhan', 1, 'UPDATE Bahan Baku', '2024-04-18 07:32:24'),
(32, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-04-18 07:53:12'),
(33, 1, 'Rizky Ramadhan', 1, 'UPDATE Bahan Alternatif', '2024-04-18 07:59:16'),
(34, 1, 'Rizky Ramadhan', 1, 'UPDATE Bahan Alternatif', '2024-04-18 07:59:41'),
(35, 1, 'Rizky Ramadhan', 1, 'UPDATE Bahan Alternatif', '2024-04-18 08:00:06'),
(36, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Kemas', '2024-04-18 10:39:25'),
(37, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Baku', '2024-04-25 01:00:29'),
(38, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Baku', '2024-04-26 06:57:35'),
(39, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Baku', '2024-04-26 06:58:17'),
(40, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-08 03:10:46'),
(41, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:11:40'),
(42, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:13:37'),
(43, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:14:13'),
(44, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:14:55'),
(45, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:18:22'),
(46, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:19:06'),
(47, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:19:44'),
(48, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:20:31'),
(49, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:21:03'),
(50, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:22:11'),
(51, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:22:48'),
(52, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:24:21'),
(53, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:27:11'),
(54, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:31:36'),
(55, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:34:05'),
(56, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:47:19'),
(57, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:50:57'),
(58, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:52:37'),
(59, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:53:02'),
(60, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:53:28'),
(61, 1, 'Rizky Ramadhan', 1, 'INSERT Bahan Alternatif', '2024-05-10 04:54:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data`
--

CREATE TABLE `master_data` (
  `id` int(11) NOT NULL,
  `code_item` varchar(25) NOT NULL,
  `code_computer` varchar(14) NOT NULL,
  `nama_sederhana` varchar(100) NOT NULL,
  `nama_bahan` varchar(255) NOT NULL,
  `suplayer` varchar(100) NOT NULL,
  `principel` varchar(100) NOT NULL,
  `pekaging` varchar(50) NOT NULL,
  `jumlah_kemasan_utuh` float NOT NULL,
  `satuan_kemasan` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan_revisi` text NOT NULL,
  `keterangan_status` text NOT NULL,
  `keterangan_approval` text NOT NULL,
  `approval` tinyint(1) NOT NULL,
  `create` varchar(256) NOT NULL,
  `hargaKG` double NOT NULL,
  `hargaGram` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_data`
--

INSERT INTO `master_data` (`id`, `code_item`, `code_computer`, `nama_sederhana`, `nama_bahan`, `suplayer`, `principel`, `pekaging`, `jumlah_kemasan_utuh`, `satuan_kemasan`, `status`, `date`, `keterangan_revisi`, `keterangan_status`, `keterangan_approval`, `approval`, `create`, `hargaKG`, `hargaGram`) VALUES
(1, 'A152683895', 'C180110002', 'Inst Skim 04-01', 'SKMP 4% Milex 240 Instant Skimmed Milk Powder ex Arla Foods Amba', 'Arla Foods', 'Arla Foods Amba', 'Botol', 1, 'KG', 1, '2024-01-25 06:42:09', '', '', '', 1, 'Rizky Ramadhan', 20000, 20),
(2, 'A89567452', 'C180110002', 'Inst Skim 04-01 ex WRP', 'SKMP 4% Milex 240 Instant Skimmed Milk Powder ex Arla Foods Amba', 'PT Nutri Niaga Perkasa', 'Arla Foods Amba', 'Botol', 1, 'KG', 1, '2024-01-25 06:44:27', '', '', '', 1, 'Rizky Ramadhan', 20000, 20),
(3, 'A030242024', 'C110110075', 'Fresh Milk 81-00', 'FRESH MILK EX BINTARSO KPS BOGOR', 'Bintarso KPS Bogor', 'Bintarso KPS Bogor', 'botol', 1, 'KG', 1, '2024-01-25 06:56:07', '', '', '', 1, '', 20000, 20),
(4, 'A030242025', 'C110110091', 'Creamer 98-00', 'SPK 32K EX SANTOS PREMIUM CREAMER', 'PT Santos Premium Creamer', 'PT Santos Premium Creamer', 'botol', 1, 'KG', 1, '2024-01-25 07:00:53', '', '', '', 1, '', 20000, 20),
(5, 'A030242024', 'C110130006', 'Margarine 05-00', 'PALMIA SUPER CAKE MARGARINE', 'PT. Adya Ceda Amandelis Bogor', 'PT. Salim Ivomas Pratama', 'PACK', 1, 'KG', 1, '2024-01-25 07:00:53', '', '', '', 1, '', 20000, 20),
(6, 'A8956745', '1112-1112-1112', 'Margarin ', 'Margarin A5', 'Indofood', 'Indofood', 'Sack', 1, 'KG', 2, '2024-01-29 12:43:32', '', 'bahan sudah tidak di produksi', '', 1, 'Rizky Ramadhan', 10000, 10),
(7, 'A8956745', '1112-1112-1112', 'mentega A7', 'Mentega A7', 'Indofood', 'Indofood', 'Sack', 1, 'KG', 1, '2024-01-29 12:59:57', '', '', 'harga terlalu mahal kurangi menjadi 10000 saja', 1, 'Rizky Ramadhan', 20000, 20),
(8, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG', 2, '2024-01-30 06:59:28', 'bahan telah di ganti namanya', 'bahan sudah tidak terpakai', '', 1, 'Rizky Ramadhan', 32500, 32.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data_alternatif`
--

CREATE TABLE `master_data_alternatif` (
  `id` int(11) NOT NULL,
  `id_bahan_utama` int(11) NOT NULL,
  `id_singel` int(255) NOT NULL,
  `id_alternatif` int(255) NOT NULL,
  `code_item` varchar(12) NOT NULL,
  `code_computer` varchar(14) NOT NULL,
  `nama_sederhana` varchar(100) NOT NULL,
  `nama_bahan` varchar(200) NOT NULL,
  `suplayer` varchar(100) NOT NULL,
  `principel` varchar(100) NOT NULL,
  `pekaging` varchar(50) NOT NULL,
  `jumlah_kemasan_utuh` float NOT NULL,
  `satuan_kemasan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_data_alternatif`
--

INSERT INTO `master_data_alternatif` (`id`, `id_bahan_utama`, `id_singel`, `id_alternatif`, `code_item`, `code_computer`, `nama_sederhana`, `nama_bahan`, `suplayer`, `principel`, `pekaging`, `jumlah_kemasan_utuh`, `satuan_kemasan`) VALUES
(1, 8, 8, 1, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(2, 8, 8, 2, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(3, 2, 2, 3, 'A89567452', 'C180110002', 'Inst Skim 04-01 ex WRP', 'SKMP 4% Milex 240 Instant Skimmed Milk Powder ex Arla Foods Amba', 'PT Nutri Niaga Perkasa', 'Arla Foods Amba', 'Botol', 1, 'KG'),
(4, 7, 7, 4, 'A8956745', '1112-1112-1112', 'mentega A7', 'Mentega A7', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(5, 8, 8, 5, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(6, 8, 8, 6, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(7, 8, 8, 7, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(8, 7, 7, 8, 'A8956745', '1112-1112-1112', 'mentega A7', 'Mentega A7', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(9, 8, 8, 9, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(10, 8, 7, 9, 'A8956745', '1112-1112-1112', 'mentega A7', 'Mentega A7', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(11, 8, 8, 10, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(12, 4, 4, 11, 'A030242025', 'C110110091', 'Creamer 98-00', 'SPK 32K EX SANTOS PREMIUM CREAMER', 'PT Santos Premium Creamer', 'PT Santos Premium Creamer', 'botol', 1, 'KG'),
(13, 4, 8, 11, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(14, 8, 8, 12, 'A8956745', '1112-1112-1112', 'Gulaku ', 'Gulaku indonesia', 'Indofood', 'Indofood', 'Sack', 1, 'KG'),
(15, 8, 4, 12, 'A030242025', 'C110110091', 'Creamer 98-00', 'SPK 32K EX SANTOS PREMIUM CREAMER', 'PT Santos Premium Creamer', 'PT Santos Premium Creamer', 'botol', 1, 'KG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data_kemas`
--

CREATE TABLE `master_data_kemas` (
  `id` int(11) NOT NULL,
  `kode_item` varchar(12) NOT NULL,
  `kode_komputer` varchar(14) NOT NULL,
  `item_description` text NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `dimensi_kemasan` varchar(50) NOT NULL,
  `satuan_kemasan` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `keterangan_revisi` text NOT NULL,
  `keterangan_status` text NOT NULL,
  `keterangan_approval` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `desain_bahan_kemas` varchar(255) NOT NULL,
  `approval` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_data_kemas`
--

INSERT INTO `master_data_kemas` (`id`, `kode_item`, `kode_komputer`, `item_description`, `supplier`, `dimensi_kemasan`, `satuan_kemasan`, `status`, `keterangan_revisi`, `keterangan_status`, `keterangan_approval`, `date`, `desain_bahan_kemas`, `approval`) VALUES
(2, 'W211107002', '1', '1', '1', '1', 'PCS', 1, '', '', '', '2024-01-26 10:28:56', '65b3896889d2b.jpg', 1),
(3, 'W211107002', '1573-5823-4923', 'kotak teh ', 'indofood', '50 x 14', 'PCS', 2, 'desain di rubah', 'bahan tidak di produksi', '', '2024-01-29 13:05:57', '65b7a305dd0b8.jpg', 0),
(4, 'W211107002', '1234-5123-5123', 'kotak teh indonesia', 'indofood', '50 x 14', 'PCS', 2, 'menganti nama dan desain kemasan', '-', '', '2024-01-29 13:34:43', '65b7a9a8a6e65.jpg', 1),
(5, '1', '1', '1', '1', '1', 'Roll', 1, '', '', '', '2024-04-18 10:39:25', '6620f85d16b1d.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `approve_formula`
--
ALTER TABLE `approve_formula`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_formula`
--
ALTER TABLE `data_formula`
  ADD PRIMARY KEY (`id_formula`);

--
-- Indeks untuk tabel `data_formula_bahan`
--
ALTER TABLE `data_formula_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_formula_bahan1`
--
ALTER TABLE `data_formula_bahan1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `formula`
--
ALTER TABLE `formula`
  ADD PRIMARY KEY (`id_formula`),
  ADD UNIQUE KEY `kk` (`kk`);

--
-- Indeks untuk tabel `histori_bahan`
--
ALTER TABLE `histori_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `histori_formula`
--
ALTER TABLE `histori_formula`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `id_data_alternatif`
--
ALTER TABLE `id_data_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `log_activity`
--
ALTER TABLE `log_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_data`
--
ALTER TABLE `master_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_data_alternatif`
--
ALTER TABLE `master_data_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_data_kemas`
--
ALTER TABLE `master_data_kemas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `approve_formula`
--
ALTER TABLE `approve_formula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_formula`
--
ALTER TABLE `data_formula`
  MODIFY `id_formula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data_formula_bahan`
--
ALTER TABLE `data_formula_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_formula_bahan1`
--
ALTER TABLE `data_formula_bahan1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `formula`
--
ALTER TABLE `formula`
  MODIFY `id_formula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `histori_bahan`
--
ALTER TABLE `histori_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `histori_formula`
--
ALTER TABLE `histori_formula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `id_data_alternatif`
--
ALTER TABLE `id_data_alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `log_activity`
--
ALTER TABLE `log_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `master_data`
--
ALTER TABLE `master_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `master_data_alternatif`
--
ALTER TABLE `master_data_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `master_data_kemas`
--
ALTER TABLE `master_data_kemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
