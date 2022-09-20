-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 12:49 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `master`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `anggota_nik` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `anggota_nama` varchar(200) NOT NULL,
  `anggota_alamat` text NOT NULL,
  `anggota_masaberlaku` date NOT NULL,
  `anggota_divisi` varchar(20) NOT NULL,
  `anggota_kecamatan` varchar(100) NOT NULL,
  `anggota_desa` varchar(100) NOT NULL,
  `anggota_jabatan` varchar(150) NOT NULL,
  `anggota_createduserid` int(11) NOT NULL,
  `anggota_createddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `anggota_modifieduserid` int(11) DEFAULT NULL,
  `anggota_modifieddate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`anggota_nik`, `anggota_id`, `anggota_nama`, `anggota_alamat`, `anggota_masaberlaku`, `anggota_divisi`, `anggota_kecamatan`, `anggota_desa`, `anggota_jabatan`, `anggota_createduserid`, `anggota_createddate`, `anggota_modifieduserid`, `anggota_modifieddate`) VALUES
('123', '123123', '12312', '3123123', '2022-04-14', 'DPC', 'Parung Panjang', 'Kabasiran', 'Ketua', 1, '2022-04-26 15:41:03', NULL, NULL),
('12312', 'asfdasd', 'asdasd', 'asdasd', '2022-04-14', 'DPC', 'Cibinong', 'Pondok Rajeg', 'Ketua', 1, '2022-04-28 19:12:34', NULL, NULL),
('asda', 'sdasd', 'asda', 'sdasd', '2022-03-30', 'DPC', 'Cibinong', 'Pondok Rajeg', 'Wakil', 1, '2022-04-26 15:49:26', NULL, NULL),
('asdasdas', 'dasdasd', 'asdas', 'sdasd', '2022-03-31', 'DPC', 'Pamijahan', 'Purwabakti', 'Bendahara', 1, '2022-04-28 19:03:03', NULL, NULL),
('sfasf', 'asfa', 'asfasfa', 'sfasfa', '2022-04-14', 'DPC', 'Parung Panjang', 'Cikuda', 'Ketua', 1, '2022-04-28 19:01:01', NULL, NULL),
('ukjlk', 'kl', ';kj;', 'n;l', '2022-04-22', 'DPC', 'Cibinong', 'Pondok Rajeg', 'Ketua', 1, '2022-04-28 20:06:06', NULL, NULL),
('wses', 'fdsdfsfd', 'sdfs', 'fsdf', '2022-04-12', 'DPC', 'Cibungbulang', 'Situ Udik', 'Ketua', 1, '2022-04-28 18:57:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kecamatan_id` int(100) NOT NULL,
  `kecamatan_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kecamatan_id`, `kecamatan_nama`) VALUES
