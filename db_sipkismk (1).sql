-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Mar 2022 pada 13.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sipkismk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bimbingan`
--

CREATE TABLE `tbl_bimbingan` (
  `kdbimbingan` int(11) NOT NULL,
  `kdpenempatan` int(11) NOT NULL,
  `nip` char(21) NOT NULL,
  `nis` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  `file` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bimbingan`
--

INSERT INTO `tbl_bimbingan` (`kdbimbingan`, `kdpenempatan`, `nip`, `nis`, `tanggal`, `judul`, `catatan`, `file`) VALUES
(1, 1, '123', 11, '2017-11-05', 'wawawawaw', 'jfndslf ljs d fd d  ', ''),
(3, 3, '123', 11, '2021-11-16', '1', '1', 'lampiran/bimbingan/AMC_ALZHAMC_logo_(1).pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_file`
--

CREATE TABLE `tbl_file` (
  `kdfile` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `share` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `nip` char(21) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_industri`
--

CREATE TABLE `tbl_industri` (
  `kdind` int(11) NOT NULL,
  `nama_industri` varchar(50) NOT NULL,
  `bidang_kerja` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat_industri` text NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `website` text NOT NULL,
  `email` text NOT NULL,
  `syarat` text NOT NULL,
  `kuota` int(20) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_industri`
--

INSERT INTO `tbl_industri` (`kdind`, `nama_industri`, `bidang_kerja`, `deskripsi`, `alamat_industri`, `wilayah`, `telepon`, `website`, `email`, `syarat`, `kuota`, `foto`) VALUES
(2, 'PT. GLOBAL EDUTEK SOLUSINDO (GETS)', 'Programmer', 'Digital Marketing &amp; Software House Company', 'Komp. Perkantoran Villa Pamulang Blok CH 8 No. 35 RT 008 RW 17 Kel. Bakti Jaya, Kec. Setu Tangerang Selatan 15315', 'Tangerang Selatan', '085778863496', 'gets.co.id', 'halo@gets.co.id', '- Surat keterangan PKL\r\n- Attitude dan sopan santun\r\n- Rajin sholat', 4, 'LOGO_GETS.png'),
(3, 'PERFECTO LUXURY DESIGN INTERIOR &amp; CONTRACTOR', 'DESAIN', 'JASA DESAIN INTERIOR DAN CONTRACTOR', 'Ruku Savon', 'Jakarta Timur', '085155318411', 'http://perfectoluxury.com/', 'perfectoluxurydesign@gmail.com', '- ', 2, 'LG_PL+TEXT_White-min.jpg'),
(4, 'Gerbang Timur Express Cargo', 'Jasa Ekspedisi', 'layanan ekspedisi pengiriman barang proses cepat', 'Jakarta Pusat', 'Jakarta', '085155318411', '-gtecargo.co.id', 'gtecargo@moakt.co', 'LUNAS', 5, 'logo_kecil.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_info`
--

CREATE TABLE `tbl_info` (
  `kdinfo` int(11) NOT NULL,
  `kdlabel` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL,
  `penulis` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_info`
--

INSERT INTO `tbl_info` (`kdinfo`, `kdlabel`, `tanggal`, `judul`, `deskripsi`, `gambar`, `penulis`) VALUES
(6, 1, '2022-01-11', 'AWAL PENDAFTARAN PRAKERIN 2022', '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Why do we use it?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div>', 'foto/info/logo.jpg', 'RVD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kdjurusan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`kdjurusan`, `nama`) VALUES
(1, 'TI'),
(2, 'Rekayasa Perangkat Lunak'),
(3, 'Pemasaran'),
(4, 'Akuntansi'),
(5, 'Administrasi Perkantoran'),
(6, 'Perbankan Syariah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kdkelas` int(11) NOT NULL,
  `kdjurusan` char(5) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kdkelas`, `kdjurusan`, `nama`) VALUES
(1, '1', '1 B'),
(2, '2', 'RPL1'),
(3, '2', 'RPL2'),
(4, '4', 'AK1'),
(5, '4', 'AK2'),
(6, '5', 'AP1'),
(7, '5', 'AP2'),
(8, '3', 'PM1'),
(9, '3', 'PM2'),
(10, '6', 'PS1'),
(11, '6', 'PS2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_label`
--

CREATE TABLE `tbl_label` (
  `kdlabel` int(11) NOT NULL,
  `nama_label` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_label`
--

INSERT INTO `tbl_label` (`kdlabel`, `nama_label`, `keterangan`) VALUES
(1, 'Pengumuman', '-'),
(2, 'Tips', '-'),
(3, 'Industri', '-'),
(4, 'Sekolah', '-'),
(5, 'Lain-lain', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `kdnilai` int(11) NOT NULL,
  `kdpenempatan` int(11) NOT NULL,
  `keterangan` enum('Teknis','Non-Teknis','Laporan') NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`kdnilai`, `kdpenempatan`, `keterangan`, `nilai`) VALUES
(1, 1, 'Teknis', 90),
(3, 3, 'Teknis', 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pemb`
--

CREATE TABLE `tbl_pemb` (
  `kdpemb` int(11) NOT NULL,
  `kdjurusan` char(5) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` text NOT NULL,
  `nip` char(21) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `wilayah` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pemb`
--

INSERT INTO `tbl_pemb` (`kdpemb`, `kdjurusan`, `username`, `password`, `nip`, `nama_lengkap`, `wilayah`) VALUES
(3, '2', 'Jabar', '44b8da1e77d0efb36c368e2be008b767', '222425', 'Jabar', 'Tangerang Selatan'),
(4, '4', 'Suprih', 'b6faa97071b1b43709515ba37e37df32', '222426', 'Suprih Suramad', 'Tangerang Selatan'),
(5, '6', 'Imam', '9fc6b0168835e3d4591122b5498d3ef3', '222427', 'Imam Saefulloh', 'Tangerang Selatan'),
(6, '3', 'Tarno', '936bcbac3ffcde539ee01d0362661063', '222428', 'Tarno', 'Tangerang Selatan'),
(7, '5', 'Ayrin', '5ef22a8843d9760dafb0124506965f19', '222429', 'Ayrin Rizzky Amalia', 'Tangerang Selatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penempatan`
--

CREATE TABLE `tbl_penempatan` (
  `kdpenempatan` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `kdpemb` int(11) NOT NULL,
  `kdind` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `tahun` year(4) NOT NULL,
  `status` enum('-','proses','ditolak','diterima') NOT NULL,
  `surat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penempatan`
--

INSERT INTO `tbl_penempatan` (`kdpenempatan`, `nis`, `kdpemb`, `kdind`, `tanggal`, `wilayah`, `tahun`, `status`, `surat`) VALUES
(5, 12345, 3, 2, '2022-02-26', 'Tangerang Selatan', 2022, 'proses', 'SURAT_PERMOHONAN_PRAKERIN.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` int(11) NOT NULL,
  `kdkelas` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `telp` varchar(14) NOT NULL,
  `foto` text NOT NULL,
  `password` text NOT NULL,
  `kdpemb` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `kdkelas`, `nama_lengkap`, `telp`, `foto`, `password`, `kdpemb`) VALUES
(12345, 2, 'Iqbal Saputra', '085155318411', 'icon-siswa-sman-1-teras.png', '827ccb0eea8a706c4c34a16891f84e7b', 3),
(1123, 4, 'Rizal Mustofa', '085155318411', 'photo_2021-12-22_22-15-39.jpg', '2cfd4560539f887a5e420412b370b361', 4),
(1124, 5, 'Ramdani Zidani', '085155318411', 'icon-siswa-sman-1-teras2.png', 'c7635bfd99248a2cdef8249ef7bfbef4', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tolak_penempatan`
--

CREATE TABLE `tbl_tolak_penempatan` (
  `kdtolak` int(11) NOT NULL,
  `kdpenempatan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `alasan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `identitas` varchar(32) NOT NULL,
  `password` text NOT NULL,
  `status` varchar(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `nama_lengkap`, `identitas`, `password`, `status`, `foto`) VALUES
(1, 'admin', 'Rivaldo Galuh Prihandono', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'PT666_LOGO.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bimbingan`
--
ALTER TABLE `tbl_bimbingan`
  ADD PRIMARY KEY (`kdbimbingan`);

--
-- Indeks untuk tabel `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`kdfile`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `tbl_industri`
--
ALTER TABLE `tbl_industri`
  ADD PRIMARY KEY (`kdind`);

--
-- Indeks untuk tabel `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`kdinfo`);

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kdjurusan`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kdkelas`);

--
-- Indeks untuk tabel `tbl_label`
--
ALTER TABLE `tbl_label`
  ADD PRIMARY KEY (`kdlabel`);

--
-- Indeks untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`kdnilai`);

--
-- Indeks untuk tabel `tbl_pemb`
--
ALTER TABLE `tbl_pemb`
  ADD PRIMARY KEY (`kdpemb`);

--
-- Indeks untuk tabel `tbl_penempatan`
--
ALTER TABLE `tbl_penempatan`
  ADD PRIMARY KEY (`kdpenempatan`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `tbl_tolak_penempatan`
--
ALTER TABLE `tbl_tolak_penempatan`
  ADD PRIMARY KEY (`kdtolak`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bimbingan`
--
ALTER TABLE `tbl_bimbingan`
  MODIFY `kdbimbingan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `kdfile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_industri`
--
ALTER TABLE `tbl_industri`
  MODIFY `kdind` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `kdinfo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `kdjurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kdkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_label`
--
ALTER TABLE `tbl_label`
  MODIFY `kdlabel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `kdnilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_pemb`
--
ALTER TABLE `tbl_pemb`
  MODIFY `kdpemb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_penempatan`
--
ALTER TABLE `tbl_penempatan`
  MODIFY `kdpenempatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_tolak_penempatan`
--
ALTER TABLE `tbl_tolak_penempatan`
  MODIFY `kdtolak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
