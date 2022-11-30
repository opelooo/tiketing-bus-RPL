<<<<<<< HEAD
/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.14-MariaDB : Database - db_tiket
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_tiket` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_tiket`;

/*Table structure for table `tbl_access_menu` */

DROP TABLE IF EXISTS `tbl_access_menu`;

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_access_menu` */

insert  into `tbl_access_menu`(`kd_access_menu`,`kd_level`,`kd_menu`) values 
(1,1,1),
(2,1,2),
(3,2,2),
(1,1,1),
(2,1,2),
(3,2,2);

/*Table structure for table `tbl_admin` */

DROP TABLE IF EXISTS `tbl_admin`;

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_admin` */

insert  into `tbl_admin`(`kd_admin`,`nama_admin`,`username_admin`,`password_admin`,`img_admin`,`email_admin`,`level_admin`,`status_admin`,`date_create_admin`) values 
('ADM0001','Administrator','admin','$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG','assets/backend/img/default.png','adm@gmail.com','2',1,'1552276812'),
('ADM0002','Juan Warwer Kampas Kopling','bahyu','$2y$10$ADbNVZYgiDi8SqGl1bB2NOgCufT2sK5v/T3BSZcIpFPVljDSb2S2K','assets/backend/img/default.png','cbahyu@gmail.com','1',1,'1552819095'),
('ADM0003','Juan Warwer Kampas Kopling','owner','$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG','assets/backend/img/default.png','owner@gmail.com','1',1,'1552819095');

/*Table structure for table `tbl_asal` */

/*Data for the table `tbl_asal` */

/*Table structure for table `tbl_bank` */

DROP TABLE IF EXISTS `tbl_bank`;

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kd_bank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_bank` */

insert  into `tbl_bank`(`kd_bank`,`nasabah_bank`,`nama_bank`,`nomrek_bank`,`photo_bank`) values 
('BNK0001','Bahyu Sanciko','BCA','5490252063','assets/frontend/img/bank/bca-icon.jpg'),
('BNK0002','Bahyu Sanciko','MANDIRI','6666666666','assets/frontend/img/bank/mandiri-icon.jpg'),
('BNK0003','Bahyu Sanciko','BRI','7777777777','assets/frontend/img/bank/bri-icon.jpg'),
('BNK0004','Bahyu Sanciko','BNI','8888888888','assets/frontend/img/bank/bni-icon.jpg');

/*Table structure for table `tbl_bus` */

DROP TABLE IF EXISTS `tbl_bus`;

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_bus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_bus` */

insert  into `tbl_bus`(`kd_bus`,`nama_bus`,`plat_bus`,`kapasitas_bus`,`status_bus`,`desc_bus`) values 
('B001','JKT1','B 4514 BLN',19,1,'--'),
('B002','JKT2','B 4514 BLN',19,1,'--'),
('B003','BDG1','B 4514 BLN',19,1,'--'),
('B004','BDG2','B 4514 BLN',19,1,'--'),
('B005','BDG3','B 4561 BLN',19,1,'--'),
('B006','JKT3','B 1234 BLN',19,1,'--'),
('B007','JKT48','B 4848 JKT',19,1,NULL),
('B008','JKT45','B 1235 CCC',19,1,NULL);

/*Table structure for table `tbl_jadwal` */

