-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2020 pada 02.44
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_learning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_field_tambahan`
--

CREATE TABLE `el_field_tambahan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_field_tambahan`
--

INSERT INTO `el_field_tambahan` (`id`, `nama`, `value`) VALUES
('check-urgent-info', 'Check Urgent Info', '{\"info\":\"\",\"last_check\":\"2019-11-24 16:50:03\"}'),
('history-mengerjakan-1-1', 'History pengerjaan tugas', '{\"mulai\":\"2019-11-24 16:36:24\",\"uri_string\":\"tugas\\/kerjakan\\/1\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"1\",\"mapel_id\":\"1\",\"pengajar_id\":\"1\",\"type_id\":\"1\",\"judul\":\"berbahasa\",\"durasi\":null,\"info\":\"\",\"aktif\":\"1\",\"tgl_buat\":\"2019-11-24 16:35:20\",\"tampil_siswa\":\"1\"},\"unix_id\":\"c10736a3d032fd4246b2ae1431de267e744356\",\"ip\":\"127.0.0.1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"file_name\":\"c10736a3d032fd4246b2ae1431de267e744356.pdf\",\"tgl_submit\":\"2019-11-24 16:36:51\"}'),
('history-mengerjakan-1-3', 'History pengerjaan tugas', '{\"mulai\":\"2020-01-17 22:38:50\",\"uri_string\":\"tugas\\/kerjakan\\/3\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"3\",\"mapel_id\":\"1\",\"pengajar_id\":\"2\",\"type_id\":\"1\",\"judul\":\"Upload Tugas DIsini\",\"durasi\":null,\"info\":\"<p>Dimohon untuk bekerjasama<\\/p>\\r\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2019-11-26 02:00:04\",\"tampil_siswa\":\"1\"},\"unix_id\":\"42b47b9bef100dce99fa88010bc02f6c678683\",\"ip\":\"127.0.0.1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"file_name\":\"42b47b9bef100dce99fa88010bc02f6c678683.pdf\",\"tgl_submit\":\"2020-01-17 22:39:19\",\"nilai\":\"70\"}'),
('history-mengerjakan-1-5', 'History pengerjaan tugas', '{\"mulai\":\"2020-01-17 22:14:55\",\"selesai\":\"2020-01-17 23:14:55\",\"uri_string\":\"tugas\\/kerjakan\\/5\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"5\",\"mapel_id\":\"4\",\"pengajar_id\":\"2\",\"type_id\":\"2\",\"judul\":\"Latihan Essay\",\"durasi\":\"60\",\"info\":\"\",\"aktif\":\"1\",\"tgl_buat\":\"2020-01-17 22:09:13\",\"tampil_siswa\":\"1\"},\"unix_id\":\"d5faa648e67dc07fbe5c80983c5a49d112521\",\"ip\":\"127.0.0.1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"pertanyaan_id\":[\"3\"],\"jawaban\":{\"3\":\"<p>Simbiosis Parasistisme<\\/p>\\r\\n\"},\"tgl_submit\":\"2020-01-17 22:15:39\",\"total_waktu\":\"44 detik\",\"nilai\":{\"3\":\"80\"}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_kelas`
--

CREATE TABLE `el_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=aktif 0=tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_kelas`
--

