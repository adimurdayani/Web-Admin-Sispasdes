-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2021 at 12:02 PM
-- Server version: 10.5.13-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisw5686_sispasdes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_aset`
--

CREATE TABLE `tb_aset` (
  `id_aset` int(11) NOT NULL,
  `nama_aset` varchar(128) NOT NULL,
  `harga` int(50) NOT NULL,
  `jml_aset` int(100) NOT NULL,
  `created_at` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_aset`
--

INSERT INTO `tb_aset` (`id_aset`, `nama_aset`, `harga`, `jml_aset`, `created_at`) VALUES
(2, 'Tenda', 400000, 0, '30 Nov 2021 11:20'),
(3, 'Sound System', 1000000, 1, '20 Nov 2021'),
(4, 'Kursi', 50000, 89, '24 Nov 2021 12:34');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dusun`
--

CREATE TABLE `tb_dusun` (
  `id_dusun` int(11) NOT NULL,
  `nama_dusun` varchar(128) NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dusun`
--

INSERT INTO `tb_dusun` (`id_dusun`, `nama_dusun`, `created_at`) VALUES
(1, 'TO\'KAILI', '26 Oct 2021'),
(2, 'BAKONG', '26 Oct 2021'),
(3, 'TERPADU', '26 Oct 2021'),
(4, 'KAJU DATU', '26 Oct 2021'),
(5, 'LEMOE\n', '26 Oct 2021');

-- --------------------------------------------------------

--
-- Table structure for table `tb_grup`
--

