/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.23 : Database - dcardprocessing
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dcardprocessing` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `dcardprocessing`;

/*Table structure for table `card` */

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `card_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `card` */

insert  into `card`(`id`,`card_number`) values 
(1,'12345678901234'),
(2,'12345678903555');

/*Table structure for table `log_activity` */

DROP TABLE IF EXISTS `log_activity`;

CREATE TABLE `log_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `insert_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `log_activity` */

insert  into `log_activity`(`id`,`name`,`insert_date`) values 
(1,'scan','2021-03-22 18:20:29'),
(2,'request','2021-03-22 18:20:50'),
(3,'delete','2021-03-22 18:21:06');

/*Table structure for table `log_activity_detail` */

DROP TABLE IF EXISTS `log_activity_detail`;

CREATE TABLE `log_activity_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `activity_date` timestamp NULL DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `scan_activity_id` int DEFAULT NULL,
  `scan_random_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `log_activity_detail` */

insert  into `log_activity_detail`(`id`,`activity_name`,`user_id`,`activity_date`,`user_name`,`file_path`,`scan_activity_id`,`scan_random_id`) values 
(340,'FlT8A8sWde8XHhn3MiQaMg==',0,'2021-06-26 19:53:45','Ppiw8UBzub+HDWMXb8eca1TAcfKI9GRF','pqlFD83mfuG0FDRuPxsyxyxiV9iwRbua',214,'scan@1760626075344');

/*Table structure for table `scan_activity` */

DROP TABLE IF EXISTS `scan_activity`;

CREATE TABLE `scan_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scan_type_id` int DEFAULT NULL,
  `scan_type_detail` varchar(250) DEFAULT NULL,
  `scan_detail` varchar(250) DEFAULT NULL,
  `ip_address` varchar(250) DEFAULT NULL,
  `db_user_name` varchar(100) DEFAULT NULL,
  `db_password` varchar(100) DEFAULT NULL,
  `isdeleted` varchar(10) NOT NULL DEFAULT 'false',
  `time_stamp` timestamp NULL DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `user_scan_activity_id` int DEFAULT NULL,
  `update_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `current_status` varchar(100) DEFAULT NULL,
  `user_remarks` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `admin_remarks` varchar(200) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `scan_activity` */

insert  into `scan_activity`(`id`,`scan_type_id`,`scan_type_detail`,`scan_detail`,`ip_address`,`db_user_name`,`db_password`,`isdeleted`,`time_stamp`,`type`,`is_deleted`,`timestamp`,`user_scan_activity_id`,`update_status`,`current_status`,`user_remarks`,`admin_remarks`,`user_name`) values 
(526,2,'JNE7zRFTHtMJhWRCwNxiwryQpSmNclrx','8/JemWMrjbVyZVRjb+UDZdi3Zltjbbsc',NULL,NULL,NULL,'false',NULL,'truePositive','false','2021-06-26 19:53:44',214,'SCAN','SCAN','YLZexLcWrQnRUMiyW2p/hg==',NULL,NULL),
(527,2,'ZFvQH0dIujVJc57ieWEIsWET8ibZ9WCI','9tRgX9ypPEEv6VX8HEyuLftSQkJu66z2',NULL,NULL,NULL,'false',NULL,'truepositive','false','2021-06-26 19:55:06',214,'SCAN','REQUEST FOR APPROVAL','BMmZthWa8UixnbRYi62ZHA==',NULL,NULL),
(528,2,'vUDNndZr3HdfJ+u1ckkyyvZpCx9ImeGA','Ju/zeNzueWmD7lEn2gbUqBHLqQWXr8zdKm8NSzoSIQA=',NULL,NULL,NULL,'false',NULL,'truepositive','false','2021-06-26 19:55:00',214,'SCAN','REQUEST FOR APPROVAL','6FOFBGw3lJMWdYDsEDD0Sw==',NULL,NULL),
(529,2,'vUDNndZr3HdfJ+u1ckkyyvZpCx9ImeGA','Ju/zeNzueWmD7lEn2gbUqBHLqQWXr8zdKm8NSzoSIQA=',NULL,NULL,NULL,'false',NULL,'truepositive','false','2021-06-26 19:55:00',214,'REQUEST FOR APPROVAL',NULL,'lJmi5vD/0chUN2jzwfnpZQ==','tkCnUy9ECuxzcgr6e/hYu0KOyaWfWKYJ',NULL),
(530,2,'ZFvQH0dIujVJc57ieWEIsWET8ibZ9WCI','9tRgX9ypPEEv6VX8HEyuLftSQkJu66z2',NULL,NULL,NULL,'false',NULL,'truepositive','true','2021-06-26 19:55:06',214,'REQUEST FOR APPROVAL',NULL,'u0CXR/MJFnoB3GLj8E9NbA==','3fZT4TNfMkwh2RRPs+TqUJpz/voygeX7',NULL),
(531,2,'1aoJcf+1FVs/EgE41YlRerdFK77DE679','JWjUAlkVKLQDSzoaMhKVAZys+yKPSjXZ',NULL,NULL,NULL,'false',NULL,'truepositive','true','2021-06-26 19:56:57',214,'DELETED',NULL,'+1In6nwHcl9ymZXO1h4P1g==',NULL,NULL);

/*Table structure for table `scan_activity1` */

DROP TABLE IF EXISTS `scan_activity1`;

CREATE TABLE `scan_activity1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scanTypeId` int DEFAULT NULL,
  `scan_type_detail` varchar(50) DEFAULT NULL,
  `scan_detail` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `db_username` varchar(50) DEFAULT NULL,
  `db_password` varchar(50) DEFAULT NULL,
  `isDeleted` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `db_user_name` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT NULL,
  `scan_type_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `scan_activity1` */

