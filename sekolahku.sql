-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 08:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolahku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id`, `judul`, `isi`, `tanggal`, `foto`, `id_kategori`) VALUES
(12, 'Bazar SMK Negeri 9 Semarang Tahun 2022', '<p>Bazar SMK Negeri 9 Semarang ini diadakan pada hari Rabu, 13 Juli 2022.</p>', '2022-07-13', '20220713-bazar-smk-negeri-9-semarang-tahun-2022.png', 10),
(13, 'Gelar Karya SMK Negeri 9 Semarang Tahun 2022', '<p>Gelar Karya SMK Negeri 9 Semarang ini bertemakan Adat yang diadakan pada hari Rabu, 13 Juli 2022.</p>', '2022-12-08', '20221208-gelar-karya-smk-negeri-9-semarang-tahun-2022.png', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bukutamu`
--

CREATE TABLE `tbl_bukutamu` (
  `id` int(11) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bukutamu`
--

INSERT INTO `tbl_bukutamu` (`id`, `nama`, `email`, `isi`) VALUES
(5, 'Johan', 'galvinkece@gmail.com', 'apa perlihal yang anda lakukan'),
(6, 'Ponidi', 'ponidi@gmail.com', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ekskul`
--

CREATE TABLE `tbl_ekskul` (
  `id` int(11) NOT NULL,
  `nama_ekskul` varchar(50) DEFAULT NULL,
  `pembina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ekskul`
--

INSERT INTO `tbl_ekskul` (`id`, `nama_ekskul`, `pembina`) VALUES
(1, 'Videografi', 9),
(2, 'Fotografi', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nip` int(10) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `mata_pelajaran` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nama`, `nip`, `jenis_kelamin`, `no_hp`, `tempat_lahir`, `tanggal_lahir`, `mata_pelajaran`, `alamat`, `foto`) VALUES
(9, 'Zainal', 1975201602, 'L', '089525461982', 'Bogor', '1977-06-17', 'Agama Islam', 'Pedurungan', 'zein.jpg'),
(10, 'Rana Kusuma', 198020164, 'L', '0856435536', 'Papua', '1980-06-02', 'Pemrograman', 'Gunung Pati', 'rana.jpg'),
(15, 'Wahyu Bambang', 989, 'L', '085727088227', 'Ngawi ', '1968-11-07', 'Penjasorkes', 'Palebon', 'bambang.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(30) DEFAULT NULL,
  `ka_prodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id`, `nama_jurusan`, `ka_prodi`) VALUES
(7, 'Rekayasa Perangkat Lunak', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_artikel`
--

CREATE TABLE `tbl_kategori_artikel` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori_artikel`
--

INSERT INTO `tbl_kategori_artikel` (`id`, `nama_kategori`) VALUES
(3, 'Kegiatan Sekolah'),
(10, 'Event');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id`, `nama`, `username`, `password`, `foto`) VALUES
(4, 'Admin', 'adminrpl', 'admin123', 'administrator.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nis` int(4) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tempat_lahir` varchar(80) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `foto` varchar(120) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nama`, `nis`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_hp`, `foto`, `id_jurusan`) VALUES
(1, 'Ahmad', 6315, 'L', 'Unknown', '2002-07-15', 'Unknown', '089538018082', 'AVA.png', 7),
(2, 'Ajeng', 6316, 'P', 'Unknown', '2002-07-16', 'Unknown', '081929102912', 'icon_ig (1).png', 7),
(3, 'Alvin', 6317, 'L', 'Unknown', '2002-07-17', 'Unknown', '089519291829', 'AVA.png', 7),
(4, 'Arifa', 6318, 'P', 'Unknown', '2002-07-18', 'Unknown', '081919282876', 'icon_ig (1).png', 7),
(5, 'Arifin', 6319, 'L', 'Unknown', '2002-07-19', 'Unknown', '081919282943', 'AVA.png', 7),
(6, 'Asyifa', 6320, 'P', 'Unknown', '2002-07-20', 'Unknown', '081919282231', 'icon_ig (1).png', 7),
(7, 'Catrin', 6321, 'P', 'Unknown', '2002-07-21', 'Unknown', '081919282339', 'icon_ig (1).png', 7),
(8, 'Caca', 6322, 'P', 'Unknown', '2002-07-22', 'Unknown', '081919282681', 'icon_ig (1).png', 7),
(9, 'Chalisa', 6323, 'P', 'Unknown', '2002-07-23', 'Unknown', '081919282285', 'icon_ig (1).png', 7),
(10, 'Davina', 6324, 'P', 'Unknown', '2002-07-24', 'Unknown', '081919282000', 'icon_ig (1).png', 7),
(11, 'Destiana', 6325, 'P', 'Unknown', '2002-07-25', 'Unknown', '081919282896', 'icon_ig (1).png', 7),
(12, 'Dita', 6326, 'P', 'Unknown', '2002-07-26', 'Unknown', '081919282290', 'icon_ig (1).png', 7),
(13, 'Firstania', 6318, 'P', 'Unknown', '2002-07-19', 'Unknown', '081919282356', 'icon_ig (1).png', 7),
(14, 'Galvin', 6312, 'L', 'Unknown', '2002-07-28', 'Unknown', '081919282830', 'icon_ig (1).png', 7),
(15, 'Jihan', 6329, 'P', 'Unknown', '2002-07-29', 'Unknown', '081919282234', 'icon_ig (1).png', 7),
(16, 'Irfan', 6330, 'L', 'Unknown', '2002-07-30', 'Unknown', '081919282567', 'icon_ig (1).png', 7),
(17, 'Isa', 6317, 'P', 'Unknown', '2002-07-31', 'Unknown', '081919282236', 'icon_ig (1).png', 7),
(18, 'Johan', 6332, 'L', 'Unknown', '2002-08-01', 'Unknown', '081919282819', 'icon_ig (1).png', 7),
(19, 'Kanahaya', 6333, 'P', 'Unknown', '2002-08-06', 'Unknown', '081123282876', 'icon_ig (1).png', 7),
(20, 'Lydia', 6334, 'P', 'Unknown', '2002-08-02', 'Unknown', '081919409876', 'icon_ig (1).png', 7),
(21, 'Huda', 6367, 'L', 'Unknown', '2002-08-04', 'Unknown', '081919282349', 'icon_ig (1).png', 7),
(22, 'Nafisah', 6337, 'P', 'Unknown', '2002-08-08', 'Unknown', '082791928287', 'icon_ig (1).png', 7),
(23, 'Najwa', 6338, 'P', 'Unknown', '2002-08-09', 'Unknown', '082791370287', 'icon_ig (1).png', 7),
(24, 'Nashela', 6339, 'P', 'Unknown', '2002-08-19', 'Unknown', '082791369287', 'icon_ig (1).png', 7),
(25, 'Nazala', 6340, 'P', 'Unknown', '2002-08-12', 'Unknown', '082791923157', 'icon_ig (1).png', 7),
(26, 'Neysha', 6347, 'P', 'Unknown', '2002-08-11', 'Unknown', '082792367287', 'icon_ig (1).png', 7),
(27, 'Neza', 6345, 'P', 'Unknown', '2002-08-18', 'Unknown', '083891928280', 'icon_ig (1).png', 7),
(28, 'Hidayah', 6349, 'P', 'Unknown', '2002-08-20', 'Unknown', '082791389287', 'icon_ig (1).png', 7),
(29, 'Agil', 6359, 'L', 'Unknown', '2002-08-26', 'Unknown', '082794218287', 'icon_ig (1).png', 7),
(30, 'Rifa', 6365, 'P', 'Unknown', '2002-08-13', 'Unknown', '082791943387', 'icon_ig (1).png', 7),
(31, 'Rinta', 6332, 'P', 'Unknown', '2002-08-21', 'Unknown', '082796528287', 'icon_ig (1).png', 7),
(32, 'Porong', 6399, 'L', 'Unknown', '2002-08-31', 'Unknown', '082791928223', 'icon_ig (1).png', 7),
(33, 'Sabrina', 6341, 'P', 'Unknown', '2002-08-23', 'Unknown', '082754228287', 'icon_ig (1).png', 7),
(34, 'Eko', 6388, 'L', 'Unknown', '2002-08-30', 'Unknown', '084231928287', 'icon_ig (1).png', 7),
(35, 'Taqiyya', 6386, 'P', 'Unknown', '2002-08-07', 'Unknown', '085531928287', 'icon_ig (1).png', 7),
(36, 'Zahra', 6342, 'P', 'Unknown', '2002-08-17', 'Unknown', '082793422876', 'icon_ig (1).png', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tentang_website`
--

CREATE TABLE `tbl_tentang_website` (
  `id` int(11) NOT NULL,
  `tentang_website` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tentang_website`
--

INSERT INTO `tbl_tentang_website` (`id`, `tentang_website`) VALUES
(1, '    <p>Tentang Website RPL - SMK Negeri 9 Semarang dan pembaharuan Versinya.</p>\r\n    <p>Website RPL - SMK Negeri 9 Semarang sebagai media yang dikelola oleh sekolah dan berada di Wilayah Negara Kesatuan\r\n        Republik Indonesia tentunya Taat dan Patuh sepenuhnya terhadap Hukum dan Perundang Undangan yang berlaku di\r\n        wilayah Negara Kesatuan Republik Indonesia. Dan mentaati Undang Undang Nomor 19 Tahun 2016 tentang ITE.</p>\r\n    <p>Website RPL - SMK Negeri 9 Semarang mulai dikerjakan pada akhir November 2022\r\n        dan akhirnya bisa online pada tanggal 30 Desember 2022.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visi_misi`
--

CREATE TABLE `tbl_visi_misi` (
  `id` int(11) NOT NULL,
  `visi_misi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_visi_misi`
--

INSERT INTO `tbl_visi_misi` (`id`, `visi_misi`) VALUES
(1, '    <p><strong>Visi RPL SMK Negeri 9 Semarang</strong></p>\r\n    <p>Menjadi program studi yang unggul, memiliki daya saing global di bidang rekayasa perangkat lunak yang mendukung\r\n        ekonomi kreatif pada tahun 2033</p>\r\n    <p><strong>Misi RPL SMK Negeri 9 Semarang</strong></p>\r\n    <ol>\r\n        <li>Menyelenggarakan pendidikan bermutu di bidang rekayasa perangkat lunak untuk pengembangan sumber daya\r\n            manusia yang profesional dan handal di lingkungan global sehingga menghasilkan lulusan yang berkualitas,\r\n            kompeten dan sesuai dengan kebutuhan saat ini dan akan datang.</li>\r\n        <li>Menyelenggarakan Penelitian di bidang rekayasa perangkat lunak untuk dapat dimanfaatkan oleh masyarakat\r\n            luas.<br></li>\r\n        <li>Menyelenggarakan kegiatan pengabdian masyarakat melalui pengenalan dan penyebaran ilmu yang relevan untuk\r\n            meningkatkan kinerja program studi dan mutu lulusan.</li>\r\n        <li>Mengelola program studi secara mandiri dengan tata kelola yang baik serta menjalin kerjasama dengan berbagai\r\n            pihak baik dalam negeri maupun luar negeri.</li>\r\n    </ol>\r\n    <p><strong>Tujuan RPL SMK Negeri 9 Semarang</strong></p>\r\n    <p>Tujuan Program Studi RPL di SMK Negeri 9 Semarang adalah</p>\r\n    <ol>\r\n        <li>Menghasilkan lulusan yang memiliki kompetensi di bidang rekayasa perangkat lunak sesuai dengan standar\r\n            nasional pendidikan tinggi.</li>\r\n        <li>Menghasilkan penelitian yang berkualitas untuk mendukung pengembangan sains dan teknologi informasi dengan\r\n            memperhaikan moral dan etika akademik serta hak atas kekayaan intelektual</li>\r\n        <li>Menghasilkan pengabdian masyarakat melalui kerjasama dengan masyarakat setempat sesuai dengan bidang ilmu\r\n        </li>\r\n        <li>Menjadi Program Studi yang memiliki tata kelola perguruan tinggi yang baik dan berkelanjutan</li>\r\n        </li>\r\n    </ol>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tbl_bukutamu`
--
ALTER TABLE `tbl_bukutamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ekskul`
--
ALTER TABLE `tbl_ekskul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembina` (`pembina`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_jurusan_ibfk_1` (`ka_prodi`);

--
-- Indexes for table `tbl_kategori_artikel`
--
ALTER TABLE `tbl_kategori_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `tbl_tentang_website`
--
ALTER TABLE `tbl_tentang_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_bukutamu`
--
ALTER TABLE `tbl_bukutamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_ekskul`
--
ALTER TABLE `tbl_ekskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori_artikel`
--
ALTER TABLE `tbl_kategori_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_tentang_website`
--
ALTER TABLE `tbl_tentang_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD CONSTRAINT `tbl_artikel_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori_artikel` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ekskul`
--
ALTER TABLE `tbl_ekskul`
  ADD CONSTRAINT `tbl_ekskul_ibfk_1` FOREIGN KEY (`pembina`) REFERENCES `tbl_guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD CONSTRAINT `tbl_jurusan_ibfk_1` FOREIGN KEY (`ka_prodi`) REFERENCES `tbl_guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD CONSTRAINT `tbl_siswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `tbl_jurusan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
