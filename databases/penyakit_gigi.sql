-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2022 at 08:24 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penyakit_gigi`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `no` int NOT NULL,
  `kode` varchar(10) NOT NULL,
  `gejala` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`no`, `kode`, `gejala`, `kategori`, `nilai`) VALUES
(1, 'G1', 'Gigi terasa sakit', 'Sakit gigi', 0.15),
(2, 'G2', 'Sakit karena rangsangan (makanan/minuman/udara)\r\npanas/dingin/manis/asam', 'Sakit gigi karena rangsangan', 0.15),
(3, 'G3', 'Sakit lebih parah saat terkena rangsangan dingin\r\ndaripada panas', 'Sakit gigi karena rangsangan', 0.5),
(4, 'G4', 'Sakit gigi tetap bertahan lama bila rangsangan hilang', 'Sakit gigi tanpa rangsangan', 0.8),
(5, 'G5', 'Sakit gigi bisa terjadi tanpa ada rangsangan', 'Sakit gigi tanpa rangsangan', 0.8),
(6, 'G6', 'Sakit terasa berdenyut pada gigi saat mengunyah /\r\nmenggigit', 'Sakit gigi berdenyut', 0.8),
(7, 'G7', 'Sakit terasa berdenyut pada gigi terkadang saat tidur', 'Sakit gigi berdenyut', 0.8),
(8, 'G8', 'akit terasa berdenyut pada gigi yang terus menerus', 'Sakit gigi berdenyut', 0.8),
(9, 'G9', 'Sakit ringan hingga sedang pada gigi paling lama 10\r\ndetik (sebentar)', 'Lama sakit', 0.15),
(10, 'G10', 'Sakit ringan hingga sedang pada gigi selama lebih\r\ndari 2 hari', 'Lama sakit', 0.8),
(11, 'G11', 'Sakit gigi dapat ditentukan lokasinya', 'Lokasi sakit', 0.15),
(12, 'G12', 'Sakit gigi sulit ditentukan lokasinya', 'Lokasi sakit', 0.8),
(13, 'G13', 'Permukaan gigi berwarna kecokelatan/keabu-abuan', 'Warna gigi', 0.5),
(14, 'G14', 'Permukaan gigi berwarna hitam', 'Warna gigi', 0.8),
(15, 'G15', 'Gigi berlubang agak dalam mendekati saraf', 'Lubang gigi', 0.5),
(16, 'G16', 'Rasa sakit menusuk pada lubang gigi', 'Lubang gigi', 0.15),
(17, 'G17', 'Lubang gigi berbau busuk', 'Lubang gigi', 0.8),
(18, 'G18', 'Ada penonjolan terbentuk daging keluar dari lubang gigi\r\nberwarna merah tua,kasar/tidak licin/bertitik-titik', 'Lubang gigi', 0.8),
(19, 'G19', 'Tonjolan daging dari lubang gigi mudah berdarah', 'Lubang gigi', 0.8),
(20, 'G20', 'Gigi goyang semua arah', 'Gigi goyang', 0.8),
(21, 'G21', 'Pembengkakan pada gusi', 'Gusi', 0.2),
(22, 'G22', 'Gusi terlihat mengkilat', 'Gusi', 0.15),
(23, 'G23', 'Rasa sakit pada gusi jika disentuh', 'Gusi', 0.5),
(24, 'G24', 'Pendarahan pada gusi', 'Gusi', 0.8),
(25, 'G25', 'Gusi lunak pada saat disentuh tetapi tanpa rasa sakit', 'Gusi', 0.8),
(26, 'G26', 'Warna merah muda pada gusi', 'Warna Gusi', 0.15),
(27, 'G27', 'Warna merah menyala atau merah ungu pada gusi', 'Warna Gusi', 0.5),
(28, 'G28', 'Mulut terasa kering', 'Mulut', 0.15),
(29, 'G29', 'Tidak sukar membuka mulut', 'Mulut', 0.15),
(30, 'G30', 'Sukar membuka mulut', 'Mulut', 0.8),
(31, 'G31', 'Bau mulut', 'Mulut', 0.8),
(32, 'G32', 'Pembengkakan wajah', 'Wajah', 0.8),
(33, 'G33', 'Demam', 'Demam', 0.15),
(34, 'G34', 'Sakit dapat menjalar ke belakang telinga', 'Sakit lainnya', 0.5),
(35, 'G35', 'Sakit saat ditekan kelenjar getah bening', 'Sakit lainnya', 0.8),
(36, 'G36', 'Sakit menjalar melalui beberapa otot', 'Sakit lainnya', 0.8),
(37, 'G37', 'Tulang bengkak dan terasa sakit', 'Sakit lainnya', 0.8);

-- --------------------------------------------------------

--
-- Table structure for table `pencegahan`
--

CREATE TABLE `pencegahan` (
  `kd_pencegahan` varchar(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `deskripsi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pencegahan`
--

INSERT INTO `pencegahan` (`kd_pencegahan`, `kode`, `deskripsi`) VALUES
('PP01', 'P01', 'TESTING'),
('PP02', 'P02', 'TESTING'),
('PP03', 'P03', 'TESTING'),
('PP04', 'P04', 'TESTING'),
('PP05', 'P05', 'TESTING'),
('PP06', 'P06', 'TESTING'),
('PP07', 'P07', 'TESTING'),
('PP08', 'P08', 'TESTING'),
('PP09', 'P09', 'TESTING'),
('PP10', 'P10', 'TESTING'),
('PP11', 'P11', 'TESTING'),
('PP12', 'P12', 'TESTING'),
('PP13', 'P13', 'TESTING'),
('PP14', 'P14', 'TESTING');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `no` int NOT NULL,
  `kode` varchar(255) NOT NULL,
  `penyakit` varchar(255) NOT NULL,
  `range` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`no`, `kode`, `penyakit`, `range`, `keterangan`) VALUES
(1, 'P1', 'Pulpitis Reversible', '(25% < a ? 50%)', 'Agak Parah'),
(2, 'P2', 'Pulpitis Irreversible', '(25% < a ? 50%)', 'Agak Parah'),
(3, 'P3', 'Periodontitis ', '(25% < a ? 50%)', 'Agak Parah'),
(4, 'P4', 'Periodontitis Akut', '(50% < a ? 75%)', 'Parah'),
(5, 'P5', 'Gingivitis', '(25% < a ? 50%)', 'Agak Parah'),
(6, 'P6', 'Perikoronitis Akut', '(50% < a ? 75%)', 'Parah'),
(7, 'P7', 'Perikoronitis Sub Akut', '(50% < a ? 75%)', 'Parah'),
(8, 'P8', 'Perikoronitis Kronis', '(50% < a ? 75%)', 'Parah'),
(9, 'P9', 'Karies Denties Tahap Awal', '(25% < a ? 50%)', 'Agak Parah'),
(10, 'P10', 'Karies Denties Menuju Tahap Lanjut', '(25% < a ? 50%)', 'Agak Parah'),
(11, 'P11', 'Karies Denties Tahap Lanjut', '(50% < a ? 75%)', 'Parah'),
(12, 'P12', 'Gangren Pulpa', '(50% < a ? 75%)', 'Parah'),
(13, 'P13', 'Pulpa Polip', '(50% < a ? 75%)', 'Parah'),
(14, 'P14', 'Periostitis', '(50% < a ? 75%)', 'Parah');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `jika` varchar(100) NOT NULL,
  `maka` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`jika`, `maka`) VALUES
('G1_G2_G3_G9_G12', 'P1'),
('G1_G2_G6_G9_G11_G14_G15_G16_G32', 'P10'),
('G1_G2_G6_G8_G9_G11_G14_G15_G21_G36', 'P11'),
('G1_G2_G6_G9_G11_G13_G15_G17', 'P12'),
('G1_G2_G6_G9_G11_G15_G18_G19\r\n', 'P13'),
('G1_G2_G6_G8_G10_G11_G20_G21_G37', 'P14'),
('G1_G2_G4_G5_G10_G12_G34', 'P2'),
('G24_G26_G31', 'P3'),
('G1_G2_G4_G6_G9_G11_G20_G21_G23_G24_G27_G31', 'P4'),
('G21_G22_G24_G27_G28', 'P5'),
('G1_G2_G6_G7_G9_G11_G20_G30_G33_G35_G36\r\n', 'P6'),
('G1_G2_G8_G10_G11_G29_G31_G33_G35', 'P7'),
('G1_G2_G10_G11_G35', 'P8'),
('G1_G2_G9_G6_G11_G14_G15_G16', 'P9');

-- --------------------------------------------------------

--
-- Table structure for table `solusi`
--

CREATE TABLE `solusi` (
  `id` int NOT NULL,
  `kd_solusi` varchar(10) NOT NULL,
  `kd_pencegahan` varchar(10) NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solusi`
