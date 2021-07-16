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

#
# Source for table details
#

DROP TABLE IF EXISTS `details`;
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

DROP TABLE IF EXISTS `doctor`;
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

INSERT INTO `doctor` VALUES ('Dr. Ashok ','Rajgopal','Male','55','9876543211','ashok@gmail.com','20','05-09-1960','Neurology','1234','Doc4692','webapps\\Electronic_Medical_Records\\photo\\Doc4692.jpg');
INSERT INTO `doctor` VALUES ('Dr. Naresh','Trehan','Male','59','9430365291','naresh@gmail.com','30','24-02-1955','Dentistry','1234','Doc9372','webapps\\Electronic_Medical_Records\\photo\\Doc9372.jpg');
INSERT INTO `doctor` VALUES ('Dr. Suresh ','Hemant','Male','40','8898736353','suresh@gmail.com','15','09-07-1980','Cardiology','1234','Doc7130','webapps\\Electronic_Medical_Records\\photo\\Doc7130.jpg');
INSERT INTO `doctor` VALUES ('Dr. Ashok','Seth','Male','54','9840190448','seth@gmail.com','24','18-05-1973','Pediatrics','1234','Doc3171','webapps\\Electronic_Medical_Records\\photo\\Doc3171.jpg');
INSERT INTO `doctor` VALUES ('Dr. Sandeep','Vaishya','Male','48','9839573989','sandeep@gmail.com','18','30-04-1976','Ophthalmology','1234','Doc3387','webapps\\Electronic_Medical_Records\\photo\\Doc3387.jpg');
INSERT INTO `doctor` VALUES ('Dr.Sumana','Manohar','Female','57','903823753','sumana@gmail.com','23','14-05-1979','Diagnostics','1234','Doc5374','webapps\\Electronic_Medical_Records\\photo\\Doc5374.jpg');
INSERT INTO `doctor` VALUES ('Dr. Ashok','Vaid','Male','60','9765393921','vaid@gmail.com','30','18-10-1969','Pulmonology','1234','Doc3622','webapps\\Electronic_Medical_Records\\photo\\Doc3622.jpg');
INSERT INTO `doctor` VALUES ('Dr. Devi','Prasad','Male','54','9084921143','devi@gmail.com','21','01-09-1973','Cardiology','1234','Doc2799','webapps\\Electronic_Medical_Records\\photo\\Doc2799.jpg');
INSERT INTO `doctor` VALUES ('Dr. Tapti ','Sen','Female','48','9487583920','tapti@gmail.com','16','29-12-1979','Dentistry','1234','Doc2707','webapps\\Electronic_Medical_Records\\photo\\Doc2707.jpg');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table doctorap
#

DROP TABLE IF EXISTS `doctorap`;
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

DROP TABLE IF EXISTS `fingerverification`;
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

DROP TABLE IF EXISTS `medicallab`;
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

DROP TABLE IF EXISTS `patient`;
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

INSERT INTO `patient` VALUES ('Rekha','Mohan','9859048388','rekha@gmail.com','1234','10-07-1975','Female','41','Married','Dentistry','384,nehru nagar','New Delhi','India','PATIENT-ID5742','webapps\\Electronic_Medical_Records\\photo\\PATIENT-ID5742.jpg',NULL);
INSERT INTO `patient` VALUES ('Krishna','Iyer','9087890987','krishna@gmail.com','1234','13-11-1960','Male','55','Married','Cardiology','#555,4th street','Tamil Nadu','India','PATIENT-ID7199','webapps\\Electronic_Medical_Records\\photo\\PATIENT-ID7199.jpg',NULL);
INSERT INTO `patient` VALUES ('Rajesh','Ahlawat','8909098777','rajesh@gmail.com','1234','27-10-1978','Male','48','Divorced','Diagnostics','#777','Rajasthan','India','PATIENT-ID5775','webapps\\Electronic_Medical_Records\\photo\\PATIENT-ID5775.jpg',NULL);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table patientappoinment
#

DROP TABLE IF EXISTS `patientappoinment`;
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

INSERT INTO `patientappoinment` VALUES (1,'PATIENT-ID5775','Doc5374','Diagnostics','2021-04-28','Approved','T1836');
INSERT INTO `patientappoinment` VALUES (2,'PATIENT-ID5742','Doc9372','Dentistry','2021-06-19','Approved','T1571');
INSERT INTO `patientappoinment` VALUES (3,'PATIENT-ID7199','Doc7130','Cardiology','2021-06-16','Approved','T4571');
INSERT INTO `patientappoinment` VALUES (4,'PATIENT-ID5775','Doc5374','Diagnostics','2021-06-17','Approved','T4526');
INSERT INTO `patientappoinment` VALUES (5,'PATIENT-ID5742','Doc9372','Dentistry','2021-06-30','Approved','T831');
INSERT INTO `patientappoinment` VALUES (6,'PATIENT-ID5742','Doc2707','Dentistry','2021-06-30','Approved','T23');
INSERT INTO `patientappoinment` VALUES (7,'PATIENT-ID5742','Doc2707','Dentistry','2021-06-17','Approved','T3770');
INSERT INTO `patientappoinment` VALUES (8,'PATIENT-ID5742','Doc9372','Dentistry','2021-07-15','Approved','T1593');
INSERT INTO `patientappoinment` VALUES (9,'PATIENT-ID5742','Doc2707','Dentistry','2021-06-21','Approved','T1675');
/*!40000 ALTER TABLE `patientappoinment` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table prescription
#

DROP TABLE IF EXISTS `prescription`;
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

INSERT INTO `prescription` VALUES (1,'PATIENT-ID5775','Doc5374','17-01-2021','T1836');
INSERT INTO `prescription` VALUES (2,'PATIENT-ID5742','Doc9372','16-00-2021','T1571');
INSERT INTO `prescription` VALUES (3,'PATIENT-ID5742','Doc9372','16-12-2021','T1571');
INSERT INTO `prescription` VALUES (4,'PATIENT-ID5742','Doc9372','16-12-2021','T1571');
INSERT INTO `prescription` VALUES (5,'PATIENT-ID5742','Doc9372','16-13-2021','T1571');
INSERT INTO `prescription` VALUES (6,'PATIENT-ID5742','Doc9372','16-13-2021','T1571');
INSERT INTO `prescription` VALUES (7,'PATIENT-ID7199','Doc7130','16-18-2021','T4571');
INSERT INTO `prescription` VALUES (8,'PATIENT-ID7199','Doc7130','16-25-2021','T4571');
INSERT INTO `prescription` VALUES (9,'PATIENT-ID7199','Doc7130','16-32-2021','T4571');
INSERT INTO `prescription` VALUES (10,'PATIENT-ID5775','Doc5374','16-39-2021','T4526');
INSERT INTO `prescription` VALUES (11,'PATIENT-ID5742','Doc9372','16-42-2021','T831');
INSERT INTO `prescription` VALUES (12,'PATIENT-ID5742','Doc2707','17-54-2021','T23');
INSERT INTO `prescription` VALUES (13,'PATIENT-ID5742','Doc2707','17-56-2021','T3770');
INSERT INTO `prescription` VALUES (14,'PATIENT-ID5742','Doc9372','17-05-2021','T1593');
INSERT INTO `prescription` VALUES (15,'PATIENT-ID5742','Doc2707','17-17-2021','T1675');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sample
#

DROP TABLE IF EXISTS `sample`;
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

DROP TABLE IF EXISTS `testdetails`;
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
