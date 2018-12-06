/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.19 : Database - invoicingsystemsql
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`invoicingsystemsql` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `invoicingsystemsql`;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_card` int(11) DEFAULT NULL,
  `employee_join_time` datetime DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `employee_out_time` datetime DEFAULT NULL,
  `employee_pass_error_count` int(11) DEFAULT NULL,
  `employee_pass_work` int(11) DEFAULT NULL,
  `employee_sex` int(11) DEFAULT NULL,
  `profitandloss` int(11) DEFAULT NULL,
  `exct1` int(11) DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  `employee_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `UKrxt20v614qecx9v5tr5kfpqxi` (`employee_card`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`employee_id`,`employee_card`,`employee_join_time`,`employee_name`,`employee_out_time`,`employee_pass_error_count`,`employee_pass_work`,`employee_sex`,`profitandloss`,`exct1`,`isdelete`,`employee_state`) values (1,1993,'2018-11-28 13:34:45','李白',NULL,0,666,0,1000,0,0,1),(5,1994,'2018-11-28 16:31:16','杜甫',NULL,0,666,0,1000,0,0,1),(6,1995,'2018-11-28 16:49:53','许仙',NULL,0,666,0,1000,0,0,1);

/*Table structure for table `employeewith_role` */

DROP TABLE IF EXISTS `employeewith_role`;

