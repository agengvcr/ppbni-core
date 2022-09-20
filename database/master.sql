-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 02:04 PM
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
  `anggota_id` varchar(200) NOT NULL,
  `anggota_nama` varchar(200) NOT NULL,
  `anggota_alamat` text NOT NULL,
  `anggota_masaberlaku` date NOT NULL,
  `anggota_kategori` varchar(20) NOT NULL,
  `anggota_kecamatan` varchar(100) NOT NULL,
  `anggota_desa` varchar(100) NOT NULL,
  `anggota_jabatan` varchar(150) NOT NULL,
  `anggota_createduserid` int(11) NOT NULL,
  `anggota_createddate` timestamp NULL DEFAULT NULL,
  `anggota_modifieduserid` int(11) DEFAULT NULL,
  `anggota_modifieddate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(2, 'Admin', 'admin@master.com', NULL, '$2y$10$1jI8/Iy7jxlq7YsnkcO4R.2dWxg2xEDMJSG2OUA.GOIT3CM9RKoxy', NULL, '2022-04-02 07:35:35', '2022-04-02 07:35:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`anggota_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
