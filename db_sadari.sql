-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2022 pada 13.10
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sadari`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_keluhan`
--

CREATE TABLE `daftar_keluhan` (
  `id` int(10) UNSIGNED NOT NULL,
  `keluhan` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `daftar_keluhan`
--

INSERT INTO `daftar_keluhan` (`id`, `keluhan`, `created_at`, `updated_at`) VALUES
(1, 'Benjolan dipayudara/ketiak', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(2, 'Keluar cairan dari puting', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(3, 'Penarikan kulit pada payudara', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(4, 'Kedua payudara simetris (jarak kedua puting susu ke garis tengah tubuh sama kiri dan kanan)', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(5, 'Perubahan warna kulit payudara', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(6, 'Cekukan atau kulit seperti kulit jeruk di payudara', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(7, 'Tidak Ada', '2022-12-13 17:09:23', '2022-12-13 17:09:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `laporans`
--

CREATE TABLE `laporans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hasil_quisioner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hasil_keluhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `laporans`
--

INSERT INTO `laporans` (`id`, `nik`, `nama`, `hasil_quisioner`, `hasil_keluhan`, `status`, `created_at`, `updated_at`) VALUES
(1, '3212134456780009', 'laravel', '20', ' 7', 'belum ditangani', '2022-12-13 17:12:14', '2022-12-13 17:12:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_02_210654_create_permission_tables', 1),
(6, '2022_12_03_092359_create_result_quisioners_table', 1),
(7, '2022_12_08_035302_create_puskesmas_table', 1),
(8, '2022_12_08_104111_create_quisioners_table', 1),
(9, '2022_12_08_155726_create_daftar_keluhans_table', 1),
(10, '2022_12_09_013243_create_result_keluhans_table', 1),
(11, '2022_12_11_031208_create_puskesmas_details_table', 1),
(12, '2022_12_11_121536_create_laporans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'read_puskesmas', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(2, 'create_puskesmas', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(3, 'update_puskesmas', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(4, 'delete_puskesmas', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(5, 'read_user', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(6, 'create_user', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(7, 'update_user', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(8, 'delete_user', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `puskesmas`
--

CREATE TABLE `puskesmas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `puskesmas`
--

INSERT INTO `puskesmas` (`id`, `nama`, `kecamatan`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Puskesmas Sukagumiwang', 'sukagumiwang', 'sukagumiwang', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(2, 'Puskesmas Sidamulya', 'sidamulya', 'll raya krasak sidamulya kecamatan bongas kabupaten indramayu', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(3, 'Puskesmas Anjatan', 'anjatan', 'jl raya anjatan no 3 desa anjatan utara kecamatan anjatan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(4, 'Puskesmas Balongan', 'balongan', 'jalan raya balongan No 20 Kec.balongan kab.indramayu', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(5, 'Puskesmas kertawinangu', 'kandanghaur', 'desa eretan kulon kandanghaur', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(6, 'Puskesmas Patrol', 'patrol', 'jl lapang bola patrol puskesmas patrol kec patrol kabupaten indramayu', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(7, 'Puskesmas Tugu', 'lelea', 'jl raya tugu lelea', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(8, 'Puskesmas Kandanghaur', 'kandanghaur', 'ds curug rt.04/07.kandanghaur', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(9, 'Puskesmas Bongas', 'bongas', 'desa margamulya kec bongas kab indramayu', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(10, 'Puskesmas Drunten Wetan', 'gabuswetan', 'drunten wetan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(11, 'Puskesmas Temiyang', 'kroya', 'desa temiyangsari kec.kroya', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(12, 'Puskesmas Tambi', 'sliyeg', 'jln raya karangampel jatibarang desa tambi lor', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(13, 'Puskesmas Jatisawit', 'jatibarang', 'jln. Raya Jatisawit Lor Kec. Jatibarang', '2022-12-13 17:09:23', '2022-12-13 17:09:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `puskesmas_details`
--

CREATE TABLE `puskesmas_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `puskesmas_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `puskesmas_details`
--

INSERT INTO `puskesmas_details` (`id`, `status`, `user_id`, `puskesmas_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 1, '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(2, 'admin', 2, 9, '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(3, 'pasien', 3, 1, '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(4, 'pasien', 5, 1, '2022-12-13 17:11:23', '2022-12-13 17:11:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quisioners`
--

CREATE TABLE `quisioners` (
  `id` int(10) UNSIGNED NOT NULL,
  `pertanyaan` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opsi1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opsi2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opsi3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opsi4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `quisioners`
--

INSERT INTO `quisioners` (`id`, `pertanyaan`, `opsi1`, `opsi2`, `opsi3`, `opsi4`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'Menurut saudari, apakah yang dimaksud dengan penyakit kanker payudara itu?', 'penyakit tidak menular yang menyerang sel-sel payudara dan sekitar kelenjar limfa', 'penyakit menular yang yang menyerang sel-sel payudara hanya pada perempuan', 'penyakit keturunan yang yang menyerang sel-sel payudara dan sekitar kelenjar limfa', 'penyakit menular yang yang menyerang sel-sel payudara dan sekitar kelenjar limfa', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(2, 'Menurut saudari, faktor apakah yang paling memengaruhi seseorang terkena kanker payudara?', 'ditularkan oleh orang lain', 'bakteri', 'gaya hidup (makanan, pola hidup)', 'keturunan', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(3, 'Menurut saudari, apakah yang dimaksud dengan SADARI ?', 'suatu metode pengobatan kanker payudara', 'pemeriksaan payudara oleh tenaga medis', 'salah satu upaya deteksi dini kanker payudara yang dilakukan setelah masa haid secara rutin', 'operasi penyembuhan kanker payudara', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(4, 'Menurut saudari, kapankah seorang wanita penting untuk melakukan SADARI?', 'jika sudah pernah menderita kanker payudara', 'menopause', 'sebelum menderita kanker payudara', 'setelah mempunyai anak', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(5, 'Menurut saudari, apakah untuk melakukan SADARI mengeluarkan biaya?', 'semua salah', 'tidak mengeluarkan biaya sama sekalitidak mengeluarkan biaya sama sekali', 'biayanya murah', 'butuh biaya besar', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(6, 'Di bawah ini merupakan tahapan dalam melakukan pemeriksaan payudara sendiri, yaitu?', 'Meraba payudara', 'Memperhatikan bentuk dan ukuran payudara', 'Menekan putting susu', 'semua benar', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(7, 'Di bawah ini adalah bentuk payudara yang tidak normal, kecuali?', 'Kulit payudara tampak seperti kulit jeruk', 'Permukaan kulit payudara mulus tanpa kerutan', 'Payudara membesar dan mengeras', 'Putting payudara tertarik ke dalam', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(8, 'Di bawah ini merupakan kelainan yang tampak saat melakukan pemeriksaan payudara sendiri di sekitar putting susu?', 'Cekungan atau lipatan pada putting susu', 'Semua benar', 'Putting susu tertarik ke dalam', 'Warna kulit putting susu kebiruan', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(9, 'Kelainan yang dapat ditemukan saat melakukan perabaan dengan jari-jari tangan pada payudara adalah?', 'Kulit payudara mengkerut', 'Ada benjolan yang terasa pada payudara', 'semua benar', 'puting payudara tertarik ke dalam', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(10, 'Waktu yang paling baik untuk melakukan pemeriksaan payudara sendiri adalah?', 'Sesudah menstruasi', 'Saat menstruasi', 'Semua benar', 'Sebelum menstruasi', 'pertanyaan pengetahuan', '2022-12-13 17:09:23', '2022-12-13 17:09:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `result_keluhan`
--

CREATE TABLE `result_keluhan` (
  `id` int(10) UNSIGNED NOT NULL,
  `keluhan` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('belum','tertangani') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `result_keluhan`
--

INSERT INTO `result_keluhan` (`id`, `keluhan`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '7', 'belum', 5, '2022-12-13 17:12:14', '2022-12-13 17:12:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `result_quisioner`
--

CREATE TABLE `result_quisioner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hasil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `result_quisioner`
--

INSERT INTO `result_quisioner` (`id`, `hasil`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '20', 5, '2022-12-13 17:12:14', '2022-12-13 17:12:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(2, 'user', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(3, 'superadmin', 'web', '2022-12-13 17:09:23', '2022-12-13 17:09:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nik`, `name`, `no_hp`, `tanggal_lahir`, `pendidikan`, `kecamatan`, `alamat`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin Role', NULL, NULL, NULL, 'sukagumiwang', NULL, 'admin@sadari.test', NULL, '$2y$10$0Tr7oS2LUc50VzJW4dh.h.aXfasz.Mg4NRqU0NaFyFqhqsHvZRyAW', NULL, '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(2, NULL, 'Admin Bongas', NULL, NULL, NULL, 'bongas', NULL, 'bongas@sadari.test', NULL, '$2y$10$42fp/xmXUMWdKBXhmR1.W.wV63OoXOyucLKnKalihCOt246L/.JlG', NULL, '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(3, '12345678', 'User Role', '0895333448202', NULL, 'S1', 'sukagumiwang', 'Jl Suryanegara no 1', 'user@sadari.test', NULL, '$2y$10$Y9EplknKrOSm2sAXezgarOukTDdF/drirddw5pUrBpQbnqmdLjcaS', NULL, '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(4, NULL, 'Super Admin Role', NULL, NULL, NULL, NULL, NULL, 'superadmin@sadari.test', NULL, '$2y$10$jE8JyX7OyCC2ecHYpWB4XeYVJcA1u0OhNnOVVFOWKc7WdafXDPCGK', NULL, '2022-12-13 17:09:23', '2022-12-13 17:09:23'),
(5, '3212134456780009', 'laravel', '08911232446', '2001-07-01', 'sma/smk/sederajat', 'sukagumiwang', 'blok 1', 'laravel@polindra', NULL, '$2y$10$kBhcRwfDIvz4UrKrDj3MjeFZDlQq5F5v6kyZxmsBDLvHpvUhow95y', NULL, '2022-12-13 17:11:23', '2022-12-13 17:11:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_keluhan`
--
ALTER TABLE `daftar_keluhan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `puskesmas`
--
ALTER TABLE `puskesmas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `puskesmas_details`
--
ALTER TABLE `puskesmas_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `quisioners`
--
ALTER TABLE `quisioners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `result_keluhan`
--
ALTER TABLE `result_keluhan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `result_quisioner`
--
ALTER TABLE `result_quisioner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_keluhan`
--
ALTER TABLE `daftar_keluhan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `puskesmas`
--
ALTER TABLE `puskesmas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `puskesmas_details`
--
ALTER TABLE `puskesmas_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `quisioners`
--
ALTER TABLE `quisioners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `result_keluhan`
--
ALTER TABLE `result_keluhan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `result_quisioner`
--
ALTER TABLE `result_quisioner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
