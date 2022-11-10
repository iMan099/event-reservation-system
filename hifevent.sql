-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2022 at 02:45 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hifevent`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `product_id` bigint(20) NOT NULL DEFAULT 0,
  `quantity` bigint(20) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '',
  `cn` varchar(50) NOT NULL DEFAULT '',
  `cvv` varchar(50) NOT NULL DEFAULT '',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `totalpayment` bigint(20) NOT NULL,
  `orderdatetime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `user_id`, `product_id`, `quantity`, `phone`, `cn`, `cvv`, `start_date`, `end_date`, `totalpayment`, `orderdatetime`) VALUES
(1, 19, 1, 1, '0', '0', '0', '2022-02-26', '2022-02-28', 4500, '2022-02-21'),
(2, 19, 2, 1, '0', '0', '0', '2022-02-26', '2022-02-28', 1500, '2022-02-21'),
(19, 23, 2, 1, '', '2356', '345', '2022-02-22', '2022-02-22', 500, '2022-02-21'),
(20, 23, 1, 1, '', '932844', '987', '2022-02-22', '2022-02-22', 1500, '2022-02-22'),
(21, 24, 3, 1, '', '56238328', '555', '2022-02-22', '2022-02-22', 1800, '2022-02-22'),
(22, 25, 2, 2, '', '9279075', '777', '2022-03-07', '2022-03-08', 1000, '2022-02-22'),
(23, 26, 1, 2, '', '4365734', '799', '2022-03-16', '2022-03-17', 3000, '2022-02-22'),
(24, 27, 2, 1, '', '98230979', '333', '2022-03-15', '2022-03-15', 500, '2022-02-22'),
(25, 28, 1, 1, '', '1263926391', '111', '2022-03-29', '2022-03-29', 1500, '2022-02-22'),
(26, 29, 2, 1, '', '998687674', '979', '2022-03-01', '2022-03-01', 500, '2022-02-22'),
(27, 30, 1, 1, '', '984952938392', '777', '2022-03-31', '2022-03-31', 1500, '2022-02-22'),
(28, 31, 1, 1, '', '654673', '111', '2022-02-22', '2022-02-22', 1500, '2022-02-22'),
(29, 32, 3, 1, '', '03990842', '233', '2022-03-02', '2022-03-02', 1800, '2022-02-22'),
(30, 33, 2, 2, '', '5236472777', '888', '2022-03-13', '2022-03-14', 1000, '2022-02-22'),
(31, 34, 1, 1, '', '6748873573', '754', '2022-03-27', '2022-03-27', 1500, '2022-02-22'),
(32, 35, 3, 1, '', '4265787', '55255', '2022-03-21', '2022-03-21', 1800, '2022-02-22'),
(33, 36, 2, 1, '', '34647', '76374', '2022-03-05', '2022-03-05', 500, '2022-02-22'),
(34, 37, 1, 1, '', '827826762', '892632', '2022-06-25', '2022-06-25', 1500, '2022-02-22'),
(35, 38, 1, 1, '', '32863218932', '111332', '2022-04-20', '2022-04-20', 1500, '2022-02-22'),
(36, 39, 2, 3, '', '726723517', '458372', '2022-07-20', '2022-07-22', 1500, '2022-02-22'),
(37, 40, 3, 3, '', '3732138279532', '8625289', '2022-03-17', '2022-03-19', 5400, '2022-02-22'),
(38, 41, 2, 1, '', '318738319', '38612', '2022-03-31', '2022-03-31', 500, '2022-02-22'),
(39, 42, 1, 1, '', '78329832`', '234415', '2022-04-06', '2022-04-06', 1500, '2022-02-22'),
(40, 43, 2, 5, '', '3978748684', '244224', '2022-03-13', '2022-03-17', 2500, '2022-02-22'),
(41, 44, 3, 2, '', '86489161', '3762398132', '2022-05-09', '2022-05-10', 3600, '2022-02-22'),
(42, 45, 1, 1, '', '88971061', '3234413', '2022-02-27', '2022-02-27', 1500, '2022-02-22'),
(43, 46, 2, 2, '', '836813', '545646', '2022-03-08', '2022-03-09', 1000, '2022-02-22'),
(44, 47, 1, 5, '', '9073846892', '3252546', '2022-09-06', '2022-09-10', 7500, '2022-02-22'),
(45, 48, 3, 2, '', '83296328932', '251555', '2022-03-15', '2022-03-16', 3600, '2022-02-22'),
(46, 49, 3, 4, '', '82619812621', '563537', '2022-04-05', '2022-04-08', 7200, '2022-02-22'),
(47, 50, 2, 6, '', '9783689315', '53732', '2022-11-22', '2022-11-27', 3000, '2022-02-22'),
(48, 51, 3, 1, '', '8631082', '53637777', '2022-03-09', '2022-03-09', 1800, '2022-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` bigint(20) NOT NULL,
  `event_name` text NOT NULL,
  `rent` double(10,2) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `event_name`, `rent`, `image`) VALUES
