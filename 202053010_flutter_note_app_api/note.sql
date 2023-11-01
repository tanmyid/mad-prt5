-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2023 at 09:04 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `202053010_flutter_note_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id_note` int(255) NOT NULL,
  `judul` text NOT NULL,
  `isi_note` text NOT NULL,
  `tanggal_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id_note`, `judul`, `isi_note`, `tanggal_buat`) VALUES
(3, 'Pertemuan Tim Proyek', 'Kita harus meninjau kemajuan proyek besok pukul 10 pagi di ruang konferensi.', '2023-11-01'),
(4, 'Pengumuman Libur Hari Raya Idul Fitri', 'Kantor akan tutup selama libur Idul Fitri mulai tanggal 6 hingga 8 November.', '2023-11-05'),
(5, 'Laporan Keuangan Kuartal 3', 'Laporan keuangan kuartal 3 telah selesai. Total pendapatan adalah $100,000.', '2023-10-30'),
(6, 'Rapat Evaluasi Kinerja Bulanan', 'Rapat evaluasi kinerja bulanan akan diadakan besok pukul 2 siang di ruang rapat.', '2023-11-02'),
(7, 'Pengumuman Kenaikan Gaji', 'Kami senang mengumumkan kenaikan gaji untuk semua karyawan mulai bulan depan.', '2023-11-10'),
(8, 'Proyek Pengembangan Website', 'Pekerjaan pada proyek pengembangan website hampir selesai. Diingatkan untuk menyelesaikan tes akhir.', '2023-11-15'),
(9, 'Peluncuran Produk Baru', 'Produk baru akan diluncurkan pada tanggal 20 November. Persiapkan strategi pemasaran.', '2023-11-08'),
(10, 'Peringatan Pembayaran Tagihan Listrik', 'Jangan lupa membayar tagihan listrik sebesar $100 sebelum tanggal 5 November.', '2023-11-03'),
(11, 'Rapat Persiapan Acara Amal', 'Rapat persiapan acara amal akan diadakan hari ini pukul 3 sore di ruang kecil.', '2023-11-01'),
(12, 'Jadwal Ujian Semester', 'Berikut jadwal ujian semester: Matematika - 10 November, Bahasa Inggris - 15 November.', '2023-11-04'),
(13, 'Pengumuman Penutupan Jalan', 'Jalan Raya Utama akan ditutup untuk perbaikan mulai tanggal 5 hingga 10 November.', '2023-11-02'),
(14, 'Rapat Tim Proyek Inovasi', 'Tim proyek inovasi akan berkumpul besok untuk diskusi tentang ide-ide baru.', '2023-11-06'),
(15, 'Hasil Survei Kepuasan Pelanggan', 'Hasil survei menunjukkan bahwa 90% pelanggan puas dengan layanan kami.', '2023-10-31'),
(16, 'Pengumuman Pemotongan Harga', 'Harga produk akan dipotong 10% mulai tanggal 1 November hingga 15 November.', '2023-10-29'),
(17, 'Laporan Kasus COVID-19 Terbaru', 'Ada 50 kasus baru COVID-19 dilaporkan di wilayah kami hari ini.', '2023-11-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id_note`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id_note` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