/*Table structure for table `scan_type` */

DROP TABLE IF EXISTS `scan_type`;

CREATE TABLE `scan_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `scan_type` */

insert  into `scan_type`(`id`,`name`) values 
(1,'ip_address'),
(2,'file'),
(3,'mysql'),
(4,'oracle');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dob` varchar(250) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`dob`,`email`,`first_name`,`gender`,`last_name`,`password`,`role`) values 
(2,'03/12/2021','admin@gmail.com','Admin','Male','Admin','asdf','Admin'),
(5,NULL,'Demo@gmail.com','KmL3VrzZzH6CE320i8NqGXNJD67ZMYAB','Male','do2HiF1v/L4XqbG6o8fgNw==','UYcZYi+kn8oFiHbmuAVtVwlyG3tBD2LR','User'),
(6,NULL,'DemoUser2@gmail.com','aSkiKCU8me/Lr6IuiOb4WQ==','Male','HP3k1nXC8GueugSQswNkVw==','5URNo/5WFNhnY0QS8LA/Y4F5MJhjG9dC','User'),
(7,NULL,'test@gmail.com','raNBxdunBrGJ2mPxrc0J4Q==','Male','fjAAIc0BUPvMcI6dNPWgPw==','AmO2IDA2GtR2qKO/NNwFOM9HveM5rLon','User'),
(8,NULL,'david@gmail.com','Hekkra6jV6lK/GnEmLSKRg==','Male','Ej2qCEg8Q90g7AyhYkZBvg==','NQEnZEGKDl/IZE12uqu8fw8GVocYUoau','User'),
(9,NULL,'new@gmail.com','Hnb9erX7Z+Bzq5vQNpkBKw==','Male','NAd+7TR/It6ghdidETISig==','7GGZDEyTtqR0o9qtyQkqzA==','User');

/*Table structure for table `user_scan_activity` */

DROP TABLE IF EXISTS `user_scan_activity`;

CREATE TABLE `user_scan_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user_scan_activity` */

insert  into `user_scan_activity`(`id`,`timestamp`,`file_path`) values 
(214,'2021-06-26 19:53:41','E:\\testScan'),
(215,'2021-06-26 19:54:26','E:\\testScan'),
(216,'2021-06-26 20:08:28','E:\\testScan'),
(217,'2021-06-26 20:10:06','E:\\testScan'),
(218,'2021-06-26 20:12:19','E:\\testScan'),
(219,'2021-06-26 20:13:52','E:\\testScan');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
