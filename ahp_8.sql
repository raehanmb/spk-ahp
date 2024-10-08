-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2024 at 07:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahp_8`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`) VALUES
(1, 'Ajun Isawal'),
(2, 'Ma\'mur Setianama'),
(3, 'Andes Sugianto'),
(4, 'Darmono'),
(5, 'Desi Eka Hapsari'),
(6, 'Asep Ardiyana'),
(7, 'Casjo Purwono'),
(8, 'Diat Baskara'),
(9, 'Dimas Aditia Dicki S'),
(10, 'Ditia Yuliana Anggraeni'),
(11, 'Dodi Rohmana'),
(12, 'Endah Budi Astuti'),
(13, 'Fery Heldy Yuliansyah'),
(14, 'Haerul Anwar'),
(15, 'Herly Susanti'),
(16, 'Ika Oktiyaningsih'),
(17, 'Ima Mukhlisatin'),
(18, 'Imanul Maulana'),
(19, 'Muhamad Al Amin'),
(20, 'Musriah'),
(21, 'Nedi Embun Janari'),
(22, 'Neneng Nurhidayah'),
(23, 'Nilam Mayang Delima'),
(24, 'Prayoga Budi Sisworo'),
(25, 'Rahmadi'),
(26, 'Ripai Ridwan'),
(27, 'Rudi Hartono'),
(28, 'Sukma Sewiji'),
(29, 'Tursito'),
(30, 'Uswatun Hasanah'),
(31, 'Wawan Priyanto'),
(32, 'Yusuf Abd Hadi'),
(33, 'Yuyun Himatul Maulani'),
(34, 'Prahma Meina Sari'),
(35, 'Rohmatuminalloh'),
(36, 'Tarhid'),
(37, 'Tati Herawati'),
(38, 'Warta'),
(39, 'Willy Agustina'),
(40, 'Cicih Setiawati'),
(41, 'Duan Riyanto'),
(42, 'Durotul Faridah'),
(43, 'Heni Ratnasari'),
(44, 'Iken Mulyasari'),
(45, 'Juhariah'),
(46, 'Nana Nasiha'),
(48, 'Ani Riani');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 1, 0.710035),
(2, 2, 0.386817),
(3, 3, 0.661695),
(4, 4, 0.739734),
(5, 5, 0.411305),
(6, 6, 0.747305),
(7, 7, 0.469188),
(8, 8, 0.739734),
(9, 9, 0.631996),
(10, 10, 0.638081),
(11, 11, 0.502127),
(12, 12, 0.570126),
(13, 13, 0.898555),
(14, 14, 0.245651),
(15, 15, 0.570126),
(16, 16, 0.535617),
(17, 17, 0.743525),
(18, 18, 0.418876),
(19, 19, 0.675559),
(20, 20, 0.696171),
(21, 21, 0.96651),
(22, 22, 0.898555),
(23, 23, 0.675559),
(24, 24, 0.739734),
(25, 25, 0.624218),
(26, 26, 0.303567),
(27, 27, 0.502127),
(28, 28, 0.245651),
(29, 29, 0.502127),
(30, 30, 0.197312),
(31, 31, 0.275351),
(32, 32, 0.483051),
(33, 33, 0.430381),
(34, 34, 0.739734),
(35, 35, 0.415096),
(36, 36, 0.463871),
(37, 37, 0.483051),
(38, 38, 0.381606),
(39, 39, 0.570126),
(40, 40, 0.279142),
(41, 41, 0.599826),
(42, 42, 0.308841),
(43, 43, 0.380621),
(44, 44, 0.502127),
(45, 45, 0.411305),
(46, 46, 0.418876),
(47, 48, 0.675559);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `kode_kriteria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `kode_kriteria`) VALUES
(1, 'Pendagogik', 'C1'),
(2, 'Kepribadian', 'C2'),
(3, 'Profesional', 'C3'),
(4, 'Sosial', 'C4');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria_hasil`
--