DROP TABLE IF EXISTS `tbl_jadwal`;

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_jadwal`),
  KEY `kd_bus` (`kd_bus`),
  KEY `kd_tujuan` (`kd_tujuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_jadwal` */

insert  into `tbl_jadwal`(`kd_jadwal`,`kd_bus`,`kd_tujuan`,`wilayah_jadwal`,`jam_berangkat_jadwal`,`jam_tiba_jadwal`,`harga_jadwal`) values 
('J0001','B003','TJ002','bandung','07:00:00','10:30:00','112500'),
('J0002','B004','TJ005','bandung','12:00:00','15:45:00','123000'),
('J0003','B005','TJ006','bandung','16:00:00','19:00:00','134000'),
('J0004','B001','TJ001','jakarta','07:30:00','10:00:00','145000'),
('J0005','B002','TJ003','jakarta','11:00:00','03:00:00','132000'),
('J0006','B006','TJ004','jakarta','17:00:00','20:00:00','128000');

/*Table structure for table `tbl_konfirmasi` */

DROP TABLE IF EXISTS `tbl_konfirmasi`;

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kd_konfirmasi`),
  KEY `kode_order` (`kd_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_konfirmasi` */

insert  into `tbl_konfirmasi`(`kd_konfirmasi`,`kd_order`,`nama_konfirmasi`,`nama_bank_konfirmasi`,`norek_konfirmasi`,`total_konfirmasi`,`photo_konfirmasi`) values 
('KF0001','ORD00001','najsdkkasdn','BCA','213123','536000','/assets/frontend/upload/payment/10__home.png'),
('KF0002','ORD00002','test','BCA','23456543','528000','/assets/frontend/upload/payment/Penguins.jpg'),
('KF0003','ORD00003','adsdsa','BCA','12','290000','/assets/frontend/upload/payment/14__laporan_transaksi1.png');

/*Table structure for table `tbl_level` */

DROP TABLE IF EXISTS `tbl_level`;

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_level` */

insert  into `tbl_level`(`kd_level`,`nama_level`) values 
(1,'owner'),
(2,'administrator');

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`kd_menu`,`nama_menu`) values 
(1,'owner'),
(2,'administrator');

/*Table structure for table `tbl_order` */

DROP TABLE IF EXISTS `tbl_order`;

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `kd_jadwal` (`kd_jadwal`),
  KEY `kd_kustomer` (`kd_pelanggan`),
  KEY `kd_tiket` (`kd_tiket`),
  KEY `kd_bank` (`kd_bank`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_order` */

insert  into `tbl_order`(`id_order`,`kd_order`,`kd_tiket`,`kd_jadwal`,`kd_pelanggan`,`kd_bank`,`asal_order`,`nama_order`,`tgl_beli_order`,`tgl_berangkat_order`,`nama_kursi_order`,`umur_kursi_order`,`no_kursi_order`,`no_ktp_order`,`no_tlpn_order`,`alamat_order`,`email_order`,`expired_order`,`qrcode_order`,`status_order`) values 
(11,'ORD00001','TORD00001J0004TJ002201904253','J0004','PL0001','BNK0002','TJ002','Bahyu Sanciko','Jumat, 12 April 2019, 09:22','2019-04-25','asdd','90','3','021452125','089682261128','JL AJA','cbahyu@gmail.com','13-04-2019 09:22:48','assets/frontend/upload/qrcode/ORD00001.png','2'),
(12,'ORD00001','TORD00001J0004TJ002201904254','J0004','PL0001','BNK0002','TJ002','Bahyu Sanciko','Jumat, 12 April 2019, 09:22','2019-04-25','asda','90','4','021452125','089682261128','JL AJA','cbahyu@gmail.com','13-04-2019 09:22:48','assets/frontend/upload/qrcode/ORD00001.png','2');

/*Table structure for table `tbl_pelanggan` */

DROP TABLE IF EXISTS `tbl_pelanggan`;

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kd_pelanggan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_pelanggan` */

insert  into `tbl_pelanggan`(`kd_pelanggan`,`username_pelanggan`,`password_pelanggan`,`no_ktp_pelanggan`,`nama_pelanggan`,`alamat_pelanggan`,`email_pelanggan`,`telpon_pelanggan`,`img_pelanggan`,`status_pelanggan`,`date_create_pelanggan`) values 
('PL0002','sella','$2y$10$wzz5.QSqiNfrc2JKuYK5huJHEvry340XZlspPACOJLf0TmU3yu30.','02564651321564','sella','jenong','sellapurwita36@gmail.com','089682261128','assets/frontend/img/default.png',1,'1552202266'),
('PL0001','bahyu','$2y$10$PO4viVqheGgw7HPeozUih.V6qK4aWKbACLMe9UWOoSaJ8pSdaiISG','021452125','Bahyu Sanciko','JL AJA','cbahyu@gmail.com','089682261128','assets/frontend/img/default.png',1,'1552199781'),
('PL0003','Dimas','$2y$10$N6imN8KmAhuw9rH.iJxGLeVaRCG.27UmhHVF7MaICMhYlm.TGJ9iy','346454215172455','Dimas','Cengkareng','dimasrestuadrianto@gmail.com','6281299397276','assets/frontend/img/default.png',1,'1552397128'),
('PL0005','kamuanjing','$2y$10$PYDzqnOpzeGSo0ngK40Q1.M77oxnQ7fvhMYpI2q/JoZFS5r.g5FPG','321963127368762639','aku cinta kmu','bangsat','ayudharachman@gmail.com','09821312387','assets/frontend/img/default.png',1,'1554340197'),
('PL0004','kelas109','$2y$10$hHamfvIRbCNYiAvS289f0uj.T6kUfpfxTUcI210SLRqdTrxj4zyxG','78456','Kelas109','jlin aja','kelas109si@gmail.com','089682261128','assets/frontend/img/default.png',1,'1554017732'),
('PL0006','Rakel','$2y$10$pwr/ZSCVcya8JOV1Xt13qeRzhz.nLsJGWYcWWZJgR5DFLUfjJeaGO','','Rakel','Jl.in aja dulu','rizkifirmansyah435@gmail.com','08745179471','assets/frontend/img/default.png',1,'1554385261'),
('PL0007','Aritest','$2y$10$Z7yJqwWa0pCPtGb5sVYf9epvdjT97BD9U4guma.EhKU3JS9H675lG','','ari','test','aliansah629@gmail.com','08987654345','assets/frontend/img/default.png',1,'1554534514');

/*Table structure for table `tbl_sub_menu` */

DROP TABLE IF EXISTS `tbl_sub_menu`;

CREATE TABLE `tbl_sub_menu` (
  `kd_sub_menu` int(11) NOT NULL,
  `kd_menu` int(11) DEFAULT NULL,
  `title_sub_menu` varchar(128) DEFAULT NULL,
  `url_sub_menu` varchar(128) DEFAULT NULL,
  `is_active_sub_menu` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`kd_sub_menu`),
  KEY `kd_menu` (`kd_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_sub_menu` */

insert  into `tbl_sub_menu`(`kd_sub_menu`,`kd_menu`,`title_sub_menu`,`url_sub_menu`,`is_active_sub_menu`) values 
(0,1,'Dashboard','backend/home','1');

/*Table structure for table `tbl_tiket` */

DROP TABLE IF EXISTS `tbl_tiket`;

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_tiket`),
  KEY `kode_order` (`kd_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tiket` */

insert  into `tbl_tiket`(`kd_tiket`,`kd_order`,`nama_tiket`,`kursi_tiket`,`umur_tiket`,`asal_beli_tiket`,`harga_tiket`,`etiket_tiket`,`status_tiket`,`create_tgl_tiket`,`create_admin_tiket`) values 
('TORD00001J0004TJ002201904253','ORD00001','asdd','3','90 Tahun','TJ002','145000','assets/backend/upload/etiket/ORD00001.pdf','2','2019-04-12','bahyu'),
('TORD00001J0004TJ002201904254','ORD00001','asda','4','90 Tahun','TJ002','145000','assets/backend/upload/etiket/ORD00001.pdf','2','2019-04-12','bahyu');

/*Table structure for table `tbl_token_pelanggan` */

DROP TABLE IF EXISTS `tbl_token_pelanggan`;

CREATE TABLE `tbl_token_pelanggan` (
  `kd_token` int(11) NOT NULL AUTO_INCREMENT,
  `nama_token` varchar(256) DEFAULT NULL,
  `email_token` varchar(50) DEFAULT NULL,
  `date_create_token` int(11) DEFAULT NULL,
  PRIMARY KEY (`kd_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_token_pelanggan` */

/*Table structure for table `tbl_tujuan` */

DROP TABLE IF EXISTS `tbl_tujuan`;

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_tujuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tujuan` */

insert  into `tbl_tujuan`(`kd_tujuan`,`kota_tujuan`,`nama_terminal_tujuan`,`terminal_tujuan`) values 
('TJ001','jakarta','Terminal Kayu Besar','Jl. Auto Ring Road Kapuk Kamal Kayu Besar, Cengkareng, RT.7/RW.8, Cengkareng Bar., Cengkareng, Kota '),
('TJ002','bandung','Terminal Bojongloa ','Jl. Raya Sawahan No.283, Situsaeur, Bojongloa Kidul, Kota Bandung, Jawa Barat 40235'),
('TJ003','jakarta','Terminal Rawa Buaya','Jl. Darma Wanita 1 No.10, RT.7/RW.6, Duri Kosambi, Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibu'),
('TJ004','jakarta','Termnial Kali Deres','Terminal bus Kalideres, Jl. Daan Mogot, RT.4/RW.1, Kalideres, West Jakarta City, Jakarta 11840'),
('TJ005','bandung','Terminal Babakan','JL. Raya Gede Bage No.68, Babakan Penghulu, Cinambo, Bandung City, West Java 40295'),
('TJ006','bandung','Terimnal Ledeng','Jl. Setiabudhi Dalam, Ledeng, Cidadap, Kota Bandung, Jawa Barat 40143');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
=======
/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.14-MariaDB : Database - db_tiket
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_tiket` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_tiket`;

/*Table structure for table `tbl_access_menu` */

DROP TABLE IF EXISTS `tbl_access_menu`;

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_access_menu` */

insert  into `tbl_access_menu`(`kd_access_menu`,`kd_level`,`kd_menu`) values 
(1,1,1),
(2,1,2),
(3,2,2),
(1,1,1),
(2,1,2),
(3,2,2);

/*Table structure for table `tbl_admin` */

DROP TABLE IF EXISTS `tbl_admin`;

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_admin` */

insert  into `tbl_admin`(`kd_admin`,`nama_admin`,`username_admin`,`password_admin`,`img_admin`,`email_admin`,`level_admin`,`status_admin`,`date_create_admin`) values 
('ADM0001','Administrator','admin','$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG','assets/backend/img/default.png','adm@gmail.com','2',1,'1552276812'),
('ADM0002','Juan Warwer Kampas Kopling','bahyu','$2y$10$ADbNVZYgiDi8SqGl1bB2NOgCufT2sK5v/T3BSZcIpFPVljDSb2S2K','assets/backend/img/default.png','cbahyu@gmail.com','1',1,'1552819095'),
('ADM0003','Juan Warwer Kampas Kopling','owner','$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG','assets/backend/img/default.png','owner@gmail.com','1',1,'1552819095');

/*Table structure for table `tbl_asal` */

/*Data for the table `tbl_asal` */

/*Table structure for table `tbl_bank` */

DROP TABLE IF EXISTS `tbl_bank`;

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kd_bank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_bank` */

insert  into `tbl_bank`(`kd_bank`,`nasabah_bank`,`nama_bank`,`nomrek_bank`,`photo_bank`) values 
('BNK0001','Bahyu Sanciko','BCA','5490252063','assets/frontend/img/bank/bca-icon.jpg'),
('BNK0002','Bahyu Sanciko','MANDIRI','6666666666','assets/frontend/img/bank/mandiri-icon.jpg'),
('BNK0003','Bahyu Sanciko','BRI','7777777777','assets/frontend/img/bank/bri-icon.jpg'),
('BNK0004','Bahyu Sanciko','BNI','8888888888','assets/frontend/img/bank/bni-icon.jpg');

/*Table structure for table `tbl_bus` */

DROP TABLE IF EXISTS `tbl_bus`;

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_bus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_bus` */

insert  into `tbl_bus`(`kd_bus`,`nama_bus`,`plat_bus`,`kapasitas_bus`,`status_bus`,`desc_bus`) values 
('B001','JKT1','B 4514 BLN',19,1,'--'),
('B002','JKT2','B 4514 BLN',19,1,'--'),
('B003','BDG1','B 4514 BLN',19,1,'--'),
('B004','BDG2','B 4514 BLN',19,1,'--'),
('B005','BDG3','B 4561 BLN',19,1,'--'),
('B006','JKT3','B 1234 BLN',19,1,'--'),
('B007','JKT48','B 4848 JKT',19,1,NULL),
('B008','JKT45','B 1235 CCC',19,1,NULL);

/*Table structure for table `tbl_jadwal` */

DROP TABLE IF EXISTS `tbl_jadwal`;

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_jadwal`),
  KEY `kd_bus` (`kd_bus`),
  KEY `kd_tujuan` (`kd_tujuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_jadwal` */

insert  into `tbl_jadwal`(`kd_jadwal`,`kd_bus`,`kd_tujuan`,`wilayah_jadwal`,`jam_berangkat_jadwal`,`jam_tiba_jadwal`,`harga_jadwal`) values 
('J0001','B003','TJ002','bandung','07:00:00','10:30:00','112500'),
('J0002','B004','TJ005','bandung','12:00:00','15:45:00','123000'),
('J0003','B005','TJ006','bandung','16:00:00','19:00:00','134000'),
('J0004','B001','TJ001','jakarta','07:30:00','10:00:00','145000'),
('J0005','B002','TJ003','jakarta','11:00:00','03:00:00','132000'),
('J0006','B006','TJ004','jakarta','17:00:00','20:00:00','128000');

/*Table structure for table `tbl_konfirmasi` */

DROP TABLE IF EXISTS `tbl_konfirmasi`;

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kd_konfirmasi`),
  KEY `kode_order` (`kd_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_konfirmasi` */

insert  into `tbl_konfirmasi`(`kd_konfirmasi`,`kd_order`,`nama_konfirmasi`,`nama_bank_konfirmasi`,`norek_konfirmasi`,`total_konfirmasi`,`photo_konfirmasi`) values 
('KF0001','ORD00001','najsdkkasdn','BCA','213123','536000','/assets/frontend/upload/payment/10__home.png'),
('KF0002','ORD00002','test','BCA','23456543','528000','/assets/frontend/upload/payment/Penguins.jpg'),
('KF0003','ORD00003','adsdsa','BCA','12','290000','/assets/frontend/upload/payment/14__laporan_transaksi1.png');

/*Table structure for table `tbl_level` */

DROP TABLE IF EXISTS `tbl_level`;

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_level` */

insert  into `tbl_level`(`kd_level`,`nama_level`) values 
(1,'owner'),
(2,'administrator');

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`kd_menu`,`nama_menu`) values 
(1,'owner'),
(2,'administrator');

/*Table structure for table `tbl_order` */

DROP TABLE IF EXISTS `tbl_order`;

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `kd_jadwal` (`kd_jadwal`),
  KEY `kd_kustomer` (`kd_pelanggan`),
  KEY `kd_tiket` (`kd_tiket`),
  KEY `kd_bank` (`kd_bank`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_order` */

insert  into `tbl_order`(`id_order`,`kd_order`,`kd_tiket`,`kd_jadwal`,`kd_pelanggan`,`kd_bank`,`asal_order`,`nama_order`,`tgl_beli_order`,`tgl_berangkat_order`,`nama_kursi_order`,`umur_kursi_order`,`no_kursi_order`,`no_ktp_order`,`no_tlpn_order`,`alamat_order`,`email_order`,`expired_order`,`qrcode_order`,`status_order`) values 
(11,'ORD00001','TORD00001J0004TJ002201904253','J0004','PL0001','BNK0002','TJ002','Bahyu Sanciko','Jumat, 12 April 2019, 09:22','2019-04-25','asdd','90','3','021452125','089682261128','JL AJA','cbahyu@gmail.com','13-04-2019 09:22:48','assets/frontend/upload/qrcode/ORD00001.png','2'),
(12,'ORD00001','TORD00001J0004TJ002201904254','J0004','PL0001','BNK0002','TJ002','Bahyu Sanciko','Jumat, 12 April 2019, 09:22','2019-04-25','asda','90','4','021452125','089682261128','JL AJA','cbahyu@gmail.com','13-04-2019 09:22:48','assets/frontend/upload/qrcode/ORD00001.png','2');

/*Table structure for table `tbl_pelanggan` */

DROP TABLE IF EXISTS `tbl_pelanggan`;

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kd_pelanggan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_pelanggan` */

insert  into `tbl_pelanggan`(`kd_pelanggan`,`username_pelanggan`,`password_pelanggan`,`no_ktp_pelanggan`,`nama_pelanggan`,`alamat_pelanggan`,`email_pelanggan`,`telpon_pelanggan`,`img_pelanggan`,`status_pelanggan`,`date_create_pelanggan`) values 
('PL0002','sella','$2y$10$wzz5.QSqiNfrc2JKuYK5huJHEvry340XZlspPACOJLf0TmU3yu30.','02564651321564','sella','jenong','sellapurwita36@gmail.com','089682261128','assets/frontend/img/default.png',1,'1552202266'),
('PL0001','bahyu','$2y$10$PO4viVqheGgw7HPeozUih.V6qK4aWKbACLMe9UWOoSaJ8pSdaiISG','021452125','Bahyu Sanciko','JL AJA','cbahyu@gmail.com','089682261128','assets/frontend/img/default.png',1,'1552199781'),
('PL0003','Dimas','$2y$10$N6imN8KmAhuw9rH.iJxGLeVaRCG.27UmhHVF7MaICMhYlm.TGJ9iy','346454215172455','Dimas','Cengkareng','dimasrestuadrianto@gmail.com','6281299397276','assets/frontend/img/default.png',1,'1552397128'),
('PL0005','kamuanjing','$2y$10$PYDzqnOpzeGSo0ngK40Q1.M77oxnQ7fvhMYpI2q/JoZFS5r.g5FPG','321963127368762639','aku cinta kmu','bangsat','ayudharachman@gmail.com','09821312387','assets/frontend/img/default.png',1,'1554340197'),
('PL0004','kelas109','$2y$10$hHamfvIRbCNYiAvS289f0uj.T6kUfpfxTUcI210SLRqdTrxj4zyxG','78456','Kelas109','jlin aja','kelas109si@gmail.com','089682261128','assets/frontend/img/default.png',1,'1554017732'),
('PL0006','Rakel','$2y$10$pwr/ZSCVcya8JOV1Xt13qeRzhz.nLsJGWYcWWZJgR5DFLUfjJeaGO','','Rakel','Jl.in aja dulu','rizkifirmansyah435@gmail.com','08745179471','assets/frontend/img/default.png',1,'1554385261'),
('PL0007','Aritest','$2y$10$Z7yJqwWa0pCPtGb5sVYf9epvdjT97BD9U4guma.EhKU3JS9H675lG','','ari','test','aliansah629@gmail.com','08987654345','assets/frontend/img/default.png',1,'1554534514');

/*Table structure for table `tbl_sub_menu` */

DROP TABLE IF EXISTS `tbl_sub_menu`;

CREATE TABLE `tbl_sub_menu` (
  `kd_sub_menu` int(11) NOT NULL,
  `kd_menu` int(11) DEFAULT NULL,
  `title_sub_menu` varchar(128) DEFAULT NULL,
  `url_sub_menu` varchar(128) DEFAULT NULL,
  `is_active_sub_menu` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`kd_sub_menu`),
  KEY `kd_menu` (`kd_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_sub_menu` */

insert  into `tbl_sub_menu`(`kd_sub_menu`,`kd_menu`,`title_sub_menu`,`url_sub_menu`,`is_active_sub_menu`) values 
(0,1,'Dashboard','backend/home','1');

/*Table structure for table `tbl_tiket` */

DROP TABLE IF EXISTS `tbl_tiket`;

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_tiket`),
  KEY `kode_order` (`kd_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tiket` */

insert  into `tbl_tiket`(`kd_tiket`,`kd_order`,`nama_tiket`,`kursi_tiket`,`umur_tiket`,`asal_beli_tiket`,`harga_tiket`,`etiket_tiket`,`status_tiket`,`create_tgl_tiket`,`create_admin_tiket`) values 
('TORD00001J0004TJ002201904253','ORD00001','asdd','3','90 Tahun','TJ002','145000','assets/backend/upload/etiket/ORD00001.pdf','2','2019-04-12','bahyu'),
('TORD00001J0004TJ002201904254','ORD00001','asda','4','90 Tahun','TJ002','145000','assets/backend/upload/etiket/ORD00001.pdf','2','2019-04-12','bahyu');

/*Table structure for table `tbl_token_pelanggan` */

DROP TABLE IF EXISTS `tbl_token_pelanggan`;

CREATE TABLE `tbl_token_pelanggan` (
  `kd_token` int(11) NOT NULL AUTO_INCREMENT,
  `nama_token` varchar(256) DEFAULT NULL,
  `email_token` varchar(50) DEFAULT NULL,
  `date_create_token` int(11) DEFAULT NULL,
  PRIMARY KEY (`kd_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_token_pelanggan` */

/*Table structure for table `tbl_tujuan` */

DROP TABLE IF EXISTS `tbl_tujuan`;

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_tujuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tujuan` */

insert  into `tbl_tujuan`(`kd_tujuan`,`kota_tujuan`,`nama_terminal_tujuan`,`terminal_tujuan`) values 
('TJ001','jakarta','Terminal Kayu Besar','Jl. Auto Ring Road Kapuk Kamal Kayu Besar, Cengkareng, RT.7/RW.8, Cengkareng Bar., Cengkareng, Kota '),
('TJ002','bandung','Terminal Bojongloa ','Jl. Raya Sawahan No.283, Situsaeur, Bojongloa Kidul, Kota Bandung, Jawa Barat 40235'),
('TJ003','jakarta','Terminal Rawa Buaya','Jl. Darma Wanita 1 No.10, RT.7/RW.6, Duri Kosambi, Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibu'),
('TJ004','jakarta','Termnial Kali Deres','Terminal bus Kalideres, Jl. Daan Mogot, RT.4/RW.1, Kalideres, West Jakarta City, Jakarta 11840'),
('TJ005','bandung','Terminal Babakan','JL. Raya Gede Bage No.68, Babakan Penghulu, Cinambo, Bandung City, West Java 40295'),
('TJ006','bandung','Terimnal Ledeng','Jl. Setiabudhi Dalam, Ledeng, Cidadap, Kota Bandung, Jawa Barat 40143');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
>>>>>>> c68207a8d23e1df574a5d610044a4800b3bbebfa
