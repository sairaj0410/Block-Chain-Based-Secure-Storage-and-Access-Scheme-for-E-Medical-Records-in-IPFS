# MySQL-Front 5.1  (Build 1.5)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: hospital
# ------------------------------------------------------
# Server version 5.0.24a-community-nt

DROP DATABASE IF EXISTS `hospital`;
CREATE DATABASE `hospital` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hospital`;

#
# Source for table details
#

CREATE TABLE `details` (
  `Id` int(11) NOT NULL auto_increment,
  `date` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `doctorid` varchar(255) default NULL,
  `patientid` varchar(255) default NULL,
  `token` varchar(255) default NULL,
  `bpvalue` varchar(255) default NULL,
  `file` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table details
#
LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;

/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table doctor
#

CREATE TABLE `doctor` (
  `name` varchar(255) default NULL,
  `fathername` varchar(255) default NULL,
  `gender` varchar(255) default NULL,
  `age` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `exp` varchar(255) default NULL,
  `dob` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `pass` varchar(255) default NULL,
  `Doc_id` varchar(255) default NULL,
  `imagePath` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table doctor
#
LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;

INSERT INTO `doctor` VALUES ('mani','raj','male','30','9632587410','mani@gmail.com','5','1990-03-17','Neurology','1111','Doc4663','webapps\\BiometricInspiredMedicalImages\\photo\\Doc4663.jpg');
INSERT INTO `doctor` VALUES ('karthi','vel','male','30','8972541036','karthi@gmail.com','6','02.06.1980','Neurology','1111','Doc3984','webapps\\Electronic_Medical_Records\\photo\\Doc3984.jpg');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table doctorap
#

CREATE TABLE `doctorap` (
  `Id` int(11) NOT NULL auto_increment,
  `patientid` varchar(255) default NULL,
  `doctorid` varchar(255) default NULL,
  `appdate` varchar(255) default NULL,
  `apptime` varchar(255) default NULL,
  `tocken` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table doctorap
#
LOCK TABLES `doctorap` WRITE;
/*!40000 ALTER TABLE `doctorap` DISABLE KEYS */;

/*!40000 ALTER TABLE `doctorap` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fingerverification
#

CREATE TABLE `fingerverification` (
  `Id` int(11) NOT NULL auto_increment,
  `status` varchar(255) default NULL,
  `idnum` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table fingerverification
#
LOCK TABLES `fingerverification` WRITE;
/*!40000 ALTER TABLE `fingerverification` DISABLE KEYS */;

/*!40000 ALTER TABLE `fingerverification` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table medicallab
#

CREATE TABLE `medicallab` (
  `Id` int(11) NOT NULL auto_increment,
  `mail` varchar(255) default NULL,
  `imagekey` varchar(255) default NULL,
  `pid` varchar(255) default NULL,
  `token` varchar(255) default NULL,
  `images` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table medicallab
#
LOCK TABLES `medicallab` WRITE;
/*!40000 ALTER TABLE `medicallab` DISABLE KEYS */;

/*!40000 ALTER TABLE `medicallab` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table patient
#

CREATE TABLE `patient` (
  `name` varchar(255) default NULL,
  `fathername` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `dob` varchar(255) default NULL,
  `gender` varchar(255) default NULL,
  `age` varchar(255) default NULL,
  `marital` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `patient_id` varchar(255) default NULL,
  `photo` varchar(255) default NULL,
  `status` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table patient
#
LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;

INSERT INTO `patient` VALUES ('kumar','raj','9632587410','kumar@gmail.com','1111','10.10.1997','male','24','Single','Neurology','Chennai','Tamil Nadu','India','PATIENT-ID9593','webapps\\BiometricInspiredMedicalImages\\photo\\PATIENT-ID9593.jpg',NULL);
INSERT INTO `patient` VALUES ('babu','vel','8972541036','babu@gmail.com','1111','02.06.1990','Male','28','Single','Neurology','Chennai','TamilNadu','India','PATIENT-ID4455','webapps\\Electronic_Medical_Records\\photo\\PATIENT-ID4455.jpg',NULL);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table patientappoinment
#

CREATE TABLE `patientappoinment` (
  `Id` int(11) NOT NULL auto_increment,
  `patientid` varchar(255) default NULL,
  `doctorid` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `AppointmentDate` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `tocken` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table patientappoinment
#
LOCK TABLES `patientappoinment` WRITE;
/*!40000 ALTER TABLE `patientappoinment` DISABLE KEYS */;

INSERT INTO `patientappoinment` VALUES (1,'PATIENT-ID4455','Doc3984','Neurology','2021-03-26','Approved','T1597');
/*!40000 ALTER TABLE `patientappoinment` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table prescription
#

CREATE TABLE `prescription` (
  `Id` int(11) NOT NULL auto_increment,
  `patientid` varchar(255) default NULL,
  `doctorid` varchar(255) default NULL,
  `a_date` varchar(255) default NULL,
  `token_id` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table prescription
#
LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;

INSERT INTO `prescription` VALUES (1,'PATIENT-ID4455','Doc3984','18-40-2021','T1597');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sample
#

CREATE TABLE `sample` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  `course` varchar(255) default NULL,
  `deptt` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table sample
#
LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;

/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table testdetails
#

CREATE TABLE `testdetails` (
  `Id` int(11) NOT NULL auto_increment,
  `date` varchar(255) default NULL,
  `did` varchar(255) default NULL,
  `pid` varchar(255) default NULL,
  `token` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `blood` varchar(255) default NULL,
  `bp` varchar(255) default NULL,
  `weight` varchar(255) default NULL,
  `sugar` varchar(255) default NULL,
  `cholesterol` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Dumping data for table testdetails
#
LOCK TABLES `testdetails` WRITE;
/*!40000 ALTER TABLE `testdetails` DISABLE KEYS */;

/*!40000 ALTER TABLE `testdetails` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