CREATE TABLE `kriteria_hasil` (
  `id_kriteria_hasil` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kriteria_hasil`
--

INSERT INTO `kriteria_hasil` (`id_kriteria_hasil`, `id_kriteria`, `nilai`) VALUES
(22, 1, 0.557893),
(23, 2, 0.263345),
(24, 3, 0.121873),
(25, 4, 0.0568898);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria_nilai`
--

CREATE TABLE `kriteria_nilai` (
  `id_kriteria_nilai` int(11) NOT NULL,
  `kriteria_id_dari` int(11) NOT NULL,
  `kriteria_id_tujuan` int(11) NOT NULL,
  `nilai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kriteria_nilai`
--

INSERT INTO `kriteria_nilai` (`id_kriteria_nilai`, `kriteria_id_dari`, `kriteria_id_tujuan`, `nilai`) VALUES
(55, 1, 2, 3),
(56, 1, 3, 5),
(57, 1, 4, 7),
(58, 2, 3, 3),
(59, 2, 4, 5),
(60, 3, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kategori`
--

CREATE TABLE `nilai_kategori` (
  `id_nilai` int(11) NOT NULL,
  `nama_nilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nilai_kategori`
--

INSERT INTO `nilai_kategori` (`id_nilai`, `nama_nilai`) VALUES
(1, 'Sangat Baik'),
(2, 'Baik'),
(3, 'Cukup');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_sub_kriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `id_sub_kriteria`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 7),
(3, 1, 3, 13),
(6, 2, 1, 3),
(7, 2, 2, 6),
(8, 2, 3, 13),
(11, 3, 1, 1),
(12, 3, 2, 8),
(13, 3, 3, 12),
(16, 1, 4, 17),
(17, 2, 4, 18),
(18, 3, 4, 18),
(19, 4, 1, 1),
(20, 4, 2, 7),
(21, 4, 3, 12),
(22, 4, 4, 17),
(23, 5, 1, 2),
(24, 5, 2, 7),
(25, 5, 3, 12),
(26, 5, 4, 17),
(27, 6, 1, 1),
(28, 6, 2, 8),
(29, 6, 3, 11),
(30, 6, 4, 17),
(31, 7, 1, 2),
(32, 7, 2, 7),
(33, 7, 3, 11),
(34, 7, 4, 18),
(35, 8, 1, 1),
(36, 8, 2, 7),
(37, 8, 3, 12),
(38, 8, 4, 17),
(39, 9, 1, 1),
(40, 9, 2, 8),
(41, 9, 3, 13),
(42, 9, 4, 18),
(43, 10, 1, 2),
(44, 10, 2, 6),
(45, 10, 3, 11),
(46, 10, 4, 17),
(47, 11, 1, 3),
(48, 11, 2, 6),
(49, 11, 3, 11),
(50, 11, 4, 17),
(51, 12, 1, 2),
(52, 12, 2, 6),
(53, 12, 3, 13),
(54, 12, 4, 16),
(55, 13, 1, 1),
(56, 13, 2, 6),
(57, 13, 3, 13),
(58, 13, 4, 16),
(59, 14, 1, 3),
(60, 14, 2, 7),
(61, 14, 3, 13),
(62, 14, 4, 17),
(63, 15, 1, 2),
(64, 15, 2, 6),
(65, 15, 3, 13),
(66, 15, 4, 16),
(67, 16, 1, 3),
(68, 16, 2, 6),
(69, 16, 3, 11),
(70, 16, 4, 16),
(71, 17, 1, 1),
(72, 17, 2, 7),
(73, 17, 3, 13),
(74, 17, 4, 16),
(75, 18, 1, 2),
(76, 18, 2, 8),
(77, 18, 3, 11),
(78, 18, 4, 17),
(79, 19, 1, 1),
(80, 19, 2, 8),
(81, 19, 3, 12),
(82, 19, 4, 17),
(83, 20, 1, 1),
(84, 20, 2, 7),
(85, 20, 3, 13),
(86, 20, 4, 18),
(87, 21, 1, 1),
(88, 21, 2, 6),
(89, 21, 3, 11),
(90, 21, 4, 17),
(91, 22, 1, 1),
(92, 22, 2, 6),
(93, 22, 3, 13),
(94, 22, 4, 16),
(95, 23, 1, 1),
(96, 23, 2, 8),
(97, 23, 3, 12),
(98, 23, 4, 17),
(99, 24, 1, 1),
(100, 24, 2, 7),
(101, 24, 3, 12),
(102, 24, 4, 17),
(103, 25, 1, 2),
(104, 25, 2, 6),
(105, 25, 3, 11),
(106, 25, 4, 18),
(107, 26, 1, 2),
(108, 26, 2, 8),
(109, 26, 3, 13),
(110, 26, 4, 18),
(111, 27, 1, 3),
(112, 27, 2, 6),
(113, 27, 3, 11),
(114, 27, 4, 17),
(115, 28, 1, 3),
(116, 28, 2, 7),
(117, 28, 3, 13),
(118, 28, 4, 17),
(119, 29, 1, 3),
(120, 29, 2, 6),
(121, 29, 3, 11),
(122, 29, 4, 17),
(123, 30, 1, 3),
(124, 30, 2, 8),
(125, 30, 3, 12),
(126, 30, 4, 18),
(127, 31, 1, 3),
(128, 31, 2, 7),
(129, 31, 3, 12),
(130, 31, 4, 17),
(131, 32, 1, 2),
(132, 32, 2, 7),
(133, 32, 3, 11),
(134, 32, 4, 17),
(135, 33, 1, 3),
(136, 33, 2, 6),
(137, 33, 3, 12),
(138, 33, 4, 17),
(139, 34, 1, 1),
(140, 34, 2, 7),
(141, 34, 3, 12),
(142, 34, 4, 17),
(143, 35, 1, 2),
(144, 35, 2, 7),
(145, 35, 3, 13),
(146, 35, 4, 16),
(147, 36, 1, 3),
(148, 36, 2, 6),
(149, 36, 3, 12),
(150, 36, 4, 16),
(151, 37, 1, 2),
(152, 37, 2, 7),
(153, 37, 3, 11),
(154, 37, 4, 17),
(155, 38, 1, 2),
(156, 38, 2, 7),
(157, 38, 3, 13),
(158, 38, 4, 17),
(159, 39, 1, 2),
(160, 39, 2, 6),
(161, 39, 3, 13),
(162, 39, 4, 16),
(163, 40, 1, 3),
(164, 40, 2, 7),
(165, 40, 3, 13),
(166, 40, 4, 16),
(167, 41, 1, 2),
(168, 41, 2, 6),
(169, 41, 3, 12),
(170, 41, 4, 16),
(171, 42, 1, 3),
(172, 42, 2, 7),
(173, 42, 3, 12),
(174, 42, 4, 16),
(175, 43, 1, 2),
(176, 43, 2, 8),
(177, 43, 3, 12),
(178, 43, 4, 16),
(179, 44, 1, 3),
(180, 44, 2, 6),
(181, 44, 3, 11),
(182, 44, 4, 17),
(183, 45, 1, 2),
(184, 45, 2, 7),
(185, 45, 3, 12),
(186, 45, 4, 17),
(187, 46, 1, 2),
(188, 46, 2, 8),
(189, 46, 3, 11),
(190, 46, 4, 17),
(191, 48, 1, 1),
(192, 48, 2, 8),
(193, 48, 3, 12),
(194, 48, 4, 17);

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria_nilai`
--

CREATE TABLE `subkriteria_nilai` (
  `id_subkriteria_nilai` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `subkriteria_id_dari` int(11) NOT NULL,
  `subkriteria_id_tujuan` int(11) NOT NULL,
  `nilai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subkriteria_nilai`
--

INSERT INTO `subkriteria_nilai` (`id_subkriteria_nilai`, `id_kriteria`, `subkriteria_id_dari`, `subkriteria_id_tujuan`, `nilai`) VALUES
(232, 1, 1, 2, 3),
(233, 1, 1, 3, 5),
(234, 1, 2, 3, 3),
(238, 3, 11, 12, 3),
(239, 3, 11, 13, 5),
(240, 3, 12, 13, 3),
(241, 4, 16, 17, 3),
(242, 4, 16, 18, 5),
(243, 4, 17, 18, 3),
(253, 2, 6, 7, 3),
(254, 2, 6, 8, 5),
(255, 2, 7, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_sub_kriteria` text NOT NULL,
  `id_nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `nama_sub_kriteria`, `id_nilai`) VALUES
(1, 1, 'Memiliki antusiasme dalam menyampaikan materi pelajaran', 1),
(2, 1, 'Menerapkan pendekatan yang interaktif dan partisipatif', 2),
(3, 1, 'Menggunakan alat bantu dan media pembelajaran yang menarik dan efektif', 3),
(6, 2, 'Menguasai materi pembelajaran secara mendalam dan dapat menyampaikan dengan jelas', 1),
(7, 2, 'Berkomitmen pada peningkatan kualitas pembelajaran dan hasil belajar peserta didik', 2),
(8, 2, 'Menyusun ruang kelas atau lingkungan pembelajaran yang menarik dan kondusif', 3),
(11, 3, 'Menunjukkan keteladanan dalam sikap dan perilaku selama proses pembelajaran', 1),
(12, 3, 'Menunjukkan sikap disiplin, sabar, dan tanggung jawab', 2),
(13, 3, 'Berpenampilan rapi, bersih, dan sopan dalam setiap aktivitas di sekolah', 3),
(16, 4, 'Menerapkan kolaborasi dan kerja sama dalam proses pembelajaran', 1),
(17, 4, 'Menunjukkan sikap inklusif dan menghargai keberagaman', 2),
(18, 4, 'Menggunakan bahasa tubuh yang positif dan ramah', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria_hasil`
--

CREATE TABLE `sub_kriteria_hasil` (
  `id_sub_kriteria_hasil` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_sub_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_kriteria_hasil`
--

INSERT INTO `sub_kriteria_hasil` (`id_sub_kriteria_hasil`, `id_kriteria`, `id_sub_kriteria`, `nilai`) VALUES
(166, 1, 1, 1),
(167, 1, 2, 0.411305),
(168, 1, 3, 0.167612),
(172, 3, 11, 1),
(173, 3, 12, 0.411305),
(174, 3, 13, 0.167612),
(175, 4, 16, 1),
(176, 4, 17, 0.411305),
(177, 4, 18, 0.167612),
(187, 2, 6, 1),
(188, 2, 7, 0.411305),
(189, 2, 8, 0.167612);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `email`, `username`, `password`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(7, 2, 'User', 'user@gmail.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `kriteria_hasil`
--
ALTER TABLE `kriteria_hasil`
  ADD PRIMARY KEY (`id_kriteria_hasil`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `kriteria_nilai`
--
ALTER TABLE `kriteria_nilai`
  ADD PRIMARY KEY (`id_kriteria_nilai`),
  ADD KEY `kriteria_id_dari` (`kriteria_id_dari`),
  ADD KEY `kriteria_id_tujuan` (`kriteria_id_tujuan`);

--
-- Indexes for table `nilai_kategori`
--
ALTER TABLE `nilai_kategori`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_sub_kriteria` (`id_sub_kriteria`);

--
-- Indexes for table `subkriteria_nilai`
--
ALTER TABLE `subkriteria_nilai`
  ADD PRIMARY KEY (`id_subkriteria_nilai`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `subkriteria_id_dari` (`subkriteria_id_dari`),
  ADD KEY `subkriteria_id_tujuan` (`subkriteria_id_tujuan`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `sub_kriteria_hasil`
--
ALTER TABLE `sub_kriteria_hasil`
  ADD PRIMARY KEY (`id_sub_kriteria_hasil`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_sub_kriteria` (`id_sub_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user_level` (`id_user_level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kriteria_hasil`
--
ALTER TABLE `kriteria_hasil`
  MODIFY `id_kriteria_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kriteria_nilai`
--
ALTER TABLE `kriteria_nilai`
  MODIFY `id_kriteria_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `nilai_kategori`
--
ALTER TABLE `nilai_kategori`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `subkriteria_nilai`
--
ALTER TABLE `subkriteria_nilai`
  MODIFY `id_subkriteria_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sub_kriteria_hasil`
--
ALTER TABLE `sub_kriteria_hasil`
  MODIFY `id_sub_kriteria_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kriteria_hasil`
--
ALTER TABLE `kriteria_hasil`
  ADD CONSTRAINT `kriteria_hasil_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kriteria_nilai`
--
ALTER TABLE `kriteria_nilai`
  ADD CONSTRAINT `kriteria_nilai_ibfk_1` FOREIGN KEY (`kriteria_id_dari`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kriteria_nilai_ibfk_2` FOREIGN KEY (`kriteria_id_tujuan`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`id_sub_kriteria`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subkriteria_nilai`
--
ALTER TABLE `subkriteria_nilai`
  ADD CONSTRAINT `subkriteria_nilai_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subkriteria_nilai_ibfk_2` FOREIGN KEY (`subkriteria_id_dari`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subkriteria_nilai_ibfk_3` FOREIGN KEY (`subkriteria_id_tujuan`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_kriteria_hasil`
--
ALTER TABLE `sub_kriteria_hasil`
  ADD CONSTRAINT `sub_kriteria_hasil_nilai_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_kriteria_hasil_nilai_ibfk_2` FOREIGN KEY (`id_sub_kriteria`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