CREATE TABLE `employeewith_role` (
  `employeeid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`employeeid`,`roleid`),
  UNIQUE KEY `UK_4man777qyypa9m68gteebue60` (`roleid`),
  KEY `FKbnhyq3thjniptklnug9y5fqhl` (`roleid`),
  CONSTRAINT `FKbnhyq3thjniptklnug9y5fqhl` FOREIGN KEY (`roleid`) REFERENCES `role` (`role_id`),
  CONSTRAINT `FKs1lpdsw25p7tmi3po3rytg0mq` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employeewith_role` */

insert  into `employeewith_role`(`employeeid`,`roleid`) values (6,1),(6,2);

/*Table structure for table `meterial` */

DROP TABLE IF EXISTS `meterial`;

CREATE TABLE `meterial` (
  `meterial_id` int(11) NOT NULL AUTO_INCREMENT,
  `exct1` int(11) DEFAULT NULL,
  `expiration_date` int(11) DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `material_number` int(11) DEFAULT NULL,
  `material_state` int(11) DEFAULT NULL,
  `type_data_id` int(11) DEFAULT NULL,
  `ware_house_id` int(11) DEFAULT NULL,
  `materialo_penp_rice` float DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`meterial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

/*Data for the table `meterial` */

insert  into `meterial`(`meterial_id`,`exct1`,`expiration_date`,`material_name`,`material_number`,`material_state`,`type_data_id`,`ware_house_id`,`materialo_penp_rice`,`is_delete`) values (1,NULL,30,'盐',30,1,1,1,30,0),(2,NULL,1,'ggg',1,1,1,1,1,0),(14,NULL,1,'ssssssss',1,1,1,1,1,0),(15,NULL,1,'hh',1,1,1,1,1,0),(16,NULL,11,'wwwwwwwwww',11,11,11,11,11,1),(39,NULL,22,'gg',22,22,22,22,22,1),(40,NULL,11,'ff',123,11,11,11,123,1),(41,NULL,1,'gg',123,1,1,1,11,1),(42,NULL,123,'kkkk',123,123,123,123,123,1),(43,NULL,1,'nn',1,1,1,1,1,1),(44,NULL,11,'ww',11,11,11,11,11,1),(45,NULL,2,'ffff',12,2,22,2,2,1),(46,NULL,1,'dfg',1,1,1,1,1,1),(47,NULL,11,'dddd',11,11,11,11,11,1),(48,NULL,11,'bbbb',111,11,11,11,11,1),(49,NULL,11,'ggggggggg',11,11,11,11,11,1),(50,NULL,11,'rr',11,11,11,11,11,1),(51,NULL,1,'嘎嘎嘎',1,1,1,1,1,0),(52,NULL,1,'等待的',1,1,1,1,1,0),(53,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(54,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(55,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(56,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(57,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(58,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(59,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `exct1` int(11) DEFAULT NULL,
  `prodect_sell` decimal(19,2) DEFAULT NULL,
  `prodect_state` int(11) DEFAULT NULL,
  `prodectd_remark` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `type_data_id` int(11) DEFAULT NULL,
  `isdelete` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`product_id`,`exct1`,`prodect_sell`,`prodect_state`,`prodectd_remark`,`product_name`,`recipe_id`,`type_data_id`,`isdelete`) values (1,NULL,'30.00',0,'商品1','盼盼面包',1,1,0),(2,NULL,'40.00',0,'商品1','盼盼面包',1,1,0),(3,NULL,'50.00',0,'商品1','盼盼面包',1,1,0),(4,NULL,'50.00',0,'商品1','盼盼面包',1,1,0),(5,NULL,'60.00',0,'商品1','盼盼面包',1,1,0),(6,NULL,'60.00',0,'商品1','盼盼面包',1,1,0),(7,NULL,'60.00',0,'商品1','盼盼面包',1,1,0),(8,NULL,'60.00',0,'商品1','盼盼面包',1,1,0),(9,NULL,'60.00',0,'商品1','盼盼面包',1,1,0),(10,NULL,'70.00',0,'商品1','盼盼面包',1,1,0),(11,NULL,'80.00',0,'商品1','盼盼面包',1,1,0),(12,NULL,'80.00',0,'商品','盼盼',1,1,0),(13,NULL,'60.00',0,'商品','盼盼',1,1,0),(14,NULL,'30.00',1,'问问','panpan2',1,1,0),(15,NULL,'11.00',1,'fff','fff',11,1,0),(16,NULL,'60.00',1,'ggg','fff',1,1,0),(17,NULL,'55.00',1,'hhh','hhh',1,1,0),(18,NULL,'4.00',1,'hh','hhh',1,1,0),(19,NULL,'11.00',1,'dse','fewfd',4,1,0);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_static` int(11) DEFAULT NULL,
  `role_create_time` datetime DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `role_update_time` datetime DEFAULT NULL,
  `roleex_plain` varchar(255) DEFAULT NULL,
  `exct1` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_id`,`employee_static`,`role_create_time`,`role_name`,`role_update_time`,`roleex_plain`,`exct1`) values (1,0,'2018-11-28 16:33:57','超级管理员','2018-11-28 16:34:10','拥有所有权限',NULL),(2,0,'2018-11-28 16:37:23','总经理','2018-11-28 16:37:35','拥有所有权限',NULL),(4,0,'2018-11-28 16:39:22','采购经理','2018-11-28 16:39:29','职位人员的聘用、任免、晋升及加薪',NULL),(5,0,'2018-11-28 16:39:55','销售经理','2018-11-28 16:40:12','职位人员的聘用、任免、晋升',NULL),(6,0,'2018-11-28 16:40:47','车间主任','2018-11-28 16:41:07','职位人员的聘用，拥有车间主任权限',NULL),(7,0,'2018-11-28 16:48:19','班长','2018-11-28 16:49:03','管理员工',NULL),(8,0,'2018-11-28 16:49:14','员工','2018-11-28 16:49:20','员工操作权限',NULL);

/*Table structure for table `warehouse` */

DROP TABLE IF EXISTS `warehouse`;

CREATE TABLE `warehouse` (
  `warehouseid` int(11) NOT NULL AUTO_INCREMENT,
  `exct1` int(11) DEFAULT NULL,
  `warehousename` varchar(255) DEFAULT NULL,
  `warehouseparentid` int(11) DEFAULT NULL,
  `warehouseurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`warehouseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `warehouse` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
