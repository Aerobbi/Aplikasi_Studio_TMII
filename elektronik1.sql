-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2020 at 03:45 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elektronik1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nama_barang`, `jumlah_barang`, `harga_beli`, `harga_jual`, `tanggal_masuk`) VALUES
('B0001', 'MOUSE', 295, 5000, 10000, '2020-01-16'),
('B0002', 'TOPI', 497, 10000, 20000, '2020-01-16'),
('B0004', 'GELANG', 400, 5000, 10000, '2020-01-17'),
('B0005', 'PAYUNG', 2, 10000, 15000, '2020-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beli`
--

CREATE TABLE IF NOT EXISTS `tbl_beli` (
  `nofaktur` varchar(11) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `hsatuan` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `bayar` int(30) NOT NULL,
  `kembalian` int(40) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_beli`
--

INSERT INTO `tbl_beli` (`nofaktur`, `nama_pembeli`, `kd_barang`, `nama_barang`, `hsatuan`, `jumlah_beli`, `harga`, `bayar`, `kembalian`, `tanggal`) VALUES
('F0001', 'Sari', 'B0002', 'FLASHDISK', 55000, 2, 110000, 300000, 100000, '2019-12-13'),
('F0001', 'Sari', 'B0004', 'CHARGER', 30000, 3, 90000, 300000, 100000, '2019-12-13'),
('F0002', 'Sari', 'B0003', 'HEADSET', 30000, 2, 60000, 100000, 12000, '2019-12-13'),
('F0002', 'Sari', 'B0005', 'MASKER', 7000, 4, 28000, 100000, 12000, '2019-12-13'),
('F0003', 'Dayanti', 'B0003', 'HEADSET', 30000, 2, 60000, 200000, 0, '2019-12-14'),
('F0003', 'Dayanti', 'B0005', 'MASKER', 7000, 5, 35000, 200000, 0, '2019-12-14'),
('F0003', 'Dayanti', 'B0006', 'PAYUNG', 35000, 3, 105000, 200000, 0, '2019-12-14'),
('F0004', 'Dayanti', 'B0002', 'FLASHDISK', 55000, 3, 165000, 200000, 5000, '2019-12-16'),
('F0004', 'Dayanti', 'B0004', 'CHARGER', 30000, 1, 30000, 200000, 5000, '2019-12-16'),
('F0005', 'Yatmi', 'B0016', 'HANDUK', 30000, 4, 120000, 200000, 32000, '2019-12-19'),
('F0005', 'Yatmi', 'B0014', 'GELANG', 8000, 6, 48000, 200000, 32000, '2019-12-19'),
('F0006', 'Robi', 'B0005', 'MASKER', 7000, 3, 21000, 150000, 9000, '2019-12-21'),
('F0006', 'Robi', 'B0003', 'HEADSET', 30000, 4, 120000, 150000, 9000, '2019-12-21'),
('F0007', 'Yatmi', 'B0004', 'CHARGER', 30000, 3, 90000, 100000, 10000, '2019-12-23'),
('F0008', 'Robi', 'B0014', 'GELANG', 8000, 4, 32000, 200000, 13000, '2019-12-26'),
('F0008', 'Robi', 'B0012', 'SARUNG TANGAN', 7000, 5, 35000, 200000, 13000, '2019-12-26'),
('F0008', 'Robi', 'B0016', 'HANDUK', 30000, 4, 120000, 200000, 13000, '2019-12-26'),
('F0009', 'Bayu', 'B0004', 'CHARGER', 30000, 4, 120000, 200000, 31000, '2019-12-26'),
('F0009', 'Bayu', 'B0015', 'KAOS KAKI', 7000, 4, 28000, 200000, 31000, '2019-12-26'),
('F0009', 'Bayu', 'B0012', 'SARUNG TANGAN', 7000, 3, 21000, 200000, 31000, '2019-12-26'),
('F0010', 'Choirul', 'B0012', 'SARUNG TANGAN', 7000, 3, 21000, 300000, 39000, '2020-01-09'),
('F0010', 'Choirul', 'B0016', 'HANDUK', 30000, 8, 240000, 300000, 39000, '2020-01-09'),
('F0011', 'Iwan', 'B0003', 'HEADSET', 30000, 6, 180000, 550000, 125000, '2020-01-09'),
('F0011', 'Iwan', 'B0006', 'PAYUNG', 35000, 7, 245000, 550000, 125000, '2020-01-09'),
('F0012', 'MONA', 'B0002', 'TOPI', 20000, 3, 60000, 150000, 40000, '2020-01-18'),
('F0012', 'MONA', 'B0001', 'MOUSE', 10000, 5, 50000, 150000, 40000, '2020-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`username`, `password`, `jenis_kelamin`, `email`, `no_telp`, `agama`, `alamat`) VALUES
('Bayu', '12345', 'Laki-Laki', 'Bayu009@Gmail.com', '081288134456', 'KHATOLIK', 'Bandung'),
('Himawan', '1234', 'Laki-Laki', 'Himawan@gmail.com', '089601720064', 'ISLAM', 'jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembeli`
--

CREATE TABLE IF NOT EXISTS `tbl_pembeli` (
  `id_pembeli` varchar(20) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `no_telpon` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembeli1`
--

CREATE TABLE IF NOT EXISTS `tbl_pembeli1` (
  `id_pembeli` varchar(20) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `no_telpon` varchar(40) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembeli1`
--

INSERT INTO `tbl_pembeli1` (`id_pembeli`, `nama_pembeli`, `alamat`, `no_telpon`, `jenis_kelamin`, `agama`) VALUES
('P0001', 'SARI', 'DEPOK', '089601720064', 'Perempuan', 'ISLAM'),
('P0002', 'DAYANTI', 'DEPOK', '089522006017', 'Laki', 'ISLAM'),
('P0003', 'RINA', 'JAKARTA', '087766551165', 'Perempuan', 'ISLAM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tmp_beli`
--

CREATE TABLE IF NOT EXISTS `tbl_tmp_beli` (
`id_tmp` int(11) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `hsatuan` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Triggers `tbl_tmp_beli`
--
DELIMITER //
CREATE TRIGGER `batal` AFTER DELETE ON `tbl_tmp_beli`
 FOR EACH ROW BEGIN
UPDATE tbl_barang SET jumlah_barang = jumlah_barang + OLD.jumlah_beli
WHERE kd_barang = OLD.kd_barang;
END
//
DELIMITER ;
DELIMITER //
CREATE TRIGGER `beli` AFTER INSERT ON `tbl_tmp_beli`
 FOR EACH ROW BEGIN 
UPDATE tbl_barang SET jumlah_barang = jumlah_barang - new.jumlah_beli 
WHERE kd_barang = new.`kd_barang`; 
END
//
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
 ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_pembeli`
--
ALTER TABLE `tbl_pembeli`
 ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `tbl_pembeli1`
--
ALTER TABLE `tbl_pembeli1`
 ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `tbl_tmp_beli`
--
ALTER TABLE `tbl_tmp_beli`
 ADD PRIMARY KEY (`id_tmp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_tmp_beli`
--
ALTER TABLE `tbl_tmp_beli`
MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
