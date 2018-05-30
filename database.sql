/*
SQLyog Community v9.20 
MySQL - 5.5.5-10.1.31-MariaDB : Database - projectdb
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`projectdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `projectdb`;

/*Table structure for table `medical_record` */

DROP TABLE IF EXISTS `medical_record`;

CREATE TABLE `medical_record` (
  `SN` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `Blood_Pressure` varchar(10) DEFAULT NULL,
  `Cholesterol` varchar(10) DEFAULT NULL,
  `Tobacco_Use` varchar(10) DEFAULT NULL,
  `Alcohol_Use` varchar(10) DEFAULT NULL,
  `Family_History` boolean DEFAULT 0,
  'Diabetes' boolean DEFAULT 0,
  PRIMARY KEY (`SN`),
  KEY `NewIndex1` (`patient_id`),
  CONSTRAINT `FK_medical_record` FOREIGN KEY (`patient_id`) REFERENCES `patient_info` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medical_record` */

/*Table structure for table `patient_info` */

DROP TABLE IF EXISTS `patient_info`;

CREATE TABLE `patient_info` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `gender` varchar(2) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
