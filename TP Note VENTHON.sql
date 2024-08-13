-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.26-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for estate_agency
CREATE DATABASE IF NOT EXISTS `estate_agency` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `estate_agency`;

-- Dumping structure for table estate_agency.client
CREATE TABLE IF NOT EXISTS `client` (
  `clientID` char(12) NOT NULL DEFAULT '',
  `name` varchar(30) DEFAULT NULL,
  `clientaddress` varchar(100) DEFAULT NULL,
  `tel` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`clientID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table estate_agency.client: ~9 rows (approximately)
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`clientID`, `name`, `clientaddress`, `tel`) VALUES
	('C1', 'John', '#112, Coat Ave., Beautiful City, Nice Country', '11265438790'),
	('c11', 'Sok Dara', '#87, sun shine Ave, Bell ville', '128383884'),
	('C2', 'Michael', '#113,Moon Ave., Beautiful City, Nice Country', '1120987654'),
	('C3', 'Christ', '#23, coat Ave., Cow City, nice Country', '1120981234'),
	('C4', 'Adam', '#45,Sun Ave, Beautiful city, Nice Country', '1120987054'),
	('C5', 'Kelly', '#23, God Ave., Cow City, Nice Country', '1124536657'),
	('C6', 'Cloe', '#87, Bell Ville, Nice country', '1294787899'),
	('C7', 'Merry', '#112, Sun Ave., Beautiful City, Nice Country', '1128737509'),
	('C8', 'Brown', '#113,Sun Ave., Beautiful City, Nice Country', '1123546754'),
	('C9', 'Christ', '#34, Bell Ville, Nice country', '1123546954');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

-- Dumping structure for table estate_agency.property
CREATE TABLE IF NOT EXISTS `property` (
  `propertyID` int(11) NOT NULL DEFAULT '0',
  `type` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`propertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table estate_agency.property: ~6 rows (approximately)
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` (`propertyID`, `type`, `address`) VALUES
	(1, 'Flat', '#113, Sun Ave, Beautiful City, Nice Country'),
	(2, 'House', '#12, God Ave, Cow City, Nice Country'),
	(3, 'Flat', '#112, Sun Ave, Beautiful City, Nice Country'),
	(4, 'apartment', '#75, Sun Ave, Bell ville, Nice Country'),
	(5, 'flat', '#114, Sun Ave, Beautiful City, Nice Country'),
	(6, 'house', '#15, God Ave, Cow City, Nice Country');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;

-- Dumping structure for table estate_agency.rent
CREATE TABLE IF NOT EXISTS `rent` (
  `propertyID` int(11) NOT NULL DEFAULT '0',
  `rent_date` date NOT NULL DEFAULT '2000-01-01',
  `clientID` char(12) NOT NULL DEFAULT '',
  `price` decimal(7,2) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`propertyID`,`rent_date`,`clientID`),
  KEY `rent_ibfk_2` (`clientID`),
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`propertyID`) REFERENCES `property` (`propertyID`),
  CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table estate_agency.rent: ~12 rows (approximately)
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` (`propertyID`, `rent_date`, `clientID`, `price`, `end_date`) VALUES
	(1, '1999-01-01', 'C2', 700.00, '2001-01-01'),
	(1, '2001-03-09', 'C1', 650.00, '2007-12-09'),
	(1, '2007-12-10', 'C1', 700.00, '2017-12-10'),
	(1, '2008-01-01', 'C8', 800.00, '2018-01-01'),
	(2, '2000-01-01', 'C8', 200.00, '2021-10-28'),
	(2, '2000-07-06', 'C5', 1000.00, '2010-07-06'),
	(2, '2011-03-01', 'C3', 1000.00, '2011-10-01'),
	(2, '2012-02-02', 'C5', 1200.00, '2017-02-02'),
	(3, '2000-01-01', 'C2', 500.00, '2021-10-28'),
	(3, '2010-02-01', 'C7', 700.00, '2015-02-01'),
	(3, '2015-05-02', 'C3', 600.00, '2020-05-02'),
	(4, '2017-01-20', 'C9', 500.00, '2027-01-20'),
	(5, '2018-01-20', 'C1', 600.00, '2019-01-20'),
	(6, '2018-03-20', 'C4', 600.00, '2020-03-20');
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

#answer1
SELECT clientID,clientaddress
FROM  client
WHERE NAME='Adam';

#answer2
SELECT *
FROM rent
WHERE price>1000;

#answer3
SELECT *
FROM rent
WHERE year(rent_date)=2018;

#answer4
SELECT property.*
FROM property NATURAL JOIN rent
WHERE clientID='C1';

#answer5
SELECT property.*
FROM property NATURAL JOIN client 
WHERE NAME='Adam';

#6
SELECT client.*
FROM client NATURAL JOIN property NATURAL JOIN rent
WHERE TYPE='house';

#answer7
SELECT *
FROM client 
WHERE client.clientID NOT IN (SELECT DISTINCT clientID FROM rent);

#answer8
SELECT property.type,COUNT(property.type)
FROM property GROUP BY property.type;

#answer9
SELECT clientID,SUM((price*0.01)*7)AS fee FROM rent 
WHERE clientID="C3";

#answer10
SELECT propertyID,rent_date,end_date,MAX (price)
FROM rent
GROUP BY properID;