--

INSERT INTO `solusi` (`id`, `kd_solusi`, `kd_pencegahan`, `solusi`) VALUES
(1, 'S01', 'PP01', 'Perawatan, mengangkat karies yang ada, meletakkan pelindung pulpa yang cocok, dan restorasi permanen dilakukan.'),
(2, 'S01', 'PP02', 'Perawatan untuk radang pulpa gigi serius: melibatkan perawatan saluran akar atau operasi cabut gigi.'),
(3, 'S03', 'PP03', 'Scaling, untuk menghilangkan karang gigi dan bakteri dari permukaan gigi atau bagian bawah gusi'),
(4, 'S04', 'PP04', 'Pencabutan gigi yang terdampak, agar penumpukan bakteri tidak bertambah parah dan menyerang gigi di sekitarnya.'),
(5, 'S05', 'PP05', 'scaling gigi atau pembersihan karang gigi. Tahap ini dilanjuti dengan perawatan saluran akar gigi dengan menggunakan laser atau gelombang suara.\r\n\r\nselain scaling gigi, cara mengatasi gingivitis juga bisa dengan penambalan atau penggantian gigi yang rusak atau berlubang. Akan tetapi, prosedur ini hanya akan dilakukan bila kondisi tersebut berkaitan dengan gingivitis. Dalam kasus tertentu, operasi flat mungkin saja dilakukan untuk mengangkat plak dan karang gigi dari kantong gusi. '),
(6, 'S06', 'PP06', 'Operasi gigi dan gusi. Pembedahan akan dilakukan untuk mengatasi gusi yang meradang yang dianggap bisa menimbulkan gangguan lebih parah. Operasi ini akan memperbaiki lipatan gusi, atau mencabut gigi bila diperlukan.'),
(7, 'S07', 'PP07', 'Pemberian obat-obatan akan diiringi dengan tindakan pembersihan gigi dan gusi, untuk menghilangkan sisa makanan dan tumpukan plak di dalam mulut. Dokter juga dapat meresepkan obat kumur yang mengandung chlorhexidine, untuk membantu menjaga gigi dan gusi tetap bersih.'),
(8, 'S08', 'PP08', 'Mengangkat lapisan atau lipatan gusi yang menutupi impaksi. Mencabut gigi yang tidak dapat keluar dengan sempurna.'),
(9, 'S09', 'PP09', 'Tambal Gigi. Bila lubang di gigi tidak begitu besar dan kerusakan belum menyebar terlalu dalam, dokter biasanya akan melakukan tambal gigi. '),
(10, 'S10', 'PP10', 'Perawatan saluran akar gigi (root canal). Ketika lubang sudah sampai ke pulpa gigi, Anda mungkin membutuhkan perawatan saluran akar gigi.'),
(11, 'S11', 'PP11', 'Cabut gigi. Cabut gigi biasanya jadi pilihan terakhir bila gigi sudah terlanjur sangat rusak dan tidak dapat diobati dengan beragam perawatan lain. Bila hanya satu gigi saja yang dicabut, Anda cukup mendapatkan anestesi lokal.'),
(12, 'S12', 'PP12', 'Pengobatan gangrene umumnya dilakukan dengan mengangkat jaringan mati untuk mencegah gangrene dan infeksi berkembang semakin meluas. Dokter akan memberikan pengobatan berdasarkan tingkat keparahan dan kondisi kesehatan pasien. Beberapa pengobatan yang dapat diberikan adalah:\r\n\r\nObat-obatan. Dokter dapat memberikan antibiotik melalui infus atau dalam bentuk obat minum untuk mengangani gangrene yang disebabkan oleh infeksi bakteri. Selain itu, dokter juga dapat memberikan obat pereda nyeri untuk meredakan rasa nyeri atau tidak nyaman yang mungkin pasien alami.\r\n\r\nOperasi. Prosedur operasi dilakukan berdasarkan jenis gangrene dan tingkat keparahannya. Pasien dapat menjalani lebih dari satu operasi jika gangrene sudah semakin parah.'),
(13, 'S13', 'PP13', 'Metode pengobatan polip pulpa tergantung pada tingkat keparahannya. Beberapa metode pengobatan tersebut adalah:\r\n\r\nPulpotomi, yaitu pengangkatan pulpa \r\ntanpa mengangkat bagian akar gigi, yang dilakukan bila polip tidak memengaruhi pulpa di dekat akar gigi.\r\n\r\nPerawatan saluran akar gigi bila pertumbuhan akar tidak matang\r\nOperasi cabut gigi dan akar gigi yang bisa diikuti dengan pemasangan gigi palsu'),
(14, 'S14', 'PP14', 'Pengobatan untuk periostitis akut. Penggunaan antibiotik untuk mengobati infeksi yang mendasari periostitis akut. Jika infeksi menghasilkan nanah dan cairan, tindak pembedahan dapat dilakukan untuk mengeringkan cairan nanah.\r\n\r\nJika terdapat jaringan nekrotik, dokter akan menghilangkan jaringan sel tersebut dengan bedah debridement untuk mencegah penyebaran infeksi.\r\n\r\nPengobatan untuk periostitis kronis\r\n-Istirahat yang cukup\r\n-Hindari kegiatan seperti berlari atau \r\nmelompat.\r\n-Kompres es dapat menurunkan pembengkakan dan mengurangi peradangan.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`no`),
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `pencegahan`
--
ALTER TABLE `pencegahan`
  ADD PRIMARY KEY (`kd_pencegahan`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`jika`),
  ADD KEY `maka` (`maka`);

--
-- Indexes for table `solusi`
--
ALTER TABLE `solusi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `solusi`
--
ALTER TABLE `solusi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
