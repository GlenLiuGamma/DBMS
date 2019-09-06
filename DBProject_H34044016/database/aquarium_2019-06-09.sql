# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26-ndb-7.6.10-cluster-gpl)
# Database: aquarium
# Generation Time: 2019-06-08 16:15:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Activities`;

CREATE TABLE `Activities` (
  `activity_id` int(11) NOT NULL,
  `activity_name` varchar(20) NOT NULL,
  `activity_time` varchar(11) NOT NULL DEFAULT '',
  `activity_timespan` int(11) NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Activities` WRITE;
/*!40000 ALTER TABLE `Activities` DISABLE KEYS */;

INSERT INTO `Activities` (`activity_id`, `activity_name`, `activity_time`, `activity_timespan`)
VALUES
	(1,'WhaleSharkFeed','10:30',10),
	(2,'PanguinFeed','11:00',15),
	(3,'CoralFishFeed','10:00',10),
	(4,'BigTankIntro','9:30',8),
	(5,'WhaleSharkFeed','13:30',30),
	(6,'BigTankIntro','15:30',8),
	(7,'PanguinFeed','16:00',15),
	(8,'MalawiFishFeed','12:30',10),
	(9,'BigTankFeed','16:30',10),
	(10,'CoralFishFeed','15:00',10);

/*!40000 ALTER TABLE `Activities` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Animal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Animal`;

CREATE TABLE `Animal` (
  `animal_id` int(11) NOT NULL,
  `animal_species` varchar(20) NOT NULL DEFAULT '',
  `animal_sex` varchar(1) NOT NULL DEFAULT '',
  `water_type` varchar(1) NOT NULL DEFAULT '',
  `animal_size` int(11) NOT NULL,
  `animal_food` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`animal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Animal` WRITE;
/*!40000 ALTER TABLE `Animal` DISABLE KEYS */;

INSERT INTO `Animal` (`animal_id`, `animal_species`, `animal_sex`, `water_type`, `animal_size`, `animal_food`)
VALUES
	(1,'Arapaima','f','f',247,'goldfish'),
	(2,'Arapaima','m','f',286,'goldfish'),
	(3,'Pacu','f','f',60,'weed'),
	(4,'Pacu','m','f',63,'weed'),
	(5,'Pacu','f','f',37,'weed'),
	(6,'Pacu','m','f',42,'weed'),
	(7,'Pacu','m','f',46,'weed'),
	(8,'Catfish','m','f',5,'bottom_feed'),
	(9,'Catfish','m','f',8,'bottom_feed'),
	(10,'Catfish','m','f',6,'bottom_feed'),
	(11,'Catfish','m','f',7,'bottom_feed'),
	(12,'Catfish','f','f',5,'bottom_feed'),
	(13,'Catfish','f','f',8,'bottom_feed'),
	(14,'Catfish','f','f',6,'bottom_feed'),
	(15,'Cardinal Tetra','f','f',4,'algae_feed'),
	(16,'Cardinal Tetra','f','f',4,'algae_feed'),
	(17,'Cardinal Tetra','m','f',4,'algae_feed'),
	(18,'Cardinal Tetra','f','f',4,'algae_feed'),
	(19,'Cardinal Tetra','f','f',3,'algae_feed'),
	(20,'Cardinal Tetra','m','f',4,'algae_feed'),
	(21,'Cardinal Tetra','f','f',3,'algae_feed'),
	(22,'Cardinal Tetra','m','f',4,'algae_feed'),
	(23,'Cardinal Tetra','m','f',4,'algae_feed'),
	(24,'Cardinal Tetra','f','f',4,'algae_feed'),
	(25,'Cardinal Tetra','m','f',4,'algae_feed'),
	(26,'Kohaku','f','f',45,'koi_food'),
	(27,'Showa','f','f',40,'koi_food'),
	(28,'Utsurimono','m','f',43,'koi_food'),
	(29,'Kawarimono','m','f',41,'koi_food'),
	(30,'Ogon','m','f',39,'koi_food'),
	(31,'Koromo','f','f',38,'koi_food'),
	(32,'Kawarimono','m','f',45,'koi_food'),
	(33,'Ginrin','m','f',43,'koi_food'),
	(34,'Asagi','f','f',43,'koi_food'),
	(35,'Taisho Sanke','f','f',39,'koi_food'),
	(36,'Black sea nettle','n','s',80,'shrimp'),
	(37,'Black sea nettle','n','s',85,'shrimp'),
	(38,'Moon Jellyfish','n','s',30,'plankton_sup'),
	(39,'Moon Jellyfish','n','s',28,'plankton_sup'),
	(40,'Moon Jellyfish','n','s',26,'plankton_sup'),
	(41,'Flower Hat Jellyfish','n','s',13,'plankton_sup'),
	(42,'Flower Hat Jellyfish','n','s',14,'plankton_sup'),
	(43,'Flower Hat Jellyfish','n','s',15,'plankton_sup'),
	(44,'Whaleshark','f','s',876,'whaleshark_feed'),
	(45,'Whaleshark','m','s',851,'whaleshark_feed'),
	(46,'Tiger Shark','f','s',180,'mackerel'),
	(47,'Tiger Shark','m','s',150,'mackerel'),
	(48,'Stingray','f','s',110,'mackerel'),
	(49,'Stingray','m','s',80,'mackerel'),
	(50,'Stingray','f','s',160,'mackerel'),
	(51,'Stingray','m','s',70,'mackerel'),
	(52,'Stingray','m','s',90,'mackerel'),
	(53,'Red Coral','n','s',60,'Coral_feed'),
	(54,'Red Coral','n','s',30,'Coral_feed'),
	(55,'Red Coral','n','s',40,'Coral_feed'),
	(56,'Yellow Coral','n','s',25,'Coral_feed'),
	(57,'Yellow Coral','n','s',35,'Coral_feed'),
	(58,'Yellow Coral','n','s',34,'Coral_feed'),
	(59,'Grouper','f','f',80,'Shrimp'),
	(60,'Grouper','m','f',90,'Shrimp'),
	(61,'ClownFish','f','f',15,'sea_feed'),
	(62,'ClownFish','m','s',20,'sea_feed'),
	(63,'Sea Anemones','n','f',80,'gold_fish'),
	(64,'Sea Anemones','n','f',75,'gold_fish'),
	(65,'Penguin','m','f',73,'mackerel'),
	(66,'Penguin','f','s',82,'mackerel'),
	(67,'Penguin','m','f',60,'mackerel'),
	(68,'Penguin','m','s',64,'mackerel'),
	(69,'Penguin','f','f',70,'mackerel'),
	(70,'Penguin','m','s',75,'mackerel'),
	(71,'Trout','f','f',25,'cricket'),
	(72,'Trout','f','f',29,'cricket'),
	(73,'Trout','m','f',31,'cricket'),
	(74,'Salmon','m','f',24,'cricket'),
	(75,'Salmon','f','f',30,'cricket'),
	(76,'Salmon','f','f',28,'cricket'),
	(77,'Salmon','m','f',20,'cricket'),
	(78,'Trout','m','f',43,'cricket'),
	(79,'African Butterfly','f','b',15,'malawi_feed'),
	(80,'African Butterfly','f','b',14,'malawi_feed'),
	(81,'African Butterfly','f','b',16,'malawi_feed'),
	(82,'African Butterfly','m','b',25,'malawi_feed'),
	(83,'Yellow African','m','b',26,'malawi_feed'),
	(84,'Yellow African','f','b',28,'malawi_feed'),
	(85,'Yellow African','m','b',30,'malawi_feed'),
	(86,'Orange Zebra','f','b',30,'malawi_feed'),
	(87,'Dogtooth Cichlid','m','b',35,'malawi_feed'),
	(88,'Dogtooth Cichlid','f','b',27,'malawi_feed'),
	(89,'Dogtooth Cichlid','f','b',26,'malawi_feed'),
	(90,'Orange Zebra','m','b',25,'malawi_feed'),
	(91,'Anglerfish','m','s',7,'gold_fish'),
	(92,'Anglerfish','f','s',25,'gold_fish'),
	(93,'Anglerfish','f','s',25,'gold_fish'),
	(94,'Anglerfish','f','s',25,'gold_fish'),
	(95,'Anglerfish','m','s',7,'gold_fish'),
	(96,'Anglerfish','f','s',25,'gold_fish'),
	(97,'Mudskipper','m','b',6,'rice'),
	(98,'Mudskipper','f','b',9,'rice'),
	(99,'Mudskipper','m','b',8,'rice'),
	(100,'Mudskipper','f','b',7,'rice'),
	(101,'Silver Pomfret','m','b',15,'algae_feed'),
	(102,'Silver Pomfret','f','b',20,'algae_feed'),
	(103,'Silver Pomfret','m','b',25,'algae_feed'),
	(104,'globefish','m','b',15,'algae_feed'),
	(105,'globefish','m','b',20,'algae_feed'),
	(106,'globefish','f','b',14,'algae_feed');

/*!40000 ALTER TABLE `Animal` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Animal_live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Animal_live`;

CREATE TABLE `Animal_live` (
  `animal_id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Animal_live` WRITE;
/*!40000 ALTER TABLE `Animal_live` DISABLE KEYS */;

INSERT INTO `Animal_live` (`animal_id`, `tank_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,2),
	(27,2),
	(28,2),
	(29,2),
	(30,2),
	(31,2),
	(32,2),
	(33,2),
	(34,2),
	(35,2),
	(36,3),
	(37,3),
	(38,3),
	(39,3),
	(40,3),
	(41,3),
	(42,3),
	(43,3),
	(44,4),
	(45,4),
	(46,4),
	(47,4),
	(48,4),
	(49,4),
	(50,4),
	(51,4),
	(52,4),
	(53,5),
	(54,5),
	(55,5),
	(56,5),
	(57,5),
	(58,5),
	(59,5),
	(60,5),
	(61,5),
	(62,5),
	(63,5),
	(64,5),
	(65,6),
	(66,6),
	(67,6),
	(68,6),
	(69,6),
	(70,6),
	(71,7),
	(72,7),
	(73,7),
	(74,7),
	(75,7),
	(76,7),
	(77,7),
	(78,7),
	(79,8),
	(80,8),
	(81,8),
	(82,8),
	(83,8),
	(84,8),
	(85,8),
	(86,8),
	(87,8),
	(88,8),
	(89,8),
	(90,8),
	(91,9),
	(92,9),
	(93,9),
	(94,9),
	(95,9),
	(96,9),
	(97,10),
	(98,10),
	(99,10),
	(100,10),
	(101,10),
	(102,10),
	(103,10),
	(104,10),
	(105,10),
	(106,10);

/*!40000 ALTER TABLE `Animal_live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contains
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contains`;

CREATE TABLE `contains` (
  `animal_amount` bigint(21) NOT NULL DEFAULT '0',
  `tank_id` int(11) DEFAULT NULL,
  `plant_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `contains` WRITE;
/*!40000 ALTER TABLE `contains` DISABLE KEYS */;

INSERT INTO `contains` (`animal_amount`, `tank_id`, `plant_amount`)
VALUES
	(25,1,8),
	(6,9,0),
	(6,6,0),
	(12,5,0),
	(10,10,5),
	(10,2,0),
	(8,3,0),
	(12,8,0),
	(8,7,0),
	(9,4,7);

/*!40000 ALTER TABLE `contains` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Control
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Control`;

CREATE TABLE `Control` (
  `manager_id` int(11) NOT NULL,
  `first_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `department` varchar(20) DEFAULT '',
  `employee_amount` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Control` WRITE;
/*!40000 ALTER TABLE `Control` DISABLE KEYS */;

INSERT INTO `Control` (`manager_id`, `first_name`, `last_name`, `department`, `employee_amount`)
VALUES
	(25,'Willson','Jackson','saltwater',12),
	(26,'Cindy','Loper','freshwater',10),
	(27,'Rebecca','Gomez','Aquarium',5);

/*!40000 ALTER TABLE `Control` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Plant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Plant`;

CREATE TABLE `Plant` (
  `plant_id` int(11) NOT NULL,
  `plant_species` varchar(20) DEFAULT '',
  `water_type` varchar(1) DEFAULT '',
  `plant_size` int(11) DEFAULT NULL,
  `plant_food` varchar(20) DEFAULT '',
  PRIMARY KEY (`plant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Plant` WRITE;
/*!40000 ALTER TABLE `Plant` DISABLE KEYS */;

INSERT INTO `Plant` (`plant_id`, `plant_species`, `water_type`, `plant_size`, `plant_food`)
VALUES
	(1,'Egeria densa','f',60,'fresh_fertilizer'),
	(2,'Egeria densa','f',50,'fresh_fertilizer'),
	(3,'Egeria densa','f',38,'fresh_fertilizer'),
	(4,'Sword Plant','f',30,'fresh_fertilizer'),
	(5,'Sword Plant','f',40,'fresh_fertilizer'),
	(6,'Sword Plant','f',70,'fresh_fertilizer'),
	(7,'Seaweed','s',238,'sea_fertilizer'),
	(8,'Seaweed','s',268,'sea_fertilizer'),
	(9,'Seaweed','s',305,'sea_fertilizer'),
	(10,'Seaweed','s',330,'sea_fertilizer'),
	(11,'Seaweed','s',230,'sea_fertilizer'),
	(12,'Seaweed','s',230,'sea_fertilizer'),
	(13,'Seaweed','s',213,'sea_fertilizer'),
	(14,'tree-fern','f',150,'fern_fertilizer'),
	(15,'tree-fern','f',140,'fern_fertilizer'),
	(16,'Kandelia','b',73,'mineral_sup'),
	(17,'Kandelia','b',82,'mineral_sup'),
	(18,'Kandelia','b',60,'mineral_sup'),
	(19,'Black Mangrove','b',50,'mineral_sup'),
	(20,'Black Mangrove','b',50,'mineral_sup');

/*!40000 ALTER TABLE `Plant` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Plant_live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Plant_live`;

CREATE TABLE `Plant_live` (
  `plant_id` int(11) NOT NULL,
  `tank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Plant_live` WRITE;
/*!40000 ALTER TABLE `Plant_live` DISABLE KEYS */;

INSERT INTO `Plant_live` (`plant_id`, `tank_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,4),
	(8,4),
	(9,4),
	(10,4),
	(11,4),
	(12,4),
	(13,4),
	(14,1),
	(15,1),
	(16,10),
	(17,10),
	(18,10),
	(19,10),
	(20,10);

/*!40000 ALTER TABLE `Plant_live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Staff`;

CREATE TABLE `Staff` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `department` varchar(20) DEFAULT '',
  `position` varchar(20) DEFAULT '',
  `staff_sex` varchar(1) NOT NULL DEFAULT '',
  `super_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;

INSERT INTO `Staff` (`staff_id`, `first_name`, `last_name`, `department`, `position`, `staff_sex`, `super_id`)
VALUES
	(1,'Marry','Smith','saltwater','breeder','f',25),
	(2,'Tom','Johnson','saltwater','diver','m',25),
	(3,'Johnny','Peterson','saltwater','diver','m',25),
	(4,'Christine','Anderson','saltwater','diver','f',25),
	(5,'Candy','Ganzalez','saltwater','diver','f',25),
	(6,'Andy','Cruise','saltwater','diver','m',25),
	(7,'Will','James','saltwater','diver','m',25),
	(8,'Sandy','Banks','saltwater','breeder','f',25),
	(9,'Zandaya','Ibaka','saltwater','breeder','f',25),
	(10,'Linda','Ellen','saltwater','breeder','m',25),
	(11,'Mandy','Chen','saltwater','breeder','f',25),
	(12,'Rick','Hanks','saltwater','breeder','m',25),
	(13,'Wendy','McDonald','freshwater','breeder','f',26),
	(14,'Angela','Walker','freshwater','breeder','m',26),
	(15,'Doris','Lee','freshwater','breeder','f',26),
	(16,'Badar','West','freshwater','breeder','m',26),
	(17,'Erisa','Imamura','freshwater','breeder','f',26),
	(18,'Glen','Liu','freshwater','breeder','m',26),
	(19,'Larry','Page','freshwater','breeder','f',26),
	(20,'Gary','Patrick','freshwater','breeder','m',26),
	(21,'Delta','Kinder','freshwater','breeder','f',26),
	(22,'Vans','Cobana','freshwater','breeder','m',26),
	(23,'Yale','Franks','brackishwater','breeder','f',27),
	(24,'Vector','Williams','brackishwater','breeder','m',27),
	(25,'Willson','Jackson','saltwater','supervisor','m',27),
	(26,'Cindy','Loper','freshwater','supervisor','f',27),
	(27,'Rebecca','Gomez','Aquarium','master','m',27);

/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Take_place
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Take_place`;

CREATE TABLE `Take_place` (
  `activity_id` int(20) NOT NULL,
  `start_time` varchar(11) NOT NULL DEFAULT '',
  `time_span` int(11) NOT NULL,
  `place` varchar(20) NOT NULL,
  `tank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Take_place` WRITE;
/*!40000 ALTER TABLE `Take_place` DISABLE KEYS */;

INSERT INTO `Take_place` (`activity_id`, `start_time`, `time_span`, `place`, `tank_id`)
VALUES
	(1,'10:30',10,'The Big Tank',4),
	(5,'11:00',15,'Antarctica Zone',6),
	(2,'10:00',10,'Coral Zone',5),
	(7,'9:30',8,'The Big Tank',4),
	(8,'13:30',30,'The Big Tank',4),
	(3,'15:30',8,'The Big Tank',4),
	(10,'16:00',15,'Antarctica Zone',6),
	(4,'12:30',10,'Malawi Zone',8),
	(6,'16:30',10,'The Big Tank',4),
	(9,'15:00',10,'Coral Zone',5);

/*!40000 ALTER TABLE `Take_place` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Tank
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Tank`;

CREATE TABLE `Tank` (
  `tank_id` int(11) NOT NULL,
  `tank_name` varchar(20) NOT NULL,
  `water_type` varchar(1) NOT NULL,
  `tank_size` int(11) NOT NULL,
  PRIMARY KEY (`tank_id`,`tank_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Tank` WRITE;
/*!40000 ALTER TABLE `Tank` DISABLE KEYS */;

INSERT INTO `Tank` (`tank_id`, `tank_name`, `water_type`, `tank_size`)
VALUES
	(1,' Amazon Zone','f',0),
	(2,'Goldfish Zone','f',0),
	(3,'Jellyfish Zone','s',0),
	(4,'The Big Tank','s',0),
	(5,'Coral Zone','s',0),
	(6,'Antarctica Zone','s',0),
	(7,'Stream Zone','f',0),
	(8,'Malawi Zone','b',0),
	(9,'Abysal Zone','s',0),
	(10,'Estuary Zone','b',0);

/*!40000 ALTER TABLE `Tank` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Works_at
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Works_at`;

CREATE TABLE `Works_at` (
  `staff_id` int(11) NOT NULL,
  `tank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Works_at` WRITE;
/*!40000 ALTER TABLE `Works_at` DISABLE KEYS */;

INSERT INTO `Works_at` (`staff_id`, `tank_id`)
VALUES
	(1,3),
	(2,4),
	(3,5),
	(4,4),
	(5,4),
	(6,4),
	(7,5),
	(8,3),
	(9,6),
	(10,6),
	(11,9),
	(12,9),
	(13,1),
	(14,1),
	(15,1),
	(16,2),
	(17,2),
	(18,7),
	(19,7),
	(20,8),
	(21,8),
	(22,8),
	(23,10),
	(24,10);

/*!40000 ALTER TABLE `Works_at` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
