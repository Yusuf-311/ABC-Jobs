-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Mar 2023 pada 16.29
-- Versi server: 8.0.30
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abcjobsportal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `email`, `password`, `first_name`, `last_name`) VALUES
(1, 'lithanabcportal@gmail.com', 'admin123', 'Gustut', 'Yoghantara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jobs`
--

CREATE TABLE `tb_jobs` (
  `id_job` int NOT NULL,
  `job_level` varchar(200) NOT NULL,
  `job_time` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_description` text NOT NULL,
  `company_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_jobs`
--

INSERT INTO `tb_jobs` (`id_job`, `job_level`, `job_time`, `job_name`, `job_description`, `company_name`) VALUES
(1, 'Senior', 'Full Time', 'Software Developer', 'Software developers design, program, build, deploy and maintain software using many different skills and tools.', 'Google'),
(2, 'Junior', 'Part Time', 'IT Technician', 'An IT technician collaborates with support specialists to analyze and diagnose computer issues.', 'Facebook'),
(3, 'Intern', 'Part Time', 'Web Developer', 'Web developers design the appearance, navigation and content organization of a website.', 'Microsoft'),
(4, 'Senior', 'Full Time', 'IT Security Specialist', 'IT security specialists work in various industries to build and maintain digital protective measures on intellectual property and data that belong to an organization.', 'Google'),
(5, 'Junior', 'Part Time', 'Web Developer', 'Web developers design the appearance, navigation and content organization of a website.', 'Facebook'),
(6, 'Intern', 'Part Time', 'Database Administrator', 'Database administrators employ specialized software to organize and keep track of data.', 'Microsoft');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `email`, `password`, `enabled`) VALUES
(2, 'user2@gmail.com', 'user123', 1),
(3, 'user3@gmail.com', 'user123', 1),
(4, 'user4@gmail.com', 'user123', 1),
(5, 'user5@gmail.com', 'user123', 1),
(6, 'sulivan@email.com', 'password123', 1),
(7, 'emailtest@email.com', 'password123', 1),
(9, 'emailtest123@email.com', 'password', 1),
(15, 'testactivation@email.com', 'password', 0),
(37, 'dusagaqy@ema-sofia.eu', 'password', 1),
(41, 'lukyhoju@ema-sofia.eu', 'password', 1),
(42, 'suly@gmail.com', 'sukabumi', 0),
(43, 'ikan@gmail.com', 'waikamba', 0),
(44, 'ikanikan@gmail.com', '', 0),
(45, 'qiohw9joqkdpk@gmail.com', '12345678', 1),
(46, 'wujong@gmail.com', 'ukias', 1),
(47, 'wujong45@gmail.com', '123456', 0),
(48, 'muhamadyusqeuf@gmail.com', '123455', 0),
(49, 'qcwtyq@gma.com', '12345678', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_profile`
--

CREATE TABLE `tb_user_profile` (
  `id_profile` int NOT NULL,
  `id_user` int NOT NULL,
  `id_job` int DEFAULT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `about` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tb_user_profile`
--

INSERT INTO `tb_user_profile` (`id_profile`, `id_user`, `id_job`, `first_name`, `last_name`, `country`, `city`, `about`) VALUES
(2, 2, 4, 'Dayu', 'Ratih', 'Indonesia', 'Medan', NULL),
(3, 3, 2, 'Ricky', 'Tegar', 'Indonesia', 'Balik Papan', NULL),
(4, 4, 4, 'Yopha', 'Candra', 'Indonesia', 'Jakarta', NULL),
(5, 5, 2, 'Yoga', 'Setiawan', 'Indonesia', 'Aceh', NULL),
(6, 6, 5, 'Kim', 'Margaret', 'Indonesia', 'Jakarta', NULL),
(7, 7, 1, 'Gustut', 'Yoghantara', 'Indonesia', 'Bali', NULL),
(8, 9, 6, 'Test Name', 'Last Name', 'Country', 'City', NULL),
(13, 15, 3, 'alex', 'alex', 'alex', 'alex', NULL),
(35, 37, 1, 'city', 'first', 'last', 'country', NULL),
(38, 41, 3, 'Loky', 'Hujo', 'Indonesia', 'Bali', NULL),
(39, 42, 1, 'Yulis', 'good', 'Indonesia', 'Bali', NULL),
(40, 43, 2, 'ikan', 'duyung', 'Indonesia', 'Bali', NULL),
(41, 44, 2, 'ikan', 'duyung', 'Indonesia', 'Bali', NULL),
(42, 45, 1, 'Bali', 'Yulis', 'duyung', 'Indonesia', NULL),
(43, 46, 2, 'rea', 'reas', 'kuala', 'bali', NULL),
(44, 47, 4, 'rea', 'reas', 'kuala', 'bali', NULL),
(45, 48, 1, 'KIm', 'Taer', 'South korea', 'ui', NULL),
(46, 49, 4, 'gwuqhwhbdbq', 'qgwhjdiqowk', 'qvwghjiqjkw', 'qvwgh9jidpqk', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `tb_jobs`
--
ALTER TABLE `tb_jobs`
  ADD PRIMARY KEY (`id_job`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `tb_user_profile`
--
ALTER TABLE `tb_user_profile`
  ADD PRIMARY KEY (`id_profile`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_job` (`id_job`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_jobs`
--
ALTER TABLE `tb_jobs`
  MODIFY `id_job` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `tb_user_profile`
--
ALTER TABLE `tb_user_profile`
  MODIFY `id_profile` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_user_profile`
--
ALTER TABLE `tb_user_profile`
  ADD CONSTRAINT `tb_user_profile_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_user_profile_ibfk_2` FOREIGN KEY (`id_job`) REFERENCES `tb_jobs` (`id_job`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
