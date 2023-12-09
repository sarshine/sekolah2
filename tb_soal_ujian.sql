-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 07:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal_ujian`
--

CREATE TABLE `tb_soal_ujian` (
  `id_soal_ujian` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `kunci_jawaban` varchar(2) NOT NULL,
  `nama_matapelajaran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_soal_ujian`
--

INSERT INTO `tb_soal_ujian` (`id_soal_ujian`, `pertanyaan`, `a`, `b`, `c`, `d`, `e`, `kunci_jawaban`, `nama_matapelajaran`) VALUES
(2, '<p>2-1-1=</p>\r\n', '0', '1', '2', '3', '4', 'A', 'Matematika'),
(3, '<p>Penulisan kalimat yang benar adalah?</p>\r\n', 'kota bandung', 'KOTA BANDUNG', 'Kota Bandung', 'kota Bandung', 'Kota bandung', 'C', 'Bahasa Indonesia'),
(4, '<p>Me artinya?</p>\r\n', 'saya', 'kamu', 'dia', 'mereka', 'kita', 'A', 'Bahasa Inggris'),
(6, '<p>Aku dalam bahasa sunda artinya</p>\r\n', 'abdi', 'maneh', 'naon', 'duka', 'teuing', 'A', 'Bahasa Sunda'),
(7, '<p>sunda berasal dari suku</p>\r\n', 'sunda', 'jawa', 'batak', 'madura', 'cina', 'A', 'Bahasa Sunda'),
(8, '<p>ngambek artinya</p>\r\n', 'naon', 'kulan', 'punteu', 'marah', 'duka', 'D', 'Bahasa Sunda'),
(9, '<p>aing bahasa indonesia nya adalah</p>\r\n', 'aku', 'kamu', 'maneh', 'naon', 'dekah', 'A', 'Bahasa Sunda'),
(10, '<p>1+1+1+</p>\r\n', '1', '2', '3', '4', '5', 'C', 'Matematika'),
(11, '<p>zdas</p>\r\n', '1', '2', '3', '4', '4', 'C', 'Matematika'),
(12, '<p>wefew</p>\r\n', 'rsr', 'dt', 'dt', 'd', 'td', 'B', 'Matematika'),
(16, '<p>Jika diketahui &radic;20 + &radic;x + &radic;125 = 10&radic;5, maka nilai x + 5 ialah&hellip;.</p>\r\n', '30', '40', '50', '80', '90', 'C', 'Matematika'),
(17, '<p>Nilai &radic;6 + &radic;24 + &radic;15 x &radic;135 = &hellip;</p>\r\n', '87', '77', '67', '57', '47', 'D', 'Matematika'),
(18, '<p>Empat tahun yang telah lalu usia Siska empat kali daro usia Tuti. Empat tahun yang akan datang usia Siska dua kali dari usia Tuti, usia Tuti dan Siska dan masing-masing enam tahun mendatang adalah&hellip;.tahun</p>\r\n', ' 8 dan 20', '8 dan 12', '14 dan 26', '14 dan 18', '8 dan 5', 'B', 'Matematika'),
(19, '<p>Berapa hasil dari perhitungan ini:&nbsp;<em>3log12 + 3log24 &ndash; 3log1/27&nbsp;</em>=&hellip;&hellip;</p>\r\n', '1', '2', '3', '4', '5', 'B', 'Matematika'),
(20, '<p>Nilai maksimum dari. 20 x + 30y, yang dapat dipenuhi sistem pertidaksamaan dari&nbsp;<em>x + y&nbsp;<u>&lt;</u>6, x + 2y&nbsp;<u>&lt;</u>8, x&nbsp;<u>&gt;</u>&nbsp;0 serta y&nbsp;<u>&gt;</u>&nbsp;0&nbsp;</em>ialah&hellip;.</p>\r\n', '110', '130', '140', '150', '170', 'C', 'Matematika'),
(51, 'Apa yang akan terjadi ketika sarah diam?', 'Galau', 'Marah', 'Sedih', 'Bingung', 'Kecewa', 'D', 'Bahasa Sarah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  ADD PRIMARY KEY (`id_soal_ujian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  MODIFY `id_soal_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
