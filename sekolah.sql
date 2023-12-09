-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 06:38 AM
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
-- Table structure for table `tb_matapelajaran`
--

CREATE TABLE `tb_matapelajaran` (
  `id_matapelajaran` int(11) NOT NULL,
  `kode_matapelajaran` varchar(10) NOT NULL,
  `nama_matapelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_matapelajaran`
--

INSERT INTO `tb_matapelajaran` (`id_matapelajaran`, `kode_matapelajaran`, `nama_matapelajaran`) VALUES
(17, '071', 'Bahasa Indonesia'),
(18, '072', 'Matematika'),
(19, '073', 'Bahasa Inggris'),
(20, '081', 'Sejarah'),
(21, '082', 'IPA'),
(22, '083', 'IPS'),
(23, '091', 'PPKN'),
(24, '092', 'Bahasa Arab'),
(25, '093', 'Fiqih'),
(26, '094', 'SKI');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal_ujian`
--

CREATE TABLE `tb_soal_ujian` (
  `id_soal_ujian` int(11) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `kunci_jawaban` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_soal_ujian`
--

INSERT INTO `tb_soal_ujian` (`id_soal_ujian`, `id_matapelajaran`, `pertanyaan`, `a`, `b`, `c`, `d`, `e`, `kunci_jawaban`) VALUES
(1, 6, '<p>1+1 =</p>\r\n', '0', '1', '2', '3', '4', 'C'),
(2, 6, '<p>2-1-1=</p>\r\n', '0', '1', '2', '3', '4', 'A'),
(3, 5, '<p>Penulisan kalimat yang benar adalah?</p>\r\n', 'kota bandung', 'KOTA BANDUNG', 'Kota Bandung', 'kota Bandung', 'Kota bandung', 'C'),
(4, 7, '<p>Me artinya?</p>\r\n', 'saya', 'kamu', 'dia', 'mereka', 'kita', 'A'),
(6, 8, '<p>Aku dalam bahasa sunda artinya</p>\r\n', 'abdi', 'maneh', 'naon', 'duka', 'teuing', 'A'),
(7, 8, '<p>sunda berasal dari suku</p>\r\n', 'sunda', 'jawa', 'batak', 'madura', 'cina', 'A'),
(8, 8, '<p>ngambek artinya</p>\r\n', 'naon', 'kulan', 'punteu', 'marah', 'duka', 'D'),
(9, 8, '<p>aing bahasa indonesia nya adalah</p>\r\n', 'aku', 'kamu', 'maneh', 'naon', 'dekah', 'A'),
(10, 6, '<p>1+1+1+</p>\r\n', '1', '2', '3', '4', '5', 'C'),
(11, 10, '<p>zdas</p>\r\n', '1', '2', '3', '4', '4', 'C'),
(12, 10, '<p>wefew</p>\r\n', 'rsr', 'dt', 'dt', 'd', 'td', 'B'),
(16, 18, '<p>Jika diketahui &radic;20 + &radic;x + &radic;125 = 10&radic;5, maka nilai x + 5 ialah&hellip;.</p>\r\n', '30', '40', '50', '80', '90', 'C'),
(17, 18, '<p>Nilai &radic;6 + &radic;24 + &radic;15 x &radic;135 = &hellip;</p>\r\n', '87', '77', '67', '57', '47', 'D'),
(18, 18, '<p>Empat tahun yang telah lalu usia Siska empat kali daro usia Tuti. Empat tahun yang akan datang usia Siska dua kali dari usia Tuti, usia Tuti dan Siska dan masing-masing enam tahun mendatang adalah&hellip;.tahun</p>\r\n', ' 8 dan 20', '8 dan 12', '14 dan 26', '14 dan 18', '8 dan 5', 'B'),
(19, 18, '<p>Berapa hasil dari perhitungan ini:&nbsp;<em>3log12 + 3log24 &ndash; 3log1/27&nbsp;</em>=&hellip;&hellip;</p>\r\n', '1', '2', '3', '4', '5', 'B'),
(20, 18, '<p>Nilai maksimum dari. 20 x + 30y, yang dapat dipenuhi sistem pertidaksamaan dari&nbsp;<em>x + y&nbsp;<u>&lt;</u>6, x + 2y&nbsp;<u>&lt;</u>8, x&nbsp;<u>&gt;</u>&nbsp;0 serta y&nbsp;<u>&gt;</u>&nbsp;0&nbsp;</em>ialah&hellip;.</p>\r\n', '110', '130', '140', '150', '170', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `t_administrator`
--

CREATE TABLE `t_administrator` (
  `id` int(11) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `kata_kunci` varchar(50) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `email_pengguna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_administrator`
--

INSERT INTO `t_administrator` (`id`, `nama_pengguna`, `username`, `kata_kunci`, `nama_sekolah`, `foto_sekolah`, `email_pengguna`) VALUES
(1, 'admin SMP 1', 'adminsmp', '202cb962ac59075b964b07152d234b70', 'SMP Negeri 1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_menu`
--

CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `aktif` varchar(1) NOT NULL,
  `role` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_menu`
--

INSERT INTO `t_menu` (`id`, `nama_menu`, `keterangan`, `aktif`, `role`) VALUES
(1, 'mata_pelajaran', 'Data Ujian', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_role`
--

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_role`
--

INSERT INTO `t_role` (`id`, `role`) VALUES
(1, 'siswa'),
(2, 'guru'),
(3, 'keuangan'),
(4, 'pustakawan');

-- --------------------------------------------------------

--
-- Table structure for table `t_siswa`
--

CREATE TABLE `t_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `jk` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_siswa`
--

INSERT INTO `t_siswa` (`id`, `nis`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `kelas`, `id_sekolah`, `password`, `foto`, `jk`) VALUES
(1, '1', '1', '1', '1', '2023-05-03', '1', 1, 'c4ca4238a0b923820dcc509a6f75849b', '1.jpg', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `t_ujian`
--

CREATE TABLE `t_ujian` (
  `id` int(3) NOT NULL,
  `kode` int(3) NOT NULL,
  `mata_pelajaran` varchar(20) NOT NULL,
  `jadwal_ujian` date NOT NULL,
  `durasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_ujian`
--

INSERT INTO `t_ujian` (`id`, `kode`, `mata_pelajaran`, `jadwal_ujian`, `durasi`) VALUES
(1, 71, 'Matematika', '2023-06-19', '60 Menit'),
(2, 72, 'Bahasa Indonesia', '2023-06-19', '60 Menit'),
(3, 73, 'PKN', '2023-06-20', '60 Menit'),
(4, 74, 'Bahasa Inggris', '2023-06-20', '60 Menit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  ADD PRIMARY KEY (`id_matapelajaran`);

--
-- Indexes for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  ADD PRIMARY KEY (`id_soal_ujian`),
  ADD KEY `id_matakuliah` (`id_matapelajaran`);

--
-- Indexes for table `t_administrator`
--
ALTER TABLE `t_administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_menu`
--
ALTER TABLE `t_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_role`
--
ALTER TABLE `t_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  MODIFY `id_matapelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  MODIFY `id_soal_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `t_administrator`
--
ALTER TABLE `t_administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_menu`
--
ALTER TABLE `t_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_role`
--
ALTER TABLE `t_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_siswa`
--
ALTER TABLE `t_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
