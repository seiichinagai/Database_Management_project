-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: group11final
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `directorName` varchar(45) NOT NULL,
  `idmovies` int(11) NOT NULL,
  `wonDirector` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`directorName`,`idmovies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES ('Alfred Hitchcock',24,0),('Andrew Stanton',47,0),('Ang Lee',23,0),('Bob Peterson',43,0),('Brian O\'Malley',37,0),('Bryan Singer',49,0),('Christopher Nolan',8,0),('Curtis Hanson',4,0),('Damien Chazelle',16,0),('David Fincher',6,0),('Ethan Coen',26,1),('Fernando Meirelles',12,0),('Gareth Edwards',30,0),('Garry Marshall',45,0),('Guillermo del Toro',39,0),('Hayao Miyazaki',32,0),('James McTeigue',44,0),('Joe Wright',7,0),('John Lasseter',41,0),('Jonathan Mostow',42,0),('Joss Whedon',1,0),('Kathryn Bigelow',35,1),('Luc Besson',11,0),('Marc Forster',48,0),('Martin Scorsese',34,1),('Mel Gibson',5,1),('Michael Bay',9,0),('Michael Mann',2,0),('Mike Figgis',27,0),('Mimi Leder',22,0),('Paul Thomas Anderson',40,0),('Paul Weitz',13,0),('Peter Jackson',38,1),('Phyllida Lloyd',18,0),('Quentin Tarantino',29,0),('Renny Harlin',14,0),('Richard Quine',46,0),('Ridley Scott',25,0),('Robert Stromberg',19,0),('Robert Zemeckis',21,0),('Roger Allers',36,0),('Sam Mendes',15,1),('Stanley Kubrick',0,0),('Stephen Hopkins',3,0),('Steven Soderbergh',10,0),('Steven Spielberg',31,0),('Thea Sharrock',17,0),('Tom Hooper',20,0),('Tom McCarthy',33,0),('Trish Sie',28,0);
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genrename`
--

DROP TABLE IF EXISTS `genrename`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genrename` (
  `genreName` varchar(25) NOT NULL,
  `idmovies` int(11) NOT NULL,
  PRIMARY KEY (`genreName`,`idmovies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genrename`
--

LOCK TABLES `genrename` WRITE;
/*!40000 ALTER TABLE `genrename` DISABLE KEYS */;
INSERT INTO `genrename` VALUES ('Action',19),('Action',48),('Adventure',23),('Adventure',43),('Animation',32),('Animation',36),('Animation',41),('Animation',47),('Biography',31),('Comedy',13),('Comedy',45),('Crime',2),('Crime',10),('Crime',29),('Crime',34),('Drama',4),('Drama',6),('Drama',11),('Drama',12),('Drama',15),('Drama',20),('Drama',21),('Drama',22),('Drama',33),('Drama',40),('Fantasy',38),('History',5),('History',7),('History',8),('History',9),('History',35),('Horror',39),('Music',28),('Romance',16),('Romance',17),('Romance',18),('Romance',27),('Romance',37),('Sci-Fi',0),('Sci-Fi',1),('Sci-Fi',30),('Sci-Fi',49),('Thriller',3),('Thriller',14),('Thriller',24),('Thriller',25),('Thriller',26),('Thriller',44),('Thriller',46),('War',42);
/*!40000 ALTER TABLE `genrename` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leadactors`
--

