-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2026 pada 16.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lelang_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_lelang`
--

CREATE TABLE `history_lelang` (
  `id_history` int(11) NOT NULL,
  `id_lelang` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `penawaran_harga` decimal(20,0) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `history_lelang`
--

INSERT INTO `history_lelang` (`id_history`, `id_lelang`, `id_barang`, `id_user`, `penawaran_harga`, `created_at`) VALUES
(36, 45, 46, 13, 3000000000, '2025-05-27 04:00:03'),
(37, 46, 47, 13, 99999999999999999999, '2025-05-27 04:27:40'),
(38, 48, 49, 13, 300000000, '2025-05-27 04:32:22'),
(39, 34, 29, 18, 4000500, '2025-06-11 04:33:38'),
(40, 23, 27, 18, 20000500, '2025-06-11 04:37:35'),
(41, 23, 27, 13, 20000501, '2025-06-11 04:38:27'),
(42, 22, 26, 13, 2800000, '2025-06-11 05:31:20'),
(43, 23, 27, 13, 250000000, '2025-06-11 05:35:12'),
(44, 49, 50, 13, 1000000000, '2025-06-11 05:37:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `harga_awal` int(20) DEFAULT NULL,
  `deskripsi_barang` varchar(150) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `foto_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `tgl`, `harga_awal`, `deskripsi_barang`, `kategori`, `foto_barang`) VALUES