INSERT INTO `el_kelas` (`id`, `nama`, `parent_id`, `urutan`, `aktif`) VALUES
(6, 'KELAS XI TKJ', NULL, 1, 1),
(7, 'KELAS XI - TKJ 1', 6, 2, 1),
(8, 'KELAS XI - TKJ 2', 6, 3, 1),
(9, 'KELAS XI - TKJ 3', 6, 4, 1),
(10, 'KELAS XI - TKJ 4', 6, 5, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_kelas_siswa`
--

CREATE TABLE `el_kelas_siswa` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL COMMENT '0 jika bukan, 1 jika ya'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_kelas_siswa`
--

INSERT INTO `el_kelas_siswa` (`id`, `kelas_id`, `siswa_id`, `aktif`) VALUES
(1, 7, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_komentar`
--

CREATE TABLE `el_komentar` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `tampil` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=tidak,1=tampil',
  `konten` text,
  `tgl_posting` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_komentar`
--

INSERT INTO `el_komentar` (`id`, `login_id`, `materi_id`, `tampil`, `konten`, `tgl_posting`) VALUES
(1, 2, 1, 1, '<p>Ini bagaimana ya pak?</p>\r\n', '2019-11-24 23:46:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_login`
--

CREATE TABLE `el_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL COMMENT '0=tidak,1=ya',
  `reset_kode` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_login`
--

INSERT INTO `el_login` (`id`, `username`, `password`, `siswa_id`, `pengajar_id`, `is_admin`, `reset_kode`) VALUES
(1, 'guru@guru.com', '9310f83135f238b04af729fec041cca8', NULL, 1, 1, NULL),
(2, 'siswa1@siswa.com', '013f0f67779f3b1686c604db150d12ea', 1, NULL, 0, 'ae93c84feb68dd8c85b59529bfb854ee'),
(3, 'guru1@guru.com', '9310f83135f238b04af729fec041cca8', NULL, 2, 0, NULL),
(4, 'guru2@guru.com', '9310f83135f238b04af729fec041cca8', NULL, 3, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_login_log`
--

CREATE TABLE `el_login_log` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `lasttime` datetime NOT NULL,
  `agent` text NOT NULL,
  `last_activity` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_login_log`
--

INSERT INTO `el_login_log` (`id`, `login_id`, `lasttime`, `agent`, `last_activity`) VALUES
(1, 1, '2019-11-24 16:11:45', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574586996),
(2, 2, '2019-11-24 16:18:56', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574587282),
(3, 1, '2019-11-24 16:20:46', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574611796),
(4, 2, '2019-11-24 16:35:54', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574611578),
(5, 2, '2019-11-24 23:06:24', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574611476),
(6, 2, '2019-11-24 23:07:44', '{\"is_mobile\":1,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 8.1.0; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Mobile Safari\\/537.36\",\"ip\":\"36.77.141.16\"}', 1574611619),
(7, 1, '2019-11-24 23:41:45', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574613847),
(8, 2, '2019-11-24 23:46:10', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574613912),
(9, 1, '2019-11-24 23:47:16', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574614027),
(10, 3, '2019-11-24 23:49:13', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574653395),
(11, 1, '2019-11-25 10:43:29', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574653366),
(12, 1, '2019-11-25 18:38:34', '{\"is_mobile\":0,\"browser\":\"Chrome 75.0.3770.142\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/75.0.3770.142 Safari\\/537.36\",\"ip\":\"110.137.161.250\"}', 1574681867),
(13, 1, '2019-11-25 21:39:44', '{\"is_mobile\":1,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 8.1.0; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Mobile Safari\\/537.36\",\"ip\":\"36.77.141.16\"}', 1574692869),
(14, 1, '2019-11-26 01:24:10', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574706484),
(15, 2, '2019-11-26 01:30:10', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574707931),
(16, 2, '2019-11-26 01:54:14', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574707938),
(17, 1, '2019-11-26 01:55:36', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574708211),
(18, 2, '2019-11-26 01:58:55', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574708222),
(19, 3, '2019-11-26 01:59:10', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574708294),
(20, 2, '2019-11-26 02:00:17', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574708330),
(21, 3, '2019-11-26 02:00:59', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574708551),
(22, 2, '2019-11-26 02:04:35', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574708724),
(23, 3, '2019-11-26 02:07:33', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574708838),
(24, 2, '2019-11-26 02:09:20', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574708923),
(25, 1, '2019-11-26 02:23:06', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574709690),
(26, 1, '2019-11-26 18:11:18', '{\"is_mobile\":1,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 8.1.0; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Mobile Safari\\/537.36\",\"ip\":\"10.13.209.166\"}', 1574766985),
(27, 1, '2019-11-26 21:16:42', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574777721),
(28, 2, '2019-11-26 21:37:09', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1574779092),
(29, 1, '2019-11-28 20:27:45', '{\"is_mobile\":0,\"browser\":\"Chrome 75.0.3770.142\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/75.0.3770.142 Safari\\/537.36\",\"ip\":\"110.137.150.145\"}', 1574947799),
(30, 2, '2019-12-19 03:57:44', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1576702657),
(31, 1, '2019-12-19 03:59:41', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1576702791),
(32, 3, '2019-12-19 04:02:00', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1576702948),
(33, 2, '2019-12-19 04:04:31', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1576703396),
(34, 1, '2019-12-19 04:11:58', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1576703680),
(35, 3, '2019-12-19 05:16:42', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1576717004),
(36, 1, '2019-12-19 11:03:16', '{\"is_mobile\":0,\"browser\":\"Chrome 75.0.3770.142\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/75.0.3770.142 Safari\\/537.36\",\"ip\":\"10.13.43.231\"}', 1576732495),
(37, 1, '2019-12-19 23:25:58', '{\"is_mobile\":0,\"browser\":\"Chrome 75.0.3770.142\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/75.0.3770.142 Safari\\/537.36\",\"ip\":\"36.76.235.209\"}', 1576772660),
(38, 2, '2019-12-20 07:15:14', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1576800852),
(39, 2, '2019-12-21 22:43:07', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1576943059),
(40, 3, '2019-12-25 22:37:38', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577288250),
(41, 2, '2019-12-25 22:39:32', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577288441),
(42, 1, '2019-12-25 22:42:44', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577288641),
(43, 3, '2019-12-25 22:46:05', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577288795),
(44, 1, '2019-12-26 00:20:36', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577408878),
(45, 3, '2019-12-26 11:10:14', '{\"is_mobile\":0,\"browser\":\"Chrome 75.0.3770.142\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/75.0.3770.142 Safari\\/537.36\",\"ip\":\"192.168.10.1\"}', 1577334185),
(46, 1, '2019-12-27 08:08:03', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577408842),
(47, 1, '2019-12-28 00:15:45', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577466886),
(48, 1, '2019-12-28 00:25:15', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577467887),
(49, 3, '2019-12-28 00:33:35', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577468577),
(50, 2, '2019-12-28 00:44:59', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577468596),
(51, 3, '2019-12-28 00:45:22', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577468760),
(52, 2, '2019-12-28 00:48:02', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577515321),
(53, 2, '2019-12-28 13:42:04', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577516368),
(54, 1, '2019-12-28 14:01:33', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577516405),
(55, 1, '2019-12-28 14:52:18', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577519691),
(56, 1, '2019-12-28 14:59:08', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577520075),
(57, 3, '2019-12-28 15:03:19', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577520225),
(58, 2, '2019-12-28 15:05:49', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577520619),
(59, 3, '2019-12-28 15:12:26', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577521052),
(60, 1, '2019-12-28 15:19:36', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577521529),
(61, 3, '2019-12-28 15:27:33', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577521537),
(62, 2, '2019-12-28 15:27:40', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577521688),
(63, 1, '2019-12-28 15:30:12', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577522063),
(64, 3, '2019-12-28 15:36:28', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577522094),
(65, 1, '2019-12-28 15:36:56', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577522219),
(66, 3, '2019-12-28 15:39:03', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577522279),
(67, 1, '2019-12-28 15:40:01', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577522914),
(68, 3, '2019-12-28 15:50:38', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577523074),
(69, 1, '2019-12-28 15:51:26', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577522980),
(70, 3, '2019-12-28 15:51:43', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577523144),
(71, 1, '2019-12-28 15:54:27', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577548987),
(72, 3, '2019-12-28 19:32:59', '{\"is_mobile\":0,\"browser\":\"Chrome 75.0.3770.142\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/75.0.3770.142 Safari\\/537.36\",\"ip\":\"180.251.247.248\"}', 1577536581),
(73, 2, '2019-12-28 23:08:38', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577549221),
(74, 3, '2019-12-28 23:09:07', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577549268),
(75, 2, '2019-12-28 23:09:51', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577584436),
(76, 1, '2020-01-02 08:49:05', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577929803),
(77, 1, '2020-01-02 09:07:06', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577931069),
(78, 3, '2020-01-02 09:13:13', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1577931102),
(79, 1, '2020-01-04 10:01:32', '{\"is_mobile\":1,\"browser\":\"Chrome 79.0.3945.93\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 9; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.93 Mobile Safari\\/537.36\",\"ip\":\"114.125.244.222\"}', 1578106893),
(80, 1, '2020-01-04 10:01:48', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.93\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.93 Safari\\/537.36\",\"ip\":\"114.125.244.222\"}', 1578106816),
(81, 3, '2020-01-04 10:02:23', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.93\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.93 Safari\\/537.36\",\"ip\":\"114.125.244.222\"}', 1578106973),
(82, 3, '2020-01-04 10:03:08', '{\"is_mobile\":1,\"browser\":\"Chrome 79.0.3945.93\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 9; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.93 Mobile Safari\\/537.36\",\"ip\":\"114.125.244.222\"}', 1578106989),
(83, 3, '2020-01-04 10:03:26', '{\"is_mobile\":1,\"browser\":\"Chrome 79.0.3945.93\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 9; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.93 Mobile Safari\\/537.36\",\"ip\":\"114.125.244.222\"}', 1578107012),
(84, 3, '2020-01-04 10:04:04', '{\"is_mobile\":1,\"browser\":\"Chrome 79.0.3945.93\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 9; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.93 Mobile Safari\\/537.36\",\"ip\":\"114.125.244.222\"}', 1578107053),
(85, 1, '2020-01-12 13:26:18', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"10.13.227.190\"}', 1578810820),
(86, 1, '2020-01-12 19:20:40', '{\"is_mobile\":0,\"browser\":\"Chrome 75.0.3770.142\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; WOW64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/75.0.3770.142 Safari\\/537.36\",\"ip\":\"180.251.247.253\"}', 1578835286),
(87, 1, '2020-01-14 14:32:00', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1578987645),
(88, 3, '2020-01-14 14:42:52', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1578989031),
(89, 1, '2020-01-14 15:10:34', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1578989321),
(90, 3, '2020-01-14 15:10:46', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579005138),
(91, 1, '2020-01-14 21:39:41', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579013324),
(92, 3, '2020-01-14 21:50:51', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579013527),
(93, 2, '2020-01-14 21:54:11', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579014101),
(94, 2, '2020-01-14 22:01:49', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579014124),
(95, 2, '2020-01-14 22:02:51', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579017575),
(96, 1, '2020-01-14 23:01:38', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579017627),
(97, 3, '2020-01-14 23:02:31', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579017952),
(98, 1, '2020-01-14 23:08:00', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579019575),
(99, 3, '2020-01-14 23:34:59', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579019891),
(100, 1, '2020-01-14 23:38:23', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579020089),
(101, 1, '2020-01-14 23:41:38', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579020417),
(102, 1, '2020-01-14 23:47:08', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579026581),
(103, 1, '2020-01-15 01:29:50', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579026548),
(104, 3, '2020-01-15 01:31:11', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579027023),
(105, 3, '2020-01-15 01:37:22', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579028958),
(106, 1, '2020-01-15 02:11:20', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579028999),
(107, 1, '2020-01-15 02:12:02', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579029082),
(108, 3, '2020-01-15 02:13:26', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579029227),
(109, 1, '2020-01-15 02:18:57', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579029735),
(110, 1, '2020-01-15 02:24:56', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579052988),
(111, 1, '2020-01-15 08:54:15', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579053639),
(112, 1, '2020-01-15 09:00:50', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579053584),
(113, 3, '2020-01-15 09:01:52', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579072543),
(114, 1, '2020-01-15 14:16:01', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579072448),
(115, 1, '2020-01-15 14:48:29', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579074398),
(116, 1, '2020-01-15 21:07:54', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579097851),
(117, 3, '2020-01-15 21:19:40', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579106852),
(118, 1, '2020-01-16 00:18:19', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579111441),
(119, 1, '2020-01-16 08:20:47', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579137800),
(120, 1, '2020-01-16 08:42:04', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579148287),
(121, 1, '2020-01-16 11:18:13', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579150037),
(122, 3, '2020-01-16 11:49:20', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579156930),
(123, 1, '2020-01-16 13:42:14', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579156816),
(124, 3, '2020-01-16 13:42:20', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579160104),
(125, 1, '2020-01-17 00:58:35', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579197448),
(126, 1, '2020-01-17 06:22:30', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579221038),
(127, 3, '2020-01-17 07:32:46', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579273641),
(128, 1, '2020-01-17 15:00:30', '{\"is_mobile\":1,\"browser\":\"Chrome 79.0.3945.116\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 9; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.116 Mobile Safari\\/537.36\",\"ip\":\"182.1.6.45\"}', 1579248201),
(129, 1, '2020-01-17 15:46:04', '{\"is_mobile\":1,\"browser\":\"Chrome 79.0.3945.116\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 9; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.116 Mobile Safari\\/537.36\",\"ip\":\"182.1.5.190\"}', 1579250699),
(130, 1, '2020-01-17 15:47:49', '{\"is_mobile\":1,\"browser\":\"Chrome 79.0.3945.116\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 9; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.116 Mobile Safari\\/537.36\",\"ip\":\"182.1.5.190\"}', 1579250784),
(131, 2, '2020-01-17 15:49:52', '{\"is_mobile\":1,\"browser\":\"Chrome 79.0.3945.116\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 9; CPH1823) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.116 Mobile Safari\\/537.36\",\"ip\":\"182.1.5.190\"}', 1579253259),
(132, 3, '2020-01-17 22:07:47', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579273965),
(133, 2, '2020-01-17 22:14:48', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579274028),
(134, 3, '2020-01-17 22:15:53', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579275092),
(135, 2, '2020-01-17 22:33:34', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579275339),
(136, 3, '2020-01-17 22:37:48', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579275365),
(137, 2, '2020-01-17 22:38:07', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579275468),
(138, 3, '2020-01-17 22:39:53', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579275509),
(139, 2, '2020-01-17 22:40:32', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.117\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.117 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1579275549);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_mapel`
--

CREATE TABLE `el_mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `info` text,
  `aktif` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = ya, 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_mapel`
--

INSERT INTO `el_mapel` (`id`, `nama`, `info`, `aktif`) VALUES
(1, 'Bahasa Indonesia', NULL, 1),
(2, 'Bahasa Inggris', '', 1),
(3, 'Matematika', NULL, 1),
(4, 'Biologi', NULL, 1),
(5, 'Penjas', NULL, 1),
(6, 'Agama', NULL, 1),
(7, 'Fisika', NULL, 1),
(8, 'Kimia', NULL, 1),
(9, 'Ekonomi', NULL, 1),
(10, 'Teknologi Informasi', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_mapel_ajar`
--

CREATE TABLE `el_mapel_ajar` (
  `id` int(11) NOT NULL,
  `hari_id` tinyint(1) NOT NULL COMMENT '1=senin,2=selasa,3=rabu,4=kamis,5=jum''at,6=sabtu,7=minggu',
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `mapel_kelas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = aktif 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_mapel_ajar`
--

INSERT INTO `el_mapel_ajar` (`id`, `hari_id`, `jam_mulai`, `jam_selesai`, `pengajar_id`, `mapel_kelas_id`, `aktif`) VALUES
(1, 1, '08:00:00', '09:00:00', 2, 1, 1),
(2, 2, '09:00:00', '10:00:00', 2, 15, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_mapel_kelas`
--

CREATE TABLE `el_mapel_kelas` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_mapel_kelas`
--

INSERT INTO `el_mapel_kelas` (`id`, `kelas_id`, `mapel_id`, `aktif`) VALUES
(1, 7, 1, 1),
(2, 7, 2, 1),
(3, 7, 3, 1),
(4, 7, 5, 1),
(5, 7, 6, 1),
(6, 8, 1, 1),
(7, 8, 2, 1),
(8, 8, 3, 1),
(9, 8, 4, 0),
(10, 8, 5, 1),
(11, 8, 6, 1),
(12, 8, 7, 1),
(13, 8, 8, 1),
(14, 8, 9, 0),
(15, 8, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_materi`
--

CREATE TABLE `el_materi` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text,
  `file` text,
  `tgl_posting` datetime NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_materi`
--

INSERT INTO `el_materi` (`id`, `mapel_id`, `pengajar_id`, `siswa_id`, `judul`, `konten`, `file`, `tgl_posting`, `publish`, `views`) VALUES
(1, 3, 1, NULL, 'Konfigurasi Server', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/T6ceI5QpaSI\" width=\"640\"></iframe></p>\r\n', NULL, '2019-11-24 23:45:59', 1, 11),
(2, 2, 2, NULL, 'Dengarkan', '<div class=\"ckeditor-html5-audio\" style=\"text-align: center;\">\r\n<audio __idm_id__=\"726475777\" controls=\"controls\" src=\"http://localhost:8180/new_elearning/userfiles/uploads/3/Alan_Walker%2C_K-391_%26_Emelie_Hollow_-_Lily_(Lyrics).mp3?time=1574708644589\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, '2019-11-26 02:09:11', 0, 5),
(3, 9, 2, NULL, 'Database', NULL, 'database_1576703041.docx', '2019-12-19 04:04:01', 1, 4),
(4, 10, 2, NULL, 'MEMBACA', NULL, 'membaca_1577288361.pdf', '2019-12-25 22:39:21', 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_materi_kelas`
--

CREATE TABLE `el_materi_kelas` (
  `id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_materi_kelas`
--

INSERT INTO `el_materi_kelas` (`id`, `materi_id`, `kelas_id`) VALUES
(1, 1, 6),
(2, 2, 6),
(3, 3, 6),
(4, 4, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_messages`
--

CREATE TABLE `el_messages` (
  `id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=inbox,2=outbox',
  `content` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sender_receiver_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=belum,1=sudah'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_messages`
--

INSERT INTO `el_messages` (`id`, `type_id`, `content`, `owner_id`, `sender_receiver_id`, `date`, `opened`) VALUES
(1, 2, '<p>Assalamu&#39;alaikum pak, Maaf mengganggu.&nbsp;</p>\r\n', 2, 1, '2019-11-24 16:20:19', 1),
(2, 1, '<p>Assalamu&#39;alaikum pak, Maaf mengganggu.&nbsp;</p>\r\n', 1, 2, '2019-11-24 16:20:19', 1),
(3, 2, '<p>iya ada apa ya?</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 2, '2019-11-24 16:21:13', 1),
(4, 1, '<p>iya ada apa ya?</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, 1, '2019-11-24 16:21:13', 1),
(6, 1, '<p>kak?</p>\r\n', 1, 3, '2020-01-15 02:11:10', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_nilai_tugas`
--

CREATE TABLE `el_nilai_tugas` (
  `id` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_nilai_tugas`
--

INSERT INTO `el_nilai_tugas` (`id`, `nilai`, `tugas_id`, `siswa_id`) VALUES
(3, 80, 5, 1),
(4, 70, 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_pengajar`
--

CREATE TABLE `el_pengajar` (
  `id` int(11) NOT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` text,
  `status_id` tinyint(1) NOT NULL COMMENT '0=pending, 1=aktif, 2=blok'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_pengajar`
--

INSERT INTO `el_pengajar` (`id`, `nip`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `foto`, `status_id`) VALUES
(1, '', 'Administrator', 'Laki-laki', 'Jambi', '1990-01-01', 'Jambi', NULL, 1),
(2, '157151513156', 'Guru Pertama', 'Laki-laki', '', NULL, '', NULL, 1),
(3, '1571021939121', 'Guru Kedua', 'Laki-laki', 'Jambi', '1973-08-20', 'Jambi', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_pengaturan`
--

CREATE TABLE `el_pengaturan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_pengaturan`
--

INSERT INTO `el_pengaturan` (`id`, `nama`, `value`) VALUES
('email-server', 'Email server', 'no-reply@domain.com'),
('email-template-approve-pengajar', 'Approve pengajar (email pengajar)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai pengajar pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-approve-siswa', 'Approve siswa (email siswa)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai siswa pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-link-reset', 'Link Reset Password', '{\"subject\":\"Reset Password\",\"body\":\"<p>Hai,<\\/p>\\n<p>Anda mengirimkan permintaan untuk reset password anda, klik link berikut untuk memulai reset password : {$link_reset}<\\/p>\"}'),
('email-template-register-pengajar', 'Register pengajar (email pengajar)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai pengajar di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('email-template-register-siswa', 'Register siswa (email siswa)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai siswa di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('info-registrasi', 'Info Registrasi', '<p>Silakan mendaftar sebagai Siswa atau Guru (jika anda sebagai Guru) dengan memilih sesuai tab berikut :</p>\r\n'),
('peraturan-elearning', 'Peraturan E-learning', ''),
('registrasi-pengajar', 'Registrasi Pengajar', '1'),
('registrasi-siswa', 'Registrasi Siswa', '1'),
('versi', 'Versi', '2.0'),
('jenjang', 'jenjang', 'SMK'),
('nama-sekolah', 'nama-sekolah', 'SMK Negeri 1 Jambi'),
('alamat', 'alamat', 'Jl. Jend. A. Thalib, Simpang IV Sipin, Kec. Telanaipura Kota Jambi'),
('telp', 'telp', ''),
('install-success', 'install-success', '1'),
('status-registrasi-siswa', 'status-registrasi-siswa', '0'),
('status-registrasi-pengajar', 'status-registrasi-pengajar', '0'),
('logo-sekolah', 'logo-sekolah', 'logo-sekolah.png'),
('smtp-host', 'smtp-host', ''),
('smtp-username', 'smtp-username', ''),
('smtp-pass', 'smtp-pass', ''),
('smtp-port', 'smtp-port', ''),
('edit-username-siswa', 'edit-username-siswa', '1'),
('edit-foto-siswa', 'edit-foto-siswa', '1'),
('info-slide-1', 'info-slide-1', ''),
('info-slide-2', 'info-slide-2', ''),
('info-slide-3', 'info-slide-3', ''),
('info-slide-4', 'info-slide-4', ''),
('img-slide-1', 'img-slide-1', ''),
('img-slide-2', 'img-slide-2', 'img-slide-2.jpg'),
('img-slide-3', 'img-slide-3', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_pengumuman`
--

CREATE TABLE `el_pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `tgl_tampil` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT '1',
  `tampil_pengajar` tinyint(1) NOT NULL DEFAULT '1',
  `pengajar_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_pengumuman`
--

INSERT INTO `el_pengumuman` (`id`, `judul`, `konten`, `tgl_tampil`, `tgl_tutup`, `tampil_siswa`, `tampil_pengajar`, `pengajar_id`) VALUES
(1, 'Libur Natal 25 Desember 2019', '<p>Libur Sampai tanggal 2 Januari 2020</p>\r\n', '2019-12-22', '2020-01-02', 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_pilihan`
--

CREATE TABLE `el_pilihan` (
  `id` int(11) NOT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `kunci` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=tidak',
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_pilihan`
--

INSERT INTO `el_pilihan` (`id`, `pertanyaan_id`, `konten`, `kunci`, `urutan`, `aktif`) VALUES
(1, 1, '<p>Semua benar</p>\r\n', 1, 4, 1),
(2, 2, '<p>Bernafas</p>\r\n', 1, 1, 1),
(3, 2, '<p>Berlari</p>\r\n', 0, 2, 1),
(4, 2, '<p>Berenang</p>\r\n', 0, 3, 1),
(5, 2, '<p>Bersepeda</p>\r\n', 0, 4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_siswa`
--

CREATE TABLE `el_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL COMMENT 'Laki-laki dan Perempuan',
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` char(7) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `foto` text,
  `status_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=pending, 1=aktif, 2=blok, 3=alumni, 4=deleted'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_siswa`
--

INSERT INTO `el_siswa` (`id`, `nis`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `tahun_masuk`, `foto`, `status_id`) VALUES
(1, '15710', 'Siswa Pertama', 'Laki-laki', 'Jambi', NULL, 'ISLAM', '', 2016, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_tugas`
--

CREATE TABLE `el_tugas` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=upload,2=essay,3=ganda',
  `judul` varchar(255) NOT NULL,
  `durasi` int(11) DEFAULT NULL COMMENT 'lama pengerjaan dalam menit',
  `info` text,
  `aktif` tinyint(1) NOT NULL DEFAULT '0',
  `tgl_buat` datetime DEFAULT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=tidak tampil di siswa, 1=tampil siswa'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_tugas`
--

INSERT INTO `el_tugas` (`id`, `mapel_id`, `pengajar_id`, `type_id`, `judul`, `durasi`, `info`, `aktif`, `tgl_buat`, `tampil_siswa`) VALUES
(1, 1, 1, 1, 'berbahasa', NULL, '', 1, '2019-11-24 16:35:20', 1),
(2, 5, 1, 3, 'Konfigurasi', 60, '', 0, '2019-11-24 16:38:19', 1),
(3, 1, 2, 1, 'Upload Tugas DIsini', NULL, '<p>Dimohon untuk bekerjasama</p>\r\n', 1, '2019-11-26 02:00:04', 1),
(4, 1, 2, 3, 'Memahami', 30, '<p>Kerjakan dengan Baik dan Benar. Jangan Mencontek</p>\r\n', 1, '2020-01-14 14:44:11', 1),
(5, 4, 2, 2, 'Latihan Essay', 60, '', 1, '2020-01-17 22:09:13', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_tugas_kelas`
--

CREATE TABLE `el_tugas_kelas` (
  `id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_tugas_kelas`
--

INSERT INTO `el_tugas_kelas` (`id`, `tugas_id`, `kelas_id`) VALUES
(1, 1, 7),
(2, 2, 7),
(3, 3, 7),
(4, 4, 7),
(5, 4, 8),
(6, 5, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `el_tugas_pertanyaan`
--

CREATE TABLE `el_tugas_pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `urutan` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `el_tugas_pertanyaan`
--

INSERT INTO `el_tugas_pertanyaan` (`id`, `pertanyaan`, `urutan`, `tugas_id`, `aktif`) VALUES
(1, '<p>apa nama itu?</p>\r\n', 1, 2, 1),
(2, '<p>Sebutkan cara membaca?</p>\r\n', 1, 4, 1),
(3, '<p>Apa nama simbiosis?</p>\r\n', 1, 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `el_field_tambahan`
--
ALTER TABLE `el_field_tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `el_kelas`
--
ALTER TABLE `el_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `parent_id_2` (`parent_id`);

--
-- Indeks untuk tabel `el_kelas_siswa`
--
ALTER TABLE `el_kelas_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`siswa_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`siswa_id`);

--
-- Indeks untuk tabel `el_komentar`
--
ALTER TABLE `el_komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`,`materi_id`),
  ADD KEY `login_id_2` (`login_id`,`materi_id`);

--
-- Indeks untuk tabel `el_login`
--
ALTER TABLE `el_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`siswa_id`,`pengajar_id`),
  ADD KEY `username_2` (`username`,`siswa_id`,`pengajar_id`);

--
-- Indeks untuk tabel `el_login_log`
--
ALTER TABLE `el_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `login_id_2` (`login_id`),
  ADD KEY `login_id_3` (`login_id`);

--
-- Indeks untuk tabel `el_mapel`
--
ALTER TABLE `el_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `el_mapel_ajar`
--
ALTER TABLE `el_mapel_ajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hari_id` (`hari_id`,`pengajar_id`,`mapel_kelas_id`),
  ADD KEY `hari_id_2` (`hari_id`,`pengajar_id`,`mapel_kelas_id`);

--
-- Indeks untuk tabel `el_mapel_kelas`
--
ALTER TABLE `el_mapel_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`mapel_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`mapel_id`);

--
-- Indeks untuk tabel `el_materi`
--
ALTER TABLE `el_materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`,`siswa_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`siswa_id`);

--
-- Indeks untuk tabel `el_materi_kelas`
--
ALTER TABLE `el_materi_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`materi_id`,`kelas_id`),
  ADD KEY `materi_id_2` (`materi_id`,`kelas_id`);

--
-- Indeks untuk tabel `el_messages`
--
ALTER TABLE `el_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`,`owner_id`,`sender_receiver_id`),
  ADD KEY `type_id_2` (`type_id`,`owner_id`,`sender_receiver_id`);

--
-- Indeks untuk tabel `el_nilai_tugas`
--
ALTER TABLE `el_nilai_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`siswa_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`siswa_id`);

--
-- Indeks untuk tabel `el_pengajar`
--
ALTER TABLE `el_pengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`);

--
-- Indeks untuk tabel `el_pengaturan`
--
ALTER TABLE `el_pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `el_pengumuman`
--
ALTER TABLE `el_pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajar_id` (`pengajar_id`),
  ADD KEY `pengajar_id_2` (`pengajar_id`);

--
-- Indeks untuk tabel `el_pilihan`
--
ALTER TABLE `el_pilihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertanyaan_id` (`pertanyaan_id`),
  ADD KEY `pertanyaan_id_2` (`pertanyaan_id`,`kunci`);

--
-- Indeks untuk tabel `el_siswa`
--
ALTER TABLE `el_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`,`nama`,`status_id`),
  ADD KEY `nis_2` (`nis`,`nama`,`status_id`);

--
-- Indeks untuk tabel `el_tugas`
--
ALTER TABLE `el_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`,`type_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`type_id`);

--
-- Indeks untuk tabel `el_tugas_kelas`
--
ALTER TABLE `el_tugas_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`kelas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`kelas_id`);

--
-- Indeks untuk tabel `el_tugas_pertanyaan`
--
ALTER TABLE `el_tugas_pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `el_kelas`
--
ALTER TABLE `el_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `el_kelas_siswa`
--
ALTER TABLE `el_kelas_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `el_komentar`
--
ALTER TABLE `el_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `el_login`
--
ALTER TABLE `el_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `el_login_log`
--
ALTER TABLE `el_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `el_mapel`
--
ALTER TABLE `el_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `el_mapel_ajar`
--
ALTER TABLE `el_mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `el_mapel_kelas`
--
ALTER TABLE `el_mapel_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `el_materi`
--
ALTER TABLE `el_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `el_materi_kelas`
--
ALTER TABLE `el_materi_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `el_messages`
--
ALTER TABLE `el_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `el_nilai_tugas`
--
ALTER TABLE `el_nilai_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `el_pengajar`
--
ALTER TABLE `el_pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `el_pengumuman`
--
ALTER TABLE `el_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `el_pilihan`
--
ALTER TABLE `el_pilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `el_siswa`
--
ALTER TABLE `el_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `el_tugas`
--
ALTER TABLE `el_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `el_tugas_kelas`
--
ALTER TABLE `el_tugas_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `el_tugas_pertanyaan`
--
ALTER TABLE `el_tugas_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
