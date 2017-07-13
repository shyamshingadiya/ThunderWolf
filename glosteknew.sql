-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Jul 2017 pada 11.26
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glosteknew`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_brand`
--

CREATE TABLE `glstk8_brand` (
  `brand_id` int(11) NOT NULL,
  `nama_brand` varchar(50) NOT NULL,
  `parent` int(11) NOT NULL,
  `link_brand_seo` varchar(100) NOT NULL,
  `nama_brand_seo` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_kategori`
--

CREATE TABLE `glstk8_kategori` (
  `kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `link` varchar(40) NOT NULL,
  `parent` int(11) NOT NULL,
  `nama_kategori_seo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `glstk8_kategori`
--

INSERT INTO `glstk8_kategori` (`kategori_id`, `nama_kategori`, `link`, `parent`, `nama_kategori_seo`) VALUES
(4, 'jilbab anak', '', 7, 'jilbab-anak'),
(5, 'jilbab muslimah', '', 7, 'jilbab-muslimah'),
(6, 'gamis anak', '', 8, 'gamis-anak'),
(7, 'jilbab', '', 0, 'jilbab'),
(8, 'gamis', '', 0, 'gamis'),
(9, 'mukena', '', 0, 'mukena'),
(10, 'kopiah/ peci', '', 0, 'kopiah-peci'),
(11, 'gamis gaul', '', 8, 'gamis-gaul'),
(12, 'sarung', '', 0, 'sarung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_member`
--

CREATE TABLE `glstk8_member` (
  `member_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `no_telpon` varchar(12) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `glstk8_member`
--

INSERT INTO `glstk8_member` (`member_id`, `nama_lengkap`, `email`, `no_hp`, `no_telpon`, `alamat`) VALUES
(2, 'ucok', 'ucok76@gmail.com', '082121473036', '+021 (23652)', 'jalan budi no 45, bandung'),
(6, 'nuris akbar', 'nuris.akbar@gmail.com', '082121473036', '082121473036', 'bandung'),
(7, 'fdfgdf', 'gdfgdf@dfgd.v', '4534534', '4535', 'rgttrg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_menu`
--

CREATE TABLE `glstk8_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(70) NOT NULL,
  `menu_eng` varchar(200) NOT NULL,
  `link` varchar(150) NOT NULL,
  `parent` int(11) NOT NULL,
  `menu_title_seo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `glstk8_menu`
--

INSERT INTO `glstk8_menu` (`menu_id`, `menu_title`, `menu_eng`, `link`, `parent`, `menu_title_seo`) VALUES
(8, 'Cara Pemesanan', 'how to order', 'http://localhost/glostek/p/cara-pemesanan', 0, 'cara-pemesanan'),
(9, 'Testimoni Pelanggan', 'customer testimonials', 'http://localhost/glostek/p/testimoni-pelanggan', 0, 'testimoni-pelanggan'),
(10, 'konfirmasi Pembayaran', 'payment confirmation', 'http://localhost/glostek/p/konfirmasi-pembayaran', 0, 'konfirmasi-pembayaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_menu_admin`
--

CREATE TABLE `glstk8_menu_admin` (
  `menu_id` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `link` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `glstk8_menu_admin`
--

INSERT INTO `glstk8_menu_admin` (`menu_id`, `nama_menu`, `icon`, `link`, `parent`) VALUES
(1, 'kategori', 'fa-puzzle-piece', 'kategori', 0),
(2, 'product', 'fa-cutlery', 'product', 0),
(3, 'member', 'fa-users', 'member', 0),
(4, 'transaksi', 'fa-credit-card', 'transaksi', 0),
(5, 'menu', 'fa-globe', 'menu', 0),
(6, 'halaman', 'fa-keyboard-o', 'halaman', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_pages`
--

CREATE TABLE `glstk8_pages` (
  `pages_id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(120) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `glstk8_pages`
--

INSERT INTO `glstk8_pages` (`pages_id`, `judul`, `judul_seo`, `content`) VALUES
(4, 'konfirmasi pembayaran', 'konfirmasi-pembayaran', '<p>setelah anda melakukan transfer sejumlah yang telah kami sampaikan maka silahkan konfirmasi pembayaran anda</p>\r\n\r\n<ul>\r\n	<li>via sms ke no 082121473036</li>\r\n	<li>via BBM&nbsp;</li>\r\n	<li>via email nuris.akbar@gmail.com</li>\r\n</ul>\r\n'),
(5, 'cara pemesanan', 'cara-pemesanan', '<p><strong>anda bisa memesan kepada kami melalui 2 cara :</strong></p>\r\n\r\n<ul>\r\n	<li>dari website<br />\r\n	silahkan pilih product yang ingin anda beli dan ikuti panduan transaksinya</li>\r\n	<li>via sms/ telpon<br />\r\n	silahkan pilih dan sms kan nama product yang anda pilih, kami akan menginformasikan biaya yang harus anda transafer</li>\r\n</ul>\r\n'),
(6, 'testimoni pelanggan', 'testimoni-pelanggan', '<p>testimoni&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n'),
(7, 'hubungi kami', 'hubungi-kami', '<p>hubungi kami text&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n'),
(8, 'Konfirmasi Pembayaran', 'konfirmasi-pembayaran', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_pajak`
--

CREATE TABLE `glstk8_pajak` (
  `pajak_id` int(11) NOT NULL,
  `nilai_pajak` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_product`
--

CREATE TABLE `glstk8_product` (
  `product_id` int(11) NOT NULL,
  `nama_product` varchar(100) NOT NULL,
  `nama_product_seo` varchar(140) NOT NULL,
  `sku_product` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_diskon` int(12) NOT NULL,
  `long_deskripsi` text NOT NULL,
  `short_deskripsi` text NOT NULL,
  `info_product_lain` text NOT NULL,
  `deskripsi_produk_seo` text NOT NULL,
  `spesifikasi_id` int(11) NOT NULL,
  `stok_product` float NOT NULL,
  `gambar` text NOT NULL,
  `galeri_gambar` text NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `pajak_id` int(11) NOT NULL,
  `keyword_product_seo` text NOT NULL,
  `link_product_seo` text NOT NULL,
  `visibilitas_product` enum('1','2','3') NOT NULL,
  `tanggal_product` datetime NOT NULL,
  `status_product` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `glstk8_product`
--

INSERT INTO `glstk8_product` (`product_id`, `nama_product`, `nama_product_seo`, `sku_product`, `harga`, `harga_diskon`, `long_deskripsi`, `short_deskripsi`, `info_product_lain`, `deskripsi_produk_seo`, `spesifikasi_id`, `stok_product`, `gambar`, `galeri_gambar`, `kategori_id`, `pajak_id`, `keyword_product_seo`, `link_product_seo`, `visibilitas_product`, `tanggal_product`, `status_product`) VALUES
(4, 'jilbab anak cantik elia', 'jilbab-anak-cantik-elia', '', 43000, 0, '', '', '', '', 0, 0, 'elthof-razita-kerudung-instan_l-699-1414.png', '', 4, 0, '', '', '', '0000-00-00 00:00:00', ''),
(5, 'jilbab ungu elzadda', 'jilbab-ungu-elzadda', '', 35000, 0, '', '', '', '', 0, 0, '945159_595536553803917_1247291466_n.jpg', '', 4, 0, '', '', '', '0000-00-00 00:00:00', ''),
(6, 'jilbab cantik delita', 'jilbab-cantik-delita', '', 67000, 0, '', '', '', '', 0, 0, 'kerudung_cantik_robbani2.jpg', '', 5, 0, '', '', '', '0000-00-00 00:00:00', ''),
(7, 'jilbab hitam', 'jilbab-hitam', '', 45000, 0, '', '', '', '', 0, 0, 'busana-muslim-jilbab-terbaru-16.jpg', '', 5, 0, '', '', '', '0000-00-00 00:00:00', ''),
(8, 'jilbab pink', 'jilbab-pink', '', 46000, 0, '', '', '', '', 0, 0, 'JRB_08B.jpg', '', 5, 0, '', '', '', '0000-00-00 00:00:00', ''),
(9, 'jilbab biru', 'jilbab-biru', '', 51000, 0, '', '', '', '', 0, 0, 'JRB_08C.jpg', '', 5, 0, '', '', '', '0000-00-00 00:00:00', ''),
(10, 'jilbab hijau', 'jilbab-hijau', '', 63000, 0, '', '', '', '', 0, 0, 'marshandal.jpg', '', 5, 0, '', '', '', '0000-00-00 00:00:00', ''),
(11, 'jilbab delia ungu', 'jilbab-delia-ungu', '', 34000, 0, '', '', '', '', 0, 0, 'mc-teens4c-900x900.jpg', '', 5, 0, '', '', '', '0000-00-00 00:00:00', ''),
(12, 'jilbab segitiga ', 'jilbab-segitiga-', '', 34000, 0, '', '', '', '', 0, 0, 'model-jilbab-segitiga-anak-sekolahcara-memakai-jilbab-paris-segi-empat-modern-oscahoke.jpg', '', 5, 0, '', '', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_spesifikasi`
--

CREATE TABLE `glstk8_spesifikasi` (
  `spesifikasi_id` int(11) NOT NULL,
  `nama_spesifikasi` varchar(250) NOT NULL,
  `isi_spesifikasi` varchar(1000) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_transaksi`
--

CREATE TABLE `glstk8_transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=proses,2= sudah dikirim',
  `no_resi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `glstk8_transaksi`
--

INSERT INTO `glstk8_transaksi` (`transaksi_id`, `member_id`, `tanggal`, `status`, `no_resi`) VALUES
(1, 1, '2015-03-13', 2, 'smr0045565656'),
(2, 1, '2015-04-29', 1, ''),
(3, 1, '2015-04-29', 1, ''),
(4, 1, '2015-04-29', 1, ''),
(5, 1, '2015-04-29', 1, ''),
(6, 1, '2015-04-29', 1, ''),
(7, 2, '2015-04-29', 1, ''),
(8, 2, '2015-04-29', 1, ''),
(9, 6, '2015-04-29', 1, ''),
(10, 7, '2017-07-05', 1, ''),
(11, 7, '2017-07-05', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_transaksi_detail`
--

CREATE TABLE `glstk8_transaksi_detail` (
  `detail_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `glstk8_transaksi_detail`
--

INSERT INTO `glstk8_transaksi_detail` (`detail_id`, `transaksi_id`, `product_id`, `qty`, `ip`) VALUES
(16, 10, 5, 6, '::1'),
(17, 10, 4, 6, '::1'),
(19, 10, 9, 6, '::1'),
(20, 10, 5, 5, '::1'),
(21, 10, 5, 1, '::1'),
(22, 10, 5, 1, '::1'),
(23, 10, 4, 1, '::1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `glstk8_users`
--

CREATE TABLE `glstk8_users` (
  `user_id` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1= aktif, 2= tidak aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `glstk8_users`
--

INSERT INTO `glstk8_users` (`user_id`, `nama_lengkap`, `username`, `password`, `status`) VALUES
(1, 'adminiistrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `glstk8_brand`
--
ALTER TABLE `glstk8_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `glstk8_kategori`
--
ALTER TABLE `glstk8_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `glstk8_member`
--
ALTER TABLE `glstk8_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `glstk8_menu`
--
ALTER TABLE `glstk8_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `glstk8_menu_admin`
--
ALTER TABLE `glstk8_menu_admin`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `glstk8_pages`
--
ALTER TABLE `glstk8_pages`
  ADD PRIMARY KEY (`pages_id`);

--
-- Indexes for table `glstk8_pajak`
--
ALTER TABLE `glstk8_pajak`
  ADD PRIMARY KEY (`pajak_id`);

--
-- Indexes for table `glstk8_product`
--
ALTER TABLE `glstk8_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `glstk8_spesifikasi`
--
ALTER TABLE `glstk8_spesifikasi`
  ADD PRIMARY KEY (`spesifikasi_id`);

--
-- Indexes for table `glstk8_transaksi`
--
ALTER TABLE `glstk8_transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `glstk8_transaksi_detail`
--
ALTER TABLE `glstk8_transaksi_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `glstk8_users`
--
ALTER TABLE `glstk8_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `glstk8_kategori`
--
ALTER TABLE `glstk8_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `glstk8_member`
--
ALTER TABLE `glstk8_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `glstk8_menu`
--
ALTER TABLE `glstk8_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `glstk8_menu_admin`
--
ALTER TABLE `glstk8_menu_admin`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `glstk8_pages`
--
ALTER TABLE `glstk8_pages`
  MODIFY `pages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `glstk8_pajak`
--
ALTER TABLE `glstk8_pajak`
  MODIFY `pajak_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glstk8_product`
--
ALTER TABLE `glstk8_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `glstk8_spesifikasi`
--
ALTER TABLE `glstk8_spesifikasi`
  MODIFY `spesifikasi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `glstk8_transaksi`
--
ALTER TABLE `glstk8_transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `glstk8_transaksi_detail`
--
ALTER TABLE `glstk8_transaksi_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `glstk8_users`
--
ALTER TABLE `glstk8_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
