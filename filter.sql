/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.14-MariaDB : Database - treeview
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`treeview` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `treeview`;

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT 999999999,
  `innercode` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `data` */

insert  into `data`(`id`,`name`,`pid`,`innercode`) values 
(2,'we',0,10000000000000000),
(3,'werwer',0,20000000000000000),
(4,'werwer',0,30000000000000000),
(5,'werwer',0,40000000000000000),
(7,'werwre',5,40100000000000000),
(8,'wrewer',7,40101000000000000),
(9,'werwer',7,40102000000000000),
(10,'werwer',9,40102010000000000),
(11,'werwer',9,40102020000000000),
(12,'werwer',11,40102020100000000),
(13,'werwer',11,40102020200000000),
(14,'werwerwer',13,40102020201000000),
(15,'werwrwer',13,40102020202000000);

/*Table structure for table `filter_values` */

DROP TABLE IF EXISTS `filter_values`;

CREATE TABLE `filter_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) DEFAULT NULL,
  `value` varchar(40) DEFAULT NULL,
  `label` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `filter_values` */

insert  into `filter_values`(`id`,`filter_id`,`value`,`label`) values 
(1,1,'red','red'),
(2,1,'colore','colore');

/*Table structure for table `filters` */

DROP TABLE IF EXISTS `filters`;

CREATE TABLE `filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_type` varchar(20) DEFAULT NULL,
  `name_label` varchar(30) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `default` varchar(50) DEFAULT NULL,
  `recursive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `filters` */

insert  into `filters`(`id`,`filter_type`,`name_label`,`category`,`default`,`recursive`) values 
(1,'checkbox','select color','1\'00\'00\'00\'00\'00\'00\'00\'00','red,',0),
(2,'exact-number','select type','1\'00\'00\'00\'00\'00\'00\'00\'00','10',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
