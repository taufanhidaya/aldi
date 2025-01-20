-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.0.30 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table edeweh.anggota
CREATE TABLE IF NOT EXISTS `anggota` (
  `id_anggota` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nm_anggota` varchar(255) NOT NULL DEFAULT '0',
  `no_registrasi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `j_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `jurusan` varchar(255) NOT NULL DEFAULT '0',
  `th_masuk` year DEFAULT NULL,
  `th_keluar` year DEFAULT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_anggota`),
  KEY `no_registrasi` (`no_registrasi`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel edeweh.anggota: ~95 rows (lebih kurang)
INSERT INTO `anggota` (`id_anggota`, `foto`, `nm_anggota`, `no_registrasi`, `j_kelamin`, `jurusan`, `th_masuk`, `th_keluar`, `alamat`) VALUES
	(16, NULL, 'Ikram', 'Em.185/XXVII/PNL', 'Laki-laki', 'Teknik Elektro', '2022', '2026', 'KrungGekeuh'),
	(17, NULL, 'Ulfa Mahera', 'EM.182/XXVII/PNL', 'Perempuan', 'Bisnis', '2022', '2026', 'Lhoksukon'),
	(18, NULL, 'Maria Ulfa', 'Em.180/XXVII/PNL', 'Perempuan', 'Teknik Elektro', '2022', '2026', 'KrungGekeuh'),
	(19, NULL, 'Miftahul Jannah Putri', 'Em.179/XXVII/PNL', 'Perempuan', 'Bisnis', '2022', '2026', 'Lhoksukon'),
	(21, NULL, 'Riyandi', 'Em.177/XXVII/PNL', 'Laki-laki', 'Teknik Elektro', '2023', '2026', 'Subulussalam'),
	(22, NULL, 'Andika Dwi Pratama', 'EM.176/XXVII/PNL', 'Laki-laki', 'Teknik Elektro', '2023', '2026', 'Siantar'),
	(23, NULL, 'Muhammad Rizki Ramadhana', 'EM.175/XXVII/PNL', 'Laki-laki', 'Teknik Mesin', '2023', '2027', 'Bireun'),
	(24, NULL, 'Haryadi', 'EM.174/XXVII/PNL', 'Laki-laki', 'Teknik Sipil', '2023', '2027', 'Subulussalam'),
	(26, NULL, 'Isly Neyskha Iskandar', 'E.132/XXVI/PNL', 'Perempuan', 'Bisnis', '2022', '2025', 'Palembang'),
	(27, NULL, 'Zacky Aulia Zulham', 'E.131/XXVI/PNL', 'Laki-laki', 'Teknik Mesin', '2022', '2026', 'Aceh Timur'),
	(28, NULL, 'Mulia Putri', 'E.130/XXVI/PNL', 'Perempuan', 'Bisnis', '2022', '2025', 'Langkat'),
	(29, NULL, 'Razheky Nazico Khasahab', 'E.129/XXVI/PNL', 'Laki-laki', 'Teknik Kimia', '2022', '2026', 'Aceh Utara'),
	(30, NULL, 'Ilham Alkautsar', 'E.128/XXVI/PNL', 'Laki-laki', 'Teknik Kimia', '2022', '2025', 'Lhokseumawe'),
	(31, NULL, 'Salsa Fadilla', 'EM. 165/XXV/PNL', 'Perempuan', '-', '2021', '2025', 'Bathupat Timur'),
	(32, NULL, 'Syahrul Ramadhan', 'EM.173/XXVI/PNL', 'Laki-laki', '-', '2022', '2026', 'Bener Meriah'),
	(35, NULL, 'Muhammad Deka Arya Putra', 'E.133/XXVI/PNL', 'Laki-laki', 'Teknik Elektro', '2022', '2026', 'Langkat'),
	(38, NULL, 'T.Khairil Azmi', 'Edelweis Pendiri', 'Laki-laki', '-', '2003', '1999', 'Banda Aceh'),
	(41, NULL, 'Firdaus Putra Ginting', 'Edelweis Pendiri', 'Laki-laki', '-', '1999', '2003', 'Medan'),
	(42, NULL, 'Safril', 'Edelweis Pendiri', 'Laki-laki', '-', '1999', '2003', 'Aceh Selatan'),
	(43, NULL, 'T.Dian Patria Teo', 'Edelweis Pendiri', 'Laki-laki', '-', '1999', '2003', 'Banda Aceh'),
	(44, NULL, 'T.M.Faisal Rizal', 'Edelweis Pendiri', 'Laki-laki', '-', '1999', '2003', 'Lhokseumawe'),
	(45, NULL, 'Aidil Fan', 'Edelweis Pendiri', 'Laki-laki', '-', '1999', '2003', 'Langsa'),
	(46, '51968-gamen.png', 'Nurul Aflah', 'EM.161/XXV/PNL', 'Perempuan', 'Teknologi Informasi dan Komputer', '2021', '2025', 'Aceh Utara'),
	(47, '90362-Taufan.jpg', 'M.Taufan Hidayat', 'EM.184/XXVII/PNL', 'Laki-laki', 'Teknologi Informasi dan Komputer', '2022', '2026', 'Bireun'),
	(48, '39489-borel.jpg', 'Ayu Sahara', 'E.134/XXV/PNL', 'Perempuan', 'Bisnis', '2021', '2024', 'Batu Bara'),
	(49, NULL, 'Rahmad Hidayat', 'E.127/XXV/PNL', 'Laki-laki', 'Teknik Mesin', '2021', '2025', 'Panggoi'),
	(50, '14701-Kak sacheng.jpg', 'Reyhal Azhari', 'E.126/XXV/PNL', 'Perempuan', 'Teknik Sipil', '2021', '2024', 'Batu Bara'),
	(51, NULL, 'Syuhada', 'E.125/XXV/PNL', 'Laki-laki', '-', '2021', '2025', 'Batuphat'),
	(52, NULL, 'Auliya Wahyuni', 'E.124/XXV/PNL', 'Perempuan', '-', '2021', '2025', 'Tambon'),
	(53, NULL, 'Cut Fidya Maulina', 'E.122/XXV/PNL', 'Perempuan', '-', '2021', '2025', 'Geudong'),
	(54, NULL, 'Al Furqan', 'E.121/XXV/PNL', 'Laki-laki', 'Teknik Elektro', '2021', '2024', 'Panton Labu'),
	(55, '81448-geger.jpg', 'Nadila Auliya', 'E.123/XXV/PNL', 'Perempuan', 'Teknologi Informasi dan Komputer', '2021', '2025', 'Bungkah'),
	(56, '18212-bgBohe.jpg', 'Burhan Siddiq', 'E.082/XXI/PNL', 'Laki-laki', 'Teknologi Informasi dan Komputer', '2019', '2016', 'Blang Pulo'),
	(57, '55568-bgUqan.jpg', 'Furqan . BA', 'E.056/X/PNL ', 'Laki-laki', 'Teknologi Informasi dan Komputer', '2005', '2000', 'Lhokseumawe'),
	(58, NULL, 'Abdullah Sani', 'E.085/XI/PNL', 'Laki-laki', 'Teknik Sipil', '2000', '2005', 'Mutiara'),
	(59, NULL, 'Dedi Saputra', 'E.001/I/PNL ', 'Laki-laki', '-', '1998', '2000', 'Banda Aceh'),
	(60, NULL, 'Ermarisi', 'E.015/II/PNL ', 'Laki-laki', '-', '2005', '2009', 'Trieng Gadeng\r\n\r\n'),
	(61, NULL, 'Muntazar', 'E.016/III/PNL  ', 'Laki-laki', '-', '1999', '2003', 'Lhokseumawe'),
	(62, NULL, 'Asrul Sani', 'E.020/IV/PNL  ', 'Laki-laki', '-', '2000', '2004', 'Kuta cane'),
	(63, NULL, 'Hayatullah', 'E.024/V/PNL  ', 'Laki-laki', '-', '1999', '2003', 'Lhokseumawe'),
	(64, NULL, 'Dedi Sufriadi', 'E.027/VI/PNL  ', 'Laki-laki', '-', '2000', '2005', 'Lhokseumawe'),
	(65, NULL, 'Muhiddin', 'E.029/VII/PNL  ', 'Laki-laki', '-', '2000', '2004', 'Lhokseumawe'),
	(66, NULL, 'Munawir', 'E.033/VIII/PNL ', 'Laki-laki', '-', '2000', '2004', 'Bireun'),
	(67, NULL, 'Feni Nurlianti', 'E.048/IX/PNL', 'Perempuan', '-', '2000', '2005', 'Lhokseumawe'),
	(68, NULL, 'Abdul Hadi', 'E.086/XII/PNL', 'Laki-laki', '-', '2001', '2006', 'Sp.Muling'),
	(69, '36402-somplak.jpg', 'Aldi Alfarisyi', 'EM.183/XXVII/PNL', 'Laki-laki', 'Teknologi Informasi dan Komputer', '2023', '2027', 'Lhokseumawe'),
	(70, NULL, 'Muhammad Alief Dafarillah', 'EM.186/XXVII/PNL', 'Laki-laki', 'Teknologi Informasi dan Komputer', '2023', '2027', 'Lamreung'),
	(71, NULL, 'Naila Zahira', 'EM.178/XXVII/PNL', 'Perempuan', 'Teknologi Informasi dan Komputer', '2023', '2027', 'Langkat'),
	(72, NULL, 'Nuria Fahira', 'Em.181/XXVII/PNL', 'Perempuan', 'Teknologi Informasi dan Komputer', '2022', '2026', 'Nibong'),
	(73, NULL, 'Ratna Meutia', 'E.002/I/PNL', 'Perempuan', '-', '1996', '2000', 'Teupin Punti'),
	(74, NULL, 'Desi Rosalina  ', 'E.003/I/PNL', 'Perempuan', '-', '1996', '2000', 'Batam Kepri'),
	(75, NULL, 'Afifah', 'E.004/I/PNL', 'Perempuan', '-', '1996', '2000', 'Kebayakan'),
	(76, NULL, 'M.Oki Kurniawan', 'E.005/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Banda Aceh'),
	(77, NULL, 'Yuslinar', 'E.006/I/PNL', 'Perempuan', '-', '1996', '2000', 'Banda Aceh'),
	(78, NULL, 'M.Najib Sofyan', 'E.007/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Banda Aceh'),
	(79, NULL, 'Ismayani', 'E.008/I/PNL', 'Perempuan', '-', '1996', '2000', 'Norwegia'),
	(80, NULL, 'Rahmadi', 'E.009/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Sigli'),
	(81, NULL, 'Dedi M', 'E.010/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Sigli/Medan'),
	(82, NULL, 'Dian Saifullah', 'E.011/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Subulussalam'),
	(83, NULL, 'Anizar', 'E.012/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Blang Jruen'),
	(84, NULL, 'Rahmat Hidayat', 'E.013/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Banda Aceh'),
	(85, NULL, 'Ali S. Brutu', 'E.014/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Subulussalam'),
	(86, NULL, 'Ibnu Hajar', 'E.035/I/PNL', 'Laki-laki', 'Bisnis', '1996', '2000', 'Medan'),
	(87, NULL, 'Khairul Ausa', 'E.036/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Lhokseumawe'),
	(88, NULL, 'M.Bastian Azhar', 'E.037/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Banda Aceh'),
	(89, NULL, 'M.Iqbal', 'E.038/I/PNL', 'Laki-laki', '-', '1996', '2000', 'Banda Aceh'),
	(90, NULL, 'Taufik', 'E.039/I/PNL', 'Laki-laki', '-', '2000', '2004', 'Banda Aceh'),
	(91, NULL, 'Bustami', 'E./II/PNL', 'Laki-laki', '-', '2003', '2007', 'Lhokseumawe'),
	(92, NULL, 'Aminah', 'E./II/PNL', 'Perempuan', '-', '2003', '2007', '-'),
	(93, NULL, 'Eko Mulia', 'E.017/III/PNL', 'Laki-laki', '-', NULL, NULL, 'Lhokseumawe'),
	(94, NULL, 'Khairul Bahri', 'E.018/III/PNL', 'Laki-laki', '-', NULL, NULL, 'Peureulak'),
	(95, NULL, 'Hendra Riga', 'E.019/III/PNL  ', 'Laki-laki', '-', NULL, NULL, 'Jakarta'),
	(96, NULL, 'Supian Supri', 'E.041/III/PNL', 'Laki-laki', '-', NULL, NULL, 'Lhokseumawe'),
	(97, NULL, 'Zulbahri', 'E.021/IV/PNL  ', 'Laki-laki', '-', NULL, NULL, 'Buloh'),
	(98, NULL, 'Anwar', 'E.022/IV/PNL', 'Laki-laki', '-', NULL, NULL, 'Idi Rayeuk'),
	(99, NULL, 'Balian', 'E.023/IV/PNL', 'Laki-laki', '-', NULL, NULL, 'Jakarta'),
	(100, NULL, 'Muslim Abadi', 'E./IV/PNL', 'Laki-laki', '-', NULL, NULL, '-'),
	(101, NULL, 'Moammar Izzam', 'E.025/V/PNL  ', 'Laki-laki', '-', NULL, NULL, 'Lhokseumawe'),
	(102, NULL, 'Tgk.Safiatuddin', 'E.026/V/PNL', 'Laki-laki', '-', NULL, NULL, 'Banda Aceh'),
	(103, NULL, 'Darwin Pasena', 'E.028/VI/PNL', 'Laki-laki', 'Bisnis', NULL, NULL, 'Lhokseumawe'),
	(104, NULL, 'Yoza Rianda', 'E.042/VI/PNL', 'Laki-laki', '-', NULL, NULL, 'Banda Aceh'),
	(105, NULL, 'Cut Egi Regita', 'E.030/VII/PNL', 'Perempuan', '-', NULL, NULL, 'Lhokseumawe'),
	(106, NULL, 'Munanzar', 'E.031/VII/PNL', 'Laki-laki', 'Bisnis', NULL, NULL, 'Lhokseumawe'),
	(107, NULL, 'Marrizal', 'E.032/VII/PNL', 'Laki-laki', '-', NULL, NULL, 'Lhokseumawe'),
	(108, NULL, 'Ratna', 'E.044/VII/PNL', 'Perempuan', '-', NULL, NULL, 'Matang Geulumpang Dua'),
	(109, NULL, 'Nuzul Azmi', 'E.034/VIII/PNL', 'Laki-laki', '-', NULL, NULL, 'Sigli'),
	(110, NULL, 'Hafizah', 'E.045/VIII/PNL', 'Perempuan', '-', NULL, NULL, 'Medan'),
	(111, NULL, 'Rusman', 'E.046/VIII/PNL', 'Laki-laki', '-', NULL, NULL, 'Malaysia'),
	(112, NULL, 'Amrianto', 'E.047/IX/PNL', 'Laki-laki', '-', NULL, NULL, 'Makasar'),
	(113, NULL, 'M.Zakie', 'E.049/IX/PNL', 'Laki-laki', '-', NULL, NULL, 'Langsa\r\n\r\n'),
	(114, NULL, 'Rahmat Januardi', 'E.050/IX/PNL', 'Laki-laki', '-', NULL, NULL, 'Geureugok'),
	(115, NULL, 'Wardi Isman Lubis', 'E.051/IX/PNL', 'Laki-laki', '-', NULL, NULL, 'Lhokseumawe'),
	(116, NULL, 'Agus Heri', 'E.052/IX/PNL', 'Laki-laki', '-', NULL, NULL, 'Kuta Blang'),
	(117, NULL, 'Mursal', 'E.053/IX/PNL', 'Laki-laki', '-', NULL, NULL, 'Matang'),
	(118, NULL, 'Zulfikar', 'E.054/IX/PNL', 'Laki-laki', '-', NULL, NULL, 'Langsa');

-- membuang struktur untuk table edeweh.kegiatan
CREATE TABLE IF NOT EXISTS `kegiatan` (
  `id_kegiatan` int NOT NULL AUTO_INCREMENT,
  `media` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nm_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nm_pengurus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tgl_kegiatan` date DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `Divisi` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `youtube_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `tiktok_url` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kegiatan`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel edeweh.kegiatan: ~9 rows (lebih kurang)
INSERT INTO `kegiatan` (`id_kegiatan`, `media`, `nm_kegiatan`, `nm_pengurus`, `tgl_kegiatan`, `lokasi`, `Divisi`, `deskripsi`, `youtube_url`, `instagram_url`, `tiktok_url`, `facebook_url`) VALUES
	(16, 'bariska.jpg', 'Pendidikan Dasar Edelweis', 'Alfurqan', '2024-08-02', 'Nisam Antara', '', 'ghckhgccl', '', '', '', ''),
	(17, 'pelepasan.png', 'Wajib Gunung', 'M.Deka Arya Putra', '2024-11-15', 'Gunung Burni Klieten', 'gunung_hutan', 'hjklbvnvbbnnkljjhcbnnfdfc,hc,hgc,hgdf,tyddc', '', '', '', ''),
	(18, 'longmath.jpg', 'Menelaah hayati', 'Kulbet', '2024-02-22', 'gunung salak', 'konservasi', 'hcbshfgwuoygfouwygfq3', '', '', '', ''),
	(19, 'ponco evakuasi.jpg', 'ngarung', 'Ilham alkautsar', '2025-02-10', 'Krungmane', 'arung_jeram', 'bkjdhbfjee', '', '', '', ''),
	(20, 'gunung.jpg', 'gabut manjat', 'Reyhal Azhari', '2024-04-12', 'gunung everest', 'panjat_tebing', 'vjbflf;ewbfi;we', 'https://www.youtube.com/watch?v=6q2DFF4ImqE', '', '', ''),
	(21, 'gunung.jpg', 'manjat aja', 'Reyhal Azhari', '2026-08-02', 'gunung everest', 'panjat_tebing', 'nf a,nbljbfr3qh;ihi3q', 'https://www.youtube.com/watch?v=G4nNBckyZQU&list=RDMMxvJCy6bL4ks&index=19', '', '', ''),
	(22, 'Panjat Tebing.jpeg', 'Panjat Tebing', 'Muhammad Alief Daffarillah', '2025-01-08', 'pinteres', 'panjat_tebing', 'Seorang yang sedang memanjat tebing yang tinggi dan curam.', '', '', '', ''),
	(23, 'download.jpeg', 'Arung Jeram', 'Bantet', '2025-01-23', 'Takengon', 'arung_jeram', 'Mengarungi sungai Antah brantah', '', '', '', ''),
	(24, 'download.jpg', 'Pemandangan', 'Kulbet', '2025-01-14', 'pinteres', 'gunung_hutan', 'Pemandangan yang Sangat Liar dan enak dipandang', '', '', '', '');

-- membuang struktur untuk table edeweh.pengurus
CREATE TABLE IF NOT EXISTS `pengurus` (
  `id_pengurus` int NOT NULL AUTO_INCREMENT,
  `media` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nm_pengurus` varchar(255) NOT NULL DEFAULT '0',
  `no_registrasi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `period` varchar(50) NOT NULL DEFAULT '',
  `bidang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_pengurus`),
  KEY `FK_pengurus_anggota` (`no_registrasi`),
  CONSTRAINT `FK_pengurus_anggota` FOREIGN KEY (`no_registrasi`) REFERENCES `anggota` (`no_registrasi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel edeweh.pengurus: ~6 rows (lebih kurang)
INSERT INTO `pengurus` (`id_pengurus`, `media`, `nm_pengurus`, `no_registrasi`, `jabatan`, `period`, `bidang`) VALUES
	(3, 'media_67631986ca8335.62294020.jpg', 'Muhammad Deka Arya putra', 'E.133/XXVI/PNL', 'Ketua Umum', '2024-2025', NULL),
	(4, 'media_67631b5a61a5c3.33422893.jpg', 'Isly Neyskha Iskandar', 'E.132/XXVI/PNL', 'Sekretaris Umum', '2024-2025', NULL),
	(5, 'media_67631b959509f6.55027668.jpg', 'Mulia Putri', 'E.130/XXVI/PNL', 'Bendahara Umum', '2024-2025', NULL),
	(6, 'media_67631be7d454a5.51353548.jpg', 'Miftahul Jannah Putri', 'EM.179/XXVII/PNL', 'Kesekretariatan', '2024-2025', NULL),
	(8, 'media_6763225c027c81.11743584.jpg', 'Ilham Alkautsar', 'E.128/XXVI/PNL', 'Ketua', '2024-2025', 'Diklat'),
	(11, 'media_67725ddd5bead3.80854477.jpg', 'Miftahul jannah Putri', 'EM.173/XXVI/PNL', 'kesekretariatan', '2024-2025', NULL);

-- membuang struktur untuk table edeweh.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nm_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) NOT NULL,
  `no_registrasi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nm_lapangan` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','anggota') NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `no_registrasi` (`no_registrasi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel edeweh.user: ~2 rows (lebih kurang)
INSERT INTO `user` (`id_user`, `nm_lengkap`, `username`, `no_registrasi`, `nm_lapangan`, `password`, `role`) VALUES
	(1, 'Ulfa Mahera', 'cewekayu', 'Em.182/XXVII/PNL', 'Ceka', '$2y$10$z4JiZYe5s5O1BbgRHd3qQeLkDEisKDZaJO8AAQ04iXpJ7V2pS9eUS', 'anggota'),
	(2, 'test', 'test', 'em.123saddqq', 'test', 'test', 'admin');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
