-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Jun 2018 pada 01.11
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `senyumdifabel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `comment` bigint(20) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `timeline_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `company`
--

CREATE TABLE `company` (
  `description` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `company`
--

INSERT INTO `company` (`description`, `user_id`) VALUES
('Perusahaan yang bergerak dibidang ecommerce', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `education`
--

CREATE TABLE `education` (
  `id` bigint(20) NOT NULL,
  `major` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `experience`
--

CREATE TABLE `experience` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(4),
(4),
(4),
(4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `job`
--

CREATE TABLE `job` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) NOT NULL,
  `timeline_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `people`
--

CREATE TABLE `people` (
  `cv` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `people`
--

INSERT INTO `people` (`cv`, `user_id`) VALUES
(NULL, 1),
('cvku', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prev_chat`
--

CREATE TABLE `prev_chat` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) NOT NULL,
  `peoplea` varchar(255) NOT NULL,
  `peopleb` varchar(255) NOT NULL,
  `prev_chat` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prev_group`
--

CREATE TABLE `prev_group` (
  `id_prev` bigint(20) NOT NULL,
  `date` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `prev_chat` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal`
--

CREATE TABLE `proposal` (
  `id` bigint(20) NOT NULL,
  `status` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `people_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `skill`
--

CREATE TABLE `skill` (
  `id` bigint(20) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `timeline`
--

CREATE TABLE `timeline` (
  `timeline_id` bigint(20) NOT NULL,
  `people_id` bigint(20) NOT NULL,
  `timeline_date` varchar(255) NOT NULL,
  `timeline_description` varchar(255) NOT NULL,
  `timeline_photo` varchar(255) DEFAULT NULL,
  `timeline_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `timeline`
--

INSERT INTO `timeline` (`timeline_id`, `people_id`, `timeline_date`, `timeline_description`, `timeline_photo`, `timeline_time`) VALUES
(1, 1, '21 juni 2018', 'nuhsat@gmail.com', NULL, '17:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_contact` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_address`, `user_contact`, `user_email`, `user_name`, `user_password`, `user_photo`) VALUES
(1, NULL, '', 'nuhsat@gmail.com', 'nuhsat', 'nuhsat123', NULL),
(2, NULL, '081238173', 'bukalapak@gmail.com', 'Buka Lapak', 'bukalapak123', NULL),
(3, NULL, '081238173', 'nuhsat@gmail.com', 'nuhsat', 'nuhsa123', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_friends`
--

CREATE TABLE `user_friends` (
  `user_id` bigint(20) NOT NULL,
  `user_friend` bigint(20) NOT NULL,
  `user_status` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE `user_group` (
  `id` bigint(20) NOT NULL,
  `id_prev` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKppb6r5ywqak642xf0y48u75wf` (`timeline_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2n87ydv5dpa2kh2op4n8oi0mt` (`user_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs7jiw34i89s38cd27tfrx52s6` (`user_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfweksbyh0snpkj5xrqsu55134` (`user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgvd0o14jw7qureyqyydpkv629` (`timeline_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `prev_chat`
--
ALTER TABLE `prev_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prev_group`
--
ALTER TABLE `prev_group`
  ADD PRIMARY KEY (`id_prev`);

--
-- Indexes for table `proposal`
--
ALTER TABLE `proposal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmgyx3dx6icec474s183klg54d` (`company_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6wfyhfqcvahluqnv4ldv1aiac` (`user_id`);

--
-- Indexes for table `timeline`
--
ALTER TABLE `timeline`
  ADD PRIMARY KEY (`timeline_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_friends`
--
ALTER TABLE `user_friends`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`user_id`,`id_prev`),
  ADD KEY `FKe3tvfkvu5ykeaud9wo94ldns6` (`id_prev`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prev_group`
--
ALTER TABLE `prev_group`
  MODIFY `id_prev` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `proposal`
--
ALTER TABLE `proposal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FKppb6r5ywqak642xf0y48u75wf` FOREIGN KEY (`timeline_id`) REFERENCES `timeline` (`timeline_id`);

--
-- Ketidakleluasaan untuk tabel `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `FKdy4v2yb46hefqicjpyj7b7e4s` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `FK2n87ydv5dpa2kh2op4n8oi0mt` FOREIGN KEY (`user_id`) REFERENCES `people` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `FKs7jiw34i89s38cd27tfrx52s6` FOREIGN KEY (`user_id`) REFERENCES `people` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FKfweksbyh0snpkj5xrqsu55134` FOREIGN KEY (`user_id`) REFERENCES `company` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `FKgvd0o14jw7qureyqyydpkv629` FOREIGN KEY (`timeline_id`) REFERENCES `timeline` (`timeline_id`);

--
-- Ketidakleluasaan untuk tabel `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `FKjmd5wsodlk0jyy131ko490tm6` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `proposal`
--
ALTER TABLE `proposal`
  ADD CONSTRAINT `FKmgyx3dx6icec474s183klg54d` FOREIGN KEY (`company_id`) REFERENCES `company` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `skill`
--
ALTER TABLE `skill`
  ADD CONSTRAINT `FK6wfyhfqcvahluqnv4ldv1aiac` FOREIGN KEY (`user_id`) REFERENCES `people` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `user_group`
--
ALTER TABLE `user_group`
  ADD CONSTRAINT `FK6r9y11ajgp6fd0llo0nh3sidp` FOREIGN KEY (`user_id`) REFERENCES `people` (`user_id`),
  ADD CONSTRAINT `FKe3tvfkvu5ykeaud9wo94ldns6` FOREIGN KEY (`id_prev`) REFERENCES `prev_group` (`id_prev`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