(1, 'Wedding Ceremony', 1500.00, 'wedding.jpeg'),
(2, 'Birthday Event', 500.00, 'birthday.jpeg'),
(3, 'Conference Meeting Event', 1800.00, 'meeting.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `nama` text NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `user`, `password`) VALUES
(19, 'Nurul Iszuatie Hawa binti Sohaidi', 'Iszuatie', 'e99a18c428cb38d5f260853678922e03'),
(21, 'Nurfahanim binti Kamarul Sharidan', 'Fanim', '7156813ac85960c2aac62385d1514f39'),
(22, 'Nurul Iman', 'Iman', '4979be418e8bb722c035f1fe81c2c112'),
(23, 'ken', 'ken5', 'd09bf41544a3365a46c9077ebb5e35c3'),
(24, 'Amy Search', 'Amy7', '8f14e45fceea167a5a36dedd4bea2543'),
(25, 'Hideaki Takizawa', 'Tackey', '202cb962ac59075b964b07152d234b70'),
(26, 'Dhanush', 'Dee', '1c383cd30b7c298ab50293adfecb7b18'),
(27, 'Muhammad', 'M37', 'a5bfc9e07964f8dddeb95fc584cd965d'),
(28, 'Siti Saleha', 'Sally', '787f2bff3a2bfce9dc670242b1abdfa4'),
(29, 'JC Chasez', 'JC', 'c2477f223c3c4ca19a5029e0cd91fda8'),
(30, 'Zuraidah', 'Zue', '7f39f8317fbdb1988ef4c628eba02591'),
(31, 'BadrulNizam', 'Nizam', 'cf2dceddd8630e69beb85e074f142329'),
(32, 'Kurt Cobain', 'Kurt', 'c4ca4238a0b923820dcc509a6f75849b'),
(33, 'Anggun Cipta', 'Anggun', 'c6f057b86584942e415435ffb1fa93d4'),
(34, 'Axl Rose', 'Axl', '5161ebb0cce4b7987ba8b6935d60a180'),
(35, 'Slash', 'Slash', '0a8005f5594bd67041f88c6196192646'),
(36, 'Camilia', 'Lia', 'd95679752134a2d9eb61dbd7b91c4bcc'),
(37, 'Enrique', 'Enn', 'c4ca4238a0b923820dcc509a6f75849b'),
(38, 'Siti Nurhaliza', 'CTDK', '4fdeddb85f44ee6ef00c9c40c2c802fe'),
(39, 'Lisa Surihani', 'Lisa', '3bf550fd817a2fb8e7580c325e14e476'),
(40, 'Michael Schumacher', 'Schu', '289dff07669d7a23de0ef88d2f7129e7'),
(41, 'Jared Leto', 'Jared', '6caeba444797a281a0110e0c80ad5814'),
(42, 'Zafran Ahmad', 'Zafran', 'eccbc87e4b5ce2fe28308fd9f2a7baf3'),
(43, 'Iylia', 'Iylia', 'b53b3a3d6ab90ce0268229151c9bde11'),
(44, 'Lee Chong Wei', 'Chong Wei', 'c6f057b86584942e415435ffb1fa93d4'),
(45, 'Hrithik Roshan', 'Hrithik', '17e62166fc8586dfa4d1bc0e1742c08b'),
(46, 'Catherine Zeta Jones', 'Cath', '37693cfc748049e45d87b8c7d8b9aacd'),
(47, 'Takuya Kimura', 'Takuya', '5ab8a99e2d3cf536aee59bc8d71d5f0b'),
(48, 'Oulia Jones', 'Oulia', '19b19ffc30caef1c9376cd2982992a59'),
(49, 'Farah Qistina', 'Farah', 'ee0436e2bbffea899a517fa35fca0e96'),
(50, 'John Lennon', 'John', '03c7c0ace395d80182db07ae2c30f034'),
(51, 'Karam Singh', 'Karam', 'c81e728d9d4c2f636f067f89cc14862c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
