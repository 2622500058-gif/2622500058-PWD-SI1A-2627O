-- Ekspor struktur dan data: db_pwd_2622500058
-- Pemrograman Web Dasar (IS205) - Pertemuan 10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `db_pwd_2622500058` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_pwd_2622500058`;

-- --------------------------------------------------------
-- Struktur tabel `tbl_kontak_2622500058`
-- --------------------------------------------------------

CREATE TABLE `tbl_kontak_2622500058` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `semester` tinyint NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_pesan` varchar(20) NOT NULL,
  `minat` varchar(50) NOT NULL,
  `prodi` varchar(2) NOT NULL,
  `pesan` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------
-- Dumping data untuk tabel `tbl_kontak_2622500058`
-- --------------------------------------------------------

INSERT INTO `tbl_kontak_2622500058` (`id`, `nama`, `email`, `semester`, `tanggal`, `jenis_pesan`, `minat`, `prodi`, `pesan`) VALUES
(1, 'Yohanes Setiawan Japriadi', 'ysetiawanj@atmaluhur.ac.id', 2, '2026-11-15', 'saran', 'HTML, CSS', 'TI', 'rajin-rajin lah belajar, jangan sampai menyesal kemudian atau ngeribetin dosen'),
(2, 'Andi', 'andi@example.com', 2, '2026-11-15', 'pertanyaan', 'HTML, CSS', 'TI', 'Saya ingin belajar pemrograman web.');

-- --------------------------------------------------------
-- Indeks dan AUTO_INCREMENT
-- --------------------------------------------------------

ALTER TABLE `tbl_kontak_2622500058`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_kontak_2622500058`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