CREATE TABLE `tb_grup` (
  `id_grup` int(11) NOT NULL,
  `nama_grup` varchar(128) NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_grup`
--

INSERT INTO `tb_grup` (`id_grup`, `nama_grup`, `created_at`) VALUES
(1, 'Administrator', '21 Oktober 2021'),
(2, 'User', '21 Oktober 2021');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kritik`
--

CREATE TABLE `tb_kritik` (
  `id_kritik` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kritik` text NOT NULL,
  `admin_id` int(11) NOT NULL,
  `jawaban` text NOT NULL,
  `created_at` varchar(123) NOT NULL,
  `tgl_kirim` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_namakk`
--

CREATE TABLE `tb_namakk` (
  `id_kk` int(11) NOT NULL,
  `dusun_id` int(50) NOT NULL,
  `nama_kk` varchar(128) NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_namakk`
--

INSERT INTO `tb_namakk` (`id_kk`, `dusun_id`, `nama_kk`, `created_at`) VALUES
(1, 1, 'KADDA', '30 Oct 2021'),
(2, 1, 'SINNONG', '30 Oct 2021'),
(3, 1, 'RITIK', '30 Oct 2021'),
(4, 1, 'BOGGIN', '30 Oct 2021'),
(5, 1, 'JUHADIR', '30 Oct 2021'),
(6, 1, 'HIKMA', '30 Oct 2021'),
(7, 1, 'SAYYA', '30 Oct 2021'),
(8, 1, 'DODI', '30 Oct 2021'),
(9, 1, 'SAENA', '30 Oct 2021'),
(10, 1, 'ANTON', '30 Oct 2021'),
(11, 1, 'SULHENRI', '30 Oct 2021'),
(12, 1, 'MAHIS', '30 Oct 2021'),
(13, 1, 'SUPA', '30 Oct 2021'),
(14, 1, 'ABDUL KHALIB', '30 Oct 2021'),
(15, 1, 'ALMUNAWAR', '30 Oct 2021'),
(16, 1, 'GUNA', '23 Nov 2021'),
(18, 1, 'SERI MANURU', '23 Nov 2021'),
(19, 1, 'CAMBI', '23 Nov 2021'),
(20, 1, 'RASNA', '23 Nov 2021'),
(21, 1, 'WAKIMIN', '23 Nov 2021'),
(22, 1, 'JIDA', '16 Nov 2021'),
(23, 1, 'TAMBARU', '16 Nov 2021'),
(24, 1, 'GUNA', '16 Nov 2021'),
(25, 1, 'SERI MANURU', '16 Nov 2021'),
(26, 0, 'CAMBI', '16 Nov 2021'),
(27, 0, 'RASNA', '16 Nov 2021'),
(28, 0, 'WAKIMIN', '16 Nov 2021'),
(29, 0, 'ANTI PITASARI', '16 Nov 2021'),
(30, 0, 'MADA', '16 Nov 2021'),
(31, 0, 'TENRI MANI', '16 Nov 2021'),
(32, 0, 'ASRIL', '16 Nov 2021'),
(33, 0, 'SAMSURI ABA SAHARA', '16 Nov 2021'),
(34, 0, 'TAKBIR ANNU', '16 Nov 2021'),
(35, 0, 'NURHIDAYAH', '16 Nov 2021'),
(36, 0, 'RAHMATIA', '16 Nov 2021'),
(37, 0, 'ASSE', '16 Nov 2021'),
(38, 0, 'HENDRA. L', '16 Nov 2021'),
(39, 0, 'HERIK', '16 Nov 2021'),
(40, 0, 'YUNUS TIKE', '16 Nov 2021'),
(41, 0, 'DARWAN', '16 Nov 2021'),
(42, 0, 'HAMKA', '16 Nov 2021'),
(43, 0, 'DARWANA', '16 Nov 2021'),
(44, 0, 'HAIRIL', '16 Nov 2021'),
(45, 0, 'RUSMAN', '16 Nov 2021'),
(46, 0, 'ASMAR IRAWAN', '16 Nov 2021'),
(47, 0, 'HAYATI', '16 Nov 2021'),
(48, 0, 'ROJALI SAPO', '16 Nov 2021'),
(49, 0, 'NATANIEL', '16 Nov 2021'),
(50, 0, 'JHON LAMBAI', '16 Nov 2021'),
(51, 0, 'NELCE BOMBONG', '16 Nov 2021'),
(52, 0, 'YT. NOLE', '16 Nov 2021'),
(53, 0, 'AMIR', '16 Nov 2021'),
(54, 0, 'SAHARIA', '16 Nov 2021'),
(55, 0, 'ISWOYO', '16 Nov 2021'),
(56, 0, 'SARIPUDDIN', '16 Nov 2021'),
(57, 0, 'JUSDIN YOSE M.MANING', '16 Nov 2021'),
(58, 0, 'LOIS', '16 Nov 2021'),
(59, 0, 'BARDIS', '16 Nov 2021'),
(60, 0, 'SUDIR', '16 Nov 2021'),
(61, 0, 'ASWAN', '16 Nov 2021'),
(62, 0, 'SABDA', '16 Nov 2021'),
(63, 0, 'JUMADI PAKOLO', '16 Nov 2021'),
(64, 0, 'LERE', '16 Nov 2021'),
(65, 0, 'SAFIRA', '16 Nov 2021'),
(66, 0, 'PUKKA', '16 Nov 2021'),
(67, 0, 'KAMALUDDIN', '16 Nov 2021'),
(68, 0, 'AKBAR UDDA', '16 Nov 2021'),
(69, 0, 'HASDIN', '16 Nov 2021'),
(70, 0, 'HUSDI', '16 Nov 2021'),
(71, 0, 'SITTI SANNA', '16 Nov 2021'),
(72, 0, 'HERMAN', '16 Nov 2021'),
(73, 0, 'JIDIL', '16 Nov 2021'),
(74, 0, 'JUDIN', '16 Nov 2021'),
(75, 0, 'MUSMIN KALLE', '16 Nov 2021'),
(76, 0, 'KALLE', '16 Nov 2021'),
(77, 0, 'HASRIADI PARANGA', '16 Nov 2021'),
(78, 0, 'MUDIN', '16 Nov 2021'),
(79, 0, 'SANI', '16 Nov 2021'),
(80, 0, 'ASRIL', '16 Nov 2021'),
(81, 0, 'SAKMIR', '16 Nov 2021'),
(82, 0, 'ABD. ANWAR', '16 Nov 2021'),
(83, 0, 'RUGAIYA', '16 Nov 2021'),
(84, 0, 'MUHAMMAD ROY HARYANTO', '16 Nov 2021'),
(85, 0, 'YUDAS KENDE', '16 Nov 2021'),
(86, 0, 'JATI', '16 Nov 2021'),
(87, 0, 'ANDARIAS TO\'GON', '16 Nov 2021'),
(88, 0, 'MARTEN TODINGAN', '16 Nov 2021'),
(89, 0, 'RETNO', '16 Nov 2021'),
(90, 0, 'MARTO', '16 Nov 2021'),
(91, 0, 'MASDIN', '16 Nov 2021'),
(92, 0, 'MAJID', '16 Nov 2021'),
(93, 0, 'HARMAN', '16 Nov 2021'),
(94, 0, 'NURDIANA', '16 Nov 2021'),
(95, 0, 'HARIANTO', '16 Nov 2021'),
(96, 0, 'MADING', '16 Nov 2021'),
(97, 0, 'SUARNO', '16 Nov 2021'),
(98, 0, 'MARIANI', '16 Nov 2021'),
(99, 0, 'RAHMAT', '16 Nov 2021'),
(100, 0, 'YOHANIS RURU', '16 Nov 2021'),
(101, 1, 'SUMARLIN', '16 Nov 2021'),
(102, 1, 'SALDIANTO', '16 Nov 2021'),
(103, 1, 'ZANAN', '16 Nov 2021'),
(104, 1, 'AMRAN', '16 Nov 2021'),
(105, 2, 'SENANG', '16 Nov 2021'),
(106, 2, 'YUSUF RURU', '16 Nov 2021'),
(107, 2, 'YUSUF SALEMPANG', '16 Nov 2021'),
(108, 2, 'LEME', '16 Nov 2021'),
(109, 2, 'AYUB PAKASI', '16 Nov 2021'),
(110, 2, 'RUT BANNE', '16 Nov 2021'),
(111, 2, 'PIKTOR REMPE', '16 Nov 2021'),
(112, 2, 'YUNUS TANGDIALLO', '16 Nov 2021'),
(113, 2, 'YOHANES. K', '16 Nov 2021'),
(114, 2, 'SABTU SUBA', '16 Nov 2021'),
(115, 2, 'RUBEN DAPO', '23 Nov 2021'),
(119, 2, 'ARIS PAKASI', '23 Nov 2021'),
(120, 4, 'LINGGI', '23 Nov 2021'),
(121, 4, 'HASIAH', '23 Nov 2021'),
(122, 4, 'ANWAR BOMBING', '23 Nov 2021'),
(123, 4, 'UNDING', '23 Nov 2021'),
(124, 4, 'ROBENG', '23 Nov 2021'),
(125, 4, 'JUMAIL', '23 Nov 2021'),
(126, 4, 'MANASA', '23 Nov 2021'),
(127, 4, 'SARIKA', '23 Nov 2021'),
(128, 4, 'TAUFAN', '23 Nov 2021'),
(129, 4, 'SAMSUL', '23 Nov 2021'),
(130, 4, 'YOHANIS BARU', '23 Nov 2021'),
(131, 4, 'MANASIA', '23 Nov 2021'),
(132, 4, 'TUTI', '23 Nov 2021'),
(133, 4, 'ABD.SALAM', '23 Nov 2021'),
(134, 4, 'ARLAN', '23 Nov 2021'),
(135, 5, 'UNDING', '23 Nov 2021'),
(136, 4, 'RAHMAN', '23 Nov 2021'),
(137, 4, 'PINI', '23 Nov 2021'),
(138, 4, 'ANNI', '23 Nov 2021'),
(139, 4, 'BARSON', '23 Nov 2021'),
(140, 4, 'TUMINGAN', '23 Nov 2021'),
(141, 4, 'SUTEJO', '23 Nov 2021'),
(142, 4, 'RISAL', '23 Nov 2021'),
(143, 4, 'RAHTRIARINI', '23 Nov 2021'),
(144, 4, 'RUSMINA', '23 Nov 2021'),
(145, 4, 'MANGGUJU', '23 Nov 2021'),
(146, 4, 'ROBIN', '23 Nov 2021'),
(147, 4, 'SLAMET.S', '23 Nov 2021'),
(148, 4, 'TUMIJO', '23 Nov 2021'),
(149, 4, 'MONDI', '23 Nov 2021'),
(150, 4, 'ANDIS', '23 Nov 2021'),
(151, 4, 'SAMSUADI', '23 Nov 2021'),
(152, 4, 'TAUFIK RADENG', '23 Nov 2021'),
(153, 4, 'LINDA SARI', '23 Nov 2021'),
(154, 4, 'TAMRIN', '23 Nov 2021'),
(155, 4, 'HAERANI MUH.DACHRY', '23 Nov 2021'),
(156, 4, 'DIAN SAPUTRI', '23 Nov 2021'),
(157, 4, 'IBRAHIM SIGUNTUK', '23 Nov 2021'),
(158, 4, 'TAJO', '23 Nov 2021'),
(159, 4, 'KASO', '23 Nov 2021'),
(160, 4, 'MADIATI', '23 Nov 2021'),
(161, 4, 'JUNAEDI', '23 Nov 2021'),
(162, 5, 'HAMZAH', '23 Nov 2021'),
(163, 5, 'PAINEM', '23 Nov 2021'),
(164, 5, 'AISA SAPUTRI', '23 Nov 2021'),
(165, 5, 'RINI', '23 Nov 2021'),
(166, 5, 'RIPA', '23 Nov 2021'),
(167, 5, 'HAMRIANI', '23 Nov 2021'),
(168, 5, 'SENGA', '23 Nov 2021'),
(169, 5, 'ALEX', '23 Nov 2021'),
(170, 5, 'SUTIYEM', '23 Nov 2021'),
(171, 5, 'LIANI', '23 Nov 2021'),
(172, 5, 'SUCINA ANDI HAKIM', '23 Nov 2021'),
(173, 5, 'UMMI KALSUM', '23 Nov 2021'),
(174, 5, 'BAHRUL', '23 Nov 2021'),
(175, 5, 'SUNARDI ARSAD', '23 Nov 2021'),
(176, 5, 'WAHYUDDIN', '23 Nov 2021'),
(177, 5, 'MAYA SARI', '23 Nov 2021'),
(178, 5, 'RAHING', '23 Nov 2021'),
(179, 5, 'ALMIANTO', '23 Nov 2021'),
(180, 5, 'HADRUL', '23 Nov 2021'),
(181, 5, 'SALMAN', '23 Nov 2021'),
(182, 5, 'MONA', '23 Nov 2021'),
(183, 5, 'SALING', '23 Nov 2021'),
(184, 5, 'SUDDING', '23 Nov 2021'),
(185, 5, 'ABDULLAH', '23 Nov 2021'),
(186, 5, 'HAERUDDIN', '23 Nov 2021'),
(187, 5, 'DEA ECCON', '23 Nov 2021'),
(188, 5, 'HERMAN', '23 Nov 2021'),
(189, 5, 'RUSAIL', '23 Nov 2021'),
(190, 5, 'HASRUNI', '23 Nov 2021'),
(191, 5, 'TAMRIN', '23 Nov 2021'),
(192, 5, 'DIANA', '23 Nov 2021'),
(193, 5, 'KARESWAN', '23 Nov 2021'),
(194, 5, 'ASWAN', '23 Nov 2021'),
(195, 5, 'BATMAN', '23 Nov 2021'),
(196, 5, 'MAMING', '23 Nov 2021'),
(197, 5, 'JUMARDING', '23 Nov 2021'),
(198, 5, 'DEBI', '23 Nov 2021'),
(199, 5, 'NAWIR PASANDE', '23 Nov 2021'),
(200, 5, 'DONA DEWI FORTUNA', '23 Nov 2021'),
(201, 5, 'KUKI', '23 Nov 2021'),
(202, 5, 'ANI RIAMALI', '23 Nov 2021'),
(203, 5, 'SILVIA DEWI BACHRI', '23 Nov 2021'),
(204, 5, 'TOPAN LUNGAN', '23 Nov 2021'),
(205, 5, 'MADIR.K', '23 Nov 2021'),
(206, 5, 'SITI', '23 Nov 2021'),
(207, 5, 'IRWAN', '23 Nov 2021'),
(208, 5, 'RUSMAN AKBAR', '23 Nov 2021'),
(209, 5, 'NAJA', '23 Nov 2021'),
(210, 5, 'SIDINA', '23 Nov 2021'),
(211, 5, 'LOSI', '23 Nov 2021'),
(212, 5, 'ARJUN', '23 Nov 2021'),
(213, 5, 'MUKTAR PAKOLO', '23 Nov 2021'),
(214, 5, 'ABDUL ALAM', '23 Nov 2021'),
(215, 5, 'RAIYA', '23 Nov 2021'),
(216, 5, 'RAJJA PASANDE', '23 Nov 2021'),
(217, 5, 'MERRAU', '23 Nov 2021'),
(218, 5, 'IRMA', '23 Nov 2021'),
(219, 1, 'ANTI PITASARI', '23 Nov 2021'),
(220, 1, 'MADA', '23 Nov 2021'),
(221, 1, 'TENRI MANI', '23 Nov 2021'),
(222, 1, 'ASRIL', '23 Nov 2021'),
(223, 1, 'SAMSURI ABA SAHARA', '23 Nov 2021'),
(224, 1, 'TAKBIR ANNU', '23 Nov 2021'),
(225, 1, 'NURHIDAYAH', '23 Nov 2021'),
(226, 1, 'RAHMATIA', '23 Nov 2021'),
(227, 1, 'ASSE', '23 Nov 2021'),
(228, 1, 'HENDRA.L', '23 Nov 2021'),
(229, 1, 'HERIK', '23 Nov 2021'),
(230, 1, 'YUNUS TIKE', '23 Nov 2021'),
(231, 1, 'DARWAN', '23 Nov 2021'),
(232, 1, 'HAMKA', '23 Nov 2021'),
(233, 1, 'DARWANA', '23 Nov 2021'),
(234, 1, 'HAIRIL', '23 Nov 2021'),
(235, 1, 'RUSMAN', '23 Nov 2021'),
(236, 1, 'ASMAR IRAWAN', '23 Nov 2021'),
(237, 1, 'HAYATI', '23 Nov 2021'),
(238, 1, 'ROJALI SAPO', '23 Nov 2021'),
(239, 1, 'NATANIEL', '23 Nov 2021'),
(240, 1, 'JHON LAMBAI', '23 Nov 2021'),
(241, 1, 'NELCE BOMBONG', '23 Nov 2021'),
(242, 1, 'YT.NOLE', '23 Nov 2021'),
(243, 1, 'AMIR', '23 Nov 2021'),
(244, 1, 'SAHARIA', '23 Nov 2021'),
(245, 1, 'ISWOYO', '23 Nov 2021'),
(246, 1, 'SARIPUDDIN', '23 Nov 2021'),
(247, 1, 'JUSDIN YOSE M.MANING', '23 Nov 2021'),
(248, 1, 'LOIS', '23 Nov 2021'),
(249, 1, 'BARDIS', '23 Nov 2021'),
(250, 1, 'SUDIR', '23 Nov 2021'),
(251, 1, 'ASWAN', '23 Nov 2021'),
(252, 1, 'SABDA', '23 Nov 2021'),
(253, 1, 'JUMADI PAKOLO', '23 Nov 2021'),
(254, 1, 'LERE', '23 Nov 2021'),
(255, 1, 'SAFIRA', '23 Nov 2021'),
(256, 1, 'PUKKA', '23 Nov 2021'),
(257, 1, 'KAMALUDDIN', '23 Nov 2021'),
(258, 1, 'AKBAR UDDA', '23 Nov 2021'),
(259, 1, 'HASDIN', '23 Nov 2021'),
(260, 1, 'HUSDI', '23 Nov 2021'),
(261, 1, 'SITTI SANNA', '23 Nov 2021'),
(262, 1, 'HERMAN', '23 Nov 2021'),
(263, 1, 'JIDIL', '23 Nov 2021'),
(264, 1, 'JUDIN', '23 Nov 2021'),
(265, 1, 'MUSMIN KALLE', '23 Nov 2021'),
(266, 1, 'KALLE', '23 Nov 2021'),
(267, 1, 'HASRIADI PARANGA', '23 Nov 2021'),
(268, 1, 'MUDIN', '23 Nov 2021'),
(269, 1, 'SANI', '23 Nov 2021'),
(270, 1, 'ASRIL', '23 Nov 2021'),
(271, 1, 'SAKMIR', '23 Nov 2021'),
(272, 1, 'ABD.ANWAR', '23 Nov 2021'),
(273, 1, 'RUGAIYAH', '23 Nov 2021'),
(274, 1, 'MUHAMMAD ROY HARYANTO', '23 Nov 2021'),
(275, 1, 'YUDAS KENDE', '23 Nov 2021'),
(276, 1, 'JATI', '23 Nov 2021'),
(277, 1, 'ANDARIAS TO\'GON', '23 Nov 2021'),
(278, 1, 'MARTEN TODINGAN', '23 Nov 2021'),
(279, 1, 'RETNO', '23 Nov 2021'),
(280, 1, 'MARTO', '23 Nov 2021'),
(281, 1, 'MASDIN', '23 Nov 2021'),
(282, 1, 'MAJID', '23 Nov 2021'),
(283, 1, 'HARMAN', '23 Nov 2021'),
(284, 1, 'NURDIANA', '23 Nov 2021'),
(285, 1, 'HARIANTO', '23 Nov 2021'),
(286, 1, 'MADING', '23 Nov 2021'),
(287, 1, 'SUARNO', '23 Nov 2021'),
(288, 1, 'MARIANI', '23 Nov 2021'),
(289, 1, 'RAHMAT', '23 Nov 2021'),
(290, 1, 'YOHANIS RURU', '23 Nov 2021'),
(294, 2, 'LIANA PATANDUK', '23 Nov 2021'),
(295, 2, 'YOHANIS BASI', '23 Nov 2021'),
(296, 2, 'ALPIUS PALUNGAN', '23 Nov 2021'),
(297, 2, 'YOHANIS SILAMBI P', '23 Nov 2021'),
(298, 2, 'DAUD B', '23 Nov 2021'),
(299, 2, 'YOSEF LAYUK', '23 Nov 2021'),
(300, 2, 'YUNUS TOTO KOMBONG', '23 Nov 2021'),
(301, 2, 'DANIEL PALUNGAN', '23 Nov 2021'),
(302, 2, 'YUNUS RAKAN', '23 Nov 2021'),
(303, 2, 'LINCE PARE', '23 Nov 2021'),
(304, 2, 'SARAH', '23 Nov 2021'),
(305, 2, 'MAISAK', '23 Nov 2021'),
(306, 2, 'YOHANIS PASANDE', '23 Nov 2021'),
(307, 2, 'MELKIANTO BIU', '23 Nov 2021'),
(308, 2, 'SAMUEL BITE PALUNGAN', '23 Nov 2021'),
(309, 2, 'DINA NALI', '23 Nov 2021'),
(310, 2, 'SAID', '23 Nov 2021'),
(311, 2, 'ISAK PALUNGAN', '23 Nov 2021'),
(312, 2, 'RIAN', '23 Nov 2021'),
(313, 2, 'DAVID', '23 Nov 2021'),
(314, 2, 'DARANA', '23 Nov 2021'),
(315, 2, 'RONI', '23 Nov 2021'),
(316, 2, 'FERDY JEMAHU', '23 Nov 2021'),
(317, 2, 'RIKI', '23 Nov 2021'),
(318, 2, 'MARTEN PALUNGAN', '23 Nov 2021'),
(319, 2, 'NANI', '23 Nov 2021'),
(320, 2, 'YOHANIS SIAPPA', '23 Nov 2021'),
(321, 2, 'AGUSTINU REMAK', '23 Nov 2021'),
(322, 2, 'YUNUS BULI', '23 Nov 2021'),
(323, 2, 'PAEBA', '23 Nov 2021'),
(324, 2, 'KODE', '23 Nov 2021'),
(325, 3, 'SALMIATI', '23 Nov 2021'),
(326, 3, 'HERMAN', '23 Nov 2021'),
(327, 3, 'KAHARUDDIN', '23 Nov 2021'),
(328, 3, 'HARIM', '23 Nov 2021'),
(329, 3, 'MUHAMMAD SATIN', '23 Nov 2021'),
(330, 3, 'SITTIARAH', '23 Nov 2021'),
(331, 3, 'TASLIM', '23 Nov 2021'),
(332, 3, 'BAHRUL', '23 Nov 2021'),
(333, 3, 'MUHAMMADONG', '23 Nov 2021'),
(334, 3, 'HAJIR', '23 Nov 2021'),
(335, 3, 'ISKANDAR', '23 Nov 2021'),
(336, 3, 'ANDI ALBANI', '23 Nov 2021'),
(337, 3, 'BAHRI W', '23 Nov 2021'),
(338, 3, 'AGUSTINA PATANDUK', '23 Nov 2021'),
(339, 3, 'WAHYU', '23 Nov 2021'),
(340, 3, 'MUH.ALI', '23 Nov 2021'),
(341, 3, 'YOHANIS RAPPUN', '23 Nov 2021'),
(342, 3, 'BAHRUM', '23 Nov 2021'),
(343, 3, 'CINDARE', '23 Nov 2021'),
(344, 3, 'MUJIMAN', '23 Nov 2021'),
(345, 3, 'MISDI', '23 Nov 2021'),
(346, 3, 'HAMDAN', '23 Nov 2021'),
(347, 3, 'NURUL SAFITRI', '23 Nov 2021'),
(348, 3, 'ISMAIL.P', '23 Nov 2021'),
(349, 3, 'OKTAVIANUS', '23 Nov 2021'),
(350, 3, 'NURLIA', '23 Nov 2021'),
(351, 3, 'HASMA', '23 Nov 2021'),
(352, 3, 'TIMARA', '23 Nov 2021'),
(353, 3, 'YOHANIS LAMBA', '23 Nov 2021'),
(354, 3, 'BASO', '23 Nov 2021'),
(355, 3, 'KASDI', '23 Nov 2021'),
(356, 3, 'HENGKI', '23 Nov 2021'),
(357, 3, 'PASATUNG', '23 Nov 2021'),
(358, 3, 'NURDIANA', '23 Nov 2021'),
(359, 3, 'HASMIRUDDIN', '23 Nov 2021'),
(360, 3, 'A.HAJRUDDIN K.A TENRI', '23 Nov 2021'),
(361, 3, 'OKTAVIANUS', '23 Nov 2021'),
(362, 3, 'PIRMAN MARIAPA', '23 Nov 2021'),
(363, 3, 'RUBEN MELAMBI', '23 Nov 2021'),
(364, 3, 'ROY AMIRDIN', '23 Nov 2021'),
(365, 3, 'PRASETIADHA TORA', '23 Nov 2021'),
(366, 3, 'DISEN MUSLIM', '23 Nov 2021'),
(367, 3, 'JEKI', '23 Nov 2021'),
(368, 3, 'HASNA', '23 Nov 2021'),
(369, 3, 'NASRUDDIN', '23 Nov 2021'),
(370, 3, 'RAHMAT JASMANI', '23 Nov 2021'),
(371, 3, 'MASRIANI', '23 Nov 2021'),
(372, 3, 'RISMAN', '23 Nov 2021'),
(373, 3, 'MUDDA', '23 Nov 2021'),
(374, 3, 'RANI', '23 Nov 2021'),
(375, 3, 'AGUSMAL MUSTAMIN', '23 Nov 2021'),
(376, 3, 'LUKAS RASE', '23 Nov 2021'),
(377, 3, 'AMIR SIRATANG', '23 Nov 2021'),
(378, 3, 'IKKI', '23 Nov 2021'),
(379, 3, 'IKSAN', '23 Nov 2021'),
(380, 3, 'KANDA', '23 Nov 2021'),
(381, 3, 'I.BUNGA', '23 Nov 2021'),
(382, 3, 'SIMON GOSE', '23 Nov 2021'),
(383, 5, 'FIRMAN', '24 Nov 2021');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penduduk`
--

CREATE TABLE `tb_penduduk` (
  `id_pend` int(11) NOT NULL,
  `kk_id` int(11) NOT NULL,
  `nama_art` varchar(128) NOT NULL,
  `tgl_lahir` varchar(128) NOT NULL,
  `dusun_id` int(11) NOT NULL,
  `rt_id` int(11) NOT NULL,
  `kelamin` varchar(128) NOT NULL,
  `ket` int(50) NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penduduk`
--

INSERT INTO `tb_penduduk` (`id_pend`, `kk_id`, `nama_art`, `tgl_lahir`, `dusun_id`, `rt_id`, `kelamin`, `ket`, `created_at`) VALUES
(2, 2, '', '1976-12-16', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(3, 1, 'HASRIANTI', '1970-05-15', 1, 1, 'Perempuan', 1, '16 Nov 2021'),
(4, 3, 'HERLINA RAMPA', '1999-05-14', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(5, 4, 'HALIJA', '1980-09-29', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(6, 5, 'RISKI', '1981-10-09', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(7, 6, 'SALMIATI', '1974-10-12', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(8, 7, '', '1956-12-31', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(9, 8, 'DEVI', '1994-07-01', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(10, 9, '', '1955-01-02', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(11, 10, 'ANISA FANIASTI', '1988-05-25', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(12, 11, 'SRI KARNI', '1987-08-05', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(14, 12, 'RITA', '1971-06-17', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(15, 13, '', '1940-07-08', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(16, 14, 'HASNAWATI', '1979-07-19', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(17, 15, '', '1968-12-07', 1, 1, 'Laki-Laki', 1, '23 Nov 2021'),
(18, 22, 'NANI', '1973-12-02', 1, 1, 'Laki-Laki', 1, '23 Nov 2021'),
(19, 23, 'ANTI JM.', '1991-01-14', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(20, 16, 'SUKIR', '1950-05-12', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(21, 18, 'JUMAHIRA', '1972-12-31', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(22, 19, 'ELMI', '1956-09-21', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(23, 20, 'NABILA SARI', '1986-06-16', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(24, 21, 'HAJERAH', '1967-12-11', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(25, 29, '', '1992-10-18', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(26, 30, '', '1945-12-31', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(27, 31, 'ADI ANNU', '1962-12-31', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(28, 32, '', '1991-11-07', 1, 1, 'Laki-Laki', 1, '23 Nov 2021'),
(29, 33, '', '1988-07-01', 1, 1, 'Laki-Laki', 1, '23 Nov 2021'),
(30, 34, 'JUMIATI', '1988-01-08', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(31, 35, '', '1987-09-10', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(32, 36, '', '1942-12-31', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(33, 37, '', '1939-11-16', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(34, 38, 'MULIATI', '1972-02-02', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(35, 39, 'FIRGI MAY MUNA', '1997-08-04', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(36, 40, 'DARMONO', '1958-07-07', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(37, 41, '', '1985-06-25', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(38, 42, 'DARWISA', '1983-06-06', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(39, 43, 'MUTMAINNA ALANNUR', '1991-11-09', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(40, 44, 'NURSYAHRIDA', '1975-11-09', 1, 1, 'Laki-Laki', 1, '23 Nov 2021'),
(41, 45, 'SAMIATI ', '1972-01-10', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(42, 46, 'GITA ROSIDA', '1993-07-24', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(43, 47, '', '1958-02-13', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(44, 48, 'MUHAMMAD SAIDAN S', '1986-09-03', 1, 1, 'Laki-Laki', 1, '23 Nov 2021'),
(45, 49, 'IRENE NATANIEL.B', '1979-12-12', 1, 1, 'Laki-Laki', 1, '23 Nov 2021'),
(46, 50, 'TRIVENA', '1982-10-10', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(47, 51, 'TENNE PASODUNG ', '1954-11-11', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(48, 52, 'TENNE PASODUNG ', '1942-12-03', 1, 1, 'Perempuan', 1, '23 Nov 2021'),
(49, 53, 'NURDIANA', '1975-06-01', 1, 1, 'Laki-Laki', 1, '24 Nov 2021'),
(50, 54, 'HUSNARIA IBRAHIM', '1957-03-01', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(51, 55, 'WIDIA KADDA', '1987-07-01', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(52, 56, 'SARIPA', '1958-10-05', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(53, 57, 'SEJARTI', '1978-04-04', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(54, 58, 'URTIN', '1976-05-15', 1, 2, 'Laki-Laki', 2, '24 Nov 2021'),
(55, 59, 'IDA', '1985-02-21', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(56, 60, 'HAMSINA', '1965-05-05', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(57, 61, 'KARMILA', '1996-11-24', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(58, 62, 'DHIRA YUDINI', '1990-09-13', 0, 0, 'Perempuan', 2, '24 Nov 2021'),
(59, 62, 'DHIRA YUDINI', '1990-09-13', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(60, 63, 'RISNA', '1982-11-01', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(61, 64, 'IDIL', '1973-08-17', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(62, 65, 'ARISAH APRILIA RAMADHANI', '2002-08-02', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(63, 66, '', '1956-09-11', 1, 2, 'Perempuan', 1, '24 Nov 2021'),
(64, 67, 'YURNIANTI', '1988-10-09', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(65, 68, 'HAMIDA', '1988-08-11', 1, 2, 'Perempuan', 2, '24 Nov 2021'),
(66, 105, 'HERMIN', '1984-11-10', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(67, 106, 'HANA RURUK', '1964-07-01', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(68, 107, 'MERI', '1991-09-29', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(69, 108, 'PETRUS.K', '1955-12-31', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(70, 108, 'LINDA', '1999-12-31', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(71, 109, 'YESLIN TIARA', '1981-06-11', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(72, 110, 'YOHANES BELO PANDU', '2002-02-10', 2, 3, 'Laki-Laki', 3, '24 Nov 2021'),
(73, 111, 'ALBERTI SINGKALI', '1997-03-28', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(74, 112, 'MARIA DUMA', '1972-12-11', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(75, 113, '', '1992-12-04', 2, 3, 'Laki-Laki', 3, '24 Nov 2021'),
(76, 114, 'AGUSTINUS BIRI', '1976-12-31', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(77, 115, 'FREDI PAKASI', '2002-02-02', 2, 3, 'Laki-Laki', 3, '24 Nov 2021'),
(78, 119, 'ITTANG', '1990-11-19', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(79, 294, '', '1998-12-16', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(80, 295, 'RIDA', '2968-05-11', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(81, 296, 'RUT SULLE', '1982-03-03', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(82, 297, 'LUDIA SENGA', '1980-10-15', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(83, 298, 'YULIANA LANSELINA', '1990-07-18', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(84, 299, 'DAMARIS', '1990-09-21', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(85, 300, 'DAMARIS GARANTA', '1965-07-01', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(86, 301, 'DESI PATANDUK', '1983-06-07', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(87, 302, 'HANA SAMPE LEO', '1985-06-01', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(88, 303, 'RESTU KARANGAN', '2009-06-08', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(89, 304, 'OKY PARANGAN', '1995-05-11', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(90, 305, 'APPING', '2007-02-11', 2, 3, 'Laki-Laki', 3, '24 Nov 2021'),
(91, 306, 'JENI TANGDIALLA', '1984-06-03', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(92, 307, 'RATNA', '2000-11-06', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(93, 308, 'POLINA', '1959-07-01', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(94, 309, 'YOSEF', '1994-07-01', 2, 3, 'Laki-Laki', 3, '24 Nov 2021'),
(95, 310, 'WAHYUNINGSIH', '1988-03-14', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(96, 311, 'MARIA TAPPA', '1954-07-01', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(97, 312, 'DINA PATANDUNG', '1985-06-04', 2, 3, 'Perempuan', 3, '24 Nov 2021'),
(98, 325, 'NURAIN', '2012-02-02', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(99, 326, 'MUHAMMAD RIVAL', '2007-12-06', 3, 5, 'Laki-Laki', 2, '24 Nov 2021'),
(100, 327, 'ASMIATI', '1990-12-04', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(101, 328, 'HAMRIANA', '1984-09-04', 2, 3, 'Perempuan', 2, '28 Nov 2021'),
(102, 329, 'SRI SUHERNI', '1974-07-05', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(103, 330, 'RISALDI', '2002-02-20', 3, 5, 'Laki-Laki', 2, '24 Nov 2021'),
(104, 331, 'SAMIATING', '1985-05-02', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(105, 332, '', '1948-02-04', 3, 5, 'Laki-Laki', 2, '24 Nov 2021'),
(106, 333, 'IDA NURFARIDA', '1985-02-22', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(107, 334, 'HASNA WATI', '1973-09-12', 3, 5, 'Perempuan', 3, '24 Nov 2021'),
(108, 335, 'BUNGALA', '1980-06-19', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(109, 336, 'RISKA', '1997-01-25', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(110, 337, 'SARINA', '1978-08-14', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(111, 338, 'MARIANI LAPU', '1966-07-01', 3, 5, 'Perempuan', 3, '24 Nov 2021'),
(112, 339, 'WAHYUNI HERMAN', '1983-11-01', 3, 5, 'Perempuan', 3, '24 Nov 2021'),
(113, 340, '', '1989-04-13', 3, 5, 'Laki-Laki', 1, '24 Nov 2021'),
(114, 341, 'SENIKA SIAMPA', '1974-09-01', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(115, 342, 'NOVIANTI ARSYAD', '1994-06-10', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(116, 343, 'ISMA ALVAIDA', '1988-04-02', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(117, 344, 'WATINI', '1952-02-20', 3, 5, 'Perempuan', 1, '24 Nov 2021'),
(118, 345, 'YENI TANDI PARE', '1965-06-10', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(119, 346, 'HAMRIANA', '1992-12-05', 3, 5, 'Perempuan', 4, '24 Nov 2021'),
(120, 347, '', '1987-04-02', 3, 5, 'Perempuan', 1, '24 Nov 2021'),
(121, 348, 'SITTI OMBONG', '1975-10-04', 3, 5, 'Perempuan', 4, '24 Nov 2021'),
(122, 349, 'DIRTA TAPPA', '1994-10-09', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(123, 350, 'ANNISA JENITA PUTRI', '2005-05-09', 3, 5, 'Perempuan', 2, '24 Nov 2021'),
(124, 351, 'AUREL SAPUTRI', '2010-07-16', 3, 5, 'Perempuan', 1, '24 Nov 2021'),
(125, 352, 'SYAHRU RAMADAN', '2007-09-13', 3, 5, 'Laki-Laki', 1, '24 Nov 2021'),
(126, 353, 'DINA KINAN', '1956-11-10', 3, 5, 'Perempuan', 1, '24 Nov 2021'),
(127, 354, 'NURJAYA PAGALLA', '1976-05-25', 3, 5, 'Perempuan', 4, '24 Nov 2021'),
(128, 355, 'HAMIDA', '1973-07-01', 3, 5, 'Perempuan', 5, '24 Nov 2021'),
(129, 120, 'SALNA', '1965-07-26', 4, 7, 'Perempuan', 4, '24 Nov 2021'),
(130, 121, 'WAWANRI BINTIN', '1995-07-03', 4, 7, 'Laki-Laki', 3, '24 Nov 2021'),
(131, 122, 'AMELIA LOSI', '1992-04-02', 4, 7, 'Perempuan', 2, '24 Nov 2021'),
(132, 123, 'SUMARNI', '1986-02-19', 4, 7, 'Perempuan', 4, '24 Nov 2021'),
(133, 124, 'ASTIN', '1976-01-28', 4, 7, 'Perempuan', 4, '24 Nov 2021'),
(134, 125, 'RIANA', '1971-12-30', 4, 7, 'Perempuan', 5, '24 Nov 2021'),
(135, 126, '', '1934-03-23', 4, 7, 'Perempuan', 1, '24 Nov 2021'),
(136, 127, '', '1945-07-01', 4, 7, 'Perempuan', 1, '24 Nov 2021'),
(137, 128, 'HASNIAR MOMA', '1989-12-12', 4, 7, 'Perempuan', 2, '24 Nov 2021'),
(138, 129, 'WAODE FIDA', '1975-11-15', 4, 7, 'Perempuan', 2, '24 Nov 2021'),
(139, 130, 'SINAR', '1971-07-01', 4, 7, 'Perempuan', 2, '24 Nov 2021'),
(140, 131, 'RAMMING', '1995-11-06', 4, 7, 'Laki-Laki', 1, '24 Nov 2021'),
(141, 132, 'SHAFIYYAH RAMADHANI', '2018-05-24', 4, 7, 'Perempuan', 1, '24 Nov 2021'),
(142, 133, 'TRIANA', '1996-05-12', 4, 7, 'Perempuan', 4, '24 Nov 2021'),
(143, 134, 'SATRIANTI', '1994-07-15', 4, 7, 'Perempuan', 3, '24 Nov 2021'),
(144, 123, 'YARA WADAN', '1989-06-20', 5, 9, 'Perempuan', 3, '24 Nov 2021'),
(145, 136, 'BAYA', '1990-03-20', 4, 7, 'Perempuan', 2, '24 Nov 2021'),
(146, 137, 'DURTI', '1971-06-06', 4, 7, 'Perempuan', 6, '24 Nov 2021'),
(147, 138, 'BAYU', '2000-01-01', 4, 7, 'Laki-Laki', 2, '24 Nov 2021'),
(148, 139, 'EKAWATI', '1991-02-06', 4, 7, 'Perempuan', 3, '24 Nov 2021'),
(149, 140, 'SUNTINA', '1973-12-03', 4, 7, 'Perempuan', 3, '24 Nov 2021'),
(150, 162, 'PERIS', '1966-12-12', 5, 9, 'Perempuan', 6, '24 Nov 2021'),
(151, 163, 'MISNAN', '1998-07-07', 5, 9, 'Laki-Laki', 2, '24 Nov 2021'),
(152, 164, 'MUH.LINTANG', '2004-04-01', 5, 9, 'Laki-Laki', 6, '24 Nov 2021'),
(153, 165, 'JALIPA', '1960-06-04', 5, 9, 'Perempuan', 9, '24 Nov 2021'),
(154, 166, 'MUH.KILAL RAMADAN', '2006-09-28', 5, 9, 'Laki-Laki', 1, '24 Nov 2021'),
(155, 167, 'RANDI HASAN IDRIS', '2003-07-07', 5, 9, 'Laki-Laki', 3, '24 Nov 2021'),
(156, 168, 'WINDHY APRILIA', '2004-04-27', 5, 9, 'Perempuan', 1, '24 Nov 2021'),
(157, 169, 'JANAWIA', '1970-12-31', 5, 9, 'Perempuan', 7, '24 Nov 2021'),
(158, 170, 'NURWITA', '1992-07-10', 5, 9, 'Perempuan', 4, '24 Nov 2021'),
(159, 171, 'MUHAMMAD ILHAM', '2017-06-18', 5, 9, 'Laki-Laki', 2, '24 Nov 2021'),
(160, 172, 'MUHAMMAD ILHAM', '1997-07-01', 5, 9, 'Perempuan', 2, '24 Nov 2021'),
(161, 173, 'ARKANA HAMZAH', '2018-11-18', 5, 9, 'Laki-Laki', 1, '24 Nov 2021'),
(162, 174, 'LANI', '1984-12-20', 5, 9, 'Perempuan', 6, '24 Nov 2021'),
(163, 383, 'PATIMANG', '1956-02-23', 5, 9, 'Perempuan', 6, '24 Nov 2021'),
(164, 175, 'SARTIKA', '1987-09-09', 5, 9, 'Perempuan', 4, '24 Nov 2021'),
(165, 176, 'NURUL QORIAH', '1991-04-20', 5, 9, 'Perempuan', 3, '24 Nov 2021'),
(166, 177, 'DEVI RAHMADHANI', '2000-10-29', 5, 9, 'Perempuan', 1, '24 Nov 2021'),
(167, 178, '', '1960-12-31', 5, 9, 'Perempuan', 1, '24 Nov 2021'),
(168, 179, 'MUH.VADIL PAKOLO', '2010-05-01', 5, 9, 'Laki-Laki', 2, '24 Nov 2021'),
(169, 180, 'MARDIANA', '1997-03-25', 5, 9, 'Perempuan', 2, '24 Nov 2021'),
(170, 181, 'SURYA JAYA', '1983-08-01', 5, 9, 'Laki-Laki', 1, '24 Nov 2021'),
(171, 182, 'JUMARIA', '1963-08-20', 5, 9, 'Perempuan', 4, '24 Nov 2021'),
(172, 183, 'UMMANG', '1996-03-01', 5, 9, 'Laki-Laki', 2, '24 Nov 2021'),
(173, 184, 'MUH.YAHYA', '2002-06-01', 5, 9, 'Laki-Laki', 2, '24 Nov 2021'),
(174, 185, 'NURLIANA SARI', '1994-12-23', 5, 9, 'Perempuan', 2, '24 Nov 2021'),
(175, 186, 'ASRA', '1962-03-17', 5, 9, 'Perempuan', 2, '24 Nov 2021'),
(176, 187, '', '1982-12-24', 5, 9, 'Laki-Laki', 1, '24 Nov 2021'),
(177, 188, 'JUMIA TALLESANG', '1968-04-14', 5, 10, 'Perempuan', 3, '24 Nov 2021'),
(178, 189, 'NURHAEMI', '1996-06-06', 5, 10, 'Perempuan', 2, '24 Nov 2021'),
(179, 190, '', '1996-10-10', 5, 10, 'Perempuan', 1, '24 Nov 2021'),
(180, 191, 'BARIA', '1974-04-04', 5, 10, 'Perempuan', 6, '24 Nov 2021'),
(181, 192, 'MUHAMMAD FIQRI', '2015-07-28', 5, 10, 'Laki-Laki', 1, '24 Nov 2021'),
(182, 193, 'EVIANTY', '1987-03-16', 5, 10, 'Perempuan', 4, '24 Nov 2021'),
(183, 194, 'JUMAEDA', '1983-07-17', 5, 10, 'Perempuan', 4, '24 Nov 2021'),
(184, 195, 'YOLA', '1999-06-02', 5, 10, 'Perempuan', 2, '24 Nov 2021'),
(185, 197, 'NASMIANI', '1983-11-04', 5, 10, 'Perempuan', 5, '24 Nov 2021'),
(186, 196, 'HARIANTI', '1993-07-03', 5, 10, 'Perempuan', 5, '24 Nov 2021'),
(187, 198, 'DEAFILARAHMA', '2009-09-29', 5, 10, 'Perempuan', 1, '24 Nov 2021'),
(188, 199, 'HAMIDA', '1967-07-11', 5, 10, 'Perempuan', 2, '24 Nov 2021'),
(189, 200, 'AULIYA', '2020-10-05', 5, 10, 'Perempuan', 1, '24 Nov 2021'),
(190, 201, 'NADAPRIYAN', '2013-04-21', 5, 10, 'Perempuan', 2, '24 Nov 2021'),
(191, 202, 'MUHAMMAD HAKIM', '2009-11-21', 5, 10, 'Laki-Laki', 3, '24 Nov 2021'),
(192, 203, 'MUHAMMAD AL ZAHY KAMAL', '2014-07-02', 5, 10, 'Laki-Laki', 3, '24 Nov 2021'),
(193, 204, 'MARTINA PANGNGALA', '1978-02-26', 5, 10, 'Perempuan', 7, '24 Nov 2021'),
(194, 205, 'KARTIA', '1989-12-08', 5, 10, 'Perempuan', 3, '24 Nov 2021'),
(195, 206, 'BADIA', '1977-11-10', 5, 10, 'Perempuan', 7, '24 Nov 2021'),
(196, 207, 'DITA', '1992-11-06', 5, 10, 'Perempuan', 4, '24 Nov 2021'),
(197, 208, '', '1950-12-31', 5, 10, 'Perempuan', 1, '24 Nov 2021'),
(198, 209, 'SALBIA', '1986-05-11', 5, 10, 'Perempuan', 4, '24 Nov 2021'),
(199, 210, '', '1975-04-07', 5, 10, 'Laki-Laki', 1, '24 Nov 2021'),
(200, 211, 'AFRIANTO', '1994-04-04', 5, 10, 'Laki-Laki', 1, '24 Nov 2021'),
(201, 212, 'UNI', '1990-06-29', 5, 10, 'Perempuan', 4, '24 Nov 2021'),
(202, 213, 'RISMA.A', '1990-06-10', 5, 10, 'Perempuan', 3, '24 Nov 2021'),
(203, 214, 'NOVI', '1999-07-21', 5, 10, 'Perempuan', 3, '24 Nov 2021'),
(204, 215, 'NURNAINI', '1991-12-31', 5, 10, 'Perempuan', 2, '24 Nov 2021'),
(205, 216, 'LISNAWATI PASANDE', '1985-12-31', 5, 10, 'Perempuan', 3, '24 Nov 2021'),
(206, 217, '', '1933-07-01', 5, 10, 'Perempuan', 1, '24 Nov 2021'),
(207, 218, '', '1992-11-29', 5, 10, 'Perempuan', 1, '24 Nov 2021'),
(208, 69, '', '1990-05-05', 1, 2, 'Laki-Laki', 1, '28 Nov 2021'),
(209, 70, 'ANDRIANI', '1987-03-29', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(210, 71, 'HESRI', '1995-04-04', 1, 2, 'Perempuan', 1, '28 Nov 2021'),
(211, 72, 'YASNI', '1994-06-15', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(212, 73, 'WINDA', '1987-12-31', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(213, 74, 'MARLIANA', '1983-05-08', 1, 2, 'Perempuan', 2, '28 Nov 2021'),
(214, 75, 'LILI', '1986-07-06', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(215, 76, 'WATIA', '1950-11-15', 1, 2, 'Perempuan', 2, '28 Nov 2021'),
(216, 77, 'SULFIATI', '1984-05-12', 1, 2, 'Perempuan', 2, '28 Nov 2021'),
(217, 78, 'JUMIANA', '1980-07-01', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(218, 79, '', '1945-08-17', 1, 2, 'Perempuan', 1, '28 Nov 2021'),
(219, 80, 'ANI SALEPA', '1993-06-02', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(220, 81, 'ECCE', '1988-11-10', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(221, 82, 'MARNI', '1989-07-01', 1, 2, 'Perempuan', 2, '28 Nov 2021'),
(222, 83, '', '1965-12-13', 1, 2, 'Perempuan', 1, '28 Nov 2021'),
(223, 84, 'SRIWAHYUNI', '2000-04-12', 1, 2, 'Perempuan', 2, '28 Nov 2021'),
(224, 85, 'LUDIANA NAMPE', '1995-06-05', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(225, 86, '', '1958-12-13', 1, 2, 'Perempuan', 1, '28 Nov 2021'),
(226, 87, 'LUDIA BOKKO', '1950-10-10', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(227, 88, 'SELMI', '1986-11-13', 1, 2, 'Perempuan', 4, '28 Nov 2021'),
(228, 89, 'NURBETI', '1979-07-01', 1, 2, 'Perempuan', 4, '28 Nov 2021'),
(229, 90, 'AMELIA', '1990-05-24', 1, 2, 'Perempuan', 4, '28 Nov 2021'),
(230, 91, 'RASTI', '1999-03-07', 1, 2, 'Perempuan', 2, '28 Nov 2021'),
(231, 92, 'JERNIA', '1983-07-01', 1, 2, 'Perempuan', 6, '28 Nov 2021'),
(232, 93, 'MARIANA', '1976-07-01', 1, 2, 'Perempuan', 4, '28 Nov 2021'),
(233, 94, '', '1945-07-01', 0, 0, 'Perempuan', 1, '28 Nov 2021'),
(234, 94, '', '1945-07-01', 1, 2, 'Perempuan', 1, '28 Nov 2021'),
(235, 95, 'ALPIN', '1984-12-10', 1, 2, 'Perempuan', 6, '28 Nov 2021'),
(236, 96, 'NURIANI', '1968-07-01', 1, 2, 'Perempuan', 6, '28 Nov 2021'),
(237, 97, 'ICHA', '1992-08-06', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(238, 98, 'ADITIYA', '2017-06-21', 1, 2, 'Laki-Laki', 1, '28 Nov 2021'),
(239, 99, 'NURMI', '1986-12-31', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(240, 100, 'TETIK', '1994-05-13', 1, 2, 'Perempuan', 3, '28 Nov 2021'),
(241, 101, '', '1989-03-27', 1, 2, 'Perempuan', 1, '28 Nov 2021'),
(242, 102, '', '1980-02-28', 1, 2, 'Laki-Laki', 1, '28 Nov 2021'),
(243, 103, 'AGUS PENNA', '1950-05-06', 1, 2, 'Perempuan', 2, '28 Nov 2021'),
(244, 104, 'HARMAYANA', '1991-07-13', 1, 2, 'Perempuan', 5, '28 Nov 2021'),
(245, 312, 'DINA PATANDUK', '1985-04-06', 2, 2, 'Perempuan', 5, '28 Nov 2021'),
(246, 313, 'EVI', '1991-12-06', 2, 2, 'Perempuan', 5, '28 Nov 2021'),
(247, 314, 'ORAN', '1947-03-12', 2, 2, 'Perempuan', 2, '28 Nov 2021'),
(248, 315, 'IRA PUSPITA', '1990-04-03', 2, 2, 'Perempuan', 4, '28 Nov 2021'),
(249, 316, 'YULI', '1991-12-07', 2, 2, 'Perempuan', 3, '28 Nov 2021'),
(250, 317, 'RISMA DENGE DATU', '1989-02-05', 2, 2, 'Perempuan', 4, '28 Nov 2021'),
(251, 318, 'SARAH TAPPARAN', '1961-08-07', 2, 2, 'Perempuan', 2, '28 Nov 2021'),
(252, 319, 'RUTH BUNGA', '1962-12-31', 2, 2, 'Perempuan', 3, '28 Nov 2021'),
(253, 320, 'HANA TALE', '1946-01-07', 2, 2, 'Perempuan', 1, '28 Nov 2021'),
(254, 321, 'NATALIA', '1994-12-30', 2, 2, 'Perempuan', 3, '28 Nov 2021'),
(255, 322, 'ELISABET.A', '1966-12-01', 2, 2, 'Perempuan', 4, '28 Nov 2021'),
(256, 323, 'LINCE LAMBI', '1970-02-20', 2, 4, 'Perempuan', 3, '28 Nov 2021'),
(257, 324, '', '1957-03-11', 2, 4, 'Perempuan', 1, '28 Nov 2021'),
(258, 141, 'SRI RENTOWATI', '1995-10-17', 4, 4, 'Perempuan', 3, '02 Dec 2021'),
(259, 142, 'ATI HALIK', '2021-12-23', 4, 4, 'Perempuan', 2, '02 Dec 2021');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewa`
--

CREATE TABLE `tb_penyewa` (
  `id_penyewa` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `aset_id` int(11) NOT NULL,
  `harga_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` varchar(128) NOT NULL,
  `tgl_kembali` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penyewa`
--

INSERT INTO `tb_penyewa` (`id_penyewa`, `user_id`, `aset_id`, `harga_id`, `status`, `created_at`, `tgl_kembali`) VALUES
(5, 1, 3, 3, 0, '20 Nov 2021 03:52', ''),
(6, 1, 4, 4, 0, '20 Nov 2021 03:52', ''),
(7, 1, 4, 4, 0, '20 Nov 2021 03:54', ''),
(8, 1, 4, 4, 0, '20 Nov 2021 03:56', ''),
(9, 1, 4, 4, 0, '20 Nov 2021 03:57', ''),
(10, 1, 4, 4, 1, '20 Nov 2021', '2021-11-22'),
(13, 1, 2, 2, 0, '20 Nov 2021 04:35', ''),
(14, 1, 4, 4, 0, '20 Nov 2021 04:40', ''),
(19, 2, 2, 2, 0, '30 Nov 2021 11:20', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_register`
--

CREATE TABLE `tb_register` (
  `id_regis` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(123) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `created_at` varchar(128) NOT NULL,
  `status` int(1) NOT NULL,
  `token_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_register`
--

INSERT INTO `tb_register` (`id_regis`, `user_id`, `nama`, `email`, `username`, `password`, `no_hp`, `created_at`, `status`, `token_id`) VALUES
(2, 2, 'Khalil Ghibran', 'khalilkhalilgibran83@gmail.com', 'Khalil', '8873629fd68805edbfb28080acba391df98eb469', '', '20 Nov 2021 04:37', 1, 'cIpvl5UMlpY:APA91bH0AS06QW7WRCdJiF60SnM-qjkZWKHtuueiVSrDnVJu3GMbX0NHMmawhK0kphovCljui-2JZ9lmjcmtAdekaggo-xebiZmmIGf2CkBNt27cmkYJxOUEceU9T1nwmqEcP2d0OdMR'),
(4, 2, 'Adi Murdayani', 'adimurdayani@gmail.com', 'adi', '538ccb720c36e5991c7cbe07092497e56100869c', '+62813437030', '20 Nov 2021 04:53', 1, 'eEHucoeNpP8:APA91bH1anCZxJHXsjk96gjQtxIanL3W_-qPbzvqnkdOA7Df6yitP-l5vNtJmWb92HsCa1LcLM3mMFf5xoxCoVILDa9VEhXlBDRl0_5OG7RzdS-_1SiYTyjtQmfn0YTffJI6o3yfDQsS');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rt`
--

CREATE TABLE `tb_rt` (
  `id_rt` int(11) NOT NULL,
  `rt` varchar(128) NOT NULL,
  `dusun_id` int(11) NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rt`
--

INSERT INTO `tb_rt` (`id_rt`, `rt`, `dusun_id`, `created_at`) VALUES
(1, 'I', 1, '26 Oct 2021'),
(2, 'II', 1, '26 Oct 2021'),
(3, 'III', 2, '26 Oct 2021'),
(4, 'IV', 2, '26 Oct 2021'),
(5, 'V', 3, '26 Oct 2021'),
(6, 'VI', 3, '26 Oct 2021'),
(7, 'VII', 4, '26 Oct 2021'),
(8, 'VIII', 4, '26 Oct 2021'),
(9, 'IX', 5, '26 Oct 2021'),
(10, 'X', 5, '26 Oct 2021');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_active` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `user_id`, `user_active`, `nama`, `email`, `username`, `password`, `created_at`) VALUES
(1, 1, 1, 'Admin', 'adim@gmail.com', 'admin123', '7b902e6ff1db9f560443f2048974fd7d386975b0', '25 Oct 2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aset`
--
ALTER TABLE `tb_aset`
  ADD PRIMARY KEY (`id_aset`);

--
-- Indexes for table `tb_dusun`
--
ALTER TABLE `tb_dusun`
  ADD PRIMARY KEY (`id_dusun`);

--
-- Indexes for table `tb_grup`
--
ALTER TABLE `tb_grup`
  ADD PRIMARY KEY (`id_grup`);

--
-- Indexes for table `tb_kritik`
--
ALTER TABLE `tb_kritik`
  ADD PRIMARY KEY (`id_kritik`);

--
-- Indexes for table `tb_namakk`
--
ALTER TABLE `tb_namakk`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indexes for table `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  ADD PRIMARY KEY (`id_pend`);

--
-- Indexes for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Indexes for table `tb_register`
--
ALTER TABLE `tb_register`
  ADD PRIMARY KEY (`id_regis`);

--
-- Indexes for table `tb_rt`
--
ALTER TABLE `tb_rt`
  ADD PRIMARY KEY (`id_rt`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aset`
--
ALTER TABLE `tb_aset`
  MODIFY `id_aset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_dusun`
--
ALTER TABLE `tb_dusun`
  MODIFY `id_dusun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_grup`
--
ALTER TABLE `tb_grup`
  MODIFY `id_grup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_kritik`
--
ALTER TABLE `tb_kritik`
  MODIFY `id_kritik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_namakk`
--
ALTER TABLE `tb_namakk`
  MODIFY `id_kk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  MODIFY `id_pend` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  MODIFY `id_penyewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_register`
--
ALTER TABLE `tb_register`
  MODIFY `id_regis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_rt`
--
ALTER TABLE `tb_rt`
  MODIFY `id_rt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