(3201010, 'Nanggung'),
(3201020, 'Leuwiliang'),
(3201021, 'Leuwisadeng'),
(3201030, 'Pamijahan'),
(3201040, 'Cibungbulang'),
(3201050, 'Ciampea'),
(3201051, 'Tenjolaya'),
(3201060, 'Dramaga'),
(3201070, 'Ciomas'),
(3201071, 'Tamansari'),
(3201080, 'Cijeruk'),
(3201081, 'Cigombong'),
(3201090, 'Caringin'),
(3201100, 'Ciawi'),
(3201110, 'Cisarua'),
(3201120, 'Megamendung'),
(3201130, 'Sukaraja'),
(3201140, 'Babakan Madang'),
(3201150, 'Sukamakmur'),
(3201160, 'Cariu'),
(3201161, 'Tanjungsari'),
(3201170, 'Jonggol'),
(3201180, 'Cileungsi'),
(3201181, 'Kelapa Nunggal'),
(3201190, 'Gunung Putri'),
(3201200, 'Citeureup'),
(3201210, 'Cibinong'),
(3201220, 'Bojong Gede'),
(3201221, 'Tajur Halang'),
(3201230, 'Kemang'),
(3201231, 'Ranca Bungur'),
(3201240, 'Parung'),
(3201241, 'Ciseeng'),
(3201250, 'Gunung Sindur'),
(3201260, 'Rumpin'),
(3201270, 'Cigudeg'),
(3201271, 'Sukajaya'),
(3201280, 'Jasinga'),
(3201290, 'Tenjo'),
(3201300, 'Parung Panjang');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `kelurahan_id` bigint(250) NOT NULL,
  `kelurahan_kecamatan_id` int(100) NOT NULL,
  `kelurahan_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`kelurahan_id`, `kelurahan_kecamatan_id`, `kelurahan_nama`) VALUES
(3201010001, 3201010, 'Malasari'),
(3201010002, 3201010, 'Bantar Karet'),
(3201010003, 3201010, 'Cisarua'),
(3201010004, 3201010, 'Curug Bitung'),
(3201010005, 3201010, 'Nanggung'),
(3201010006, 3201010, 'Pangkal Jaya'),
(3201010007, 3201010, 'Sukaluyu'),
(3201010008, 3201010, 'Hambaro'),
(3201010009, 3201010, 'Kalong Liud'),
(3201010010, 3201010, 'Parakan Muncang'),
(3201010011, 3201010, 'Batu Tulis'),
(3201020001, 3201020, 'Purasari'),
(3201020002, 3201020, 'Puraseda'),
(3201020003, 3201020, 'Karyasari'),
(3201020004, 3201020, 'Pabangbon'),
(3201020005, 3201020, 'Karacak'),
(3201020006, 3201020, 'Barengkok'),
(3201020007, 3201020, 'Cibeber Ii'),
(3201020016, 3201020, 'Cibeber I'),
(3201020017, 3201020, 'Leuwimekar'),
(3201020018, 3201020, 'Leuwiliang'),
(3201020019, 3201020, 'Karehkel'),
(3201021001, 3201021, 'Wangun Jaya'),
(3201021002, 3201021, 'Sadengkolot'),
(3201021003, 3201021, 'Leuwisadeng'),
(3201021004, 3201021, 'Sibanteng'),
(3201021005, 3201021, 'Babakan Sadeng'),
(3201021006, 3201021, 'Sadeng'),
(3201021007, 3201021, 'Kalong Ii'),
(3201021008, 3201021, 'Kalong I'),
(3201030001, 3201030, 'Cibunian'),
(3201030002, 3201030, 'Purwabakti'),
(3201030003, 3201030, 'Ciasmara'),
(3201030004, 3201030, 'Ciasihan'),
(3201030005, 3201030, 'Gunung Sari'),
(3201030008, 3201030, 'Cibening'),
(3201030009, 3201030, 'Gunung Picung'),
(3201030010, 3201030, 'Cibitung Kulon'),
(3201030011, 3201030, 'Cibitung Wetan'),
(3201030012, 3201030, 'Pamijahan'),
(3201030013, 3201030, 'Pasarean'),
(3201030014, 3201030, 'Gunung Menyan'),
(3201030015, 3201030, 'Cimayang'),
(3201040001, 3201040, 'Situ Udik'),
(3201040002, 3201040, 'Situ Ilir'),
(3201040003, 3201040, 'Cibatok 2'),
(3201040004, 3201040, 'Ciaruten Udik'),
(3201040005, 3201040, 'Cibatok 1'),
(3201040006, 3201040, 'Sukamaju'),
(3201040007, 3201040, 'Cemplang'),
(3201040008, 3201040, 'Galuga'),
(3201040010, 3201040, 'Cimanggu 2'),
(3201040011, 3201040, 'Cimanggu 1'),
(3201040012, 3201040, 'Girimulya'),
(3201040013, 3201040, 'Leuweung Kolot'),
(3201040014, 3201040, 'Ciaruten Ilir'),
(3201040015, 3201040, 'Cijujung'),
(3201050004, 3201050, 'Ciampea Udik'),
(3201050008, 3201050, 'Cinangka'),
(3201050009, 3201050, 'Cibuntu'),
(3201050010, 3201050, 'Cicadas'),
(3201050011, 3201050, 'Tegal Waru'),
(3201050012, 3201050, 'Bojong Jengkol'),
(3201050013, 3201050, 'Cihideung Udik'),
(3201050014, 3201050, 'Cihideung Ilir'),
(3201050015, 3201050, 'Cibanteng'),
(3201050016, 3201050, 'Bojong Rangkas'),
(3201050017, 3201050, 'Cibadak'),
(3201050019, 3201050, 'Ciampea'),
(3201051001, 3201051, 'Tapos 1'),
(3201051002, 3201051, 'Gunung Malang'),
(3201051003, 3201051, 'Tapos 2'),
(3201051004, 3201051, 'Situ Daun'),
(3201051005, 3201051, 'Cibitung Tengah'),
(3201051006, 3201051, 'Cinangneng'),
(3201051007, 3201051, 'Gunung Mulya'),
(3201060001, 3201060, 'Purwasari'),
(3201060002, 3201060, 'Petir'),
(3201060003, 3201060, 'Sukadamai'),
(3201060004, 3201060, 'Sukawening'),
(3201060005, 3201060, 'Neglasari'),
(3201060006, 3201060, 'Sinar Sari'),
(3201060007, 3201060, 'Ciherang'),
(3201060008, 3201060, 'Dramaga'),
(3201060009, 3201060, 'Babakan'),
(3201060010, 3201060, 'Cikarawang'),
(3201070009, 3201070, 'Kota Batu'),
(3201070010, 3201070, 'Mekarjaya'),
(3201070011, 3201070, 'Parakan'),
(3201070012, 3201070, 'Ciomas'),
(3201070013, 3201070, 'Pagelaran'),
(3201070014, 3201070, 'Sukamakmur'),
(3201070015, 3201070, 'Ciapus'),
(3201070016, 3201070, 'Sukaharja'),
(3201070017, 3201070, 'Padasuka'),
(3201070018, 3201070, 'Ciomas Rahayu'),
(3201070019, 3201070, 'Laladon'),
(3201071001, 3201071, 'Sukajadi'),
(3201071002, 3201071, 'Sukaluyu'),
(3201071003, 3201071, 'Sukajaya'),
(3201071004, 3201071, 'Sukaresmi'),
(3201071005, 3201071, 'Pasir Eurih'),
(3201071006, 3201071, 'Taman Sari'),
(3201071007, 3201071, 'Sukamantri'),
(3201071008, 3201071, 'Sirnagalih'),
(3201080010, 3201080, 'Warung Menteng'),
(3201080011, 3201080, 'Cijeruk'),
(3201080012, 3201080, 'Cipelang'),
(3201080013, 3201080, 'Cibalung'),
(3201080014, 3201080, 'Cipicung'),
(3201080015, 3201080, 'Tanjung Sari'),
(3201080016, 3201080, 'Tajur Halang'),
(3201080017, 3201080, 'Palasari'),
(3201081001, 3201081, 'Tugu Jaya'),
(3201081002, 3201081, 'Cigombong'),
(3201081003, 3201081, 'Wates Jaya'),
(3201081004, 3201081, 'Srogol'),
(3201081005, 3201081, 'Ciburuy'),
(3201081006, 3201081, 'Cisalada'),
(3201081007, 3201081, 'Pasir Jaya'),
(3201081008, 3201081, 'Ciburayut'),
(3201081009, 3201081, 'Ciadeg'),
(3201090001, 3201090, 'Pasir Buncir'),
(3201090002, 3201090, 'Cinagara'),
(3201090003, 3201090, 'Tangkil'),
(3201090004, 3201090, 'Pasir Muncang'),
(3201090005, 3201090, 'Muara Jaya'),
(3201090006, 3201090, 'Caringin'),
(3201090007, 3201090, 'Lemah Duhur'),
(3201090008, 3201090, 'Cimande'),
(3201090009, 3201090, 'Pancawati'),
(3201090010, 3201090, 'Ciderum'),
(3201090011, 3201090, 'Ciherang Pondok'),
(3201090012, 3201090, 'Cimande Hilir'),
(3201100001, 3201100, 'Cileungsi'),
(3201100002, 3201100, 'Citapen'),
(3201100003, 3201100, 'Cibedug'),
(3201100004, 3201100, 'Bojong Murni'),
(3201100005, 3201100, 'Jambu Luwuk'),
(3201100006, 3201100, 'Banjar Sari'),
(3201100007, 3201100, 'Banjar Wangi'),
(3201100008, 3201100, 'Bitung Sari'),
(3201100009, 3201100, 'Teluk Pinang'),
(3201100010, 3201100, 'Banjar Waru'),
(3201100011, 3201100, 'Ciawi'),
(3201100012, 3201100, 'Bendungan'),
(3201100013, 3201100, 'Pandansari');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@master.com', NULL, '$2y$10$1jI8/Iy7jxlq7YsnkcO4R.2dWxg2xEDMJSG2OUA.GOIT3CM9RKoxy', NULL, '2022-04-02 07:35:35', '2022-04-02 07:35:35'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$L./dVnLegYGEjv3ZvHS2WuV9rDZGwf9iw3MvQpWsWwcImjb7P8lYW', NULL, '2022-04-07 06:19:11', '2022-04-07 06:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`kode`, `nama`) VALUES
('32.01.01', 'Cibinong'),
('32.01.01.1001', 'Pondok Rajeg'),
('32.01.01.1002', 'Karadenan'),
('32.01.01.1003', 'Harapanjaya'),
('32.01.01.1004', 'Nanggewer'),
('32.01.01.1005', 'Nanggewer Mekar'),
('32.01.01.1006', 'Cibinong'),
('32.01.01.1007', 'Pakansari'),
('32.01.01.1008', 'Tengah'),
('32.01.01.1009', 'Sukahati'),
('32.01.01.1010', 'Ciriung'),
('32.01.01.1011', 'Cirimekar'),
('32.01.01.1012', 'Pabuaran'),
('32.01.01.1013', 'Pabuaran Mekar'),
('32.01.02', 'Gunung Putri'),
('32.01.02.2001', 'Wanaherang'),
('32.01.02.2002', 'Bojong Kulur'),
('32.01.02.2003', 'Ciangsana'),
('32.01.02.2004', 'Gunung Putri'),
('32.01.02.2005', 'Bojong Nangka'),
('32.01.02.2006', 'Tlajung Udik'),
('32.01.02.2007', 'Cicadas'),
('32.01.02.2008', 'Cikeas Udik'),
('32.01.02.2009', 'Nagrak'),
('32.01.02.2010', 'Karanggan'),
('32.01.03', 'Citeureup'),
('32.01.03.1006', 'Puspanegara'),
('32.01.03.1007', 'Karang Asem Barat'),
('32.01.03.2001', 'Puspasari'),
('32.01.03.2002', 'Citeureup'),
('32.01.03.2003', 'Leuwinutug'),
('32.01.03.2004', 'Tajur'),
('32.01.03.2005', 'Sanja'),
('32.01.03.2008', 'Karang Asem Timur'),
('32.01.03.2009', 'Tarikolot'),
('32.01.03.2010', 'Gunungsari'),
('32.01.03.2011', 'Tangkil'),
('32.01.03.2012', 'Sukahati'),
('32.01.03.2013', 'Hambalang'),
('32.01.03.2014', 'Pasirmukti'),
('32.01.04', 'Sukaraja'),
('32.01.04.2001', 'Gununggeulis'),
('32.01.04.2002', 'Cilebut Timur'),
('32.01.04.2003', 'Cilebut Barat'),
('32.01.04.2004', 'Cibanon'),
('32.01.04.2005', 'Nagrak'),
('32.01.04.2006', 'Sukatani'),
('32.01.04.2007', 'Sukaraja'),
('32.01.04.2008', 'Cikeas'),
('32.01.04.2009', 'Pasir Jambu'),
('32.01.04.2010', 'Cimandala'),
('32.01.04.2011', 'Cijujung'),
('32.01.04.2012', 'Cadasngampar'),
('32.01.04.2013', 'Pasirlaja'),
('32.01.05', 'Babakan Madang'),
('32.01.05.2001', 'Cijayanti'),
('32.01.05.2002', 'Sumurbatu'),
('32.01.05.2003', 'Sentul'),
('32.01.05.2004', 'Karangtengah'),
('32.01.05.2005', 'Cipambuan'),
('32.01.05.2006', 'Kadumanggu'),
('32.01.05.2007', 'Citaringgul'),
('32.01.05.2008', 'Babakan Madang'),
('32.01.05.2009', 'Bojong Koneng'),
('32.01.06', 'Jonggol'),
('32.01.06.2001', 'Sukamaju'),
('32.01.06.2002', 'Sirnagalih'),
('32.01.06.2003', 'Singajaya'),
('32.01.06.2004', 'Sukasirna'),
('32.01.06.2005', 'Sukanegara'),
('32.01.06.2006', 'Sukamanah'),
('32.01.06.2007', 'Weninggalih'),
('32.01.06.2008', 'Cibodas'),
('32.01.06.2009', 'Jonggol'),
('32.01.06.2010', 'Bendungan'),
('32.01.06.2011', 'Singasari'),
('32.01.06.2012', 'Balekambang'),
('32.01.06.2013', 'Sukajaya'),
('32.01.06.2014', 'Sukagalih'),
('32.01.07', 'Cileungsi'),
('32.01.07.2001', 'Pasirangin'),
('32.01.07.2002', 'Mekarsari'),
('32.01.07.2003', 'Mampir'),
('32.01.07.2004', 'Dayeuh'),
('32.01.07.2005', 'Gandoang'),
('32.01.07.2006', 'Jatisari'),
('32.01.07.2007', 'Cileungsi Kidul'),
('32.01.07.2008', 'Cipeucang'),
('32.01.07.2009', 'Situsari'),
('32.01.07.2010', 'Cipenjo'),
('32.01.07.2011', 'Limusnunggal'),
('32.01.07.2012', 'Cileungsi'),
('32.01.08', 'Cariu'),
('32.01.08.2001', 'Karyamekar'),
('32.01.08.2002', 'Babakanraden'),
('32.01.08.2003', 'Cikutamahi'),
('32.01.08.2004', 'Kutamekar'),
('32.01.08.2005', 'Cariu'),
('32.01.08.2006', 'Mekarwangi'),
('32.01.08.2007', 'Bantarkuning'),
('32.01.08.2008', 'Sukajadi'),
('32.01.08.2009', 'Tegalpanjang'),
('32.01.08.2010', 'Cibatutiga'),
('32.01.09', 'Sukamakmur'),
('32.01.09.2001', 'Wargajaya'),
('32.01.09.2002', 'Pabuaran'),
('32.01.09.2003', 'Sukadamai'),
('32.01.09.2004', 'Sukawangi'),
('32.01.09.2005', 'Cibadak'),
('32.01.09.2006', 'Sukaresmi'),
('32.01.09.2007', 'Sukamulya'),
('32.01.09.2008', 'Sukaharja'),
('32.01.09.2009', 'Sirnajaya'),
('32.01.09.2010', 'Sukamakmur'),
('32.01.10', 'Parung'),
('32.01.10.2001', 'Parung'),
('32.01.10.2002', 'Iwul'),
('32.01.10.2003', 'Bojongsempu'),
('32.01.10.2004', 'Waru'),
('32.01.10.2005', 'Cogreg'),
('32.01.10.2006', 'Pamegarsari'),
('32.01.10.2007', 'Warujaya'),
('32.01.10.2008', 'Bojongindah'),
('32.01.10.2009', 'Jabonmekar'),
('32.01.11', 'Gunung Sindur'),
('32.01.11.2001', 'Cidokom'),
('32.01.11.2002', 'Padurenan'),
('32.01.11.2003', 'Pengasinan'),
('32.01.11.2004', 'Curug'),
('32.01.11.2005', 'Gunungsindur'),
('32.01.11.2006', 'Jampang'),
('32.01.11.2007', 'Cibadung'),
('32.01.11.2008', 'Cibinong'),
('32.01.11.2009', 'Rawakalong'),
('32.01.11.2010', 'Pabuaran'),
('32.01.12', 'Kemang'),
('32.01.12.1006', 'Atang Senjaya'),
('32.01.12.2001', 'Bojong'),
('32.01.12.2002', 'Parakanjaya'),
('32.01.12.2003', 'Kemang'),
('32.01.12.2004', 'Pabuaran'),
('32.01.12.2005', 'Semplak Barat'),
('32.01.12.2007', 'Jampang'),
('32.01.12.2008', 'Pondok Udik'),
('32.01.12.2009', 'Tegal'),
('32.01.13', 'Bojong Gede'),
('32.01.13.1007', 'Pabuaran'),
('32.01.13.2001', 'Bojongbaru'),
('32.01.13.2002', 'Cimanggis'),
('32.01.13.2003', 'Susukan'),
('32.01.13.2004', 'Ragajaya'),
('32.01.13.2005', 'Kedungwaringin'),
('32.01.13.2006', 'Waringinjaya'),
('32.01.13.2008', 'Rawapanjang'),
('32.01.13.2009', 'Bojonggede'),
('32.01.14', 'Leuwiliang'),
('32.01.14.2001', 'Leuwiliang'),
('32.01.14.2002', 'Purasari'),
('32.01.14.2003', 'Karyasari'),
('32.01.14.2004', 'Pabangbon'),
('32.01.14.2005', 'Karacak'),
('32.01.14.2006', 'Barengkok'),
('32.01.14.2007', 'Leuwimekar'),
('32.01.14.2008', 'Puraseda'),
('32.01.14.2009', 'Cibeber I'),
('32.01.14.2010', 'Cibeber II'),
('32.01.14.2011', 'Karehkel'),
('32.01.15', 'Ciampea'),
('32.01.15.2001', 'Ciampea'),
('32.01.15.2002', 'Cinangka'),
('32.01.15.2003', 'Cihideungudik'),
('32.01.15.2004', 'Bojongjengkol'),
('32.01.15.2005', 'Tegalwaru'),
('32.01.15.2006', 'Cibuntu'),
('32.01.15.2007', 'Cicadas'),
('32.01.15.2008', 'Cibadak'),
('32.01.15.2009', 'Bojongrangkas'),
('32.01.15.2010', 'Cihideunghilir'),
('32.01.15.2011', 'Cibanteng'),
('32.01.15.2012', 'Benteng'),
('32.01.15.2013', 'Ciampea Udik'),
('32.01.16', 'Cibungbulang'),
('32.01.16.2001', 'Situ Udik'),
('32.01.16.2002', 'Situ Ilir'),
('32.01.16.2003', 'Cemplang'),
('32.01.16.2004', 'Cibatok I'),
('32.01.16.2005', 'Ciaruteun Udik'),
('32.01.16.2006', 'Leuweungkolot'),
('32.01.16.2007', 'Cimanggu I'),
('32.01.16.2008', 'Cimanggu II'),
('32.01.16.2009', 'Dukuh'),
('32.01.16.2010', 'Cijujung'),
('32.01.16.2011', 'Ciaruteun Ilir'),
('32.01.16.2012', 'Cibatok II'),
('32.01.16.2013', 'Sukamaju'),
('32.01.16.2014', 'Galuga'),
('32.01.16.2015', 'Girimulya'),
('32.01.17', 'Pamijahan'),
('32.01.17.2001', 'Purwabakti'),
('32.01.17.2002', 'Cibunian'),
('32.01.17.2003', 'Cibitungwetan'),
('32.01.17.2004', 'Gunungmenyan'),
('32.01.17.2005', 'Gunungbunder II'),
('32.01.17.2006', 'Pasarean'),
('32.01.17.2007', 'Cimayang'),
('32.01.17.2008', 'Pamijahan'),
('32.01.17.2009', 'Cibening'),
('32.01.17.2010', 'Gunungbunder I'),
('32.01.17.2011', 'Cibitung Kulon'),
('32.01.17.2012', 'Gunung Picung'),
('32.01.17.2013', 'Ciasihan'),
('32.01.17.2014', 'Gunungsari'),
('32.01.17.2015', 'Ciasmara'),
('32.01.18', 'Rumpin'),
('32.01.18.2001', 'Rumpin'),
('32.01.18.2002', 'Leuwibatu'),
('32.01.18.2003', 'Cidokom'),
('32.01.18.2004', 'Gobang'),
('32.01.18.2005', 'Cibodas'),
('32.01.18.2006', 'Rabak'),
('32.01.18.2007', 'Kampungsawah'),
('32.01.18.2008', 'Cipinang'),
('32.01.18.2009', 'Sukasari'),
('32.01.18.2010', 'Tamansari'),
('32.01.18.2011', 'Kertajaya'),
('32.01.18.2012', 'Sukamulya'),
('32.01.18.2013', 'Mekarsari'),
('32.01.18.2014', 'Mekarjaya'),
('32.01.19', 'Jasinga'),
('32.01.19.2001', 'Curug'),
('32.01.19.2002', 'Pangradin'),
('32.01.19.2003', 'Kalongsawah'),
('32.01.19.2004', 'Sipak'),
('32.01.19.2005', 'Jasinga'),
('32.01.19.2006', 'Koleang'),
('32.01.19.2007', 'Cikopomayak'),
('32.01.19.2008', 'Setu'),
('32.01.19.2009', 'Barengkok'),
('32.01.19.2010', 'Bagoang'),
('32.01.19.2011', 'Pangaur'),
('32.01.19.2012', 'Pamagersari'),
('32.01.19.2013', 'Jugala Jaya'),
('32.01.19.2014', 'Tegalwangi'),
('32.01.19.2015', 'Neglasari'),
('32.01.19.2016', 'Wirajaya'),
('32.01.20', 'Parung Panjang'),
('32.01.20.2001', 'Jagabaya'),
('32.01.20.2002', 'Gorowong'),
('32.01.20.2003', 'Dago'),
('32.01.20.2004', 'Pingku'),
('32.01.20.2005', 'Cikuda'),
('32.01.20.2006', 'Parungpanjang'),
('32.01.20.2007', 'Lumpang'),
('32.01.20.2008', 'Cibunar'),
('32.01.20.2009', 'Jagabita'),
('32.01.20.2010', 'Gintungcilejet'),
('32.01.20.2011', 'Kabasiran'),
('32.01.21', 'Nanggung'),
('32.01.21.2001', 'Malasari'),
('32.01.21.2002', 'Curugbitung'),
('32.01.21.2003', 'Cisarua'),
('32.01.21.2004', 'Bantarkaret'),
('32.01.21.2005', 'Hambaro'),
('32.01.21.2006', 'Kalongliud'),
('32.01.21.2007', 'Nanggung'),
('32.01.21.2008', 'Parakanmuncang'),
('32.01.21.2009', 'Pangkaljaya'),
('32.01.21.2010', 'Sukaluyu'),
('32.01.21.2011', 'Batu Tulis'),
('32.01.22', 'Cigudeg'),
('32.01.22.2001', 'Sukamaju'),
('32.01.22.2002', 'Cigudeg'),
('32.01.22.2003', 'Bunar'),
('32.01.22.2004', 'Banyuresmi'),
('32.01.22.2005', 'Cintamanik'),
('32.01.22.2006', 'Argapura'),
('32.01.22.2007', 'Bangunjaya'),
('32.01.22.2008', 'Rengasjajar'),
('32.01.22.2009', 'Batujajar'),
('32.01.22.2010', 'Wargajaya'),
('32.01.22.2011', 'Sukaraksa'),
('32.01.22.2012', 'Banyuwangi'),
('32.01.22.2013', 'Banyuasih'),
('32.01.22.2014', 'Mekarjaya'),
('32.01.22.2015', 'Tegallega'),
('32.01.23', 'Tenjo'),
('32.01.23.2001', 'Tapos'),
('32.01.23.2002', 'Ciomas'),
('32.01.23.2003', 'Batok'),
('32.01.23.2004', 'Babakan'),
('32.01.23.2005', 'Tenjo'),
('32.01.23.2006', 'Cilaku'),
('32.01.23.2007', 'Singabraja'),
('32.01.23.2008', 'Singabangsa'),
('32.01.23.2009', 'Bojong'),
('32.01.24', 'Ciawi'),
('32.01.24.2001', 'Cileungsi'),
('32.01.24.2002', 'Citapen'),
('32.01.24.2003', 'Cibedug'),
('32.01.24.2004', 'Jambuluwuk'),
('32.01.24.2005', 'Banjarsari'),
('32.01.24.2006', 'Teluk Pinang'),
('32.01.24.2007', 'Banjar Waru'),
('32.01.24.2008', 'Bendungan'),
('32.01.24.2009', 'Pandan Sari'),
('32.01.24.2010', 'Bojong Murni'),
('32.01.24.2011', 'Banjar Wangi'),
('32.01.24.2012', 'Ciawi'),
('32.01.24.2013', 'Bitungsari'),
('32.01.25', 'Cisarua'),
('32.01.25.1010', 'Cisarua'),
('32.01.25.2001', 'Batulayang'),
('32.01.25.2002', 'Jogjogan'),
('32.01.25.2003', 'Cibeureum'),
('32.01.25.2004', 'Cilember'),
('32.01.25.2005', 'Citeko'),
('32.01.25.2006', 'Tugu Selatan'),
('32.01.25.2007', 'Leuwimalang'),
('32.01.25.2008', 'Kopo'),
('32.01.25.2009', 'Tugu Utara'),
('32.01.26', 'Megamendung'),
('32.01.26.2001', 'Sukamaju'),
('32.01.26.2002', 'Kuta'),
('32.01.26.2003', 'Gadog'),
('32.01.26.2004', 'Sukakarya'),
('32.01.26.2005', 'Megamendung'),
('32.01.26.2006', 'Cipayung Datar'),
('32.01.26.2007', 'Sukamanah'),
('32.01.26.2008', 'Sukagalih'),
('32.01.26.2009', 'Cipayung Girang'),
('32.01.26.2010', 'Sukamahi'),
('32.01.26.2011', 'Sukaresmi'),
('32.01.26.2012', 'Pasir Angin'),
('32.01.27', 'Caringin'),
('32.01.27.2001', 'Pasir Muncang'),
('32.01.27.2002', 'Cimande Hilir'),
('32.01.27.2003', 'Ciderum'),
('32.01.27.2004', 'Caringin'),
('32.01.27.2005', 'Ciherang Pondok'),
('32.01.27.2006', 'Cinagara'),
('32.01.27.2007', 'Cimande'),
('32.01.27.2008', 'Pancawati'),
('32.01.27.2009', 'Muara Jaya'),
('32.01.27.2010', 'Basir Buncir'),
('32.01.27.2011', 'Lemah Duhur'),
('32.01.27.2012', 'Tangkil'),
('32.01.28', 'Cijeruk'),
('32.01.28.2001', 'Cijeruk'),
('32.01.28.2002', 'Cipelang'),
('32.01.28.2003', 'Warung Menteng'),
('32.01.28.2004', 'Tajur Halang'),
('32.01.28.2005', 'Cipicung'),
('32.01.28.2006', 'Cibalung'),
('32.01.28.2007', 'Sukaharja'),
('32.01.28.2008', 'Palasari'),
('32.01.28.2009', 'Tanjungsari'),
('32.01.29', 'Ciomas'),
('32.01.29.1003', 'Padasuka'),
('32.01.29.2001', 'Mekarjaya'),
('32.01.29.2002', 'Sukaharja'),
('32.01.29.2004', 'Parakan'),
('32.01.29.2005', 'Ciomas'),
('32.01.29.2006', 'Pagelaran'),
('32.01.29.2007', 'Sukamakmur'),
('32.01.29.2008', 'Ciapus'),
('32.01.29.2009', 'Kota Batu'),
('32.01.29.2010', 'Laladon'),
('32.01.29.2011', 'Ciomas Rahayu'),
('32.01.30', 'Dramaga'),
('32.01.30.2001', 'Sukadamai'),
('32.01.30.2002', 'Ciherang'),
('32.01.30.2003', 'Sinarsari'),
('32.01.30.2004', 'Sukawening'),
('32.01.30.2005', 'Petir'),
('32.01.30.2006', 'Purwasari'),
('32.01.30.2007', 'Cikarawang'),
('32.01.30.2008', 'Babakan'),
('32.01.30.2009', 'Dramaga'),
('32.01.30.2010', 'Neglasari'),
('32.01.31', 'Tamansari'),
('32.01.31.2001', 'Sukamantri'),
('32.01.31.2002', 'Sirnagalih'),
('32.01.31.2003', 'Pasireurih'),
('32.01.31.2004', 'Tamansari'),
('32.01.31.2005', 'Sukaluyu'),
('32.01.31.2006', 'Sukaresmi'),
('32.01.31.2007', 'Sukajaya'),
('32.01.31.2008', 'Sukajadi'),
('32.01.32', 'Klapanunggal'),
('32.01.32.2001', 'Klapanunggal'),
('32.01.32.2002', 'Bojong'),
('32.01.32.2003', 'Nambo'),
('32.01.32.2004', 'Lulut'),
('32.01.32.2005', 'Cikahuripan'),
('32.01.32.2006', 'Kembang Kuning'),
('32.01.32.2007', 'Bantar Jati'),
('32.01.32.2008', 'Leuwikaret'),
('32.01.32.2009', 'Ligarmukti'),
('32.01.33', 'Ciseeng'),
('32.01.33.2001', 'Putat Nutug'),
('32.01.33.2002', 'Ciseeng'),
('32.01.33.2003', 'Parigi Mekar'),
('32.01.33.2004', 'Cibentang'),
('32.01.33.2005', 'Cibeuteung Udik'),
('32.01.33.2006', 'Karihkil'),
('32.01.33.2007', 'Babakan'),
('32.01.33.2008', 'Cihoe'),
('32.01.33.2009', 'Cibeuteung Muara'),
('32.01.33.2010', 'Kuripan'),
('32.01.34', 'Ranca Bungur'),
('32.01.34.2001', 'Bantarjaya'),
('32.01.34.2002', 'Bantarsari'),
('32.01.34.2003', 'Pasirgaok'),
('32.01.34.2004', 'Rancabungur'),
('32.01.34.2005', 'Mekarsari'),
('32.01.34.2006', 'Candali'),
('32.01.34.2007', 'Cimulang'),
('32.01.35', 'Sukajaya'),
('32.01.35.2001', 'Cisarua'),
('32.01.35.2002', 'Kiarasari'),
('32.01.35.2003', 'Sukajaya'),
('32.01.35.2004', 'Sipayung'),
('32.01.35.2005', 'Cileuksa'),
('32.01.35.2006', 'Kiarapandak'),
('32.01.35.2007', 'Harkatjaya'),
('32.01.35.2008', 'Sukamulih'),
('32.01.35.2009', 'Pasir Madang'),
('32.01.35.2010', 'Urug'),
('32.01.35.2011', 'Jayaraharja'),
('32.01.36', 'Tanjungsari'),
('32.01.36.2001', 'Tanjungsari'),
('32.01.36.2002', 'Selawangi'),
('32.01.36.2003', 'Tanjungrasa'),
('32.01.36.2004', 'Antajaya'),
('32.01.36.2005', 'Pasir Tanjung'),
('32.01.36.2006', 'Cibadak'),
('32.01.36.2007', 'Sukarasa'),
('32.01.36.2008', 'Sirnasari'),
('32.01.36.2009', 'Buanajaya'),
('32.01.36.2010', 'Sirnarasa'),
('32.01.37', 'Tajurhalang'),
('32.01.37.2001', 'Tajurhalang'),
('32.01.37.2002', 'Citayam'),
('32.01.37.2003', 'Sasak Panjang'),
('32.01.37.2004', 'Nanggerang'),
('32.01.37.2005', 'Sukmajaya'),
('32.01.37.2006', 'Tonjong'),
('32.01.37.2007', 'Kalisuren'),
('32.01.38', 'Cigombong'),
('32.01.38.2001', 'Cigombong'),
('32.01.38.2002', 'Watesjaya'),
('32.01.38.2003', 'Ciburuy'),
('32.01.38.2004', 'Srogol'),
('32.01.38.2005', 'Cisalada'),
('32.01.38.2006', 'Tugujaya'),
('32.01.38.2007', 'Pasirjaya'),
('32.01.38.2008', 'Ciburayut'),
('32.01.38.2009', 'Ciadeg'),
('32.01.39', 'Leuwisadeng'),
('32.01.39.2001', 'Leuwisadeng'),
('32.01.39.2002', 'Babakan Sadeng'),
('32.01.39.2003', 'Sadeng Kolot'),
('32.01.39.2004', 'Wangunjaya'),
('32.01.39.2005', 'Kalong I'),
('32.01.39.2006', 'Kalong II'),
('32.01.39.2007', 'Sadeng'),
('32.01.39.2008', 'Sibanteng'),
('32.01.40', 'Tenjolaya'),
('32.01.40.2001', 'Tapos I'),
('32.01.40.2002', 'Tapos II'),
('32.01.40.2003', 'Cibitung Tengah'),
('32.01.40.2004', 'Situdaun'),
('32.01.40.2005', 'Cinangneng'),
('32.01.40.2006', 'Gunung Malang'),
('32.01.40.2007', 'Gunung Mulya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`anggota_nik`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
