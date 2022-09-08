-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 01:52 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_suratmasuk`
--

CREATE TABLE `tb_suratmasuk` (
  `id_suratmasuk` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL DEFAULT current_timestamp(),
  `kode_kantor` varchar(25) NOT NULL,
  `kantor_pabean` varchar(255) NOT NULL,
  `nomor_pengajuan` varchar(50) NOT NULL,
  `halaman` varchar(10) NOT NULL,
  `keterangan` varchar(6) NOT NULL,
  `jenis_pib` varchar(25) NOT NULL,
  `jenis_impor` varchar(25) NOT NULL,
  `cara_pembayaran` varchar(25) NOT NULL,
  `pengirim_kode_negara` varchar(3) NOT NULL,
  `pengirim_nama_negara` varchar(25) NOT NULL,
  `pengirim_nama` varchar(100) NOT NULL,
  `pengirim_alamat` text NOT NULL,
  `penjual_kode_negara` varchar(3) NOT NULL,
  `penjual_nama_negara` varchar(25) NOT NULL,
  `penjual_nama` varchar(100) NOT NULL,
  `penjual_alamat` text NOT NULL,
  `importir_jenis_identitas` varchar(10) NOT NULL,
  `importir_nomor_identitas` varchar(25) NOT NULL,
  `importir_nama` varchar(100) NOT NULL,
  `importir_alamat` text NOT NULL,
  `importir_status` varchar(255) NOT NULL,
  `pemilik_jenis_identitas` varchar(10) NOT NULL,
  `pemilik_nomor_identitas` varchar(25) NOT NULL,
  `pemilik_nama` varchar(100) NOT NULL,
  `pemilik_alamat` text NOT NULL,
  `pendaftaran_nomor` int(25) NOT NULL,
  `pendaftaran_tanggal` date NOT NULL DEFAULT '1111-11-11',
  `respon` varchar(25) NOT NULL,
  `cara_angkut` varchar(5) NOT NULL,
  `nama_pengangkut` varchar(25) NOT NULL,
  `perkiraan_tiba` date NOT NULL DEFAULT '1111-11-11',
  `pelabuhan_muat` varchar(25) NOT NULL,
  `pelabuhan_transit` varchar(25) NOT NULL,
  `pelabuhan_tujuan` varchar(25) NOT NULL,
  `invoice_nomor` varchar(25) NOT NULL,
  `invoice_tanggal` date NOT NULL DEFAULT '1111-11-11',
  `transaksi` varchar(5) NOT NULL,
  `bl_nomor` varchar(25) NOT NULL,
  `bl_tanggal` date NOT NULL DEFAULT '1111-11-11',
  `manifest_nomor` varchar(25) NOT NULL,
  `manifest_pos` varchar(25) NOT NULL,
  `manifest_tanggal` date NOT NULL DEFAULT '1111-11-11',
  `tempat_penimbunan` varchar(25) NOT NULL,
  `kurs` varchar(25) NOT NULL,
  `nilai_cif` varchar(25) NOT NULL DEFAULT '0',
  `asuransi` varchar(25) NOT NULL DEFAULT '0.0',
  `freight` varchar(25) NOT NULL DEFAULT '0.0',
  `ndpbm` varchar(25) NOT NULL DEFAULT '0.0',
  `nilai_pabean` varchar(25) NOT NULL DEFAULT '0.0',
  `peti_kemas` varchar(255) NOT NULL,
  `jjm` varchar(255) NOT NULL,
  `berat_kotor` varchar(25) NOT NULL DEFAULT '0.0',
  `berat_bersih` varchar(25) NOT NULL DEFAULT '0.0',
  `hs_code` varchar(25) NOT NULL,
  `file_suratmasuk` varchar(255) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `bm_dibayar` varchar(25) NOT NULL DEFAULT '0',
  `bm_ditanggung` varchar(25) NOT NULL DEFAULT '0',
  `bm_ditunda` varchar(25) NOT NULL DEFAULT '0',
  `bm_tidak` varchar(25) NOT NULL DEFAULT '0',
  `bm_bebas` varchar(25) NOT NULL DEFAULT '0',
  `bm_lunas` varchar(25) NOT NULL DEFAULT '0',
  `bmkite_dibayar` varchar(25) NOT NULL DEFAULT '0',
  `bmkite_ditanggung` varchar(25) NOT NULL DEFAULT '0',
  `bmkite_ditunda` varchar(25) NOT NULL DEFAULT '0',
  `bmkite_tidak` varchar(25) NOT NULL DEFAULT '0',
  `bmkite_bebas` varchar(25) NOT NULL DEFAULT '0',
  `bmkite_lunas` varchar(25) NOT NULL DEFAULT '0',
  `bmt_dibayar` varchar(25) NOT NULL DEFAULT '0',
  `bmt_ditanggung` varchar(25) NOT NULL DEFAULT '0',
  `bmt_ditunda` varchar(25) NOT NULL DEFAULT '0',
  `bmt_tidak` varchar(25) NOT NULL DEFAULT '0',
  `bmt_bebas` varchar(25) NOT NULL DEFAULT '0',
  `bmt_lunas` varchar(25) NOT NULL DEFAULT '0',
  `cukai_dibayar` varchar(25) NOT NULL DEFAULT '0',
  `cukai_ditanggung` varchar(25) NOT NULL DEFAULT '0',
  `cukai_ditunda` varchar(25) NOT NULL DEFAULT '0',
  `cukai_tidak` varchar(25) NOT NULL DEFAULT '0',
  `cukai_bebas` varchar(25) NOT NULL DEFAULT '0',
  `cukai_lunas` varchar(25) NOT NULL DEFAULT '0',
  `ppn_dibayar` varchar(25) NOT NULL DEFAULT '0',
  `ppn_ditanggung` varchar(25) NOT NULL DEFAULT '0',
  `ppn_ditunda` varchar(25) NOT NULL DEFAULT '0',
  `ppn_tidak` varchar(25) NOT NULL DEFAULT '0',
  `ppn_bebas` varchar(25) NOT NULL DEFAULT '0',
  `ppn_lunas` varchar(25) NOT NULL DEFAULT '0',
  `ppnbm_dibayar` varchar(25) NOT NULL DEFAULT '0',
  `ppnbm_ditanggung` varchar(25) NOT NULL DEFAULT '0',
  `ppnbm_ditunda` varchar(25) NOT NULL DEFAULT '0',
  `ppnbm_tidak` varchar(25) NOT NULL DEFAULT '0',
  `ppnbm_bebas` varchar(25) NOT NULL DEFAULT '0',
  `ppnbm_lunas` varchar(25) NOT NULL DEFAULT '0',
  `pph_dibayar` varchar(25) NOT NULL DEFAULT '0',
  `pph_ditanggung` varchar(25) NOT NULL DEFAULT '0',
  `pph_ditunda` varchar(25) NOT NULL DEFAULT '0',
  `pph_tidak` varchar(25) NOT NULL DEFAULT '0',
  `pph_bebas` varchar(25) NOT NULL DEFAULT '0',
  `pph_lunas` varchar(25) NOT NULL DEFAULT '0',
  `total_dibayar` varchar(25) NOT NULL DEFAULT '0',
  `total_ditanggung` varchar(25) NOT NULL DEFAULT '0',
  `total_ditunda` varchar(25) NOT NULL DEFAULT '0',
  `total_tidak` varchar(25) NOT NULL DEFAULT '0',
  `total_bebas` varchar(25) NOT NULL DEFAULT '0',
  `total_lunas` varchar(25) NOT NULL DEFAULT '0',
  `tanggal_entry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suratmasuk`
--

INSERT INTO `tb_suratmasuk` (`id_suratmasuk`, `tanggal_masuk`, `kode_kantor`, `kantor_pabean`, `nomor_pengajuan`, `halaman`, `keterangan`, `jenis_pib`, `jenis_impor`, `cara_pembayaran`, `pengirim_kode_negara`, `pengirim_nama_negara`, `pengirim_nama`, `pengirim_alamat`, `penjual_kode_negara`, `penjual_nama_negara`, `penjual_nama`, `penjual_alamat`, `importir_jenis_identitas`, `importir_nomor_identitas`, `importir_nama`, `importir_alamat`, `importir_status`, `pemilik_jenis_identitas`, `pemilik_nomor_identitas`, `pemilik_nama`, `pemilik_alamat`, `pendaftaran_nomor`, `pendaftaran_tanggal`, `respon`, `cara_angkut`, `nama_pengangkut`, `perkiraan_tiba`, `pelabuhan_muat`, `pelabuhan_transit`, `pelabuhan_tujuan`, `invoice_nomor`, `invoice_tanggal`, `transaksi`, `bl_nomor`, `bl_tanggal`, `manifest_nomor`, `manifest_pos`, `manifest_tanggal`, `tempat_penimbunan`, `kurs`, `nilai_cif`, `asuransi`, `freight`, `ndpbm`, `nilai_pabean`, `peti_kemas`, `jjm`, `berat_kotor`, `berat_bersih`, `hs_code`, `file_suratmasuk`, `operator`, `bm_dibayar`, `bm_ditanggung`, `bm_ditunda`, `bm_tidak`, `bm_bebas`, `bm_lunas`, `bmkite_dibayar`, `bmkite_ditanggung`, `bmkite_ditunda`, `bmkite_tidak`, `bmkite_bebas`, `bmkite_lunas`, `bmt_dibayar`, `bmt_ditanggung`, `bmt_ditunda`, `bmt_tidak`, `bmt_bebas`, `bmt_lunas`, `cukai_dibayar`, `cukai_ditanggung`, `cukai_ditunda`, `cukai_tidak`, `cukai_bebas`, `cukai_lunas`, `ppn_dibayar`, `ppn_ditanggung`, `ppn_ditunda`, `ppn_tidak`, `ppn_bebas`, `ppn_lunas`, `ppnbm_dibayar`, `ppnbm_ditanggung`, `ppnbm_ditunda`, `ppnbm_tidak`, `ppnbm_bebas`, `ppnbm_lunas`, `pph_dibayar`, `pph_ditanggung`, `pph_ditunda`, `pph_tidak`, `pph_bebas`, `pph_lunas`, `total_dibayar`, `total_ditanggung`, `total_ditunda`, `total_tidak`, `total_bebas`, `total_lunas`, `tanggal_entry`) VALUES
(52, '2022-08-23', 'sdf444', 'PBU Jakarta Utara', 'ajuan1', '2', 'Impor', '1. Biasa', '2. Sementara', '2. Berkala', '', '', 'sandi', 'HTTP://LOCALHOST/PHPMYADMIN/INDEX.PHP?ROUTE=/TABLE/STRUCTURE/SAVE', '', '', 'jito', 'HTTP://LOCALHOST/PHPMYADMIN/INDEX.PHP?ROUTE=/TABLE/STRUCTURE/SAVE', 'NPWP', '1345457', 'sandi mujito', 'HTTP://LOCALHOST/PHPMYADMIN/INDEX.PHP?ROUTE=/TABLE/STRUCTURE/SAVE', '0', 'NPWP', '2234324324', 'solihin', 'HTTP://LOCALHOST/PHPMYADMIN/INDEX.PHP?ROUTE=/TABLE/STRUCTURE/SAVE', 0, '2022-09-08', '', 'Laut', 'asdasa adfsef55543', '2022-09-09', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-08-25', '', 'BL5000', '2022-09-02', 'MFT3000', 'POS 2233', '2022-09-10', 'TPU PEMAKAMAN', 'valuta asing', '200,000.233', '0', '0', '123,000', '9,988,700,000.5,000', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12000', '9800', 'HSCODE', 'sdf444-ajuan1 page 2.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-08-23 22:40:14'),
(53, '2022-08-25', 'asd123', 'PBU Jakarta Utara', '46456-45645-645645-45645-456456', '2', 'Ekspor', '2. Berkala', '1. Untuk Dipakai', '2. Berkala', '', '', 'sandi', '.REPLACE(/\\B(?=(\\D{3})+(?!\\D))/G,\",\")', '', '', 'sandi', '.REPLACE(/\\B(?=(\\D{3})+(?!\\D))/G,\",\")', 'NPWP', '1345457', 'sandi mujito', '.REPLACE(/\\B(?=(\\D{3})+(?!\\D))/G,\",\")', '0', 'NPWP', '1345457', 'sandi mujito', '.REPLACE(/\\B(?=(\\D{3})+(?!\\D))/G,\",\")', 0, '2022-09-08', '', 'Laut', 'asdasa adfsef55543', '2022-08-25', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-08-25', '', 'BL5000', '2022-08-25', 'MFT3000', 'POS2233', '2022-08-25', 'TPU PEMAKAMAN', 'valuta asing', '020000044.22', '00,000', '0,345', '123,000', '9988700000.5', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '9800.6', 'HSCODE', 'asd123-46456-45645-645645-45645-456456 page 2.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-08-25 15:28:38'),
(54, '2022-08-26', 'asd123', 'KPU Jakarta Utara', '123', '7', 'Impor', '1. Biasa', '2. Sementara', '2. Berkala', '', '', 'sandi', 'EPIZ_32165887', '', '', 'sandi', 'EPIZ_32165887', 'NPWP', '1345457', 'sandi mujito', 'EPIZ_32165887', '0', 'NPWP', '1345457', 'sandi mujito', 'EPIZ_32165887', 0, '2022-09-08', '', 'Darat', 'asdasa adfsef55543', '2022-08-26', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-08-26', '', 'BL5000', '2022-08-26', 'MFT3000', 'POS 2233', '2022-08-26', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '2,000,000', '343,444', '123,000', '0', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '100', '9,800', 'HSCODE', 'asd123_123_7.pdf', 'admin2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-08-26 18:24:48'),
(55, '2022-08-27', 'sdf444', 'PBU Jakarta Utara', '234-23423222222', '7', 'Ekspor', '2. Berkala', '5. Pelayanan segera', '9. Lainnya', '', '', 'sandi', 'ECHO \"<!DOCTYPE HTML>\r\n					<CENTER>\r\n						<H2><BR>LOADING...</H2>\r\n		  			</CENTER>\r\n					<SCRIPT TYPE=\'TEXT/JAVASCRIPT\'>\r\n						ALERT(\'INPUT TIDAK SESUI! ULANGI KEMBALI...\');\r\n					</SCRIPT>\r\n		  			<META HTTP-EQUIV=\'REFRESH\' CONTENT=\'2;URL=../EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'>\r\n				  </HTML>\";	', '', '', 'sandi', 'ECHO \"<!DOCTYPE HTML>\r\n					<CENTER>\r\n						<H2><BR>LOADING...</H2>\r\n		  			</CENTER>\r\n					<SCRIPT TYPE=\'TEXT/JAVASCRIPT\'>\r\n						ALERT(\'INPUT TIDAK SESUI! ULANGI KEMBALI...\');\r\n					</SCRIPT>\r\n		  			<META HTTP-EQUIV=\'REFRESH\' CONTENT=\'2;URL=../EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'>\r\n				  </HTML>\";	', 'NPWP', '1345457', 'sandi mujito', 'ECHO \"<!DOCTYPE HTML>\r\n					<CENTER>\r\n						<H2><BR>LOADING...</H2>\r\n		  			</CENTER>\r\n					<SCRIPT TYPE=\'TEXT/JAVASCRIPT\'>\r\n						ALERT(\'INPUT TIDAK SESUI! ULANGI KEMBALI...\');\r\n					</SCRIPT>\r\n		  			<META HTTP-EQUIV=\'REFRESH\' CONTENT=\'2;URL=../EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'>\r\n				  </HTML>\";	', '0', 'NPWP', '1345457', 'sandi mujito', 'ECHO \"<!DOCTYPE HTML>\r\n					<CENTER>\r\n						<H2><BR>LOADING...</H2>\r\n		  			</CENTER>\r\n					<SCRIPT TYPE=\'TEXT/JAVASCRIPT\'>\r\n						ALERT(\'INPUT TIDAK SESUI! ULANGI KEMBALI...\');\r\n					</SCRIPT>\r\n		  			<META HTTP-EQUIV=\'REFRESH\' CONTENT=\'2;URL=../EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'>\r\n				  </HTML>\";	', 0, '2022-09-08', '', 'Laut', 'asdasa adfsef55543', '2022-08-27', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-08-27', '', 'BL5000', '2022-08-27', 'MFT3000', 'POS2233', '2022-08-27', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '2,444,444', '0', '123,000', '0', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '90', 'HSCODE', 'sdf444_234-23423222222_7.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-08-27 15:48:27'),
(56, '2022-08-27', 'asd123', 'PBU Jakarta Utara', '123', '7', 'Ekspor', '2. Berkala', '5. Pelayanan segera', '3. Dengan jaminan', '', '', 'sandi', 'ECHO \"<!DOCTYPE HTML>\r\n					<CENTER>\r\n						<H2><BR>LOADING...</H2>\r\n		  			</CENTER>\r\n					<SCRIPT TYPE=\'TEXT/JAVASCRIPT\'>\r\n						ALERT(\'INPUT TIDAK SESUI! ULANGI KEMBALI...\');\r\n					</SCRIPT>\r\n		  			<META HTTP-EQUIV=\'REFRESH\' CONTENT=\'2;URL=../EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'>\r\n				  </HTML>\";	', '', '', 'sandi', 'ECHO \"<!DOCTYPE HTML>\r\n					<CENTER>\r\n						<H2><BR>LOADING...</H2>\r\n		  			</CENTER>\r\n					<SCRIPT TYPE=\'TEXT/JAVASCRIPT\'>\r\n						ALERT(\'INPUT TIDAK SESUI! ULANGI KEMBALI...\');\r\n					</SCRIPT>\r\n		  			<META HTTP-EQUIV=\'REFRESH\' CONTENT=\'2;URL=../EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'>\r\n				  </HTML>\";	', 'NPWP', '1345457', 'sandi mujito', 'ECHO \"<!DOCTYPE HTML>\r\n					<CENTER>\r\n						<H2><BR>LOADING...</H2>\r\n		  			</CENTER>\r\n					<SCRIPT TYPE=\'TEXT/JAVASCRIPT\'>\r\n						ALERT(\'INPUT TIDAK SESUI! ULANGI KEMBALI...\');\r\n					</SCRIPT>\r\n		  			<META HTTP-EQUIV=\'REFRESH\' CONTENT=\'2;URL=../EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'>\r\n				  </HTML>\";	', '0', 'NPWP', '1345457', 'sandi mujito', 'ECHO \"<!DOCTYPE HTML>\r\n					<CENTER>\r\n						<H2><BR>LOADING...</H2>\r\n		  			</CENTER>\r\n					<SCRIPT TYPE=\'TEXT/JAVASCRIPT\'>\r\n						ALERT(\'INPUT TIDAK SESUI! ULANGI KEMBALI...\');\r\n					</SCRIPT>\r\n		  			<META HTTP-EQUIV=\'REFRESH\' CONTENT=\'2;URL=../EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'>\r\n				  </HTML>\";	', 0, '2022-09-08', '', 'Laut', 'asdasa adfsef55543', '2022-08-27', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-08-27', '', 'BL5000', '2022-08-27', 'MFT3000', 'POS2233', '2022-08-27', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '0', '0', '0', '0', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '9,800', 'HSCODE', 'asd123_123_7.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-08-27 15:54:32'),
(57, '2022-08-27', 'sdf444', 'PBU Jakarta Utara', '234-234-2-34222', '2', 'Ekspor', '1. Biasa', '5. Pelayanan segera', '3. Dengan jaminan', '', '', 'sandi', '	IF ( IS_NULL($DATA[\"NOMOR_PENGAJUAN\"])) {\r\n', '', '', 'sandi', '	IF ( IS_NULL($DATA[\"NOMOR_PENGAJUAN\"])) {\r\n', 'NPWP', '1345457', 'sandi mujito', '	IF ( IS_NULL($DATA[\"NOMOR_PENGAJUAN\"])) {\r\n', '0', 'NPWP', '1345457', 'sandi mujito', '	IF ( IS_NULL($DATA[\"NOMOR_PENGAJUAN\"])) {\r\n', 0, '2022-09-08', '', 'Laut', 'asdasa adfsef55543', '2022-08-27', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-08-27', '', 'BL5000', '2022-08-27', 'MFT3000', 'POS 2233', '2022-08-27', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '00,000', '0', '123,000', '23,423.23', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '90', 'HSCODE', 'sdf444_234-234-2-34222_2.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-08-27 15:59:26'),
(58, '2022-08-27', 'asd123', 'PBU Jakarta Utara', '2342-2342-2342348888', '2', 'Impor', '2. Berkala', '9. Gabungan 1 & 2', '3. Dengan jaminan', '', '', 'sandi', 'ERROR_REPORTING(0);', '', '', 'sandi', 'ERROR_REPORTING(0);', 'Lainnya', '1345457', 'sandi mujito', 'ERROR_REPORTING(0);', '0', 'Lainnya', '1345457', 'sandi mujito', 'ERROR_REPORTING(0);', 0, '2022-09-08', '', 'Laut', 'asdasa adfsef55543', '2022-08-27', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-08-27', '', 'BL5000', '2022-08-27', 'MFT3000', 'POS2233', '2022-08-27', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '00,000', '0', '123,000', '23,423.23', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '90', 'HSCODE', 'asd123_2342-2342-2342348888_2.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-08-27 16:07:37'),
(59, '2022-08-27', 'sdf444', 'PBU Jakarta Utara', '123-786-890-90-9', '7', 'Ekspor', '2. Berkala', '2. Sementara', '9. Lainnya', '', '', 'sandi', 'EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'', '', '', 'sandi', 'EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'', 'Lainnya', '1345457', 'sandi mujito', 'EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'', '0', 'Lainnya', '1345457', 'sandi mujito', 'EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'', 0, '2022-09-08', '', 'Laut', 'asdasa adfsef55543', '2022-08-27', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-08-27', '', 'BL5000', '2022-08-27', 'MFT3000', 'POS2233', '2022-08-27', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '2,444,444', '343,444', '123,000', '0', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '9,800', 'HSCODE', 'sdf444_123-786-890-90-9_7.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-08-27 16:15:07'),
(60, '2027-08-20', 'asd123', 'PBU Jakarta Utara', '123-890-89098-09-9-08998', '2', 'Impor', '2. Berkala', '5. Pelayanan segera', '1. Biasa/Tunai', '', '', 'sandi', 'EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'', '', '', 'sandi', 'EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'', 'NPWP', '1345457', 'sandi mujito', 'EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'', '0', 'NPWP', '1345457', 'sandi mujito', 'EDITSURATMASUK.PHP?ID_SURATMASUK=\".$ID.\"\'', 0, '2022-09-08', '', 'Laut', 'asdasa adfsef55543', '2027-08-20', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2027-08-20', '', 'BL5000', '2027-08-20', 'MFT3000', 'POS2233', '2027-08-20', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '2,444,444', '0', '123,000', '0', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '9,800', 'HSCODE', 'asd123_123-890-89098-09-9-08998_2.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-08-27 16:20:02'),
(61, '2022-09-08', 'asd123', 'KPU Jakarta Utara', '123-34534-3453-45', '7', 'Impor', '2. Berkala', '1. Untuk Dipakai', '1. Biasa/Tunai', 'ID', 'INDONESIA', 'sandi', '\'$PENGIRIM_KODE_NEGARA\', \'$PENGIRIM_NAMA_NEGARA\'', 'ID', 'INDONESIA', 'sandi', '\'$PENGIRIM_KODE_NEGARA\', \'$PENGIRIM_NAMA_NEGARA\'', 'NPWP', '1345457', 'sandi mujito', '\'$PENGIRIM_KODE_NEGARA\', \'$PENGIRIM_NAMA_NEGARA\'', '0', 'NPWP', '1345457', 'sandi mujito', '\'$PENGIRIM_KODE_NEGARA\', \'$PENGIRIM_NAMA_NEGARA\'', 0, '2022-09-08', '', 'Laut', 'asdasa adfsef55543', '2022-09-16', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-09-08', '', 'BL5000', '2022-09-08', 'MFT3000', 'POS2233', '2022-09-08', 'TPU PEMAKAMAN', 'valuta asing', '234,234,234.23', '0', '0', '123,000', '23,423.23', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '90', 'HSCODE', 'asd123_123-34534-3453-45_7.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-09-08 16:43:56'),
(62, '2022-09-08', 'sdf444', 'PBU Jakarta Utara', '2234-67-5857867', '2', 'Impor', '1. Biasa', '2. Sementara', '1. Biasa/Tunai', 'ID', 'INDONESIA', 'sandi', '$(\'#MYDATEPICKER5\').DATETIMEPICKER({\r\n        IGNOREREADONLY: TRUE,\r\n        ALLOWINPUTTOGGLE: TRUE,\r\n        FORMAT: \'DD-MM-YYYY\'\r\n    });', 'ID', 'INDONESIA', 'sandi', '$(\'#MYDATEPICKER5\').DATETIMEPICKER({\r\n        IGNOREREADONLY: TRUE,\r\n        ALLOWINPUTTOGGLE: TRUE,\r\n        FORMAT: \'DD-MM-YYYY\'\r\n    });', 'Lainnya', '1345457', 'sandi mujito', '$(\'#MYDATEPICKER5\').DATETIMEPICKER({\r\n        IGNOREREADONLY: TRUE,\r\n        ALLOWINPUTTOGGLE: TRUE,\r\n        FORMAT: \'DD-MM-YYYY\'\r\n    });', 'IP', 'Lainnya', '1345457', 'sandi mujito', '$(\'#MYDATEPICKER5\').DATETIMEPICKER({\r\n        IGNOREREADONLY: TRUE,\r\n        ALLOWINPUTTOGGLE: TRUE,\r\n        FORMAT: \'DD-MM-YYYY\'\r\n    });', 345345, '2022-09-08', 'respon123!#', 'Laut', 'asdasa adfsef55543', '2022-09-08', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-09-08', '', 'BL5000', '2022-09-08', 'MFT3000', 'POS2233', '2022-09-08', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '0', '0', '123,000', '0', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '9,800', 'HSCODE', 'sdf444_2234-67-5857867_2.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-09-08 17:49:58'),
(63, '2022-09-08', 'sdf444', 'PBU Jakarta Utara', '2234-67-5857867', '2', 'Impor', '1. Biasa', '2. Sementara', '1. Biasa/Tunai', 'ID', 'INDONESIA', 'sandi', '$(\'#MYDATEPICKER5\').DATETIMEPICKER({\r\n        IGNOREREADONLY: TRUE,\r\n        ALLOWINPUTTOGGLE: TRUE,\r\n        FORMAT: \'DD-MM-YYYY\'\r\n    });', 'ID', 'INDONESIA', 'sandi', '$(\'#MYDATEPICKER5\').DATETIMEPICKER({\r\n        IGNOREREADONLY: TRUE,\r\n        ALLOWINPUTTOGGLE: TRUE,\r\n        FORMAT: \'DD-MM-YYYY\'\r\n    });', 'Lainnya', '1345457', 'sandi mujito', '$(\'#MYDATEPICKER5\').DATETIMEPICKER({\r\n        IGNOREREADONLY: TRUE,\r\n        ALLOWINPUTTOGGLE: TRUE,\r\n        FORMAT: \'DD-MM-YYYY\'\r\n    });', 'IP', 'Lainnya', '1345457', 'sandi mujito', '$(\'#MYDATEPICKER5\').DATETIMEPICKER({\r\n        IGNOREREADONLY: TRUE,\r\n        ALLOWINPUTTOGGLE: TRUE,\r\n        FORMAT: \'DD-MM-YYYY\'\r\n    });', 345345, '2022-09-08', 'respon123!#', 'Laut', 'asdasa adfsef55543', '2022-09-08', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-09-08', '', 'BL5000', '2022-09-08', 'MFT3000', 'POS2233', '2022-09-08', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '0', '0', '123,000', '0', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '9,800', 'HSCODE', 'sdf444_2234-67-5857867_2.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-09-08 17:54:05'),
(64, '2022-09-08', 'asd123', 'PBU Jakarta Utara', '123-34534-3453-345', '2', 'Impor', '2. Berkala', '2. Sementara', '2. Berkala', 'ID', 'INDONESIA', 'sandi', '\'$BL_NOMOR\',', 'ID', 'INDONESIA', 'sandi', '\'$BL_NOMOR\',', 'Lainnya', '1345457', 'sandi mujito', '\'$BL_NOMOR\',', 'IP', 'Lainnya', '1345457', 'sandi mujito', '\'$BL_NOMOR\',', 2147483647, '2022-09-08', 'respon123!#', 'Laut', 'asdasa adfsef55543', '2022-09-08', 'merak', 'batu', 'yanjung priok', 'INVC2000', '2022-09-13', 'SDFS', 'BL5000', '2022-09-08', 'MFT3000', 'POS2233', '2022-09-08', 'TPU PEMAKAMAN', 'valuta asing', '20,000', '0', '343,444', '123,000', '0', 'APHU-7328512 40 Feet FCL', '711 CT/Cartoon Merk: SESUAI B/L', '12,000', '9,800', 'HSCODE', 'asd123_123-34534-3453-345_2.pdf', 'Sandi Mujito', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-09-08 18:37:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  ADD PRIMARY KEY (`id_suratmasuk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  MODIFY `id_suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
