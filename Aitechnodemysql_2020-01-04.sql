# ************************************************************
# Sequel Pro SQL dump
# Version 5438
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 8.0.16)
# Database: Aitechnodemysql
# Generation Time: 2020-01-04 22:47:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `pin`)
VALUES
	(1,'El','example@gmail.com',NULL,NULL),
	(2,'El','example@gmail.com',NULL,NULL),
	(3,'El','example@gmail.com',NULL,NULL),
	(4,'RR','rr@gnail.com','122345',NULL),
	(5,'udjsks','lawrence@gmail.com','393838','3'),
	(6,'fjf','ffh','kfkdh','3'),
	(7,'James','jane@gmail.com','09057463012','3'),
	(8,'John','b@gmail.com','09087675467',''),
	(9,'John','b@gmail.com','09087675467',''),
	(10,'James','jddlfj@gmail.com','08760492','12'),
	(11,'Jumbo','vradah@gmail.com','9765463211','61744'),
	(12,'Strange','sunday@gmail.com','987069531','56925'),
	(13,'El','lawrence@gmail.com','090897664123','6672148014'),
	(14,'pertwlEl','peter@admin.com','090897664123','6612138307'),
	(15,'wetrep','timilehin@gmail.com','090897664123','6210330972'),
	(16,'wetrep','timilehin@gmail.com','090897664123','175326736'),
	(17,'wetrep','timilehin@gmail.com','090897664123','5643164916'),
	(18,'wetrep','timilehin@gmail.com','090897664123','8702367878'),
	(19,'Wisdom','example@gmail.com','080769412456','270489054'),
	(20,'Wisdom','example@gmail.com','080769412456','3405932966'),
	(21,'Jones','jane@gmail.com','09087654329','2451117438'),
	(22,'Jones','jane@gmail.com','09087654329','1137182141'),
	(23,'Jones','elgloryoriabure@gmail','09087654329','8417481618'),
	(24,'Jones','elgloryoriabure@gmail','3340394','7696117932'),
	(25,'James','elgloryoriabure@gmail','39483408','5277951950'),
	(26,'James','elgloryoriabure@gmail','39483408','1580626173'),
	(27,'James','elgloryoriabure@gmail.com','39483408','6202969373'),
	(28,'James','elgloryoriabure@gmail.com','39483408','1478819938'),
	(29,'James','elgloryoriabure@gmail.com','39483408','4261541621'),
	(30,'James','elgloryoriabure@gmail.com','39483408','4890883543'),
	(31,'James','elgloryoriabure@gmail.com','39483408','7032283928'),
	(32,'James','elgloryoriabure@gmail.com','39483408','2181359253'),
	(33,'James','elgloryoriabure@gmail.com','39483408','2589424877'),
	(34,'James','elgloryoriabure@gmail.com','39483408','8099651755'),
	(35,'James','elgloryoriabure@gmail.com','349347','7381481342'),
	(36,'James','elgloryoriabure@gmail.com','349347','517009563'),
	(37,'James','elgloryoriabure@gmail.com','349347','8869071023'),
	(38,'James','elgloryoriabure@gmail.com','349347','2772020757'),
	(39,'djvnvkn','elgloryoriabure@gmail.com','34938084','78370633'),
	(40,'djvnvkn','elgloryoriabure@gmail.com','34938084','8991374455'),
	(41,'djvndv','elgloryoriabure@gmail.com','2480803','5604815261');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