DROP TABLE IF EXISTS `leadactors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leadactors` (
  `actorName` varchar(45) NOT NULL,
  `idmovies` int(11) NOT NULL,
  `characterName` varchar(45) DEFAULT NULL,
  `wonBestActor` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`actorName`,`idmovies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leadactors`
--

LOCK TABLES `leadactors` WRITE;
/*!40000 ALTER TABLE `leadactors` DISABLE KEYS */;
INSERT INTO `leadactors` VALUES ('	Matthew Broderick',36,'Simba',0),('Al Pacino',2,'Lt. Vincent Hanna',0),('Angelina Jolie',19,'Maleficent',0),('Anna Kendrick',28,'Beca',0),('Ben Burtt',47,'WALL.E',0),('Brad Pitt',48,'Gerry Lane',0),('Cary Grant',24,'Roger O. Thornhill',0),('Charlotte Vega',37,'Rachel',0),('Chow Yun-Fat',23,'Master Li Mu Bai',0),('Daniel Day-Lewis',40,'Daniel Plainview',0),('Edward Asner',43,'Carl Fredricksen',0),('Edward Norton',6,'The Narrator',0),('Elijah Wood',38,'Frodo Baggins',0),('Emilia Clarke',17,'Lou Clark',0),('Emma Stone',16,'Mia',1),('Felicity Jones',30,'Jyn Erso',0),('Gary Oldman',7,'Winston Churchill',0),('George Clooney',10,'Danny Ocean',0),('Guy Pearce',4,'Ed Exley',0),('Harrison Ford',25,'Rick Deckard',0),('Hugh Jackman',20,'Jean Valjean',0),('James D\'Arcy',8,'Col. Winnant',0),('James McAvoy',49,'Professor Charles Xavier',0),('Jason Biggs',13,'Jim Levenstein',0),('Jean Reno',11,'Leon',0),('Jeremy Renner',35,'William James',0),('Jessica Alba',45,'Morley Clarkson',0),('John Krasinski',9,'Jack Silva',0),('John Travolta',29,'Vincent Vega',0),('Keir Dullea',0,'Dr. Dave Bowman',0),('Kevin Spacey',15,'Lester Burnham',1),('Leandro Firmino',12,'Ze Pequeno - Lil Ze',0),('Leonardo DiCaprio',34,'Billy',0),('Liam Neeson',31,'Oskar Schindler',0),('Marion Cotillard',21,'Marianne Beausejour',0),('Mark Ruffalo',33,'Mike Rezendes',0),('Matthew McConaughey',42,'Lt. Andrew Tyler',0),('Mel Gibson',5,'William Wallace',0),('Meryl Streep',18,'Donna',0),('Michael Douglas',3,'Charles Remington',0),('Natalie Portman',44,'Evey',0),('Nathan Fillion',1,'Captain Malcom \'Mal\' Reynolds',0),('Robert Duvall',22,'Spurgeon Tanner',0),('Rumi Hiiragi',32,'Chihiro Ogino',0),('Saffron Burrows',14,'Dr. Susan McAlester',0),('Sally Hawkins',39,'Elisa Esposito',0),('Tom Hanks',41,'Woody',0),('Tommy Lee Jones',26,'Ed Tom Bell',0),('Twiggy',46,'Katie Lewis',0),('Wesley Snipes',27,'Max Carlyle',0);
/*!40000 ALTER TABLE `leadactors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `idmovies` int(11) NOT NULL,
  `mName` varchar(45) DEFAULT NULL,
  `yearReleased` int(11) DEFAULT NULL,
  `runTime` int(11) DEFAULT NULL,
  `mpaaRating` varchar(45) DEFAULT NULL,
  `wonBestPicture` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmovies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (0,'2001: A Space Odyssey',1968,149,'G',0),(1,'Serenity',2005,119,'PG-13',0),(2,'Heat',1995,170,'R',0),(3,'The Ghost and the Darkness',1996,110,'R',0),(4,'L.A. Confidential',1997,138,'R',0),(5,'Braveheart',1995,178,'R',1),(6,'Fight Club',1999,139,'R',0),(7,'Darkest Hour',2017,125,'PG-13',0),(8,'Dunkirk',2017,106,'PG-13',0),(9,'13 Hours',2016,144,'R',0),(10,'Ocean\'s Eleven',2001,116,'PG-13',0),(11,'Leon: The Professional',1994,110,'R',0),(12,'City of God',2002,130,'R',0),(13,'American Pie',1999,95,'R',0),(14,'Deep Blue Sea',1999,105,'R',0),(15,'American Beauty',1999,122,'R',1),(16,'La La Land',2016,128,'PG-13',1),(17,'Me Before You',2016,106,'PG-13',0),(18,'Mamma Mia!',2008,108,'PG-13',0),(19,'Maleficient',2014,97,'PG',0),(20,'Les Miserables',2012,158,'PG-13',0),(21,'Allied',2016,124,'R',0),(22,'Deep Impact',1998,120,'PG-13',0),(23,'Crouching Tiger, Hidden Dragon',2000,120,'PG-13',0),(24,'North By Northwest',1959,136,'G',0),(25,'Blade Runner',1982,117,'R',0),(26,'No Country for Old Men',2007,122,'R',1),(27,'One Night Stand',1997,102,'R',0),(28,'Pitch Perfect 3',2017,93,'PG-13',0),(29,'Pulp Fiction',1994,154,'R',0),(30,'Rogue One',2016,133,'PG-13',0),(31,'Schindler\'s List ',1993,195,'R',1),(32,'Spirited Away',2001,125,'PG',0),(33,'Spotlight ',2015,128,'R',1),(34,'The Departed',2006,151,'R',1),(35,'The Hurt Locker',2008,131,'R',1),(36,'The Lion King',1994,88,'G',0),(37,'The Lodgers',2018,92,'PG-13',0),(38,'The Lord of the Rings: The Return of the King',2003,201,'PG-13',1),(39,'The Shape of Water',2017,123,'R',0),(40,'There Will Be Blood',2007,158,'R',0),(41,'Toy Story ',1995,81,'G',0),(42,'U-571',2000,116,'PG-13',0),(43,'Up',2009,96,'PG',0),(44,'V for Vendetta',2005,132,'R',0),(45,'Valentine\'s Day ',2018,125,'PG-13',0),(46,'W',1974,95,'PG',0),(47,'WALL.E',2008,98,'G',0),(48,'World War Z',2013,116,'PG-13',0),(49,'X-Men: Apocalypse',2016,144,'PG-13',0);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writers`
--

DROP TABLE IF EXISTS `writers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `writers` (
  `writerName` varchar(45) NOT NULL,
  `idmovies` int(11) NOT NULL,
  `wonWriting` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`writerName`,`idmovies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writers`
--

LOCK TABLES `writers` WRITE;
/*!40000 ALTER TABLE `writers` DISABLE KEYS */;
INSERT INTO `writers` VALUES ('Adam Herz',13,0),('Alan Ball',15,1),('Andrew Stanton',47,0),('Anthony McCarten',7,0),('Arthur C. Clarke',0,0),('Brian Helgeland',4,1),('Bruce Joel Rubin',22,0),('Catherine Johnson',18,0),('Charles Perrault',19,0),('Chris Weitz',30,0),('Christopher Nolan',8,0),('Chuck Palahniuk',6,0),('Damien Chazelle',16,0),('David Turpin',37,0),('Donna Powers',14,0),('Du Lu Wang',23,0),('Ernest Lehman',24,0),('Fran Walsh',38,1),('George Clayton Johnson',10,0),('Gerald Di Pego',46,0),('Guillermo del Toro ',39,0),('Hayao Miyazaki',32,0),('Irene Mecchi',36,0),('Joel Coen',26,1),('John Lasseter',41,0),('Jojo Moyes',17,0),('Jonathan Mostow',42,0),('Josh Singer',33,1),('Joss Whedon',1,0),('Katherine Fugate',45,0),('Kay Cannon',28,0),('Lilly Wachowski',44,0),('Luc Besson',11,0),('Mark Boal',35,1),('Matthew Michael Carnahan',48,0),('Michael Mann',2,0),('Mike Figgis',27,0),('Mitchell Zuckhoff',9,0),('Paolo Lins',12,0),('Paul Thomas Anderson',40,0),('Pete Docter',43,0),('Phillip K. Dick',25,0),('Quentin Tarantino',29,0),('Randall Wallace',5,0),('Simon Kinberg',49,0),('Steven Knight',21,0),('Steven Zaillian',31,1),('Victor Hugo',20,0),('William Goldman',3,0),('William Monahan',34,1);
/*!40000 ALTER TABLE `writers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-23 19:39:14
