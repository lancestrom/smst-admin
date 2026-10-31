-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2026 at 04:52 PM
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
-- Database: `school_management_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `level` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `username`, `password`, `nama`, `level`) VALUES
(101, 'admin123', 'a43c27c2babefd68df8a694900f30a1c', 'Administrator STMT UTAMA', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bkk_artikel_karier`
--

CREATE TABLE `bkk_artikel_karier` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `ringkasan` text DEFAULT NULL,
  `isi` longtext NOT NULL,
  `gambar_miniatur` varchar(255) DEFAULT NULL,
  `status` enum('draft','published') NOT NULL DEFAULT 'draft',
  `diterbitkan_pada` datetime DEFAULT NULL,
  `dibuat_oleh` int(11) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bkk_kegiatan`
--

CREATE TABLE `bkk_kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` text NOT NULL,
  `gambar` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bkk_kegiatan`
--

INSERT INTO `bkk_kegiatan` (`id_kegiatan`, `nama_kegiatan`, `gambar`, `timestamp`) VALUES
(4440, 'PEMBEKALAN PRAKERIN SMK TUNAS HARAPAN 2024', 'https://drive.google.com/thumbnail?id=1NIJaR_mseoSIhLonDaP0_Fw4NJ6W0eBw', '2024-09-28 15:22:36'),
(5417, 'JOB FAIR & EDU FAIR', 'https://drive.google.com/thumbnail?id=1iZBbIWvEUicer_dHiYyGNNKN-bjnL3Er', '2024-08-03 12:20:23'),
(6889, 'PENERIMAAN KERJA DENGAN PT D\'COST', 'https://drive.google.com/thumbnail?id=1PwPWu5bqaTeR9kjcGJUW8QaOY__XJV4e', '2024-12-30 07:40:32'),
(6983, 'SELEKSI AWAL PERSIAPAN PELATIHAN MAGANG DAN KERJA DI JEPANG', 'https://drive.google.com/thumbnail?id=1Z89APn-w48KILo1n04bvOvN8XYKXa-0_', '2025-04-21 10:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `bkk_kegiatan_gambar`
--

CREATE TABLE `bkk_kegiatan_gambar` (
  `id_kegiatan_gambar` int(11) NOT NULL,
  `id_kegiatan` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bkk_kegiatan_gambar`
--

INSERT INTO `bkk_kegiatan_gambar` (`id_kegiatan_gambar`, `id_kegiatan`, `gambar`, `timestamp`) VALUES
(1001, 5417, 'https://drive.google.com/thumbnail?id=11OzI1yJtc0e64x2s3ahmTWwlg5TvSd50', '2024-08-03 12:33:33'),
(1002, 5417, 'https://drive.google.com/thumbnail?id=1epnWOlyt-u6cMBGCq92egSXsfo_36mPW', '2024-08-03 12:33:33'),
(1003, 5417, 'https://drive.google.com/thumbnail?id=1fP3pySYP995KEr666M3HZ7FxaKTp6o-x', '2024-08-03 12:33:33'),
(1004, 5417, 'https://drive.google.com/thumbnail?id=1U8Xi7GC5ZKcL0Q3DGJ4Du6u4tB6te56X', '2024-08-03 12:33:33'),
(1005, 5417, 'https://drive.google.com/thumbnail?id=1UD0Yt0Z8vLaNqZRuj8flz8o3aJJ_fa4j', '2024-08-03 12:33:33'),
(1006, 5417, 'https://drive.google.com/thumbnail?id=1SaLJDZjuJ3qyJnW6L9Etcq-6RmN-T4Pn', '2024-08-03 12:33:33'),
(1007, 5417, 'https://drive.google.com/thumbnail?id=11iOB9wu5DWWF5Vj8odQEj0KGycEG6N2V', '2024-08-03 12:33:33'),
(1008, 5417, 'https://drive.google.com/thumbnail?id=1prjXozf2LqZ4dEj1wCaIRyq5ZtsPriLy', '2024-08-03 12:33:33'),
(1009, 5417, 'https://drive.google.com/thumbnail?id=1XYINj7SbbnQN2yjNhethQ__dOmecVrKZ', '2024-08-03 12:33:33'),
(1010, 5417, 'https://drive.google.com/thumbnail?id=1iEYw4i5IGTcohuxShwKs6Xphj087PovW', '2024-08-03 12:33:33'),
(1011, 5417, 'https://drive.google.com/thumbnail?id=1luakLq-Pqa-YHp4aPYLE0dj_3NyI6Asm', '2024-08-03 12:33:33'),
(1012, 5417, 'https://drive.google.com/thumbnail?id=1WVSdwPUb7jTt-A-mL1myekGcHLsfKwcL', '2024-08-03 12:33:33'),
(1013, 5417, 'https://drive.google.com/thumbnail?id=1AjqPEZ-LYo-HH4A3cP3jyn-aeI6LFISP', '2024-08-03 12:33:33'),
(1014, 5417, 'https://drive.google.com/thumbnail?id=1xFdjcJdK28cdHPdmabmXxWfPZtFY_w4p', '2024-08-03 12:33:33'),
(1015, 5417, 'https://drive.google.com/thumbnail?id=13tNDi12IRtxSvGbtPvC5eYuTEmOos-sf', '2024-08-03 12:33:33'),
(1016, 5417, 'https://drive.google.com/thumbnail?id=1K1RjzV8N35t-zmTgKCMzRG9T2DOg_Cqh', '2024-08-03 12:33:33'),
(1017, 5417, 'https://drive.google.com/thumbnail?id=1An2ZiRx41VlnZG8WKTtGRD11W9-tYKFI', '2024-08-03 12:33:33'),
(1018, 5417, 'https://drive.google.com/thumbnail?id=1GXO9PJCoUq3seWVcAZhDwJcHO2IEQo0K', '2024-08-03 12:33:33'),
(1019, 4440, 'https://drive.google.com/thumbnail?id=18WnHIsQGDKcgtRZOxPPZEHdaP32Pm5-D', '2024-09-28 15:28:04'),
(1020, 4440, 'https://drive.google.com/thumbnail?id=15rJcLdJbOANXboqhds_hDOE00vksgB7x', '2024-09-28 15:28:04'),
(1021, 4440, 'https://drive.google.com/thumbnail?id=1NIJaR_mseoSIhLonDaP0_Fw4NJ6W0eBw', '2024-09-28 15:28:04'),
(1022, 4440, 'https://drive.google.com/thumbnail?id=14Jb9EPLku93cGAzhQf8yo9PXmgfglSD8', '2024-09-28 15:28:04'),
(1023, 4440, 'https://drive.google.com/thumbnail?id=12jTTTEq3SH6tUQiMLs42RXcOoKfA08VW', '2024-09-28 15:28:04'),
(1024, 4440, 'https://drive.google.com/thumbnail?id=13AFfLJEjkFdpzOR2r4H5HDcoKXSN4_9W', '2024-09-28 15:28:04'),
(1025, 4440, 'https://drive.google.com/thumbnail?id=1TdQiD4kWmMx4BZ2WKdv9u_-kmWA3BmhT', '2024-09-28 15:28:04'),
(1026, 4440, 'https://drive.google.com/thumbnail?id=17CYsDlSPuD_Gn9F9SgdefMN5nK4OWX2z', '2024-09-28 15:28:04'),
(1027, 4440, 'https://drive.google.com/thumbnail?id=1LMQjrYJiCA315B4HEJYA1VdBGjChwirX', '2024-09-28 15:28:04'),
(1028, 6889, 'https://drive.google.com/thumbnail?id=12TImkawlft8ivNP4p7D13Xncdm-W0khS', '2024-12-30 07:44:58'),
(1029, 6889, 'https://drive.google.com/thumbnail?id=14XXosNLrmpnHMiUgEC2uEPVB4vabpLaA', '2024-12-30 07:44:58'),
(1030, 6889, 'https://drive.google.com/thumbnail?id=1A_CNAroHDbWsvcQFaQfblyyVkYhODcFt', '2024-12-30 07:44:58'),
(1031, 6889, 'https://drive.google.com/thumbnail?id=1KGUOQR6ukOCm73QPHK9QGQdpK5JQVWsw', '2024-12-30 07:44:58'),
(1032, 6889, 'https://drive.google.com/thumbnail?id=1PqbtiOE_JShKpxRx1YLDYK0mm7QqsR4t', '2024-12-30 07:44:58'),
(1033, 6889, 'https://drive.google.com/thumbnail?id=1RRC_AL5ii7q0-vsEcJCBdinFPG9roKOI', '2024-12-30 07:44:58'),
(1034, 6889, 'https://drive.google.com/thumbnail?id=1S3YdpwDPxzl85iqQIZNI-p2vJ2QmP83i', '2024-12-30 07:44:58'),
(1035, 6889, 'https://drive.google.com/thumbnail?id=1Scm82qMuh28T86bpt_PyABVATfW8XSkw', '2024-12-30 07:44:58'),
(1036, 6889, 'https://drive.google.com/thumbnail?id=1UiYjTDmbfzEDTSDlkPhu2PUjEftutJr1', '2024-12-30 07:44:58'),
(1037, 6889, 'https://drive.google.com/thumbnail?id=1VOGezs2Fgvi6yY_fSFyfTSbFSV1TeEOa', '2024-12-30 07:44:58'),
(1038, 6889, 'https://drive.google.com/thumbnail?id=1eX0OooUTNfOH1I7FEX-2Znqjt_b6qAxt', '2024-12-30 07:44:58'),
(1039, 6889, 'https://drive.google.com/thumbnail?id=1pPWuZRuaNBscmEnRCxHbDuJFnFOK3z7e', '2024-12-30 07:44:58'),
(1040, 6889, 'https://drive.google.com/thumbnail?id=1rdxjWP_CKc9SDINT6S0ptbZqv2CL9cya', '2024-12-30 07:44:58'),
(1041, 6889, 'https://drive.google.com/thumbnail?id=1pD5OS4YE_H-tc6Hd-4sm0J7ag-gk61Hd', '2024-12-30 07:44:58'),
(1042, 6889, 'https://drive.google.com/thumbnail?id=1FN1q4P6g7PjFBcJtkgEMu2Xyen8nyY08', '2024-12-30 07:44:58'),
(1043, 6889, 'https://drive.google.com/thumbnail?id=17GfMP2UdYvlyeBmWSetNo0iplNPYbNFm', '2024-12-30 07:44:58'),
(1044, 6889, 'https://drive.google.com/thumbnail?id=1PwPWu5bqaTeR9kjcGJUW8QaOY__XJV4e', '2024-12-30 07:44:58'),
(1045, 6983, 'https://drive.google.com/thumbnail?id=15L-HZKWIyLa2YP-KlK-VfxrZEsLsgfhx', '2025-04-21 10:46:31'),
(1046, 6983, 'https://drive.google.com/thumbnail?id=1_BUeQcobE_MvrnBjqqJT7f8gVDIx5CkH', '2025-04-21 10:46:31'),
(1047, 6983, 'https://drive.google.com/thumbnail?id=1ZfvSaiBtCx_PYpNJY8OrN4WRjlNyKwbv', '2025-04-21 10:46:31'),
(1048, 6983, 'https://drive.google.com/thumbnail?id=1-zkKVtH_MwF1kUE0C6lhZ-JFClA2gi68', '2025-04-21 10:46:31'),
(1049, 6983, 'https://drive.google.com/thumbnail?id=1tcqsVRFqtUzGZsD-EHDYY6nWo7Fulmma', '2025-04-21 10:46:31'),
(1050, 6983, 'https://drive.google.com/thumbnail?id=1i220g6BJ0QoSQE2OYa-ZequCRi0FwmnL', '2025-04-21 10:46:31'),
(1051, 6983, 'https://drive.google.com/thumbnail?id=1sXnoAv2BZ9-Yc5VvgVTVdr3tNFxwSDUx', '2025-04-21 10:46:31'),
(1052, 6983, 'https://drive.google.com/thumbnail?id=19khYD5puITUwpthmmhMK6O6-EnHGP3A8', '2025-04-21 10:46:31'),
(1053, 6983, 'https://drive.google.com/thumbnail?id=1RIIsp-0isfN1VlePGaAng8_ZbAKTRuCk', '2025-04-21 10:46:31'),
(1054, 6983, 'https://drive.google.com/thumbnail?id=1Z89APn-w48KILo1n04bvOvN8XYKXa-0_', '2025-04-21 10:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `bkk_mitra_kampus`
--

CREATE TABLE `bkk_mitra_kampus` (
  `id` int(20) NOT NULL,
  `nama-kampus` text NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(230) NOT NULL,
  `telepon` int(20) NOT NULL,
  `situs_web` int(11) NOT NULL,
  `logo` text NOT NULL,
  `deskripsi_kerja_sama` text NOT NULL,
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `diperbarui_pada` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bkk_mitra_perusahaan`
--

CREATE TABLE `bkk_mitra_perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `profil` varchar(512) NOT NULL,
  `gambar` text NOT NULL,
  `kode_mou` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bkk_mitra_perusahaan`
--

INSERT INTO `bkk_mitra_perusahaan` (`id_perusahaan`, `nama`, `profil`, `gambar`, `kode_mou`) VALUES
(1001, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1ulwplFCWXBxCiYdRBVw5rsBWGsHoTqoa', '1001'),
(1002, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1rXUa52CwwvjYPaMyK5SHb0ir9V4pLTDp', '1001'),
(1003, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1BFnfjS5iIoapWUIm2RO852z5_kCkqtpU', '2002'),
(1004, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=11udR_Itgq2tXTIzHzMY0iV8bON1Q0GIx', '1001'),
(1005, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1wfxO8juUYYVDpBhj39jAcRtNZGqpUouA', '1001'),
(1006, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1S3aKT9zg-630OrH5niZg_0cAGa29WVf8', '1001'),
(1007, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1PFR8mo0EMbFnuYhrBRTqaP93cmP-mSI1', '1001'),
(1008, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1yCDO36fQT5fzRWtj3ctTxbtfMCduOONg', '1001'),
(1009, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1yRX0VGnoE8-XbArz35t84umr1C70J4_E', '1001'),
(1010, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1SMJ5T6TplYzPOFDKpqF0SRRJ28tnCV2b', '1001'),
(1011, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1ixJoQELsuDR5hDbAjngCHjmvaJUqAB32', '1001'),
(1012, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1YheK5OvphO690ZSmGVi8QvRYhMYr2KjC', '1001'),
(1013, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1SoNGPhV0RywS39V2Z4IbqW8jQ-dyMeZk', '1001'),
(1014, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1Dq6tC4c4xJlh5BoMTCqn1NYTMqVa1CTM', '2002'),
(1015, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1OItyhdaCW1GSc2a3w9y_qvUxkO1K0qfl', '1001'),
(1016, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1TaweXtWPi2dIorzeWq8nABh1o-Fcb6vH', '1001'),
(1017, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1feiQNyGlunaCBNWmj40q8tUl1UQTJnGK', '1001'),
(1018, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1LFZC0hi8bU3Wub9tw2qwlgYe8hvz4MGh', '1001'),
(1019, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1EA_y_iLJ-8GfJJE_6JbzxeOuWUHuqzP_', '1001'),
(1020, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1xt-rHhRjDu1yrbh2RJvLJ97f2YpMD2G2', '1001'),
(1021, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1eC8oGEDByQB5v384rAnSQSM90xKl5Jj2', '1001'),
(1022, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1vC7ShWeXCzlwKtfENseVwSAwq96Fw8Od', '1001'),
(1023, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1a0G8MYReDH24py1nCkf-wbc5AJyIE2qw', '1001'),
(1024, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=13RQKZVotGcB4dBRfTzzK_MkKx1K_V1EB', '1001'),
(1025, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1A3ki4EMsj2FHpV9TABs_fUVeFqYeop5A', '1001'),
(1026, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1RrggUb-kyyiEgSGec0dkmsaoMcVyznDD', '2002'),
(1027, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1UQ_bb94grFtr4HBmFgjEQoo3WHGZ2Vuv', '2002'),
(1028, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1cDw7jBAMg2nfJFXvTnuowKFrBILsC3vb', '2002'),
(1029, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1sQX4U78ulRjUtjFWzJICfaCYLsZoy7cb', '1001'),
(1030, ' - ', ' - ', 'https://drive.google.com/thumbnail?id=1xPPNjIOZYfpw3n-HAVSuKIs2B_IbliJG', '1001');

-- --------------------------------------------------------

--
-- Table structure for table `bkk_profil`
--

CREATE TABLE `bkk_profil` (
  `id_bkk_profil` int(11) NOT NULL,
  `nama_bkk` text NOT NULL,
  `nama_ketua_bkk` text NOT NULL,
  `kode_reg_bkk` text NOT NULL,
  `tlpn` text NOT NULL,
  `email` text NOT NULL,
  `alamat` text NOT NULL,
  `logo` text NOT NULL,
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `diperbarui_pada` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bkk_profil`
--

INSERT INTO `bkk_profil` (`id_bkk_profil`, `nama_bkk`, `nama_ketua_bkk`, `kode_reg_bkk`, `tlpn`, `email`, `alamat`, `logo`, `dibuat_pada`, `diperbarui_pada`) VALUES
(1001, 'BKK SMK TUNAS HARAPAN', 'Siswanto, M.Pd', 'NOMOR 2/G.13/3/TM.18.21/e/2024', '081315401441', 'bkk@smkth-jakbar.com', 'Komplek BNI 46, Jelambar, Grogol Petamburan, RT.2/RW.4, Wijaya Kusuma, Kec. Grogol petamburan, Kota Jakarta Barat', 'bkk_terbaru.png', '2026-10-18 12:34:53', '2026-10-18 12:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `bkk_program_magang`
--

CREATE TABLE `bkk_program_magang` (
  `id` int(11) NOT NULL,
  `mitra_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `jurusan_id` int(11) DEFAULT NULL,
  `kuota` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `batas_pendaftaran` date DEFAULT NULL,
  `url_pendaftaran` varchar(500) DEFAULT NULL,
  `status` enum('draft','published','closed') NOT NULL DEFAULT 'draft',
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `setting_menu` text NOT NULL,
  `setting_base_url` text NOT NULL,
  `integrasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `setting_menu`, `setting_base_url`, `integrasi`) VALUES
(1, 'PROFIL SEKOLAH', 'detail_profil_sekolah', 'Sekolah'),
(2, 'VISI & MISI SEKOLAH', 'visi_misi_sekolah', 'Sekolah'),
(3, 'JURUSAN', 'jurusan', 'Sekolah'),
(4, 'PROFIL JURUSAN', 'jurusan_profil', 'Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama_pengguna` varchar(100) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `peran` enum('admin','bkk','bank_mini','tu','kurikulum','guru','siswa') NOT NULL DEFAULT 'admin',
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama_pengguna`, `kata_sandi`, `nama`, `peran`, `dibuat_pada`, `diperbarui_pada`) VALUES
(1, 'admin123', '$2b$10$cwZ0dRYoa4JDLKNnQu63ruG44vDzJQ74XNBwAHeWDR49NQm2WEsxO', 'SUPER ADMIN ALL', 'admin', '2026-10-08 12:58:48', '2026-10-09 13:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_akreditasi`
--

CREATE TABLE `sekolah_akreditasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `lembaga` varchar(200) DEFAULT NULL,
  `peringkat_akreditasi` varchar(50) DEFAULT NULL,
  `nomor_sertifikat` varchar(150) DEFAULT NULL,
  `berlaku_mulai` date DEFAULT NULL,
  `berlaku_sampai` date DEFAULT NULL,
  `berkas_dokumen` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_artikel`
--

CREATE TABLE `sekolah_artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `gambar_miniatur` varchar(255) DEFAULT NULL,
  `status` enum('draft','published') DEFAULT 'draft',
  `penulis_id` int(11) DEFAULT NULL,
  `diterbitkan_pada` datetime DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_fasilitas_jurusan`
--

CREATE TABLE `sekolah_fasilitas_jurusan` (
  `id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_fasilitas_sekolah`
--

CREATE TABLE `sekolah_fasilitas_sekolah` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `lokasi` varchar(200) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `jenis_fasilitas` varchar(100) DEFAULT NULL,
  `status_aktif` tinyint(1) NOT NULL DEFAULT 1,
  `urutan_tampil` int(11) NOT NULL DEFAULT 0,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_guru`
--

CREATE TABLE `sekolah_guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nip` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jurusan_id` int(11) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_jurusan`
--

CREATE TABLE `sekolah_jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sekolah_jurusan`
--

INSERT INTO `sekolah_jurusan` (`id`, `nama`, `kode`, `dibuat_pada`, `diperbarui_pada`) VALUES
(1001, 'akuntansi keuangan dan lembaga', 'AKL', '2026-10-30 11:23:05', '2026-10-30 11:23:05'),
(1002, 'pemasaran', 'PM', '2026-10-30 11:23:26', '2026-10-30 11:23:26'),
(1003, 'manajemen perkantoran dan layanan bisnis', 'MPLB', '2026-10-30 11:24:10', '2026-10-30 11:24:10'),
(1004, 'teknik jaringan komputer dan telekomunikasi', 'TJKT', '2026-10-30 11:29:33', '2026-10-30 11:29:33'),
(1005, 'desain komunikasi visual', 'DKV', '2026-10-30 11:30:27', '2026-10-30 11:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_kompetensi_jurusan`
--

CREATE TABLE `sekolah_kompetensi_jurusan` (
  `id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `jenis_kompetensi` enum('tujuan','kompetensi','prospek_kerja') NOT NULL DEFAULT 'kompetensi',
  `urutan_tampil` int(11) NOT NULL DEFAULT 0,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_media_artikel`
--

CREATE TABLE `sekolah_media_artikel` (
  `id` int(11) NOT NULL,
  `artikel_id` int(11) NOT NULL,
  `jenis_media` enum('image','video','document') NOT NULL DEFAULT 'image',
  `url_media` varchar(500) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `urutan_tampil` int(11) NOT NULL DEFAULT 0,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_misi`
--

CREATE TABLE `sekolah_misi` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sekolah_misi`
--

INSERT INTO `sekolah_misi` (`id`, `isi`, `dibuat_pada`, `diperbarui_pada`) VALUES
(1001, 'menyelenggarakan kegiatan pendamping keagamaan dalam rangka peningkatyan ketaqwaan.', '2026-10-30 10:37:18', '2026-10-30 10:37:18'),
(1002, 'menyelenggarakan pembelajaran dengan pendekatan teknologi informasi dan komunikasi.', '2026-10-30 10:37:38', '2026-10-30 10:37:38'),
(1003, 'menyelenggarakan sertifikasi kompetensi bagi siswa', '2026-10-30 10:38:08', '2026-10-30 10:38:08'),
(1004, 'Menyelengarakan kegiatan kurikuler dan ekstrakulikuler agar peserta didik memiliki multiskills yang mampu mengembangkan kecakapan hidup (life skils) , berakhlak mulian, kreatif dan inovatif', '2026-10-30 10:38:27', '2026-10-30 10:38:27'),
(1005, 'meningkatkan kualityas dan kuatitas pendidik dan tenaga kependidikan yang memenuhi kualifikasi profesional, sertifikasi kompetensi, kreatif, inovatif, berkarakter dan berbudaya', '2026-10-30 10:39:49', '2026-10-30 10:39:49'),
(1006, 'Meningkatkan fasilitas dan lingkungan belajar yang aman, nyaman, memenuhi standar pendidikan, standar kerja industri secara kualitas dan kuantitas', '2026-10-30 10:40:06', '2026-10-30 10:40:06'),
(1007, 'membangun kemitraan (link and match) dengan lembaga yang relevan', '2026-10-30 10:40:28', '2026-10-30 10:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_profil`
--

CREATE TABLE `sekolah_profil` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `npsn` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `nama_kepala_sekolah` varchar(150) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sekolah_profil`
--

INSERT INTO `sekolah_profil` (`id`, `nama_sekolah`, `npsn`, `alamat`, `telepon`, `email`, `nama_kepala_sekolah`, `deskripsi`, `logo`, `dibuat_pada`, `diperbarui_pada`) VALUES
(1001, 'SMK TUNAS HARAPAN', '20101484', 'Komplek BNI 46, Jelambar, Grogol Petamburan, RT.2/RW.4, Wijaya Kusuma, Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta', '0215662305', 'admin@smkth-jakbar.com', 'Widodo, S.E, M.M', 'SMK Tunas Harapan berdiri sejak tahun 1990 dahulu bernama SMEA dimana jurusan keahlian (setara sekolah menengah) hanya Bisnis Management ( Akuntantansi, Pemasaran dan Administrasi perkantoran). sejak tahun 2013 terdapat jurusan baru dari bidang Teknologi (Teknik Komputer dan Jaringan). Dan sejak tahun 2020 terdapat jurusan baru dari bidang Seni dan Ekonomi Kreatif (Desain Komunikasi Visual). Berbagai prestasi dari Bidang Olahraga, Kesenian, Sastra hingga Mata Pelajaran Produktif(Lomba Kompetensi Siswa) sudah diraih oleh SMK Tunas Harapan. Prestasi ini bukan akhir tetapi melainkan awal untuk menciptakan Teknis Pendidikan berbasis Praktek dan Kerja Industri (sesuai Jurusan) yang inovatif dan kreatif. SMK Tunas Harapan sudah menjalankan Program Teaching Factory, Bursa Kerja dan Lembaga Sertifikasi Profesi berstandart BNSP. Program ini dikhususkan untuk meningkatkan kualitas kegiatan pembelajaran dan pencarian lapangan kerja berbasis jurusan masing - masing.', 'logo.png', '2026-10-20 11:31:45', '2026-10-31 06:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_profil_jurusan`
--

CREATE TABLE `sekolah_profil_jurusan` (
  `id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `visi` text DEFAULT NULL,
  `misi` text DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_sambutan_kepala_sekolah`
--

CREATE TABLE `sekolah_sambutan_kepala_sekolah` (
  `id` int(11) NOT NULL,
  `nama_kepala_sekolah` varchar(150) NOT NULL,
  `jabatan` varchar(150) NOT NULL DEFAULT 'Kepala Sekolah',
  `sambutan` longtext NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status_aktif` tinyint(1) NOT NULL DEFAULT 1,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_sejarah_sekolah`
--

CREATE TABLE `sekolah_sejarah_sekolah` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `tahun_mulai` year(4) DEFAULT NULL,
  `tahun_selesai` year(4) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `urutan_tampil` int(11) NOT NULL DEFAULT 0,
  `status_publikasi` tinyint(1) NOT NULL DEFAULT 1,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sekolah_visi`
--

CREATE TABLE `sekolah_visi` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `dibuat_pada` timestamp NULL DEFAULT current_timestamp(),
  `diperbarui_pada` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sekolah_visi`
--

INSERT INTO `sekolah_visi` (`id`, `isi`, `dibuat_pada`, `diperbarui_pada`) VALUES
(1001, 'menjadi sekolah menengah kejuruan yang religius, berakhlak mulia, berbudaya, dan menghasilkan insan yang bertaqwa, berprestasi, profesional, mampu berwira usaha, berdaya saing global serta berjiwa pancasila.', '2026-10-30 10:35:34', '2026-10-30 10:35:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bkk_artikel_karier`
--
ALTER TABLE `bkk_artikel_karier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_artikel_karier_pembuat` (`dibuat_oleh`);

--
-- Indexes for table `bkk_kegiatan`
--
ALTER TABLE `bkk_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `bkk_kegiatan_gambar`
--
ALTER TABLE `bkk_kegiatan_gambar`
  ADD PRIMARY KEY (`id_kegiatan_gambar`);

--
-- Indexes for table `bkk_mitra_perusahaan`
--
ALTER TABLE `bkk_mitra_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `bkk_profil`
--
ALTER TABLE `bkk_profil`
  ADD PRIMARY KEY (`id_bkk_profil`);

--
-- Indexes for table `bkk_program_magang`
--
ALTER TABLE `bkk_program_magang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_magang_mitra` (`mitra_id`),
  ADD KEY `idx_magang_jurusan` (`jurusan_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekolah_artikel`
--
ALTER TABLE `sekolah_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_artikel_penulis` (`penulis_id`);

--
-- Indexes for table `sekolah_jurusan`
--
ALTER TABLE `sekolah_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekolah_profil`
--
ALTER TABLE `sekolah_profil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sekolah_artikel`
--
ALTER TABLE `sekolah_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sekolah_jurusan`
--
ALTER TABLE `sekolah_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sekolah_artikel`
--
ALTER TABLE `sekolah_artikel`
  ADD CONSTRAINT `fk_artikel_penulis` FOREIGN KEY (`penulis_id`) REFERENCES `pengguna` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