(22, 'Timberland Boots', '2025-05-24', 1800000, 'masih bagus', 'Pakaian', '../uploads/barang_683150f87a19e9.94585309.jpg'),
(23, 'Sepatu Gendut', '2025-05-24', 250000, 'authentic 100%', 'Pakaian', '../uploads/barang_6831511d901bf4.84822415.jpg'),
(25, 'Stussy Hitam', '2025-05-23', 78000, 'uk L warnanya hitam', 'Pakaian', '../uploads/barang_683151731753d7.26851695.jpg'),
(26, 'Monitor ROG 27inc', '2025-05-22', 2700000, 'kondisi baru', 'Elektronik', '../uploads/barang_683154948e0e48.06452239.jpg'),
(27, 'iPhone 16 ', '2025-05-23', 20000000, 'masih mulus', 'Elektronik', '../uploads/barang_683154b73dd4a8.81232116.jpg'),
(28, 'Speaker JBL', '2025-05-21', 400000, 'ngebas bet oy', 'Elektronik', '../uploads/barang_683154d7912e15.89681566.jpg'),
(29, 'AQUA Mesin Cuci', '2025-05-23', 4000000, 'muter muter', 'Elektronik', '../uploads/barang_68315507120068.73168345.jpg'),
(31, 'Sofa', '2025-05-22', 1200000, 'Sofa Lembut', 'Furnitur', '../uploads/barang_6831b312c03fc1.15351327.jpg'),
(33, 'Pintu Kayu', '2025-05-24', 1000000, 'kualitas tinggi', 'Furnitur', '../uploads/barang_6831b34f947646.46742609.jpg'),
(35, 'Jendela', '2025-05-24', 1800000, 'kaca baja', 'Furnitur', '../uploads/barang_6831b3823815a8.41764040.jpg'),
(37, 'Batman Action Figure', '2025-05-26', 90000, 'mainan keren', 'Barang Lainnya', '../uploads/barang_68350560e8fee8.32325270.jpg'),
(38, 'Stussy Putih', '2025-05-26', 300000, 'baru dipake sekali', 'Pakaian', '../uploads/barang_6835096f1b9619.64935747.jpg'),
(39, 'Lemari Kayu', '2025-05-25', 2000000, 'kayu import jepang', 'Furnitur', '../uploads/barang_68350a090307c6.68732597.jpg'),
(40, 'Meja Kantor', '2025-05-25', 1500000, 'mlus', 'Furnitur', '../uploads/barang_68350a319a3e30.53596756.jpg'),
(41, 'Palu', '2025-05-26', 90000, 'kuat', 'Alat', '../uploads/barang_68350a5f901408.45182505.jpg'),
(42, 'Kunci Shock', '2025-05-26', 130000, 'masih baru', 'Alat', '../uploads/barang_68350a84d59208.99827303.jpg'),
(43, 'Bor', '2025-05-28', 300000, 'kuatt kencangg', 'Alat', '../uploads/barang_68350aa9e03d51.98889893.jpg'),
(44, 'Gerinda', '2025-05-26', 400000, 'tajem bos', 'Alat', '../uploads/barang_68350acbf39366.81626850.jpg'),
(45, 'Sekop', '2025-05-26', 120000, 'tajem bang', 'Alat', '../uploads/barang_68350af4cc9f97.70627579.jpg'),
(46, 'Mobil BMW', '2025-05-26', 800000000, 'pemakaian 1tahun setengah', 'Kendaraan', '../uploads/barang_68350b9f759614.71181487.jpg'),
(47, 'Toyota Avanza', '2025-05-25', 500000000, 'masih baru', 'Kendaraan', '../uploads/barang_68350bd80df6c9.73562372.jpg'),
(48, 'Toyota Yaris', '2025-05-27', 350000000, 'belakangnya lecet dikit', 'Kendaraan', '../uploads/barang_68350c1d989ef0.75263471.jpg'),
(49, 'Truck Fuso', '2025-05-26', 200000000, 'cocok kaum ngarit', 'Kendaraan', '../uploads/barang_68350c55dfe324.23880225.jpg'),
(50, 'Alphard', '2025-05-26', 950000000, 'ceper dikit bang bamper belakangnya remuk', 'Kendaraan', '../uploads/barang_68350c812f9c28.94414778.jpg'),
(51, 'Emas Batangan', '2025-05-26', 500000000, 'asli', 'Barang Lainnya', '../uploads/barang_68350d06e69de3.22251014.jpg'),
(52, 'Mainan Lambo Emas', '2025-05-28', 300000, 'masih berfungsi dengan baik', 'Barang Lainnya', '../uploads/barang_68350d47286423.87686467.jpg'),
(54, 'Ransel', '2025-05-26', 80000, 'masih bagus', 'Barang Lainnya', '../uploads/barang_6835122a810387.59399319.jpg'),
(55, 'example', '2025-05-26', 5000000, 'example', 'Barang Lainnya', '../uploads/barang_68351bc27a2999.62193434.jpg'),
(56, 'motor', '2025-05-26', 10000000, 'motor bagus', 'Kendaraan', '../uploads/barang_683522d7036a54.18690316.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_lelang`
--

CREATE TABLE `tb_lelang` (
  `id_lelang` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `tgl_lelang` date DEFAULT NULL,
  `harga_akhir` decimal(20,0) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `status` enum('dibuka','ditutup') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_lelang`
--

INSERT INTO `tb_lelang` (`id_lelang`, `id_barang`, `tgl_lelang`, `harga_akhir`, `id_user`, `id_petugas`, `status`) VALUES
(18, 22, '2025-05-24', 0, NULL, 3, 'dibuka'),
(19, 23, '2025-05-24', 0, NULL, 3, 'dibuka'),
(21, 25, '2025-05-24', 0, NULL, 3, 'dibuka'),
(22, 26, '2025-05-24', 0, NULL, 3, 'dibuka'),
(23, 27, '2025-05-24', 250000000, 13, 3, 'ditutup'),
(24, 28, '2025-05-24', 0, NULL, 3, 'dibuka'),
(27, 31, '2025-05-24', 0, NULL, 3, 'dibuka'),
(29, 33, '2025-05-24', 0, NULL, 3, 'dibuka'),
(33, 37, '2025-05-27', 0, NULL, 3, 'dibuka'),
(34, 29, '2025-05-27', 4000500, 18, 3, 'ditutup'),
(36, 35, '2025-05-27', 0, NULL, 3, 'dibuka'),
(37, 38, '2025-05-27', 0, NULL, 3, 'dibuka'),
(38, 39, '2025-05-27', 0, NULL, 3, 'dibuka'),
(39, 40, '2025-05-27', 0, NULL, 3, 'dibuka'),
(40, 41, '2025-05-27', 0, NULL, 3, 'dibuka'),
(41, 42, '2025-05-27', 0, NULL, 3, 'dibuka'),
(42, 43, '2025-05-27', 0, NULL, 3, 'dibuka'),
(43, 44, '2025-05-27', 0, NULL, 3, 'dibuka'),
(44, 45, '2025-05-27', 0, NULL, 3, 'dibuka'),
(45, 46, '2025-05-27', 3000000000, 13, 3, 'ditutup'),
(46, 47, '2025-05-27', 0, NULL, 3, 'dibuka'),
(47, 48, '2025-05-27', 0, NULL, 3, 'dibuka'),
(48, 49, '2025-05-27', 300000000, 13, 3, 'ditutup'),
(49, 50, '2025-05-27', 0, NULL, 3, 'dibuka'),
(50, 51, '2025-05-27', 0, NULL, 3, 'dibuka'),
(51, 52, '2025-05-27', 0, NULL, 3, 'dibuka'),
(53, 54, '2025-05-27', 0, NULL, 3, 'dibuka'),
(54, 55, '2025-05-27', 0, NULL, 3, 'dibuka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` enum('administrator','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'administrator'),
(2, 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_masyarakat`
--

CREATE TABLE `tb_masyarakat` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `telp` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_masyarakat`
--

INSERT INTO `tb_masyarakat` (`id_user`, `nama_lengkap`, `username`, `password`, `telp`) VALUES
(13, 'masyarakat', 'masyarakat1', '123', 0),
(15, 'masyarakat3', 'masyarakat3', '123', 0),
(16, 'ell', 'el', '123', 0),
(17, 'Asil Al Azzis', 'Asil', '123', 89673),
(18, 'rey', 'ka', '123', 666),
(19, 'Next IT', 'nextit', '11111111', 2147483647),
(20, 'dadadadada', 'nextit', '4353553443535', 2147483647),
(21, 'coba', 'coba', '123', 0),
(22, 'testtt', 'cobaa', '12345568', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_notif`
--

CREATE TABLE `tb_notif` (
  `id_notif` int(11) NOT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_lelang` int(11) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `status_baca` enum('terbaca','belum terbaca') DEFAULT 'belum terbaca',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_notif`
--

INSERT INTO `tb_notif` (`id_notif`, `id_petugas`, `id_user`, `id_lelang`, `pesan`, `status_baca`, `created_at`) VALUES
(13, 3, 13, 48, 'Selamat masyarakat,\r\nAnda telah memenangkan lelang untuk barang: Truck Fuso.\r\n\r\nSilakan hubungi kami untuk proses lebih lanjut.', 'terbaca', '2025-05-26 19:38:39'),
(14, 3, 18, 34, 'Snjutttt', 'terbaca', '2025-06-10 19:36:25'),
(15, 3, 13, 23, 'Selamat masyarakat,\r\nAnda telah memenangkan lelang untuk barang: iPhone 16 .\r\n\r\nSilakan hubungi kami untuk proses lebih lanjut.', 'terbaca', '2025-06-10 20:48:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `id_level`) VALUES
(2, 'Rama Ganteng', 'adminRama', 'admin123', 1),
(3, 'El Manuk', 'petugasEl', 'petugas123', 2),
(9, 'yolanda', 'yolan', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `history_lelang`
--
ALTER TABLE `history_lelang`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `id_lelang` (`id_lelang`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tb_lelang`
--
ALTER TABLE `tb_lelang`
  ADD PRIMARY KEY (`id_lelang`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tb_notif`
--
ALTER TABLE `tb_notif`
  ADD PRIMARY KEY (`id_notif`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_lelang` (`id_lelang`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `history_lelang`
--
ALTER TABLE `history_lelang`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `tb_lelang`
--
ALTER TABLE `tb_lelang`
  MODIFY `id_lelang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_notif`
--
ALTER TABLE `tb_notif`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `history_lelang`
--
ALTER TABLE `history_lelang`
  ADD CONSTRAINT `history_lelang_ibfk_1` FOREIGN KEY (`id_lelang`) REFERENCES `tb_lelang` (`id_lelang`),
  ADD CONSTRAINT `history_lelang_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `history_lelang_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `tb_masyarakat` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `tb_lelang`
--
ALTER TABLE `tb_lelang`
  ADD CONSTRAINT `tb_lelang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_lelang_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_masyarakat` (`id_user`),
  ADD CONSTRAINT `tb_lelang_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `tb_notif`
--
ALTER TABLE `tb_notif`
  ADD CONSTRAINT `tb_notif_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`),
  ADD CONSTRAINT `tb_notif_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_masyarakat` (`id_user`),
  ADD CONSTRAINT `tb_notif_ibfk_3` FOREIGN KEY (`id_lelang`) REFERENCES `tb_lelang` (`id_lelang`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD CONSTRAINT `tb_petugas_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
