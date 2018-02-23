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
  `dateOfBirth` date DEFAULT NULL,
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
INSERT INTO `directors` VALUES ('Alfred Hitchcock','1899-08-13',24,0),('Andrew Stanton','1965-12-03',47,0),('Ang Lee','1654-10-23',23,0),('Bob Peterson','1961-01-18',43,0),('Brian O\'Malley','1930-01-22',37,0),('Bryan Singer','1965-09-17',49,0),('Christopher Nolan','1970-07-30',8,0),('Curtis Hanson','1945-03-24',4,0),('Damien Chazelle','1985-01-19',16,0),('David Fincher','1962-08-28',6,0),('Ethan Coen','1957-09-21',26,1),('Fernando Meirelles','1955-11-09',12,0),('Gareth Edwards','1975-06-01',30,0),('Garry Marshall','1934-11-13',45,0),('Guillermo del Toro','1964-10-09',39,0),('Hayao Miyazaki','1941-01-05',32,0),('James McTeigue','1967-12-29',44,0),('Joe Wright','1972-08-25',7,0),('John Lasseter','1957-01-12',41,0),('Jonathan Mostow','1961-11-28',42,0),('Joss Whedon','1964-06-23',1,0),('Kathryn Bigelow','1951-11-27',35,1),('Luc Besson','1959-03-18',11,0),('Marc Forster','1969-11-30',48,0),('Martin Scorsese','1942-11-17',34,1),('Mel Gibson','1956-01-03',5,1),('Michael Bay','1965-02-17',9,0),('Michael Mann','1943-02-05',2,0),('Mike Figgis','1948-02-28',27,0),('Mimi Leder','1952-01-26',22,0),('Paul Thomas Anderson','1970-06-26',40,0),('Paul Weitz','1965-11-19',13,0),('Peter Jackson','1961-10-31',38,1),('Phyllida Lloyd','1957-06-17',18,0),('Quentin Tarantino','1963-03-27',29,0),('Renny Harlin','1959-03-15',14,0),('Richard Quine','1920-11-12',46,0),('Ridley Scott','1937-11-30',25,0),('Robert Stromberg','1965-01-01',19,0),('Robert Zemeckis','1952-05-14',21,0),('Roger Allers','1949-06-29',36,0),('Sam Mendes','1965-08-01',15,1),('Stanley Kubrick','1928-07-26',0,0),('Stephen Hopkins','1958-01-01',3,0),('Steven Soderbergh','1963-01-14',10,0),('Steven Spielberg','1946-12-18',31,0),('Thea Sharrock','1976-01-01',17,0),('Tom Hooper','1972-10-05',20,0),('Tom McCarthy','1966-06-07',33,0),('Trish Sie','1988-03-17',28,0);
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
  `DOB` date NOT NULL,
  `idmovies` int(11) NOT NULL,
  `characterName` varchar(45) DEFAULT NULL,
  `wonBestActor` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`actorName`,`DOB`,`idmovies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leadactors`
--

LOCK TABLES `leadactors` WRITE;
/*!40000 ALTER TABLE `leadactors` DISABLE KEYS */;
INSERT INTO `leadactors` VALUES ('	Matthew Broderick','1962-03-21',36,'Simba',0),('Al Pacino','1940-04-25',2,'Lt. Vincent Hanna',0),('Angelina Jolie','1975-06-04',19,'Maleficent',0),('Anna Kendrick','1985-08-09',28,'Beca',0),('Ben Burtt','1948-07-12',47,'WALL.E',0),('Brad Pitt','1963-12-18',48,'Gerry Lane',0),('Cary Grant','1904-01-18',24,'Roger O. Thornhill',0),('Charlotte Vega','1994-02-10',37,'Rachel',0),('Chow Yun-Fat','1955-05-18',23,'Master Li Mu Bai',0),('Daniel Day-Lewis','1957-04-29',40,'Daniel Plainview',0),('Edward Asner','1929-11-15',43,'Carl Fredricksen',0),('Edward Norton','1969-08-18',6,'The Narrator',0),('Elijah Wood','1981-01-28',38,'Frodo Baggins',0),('Emilia Clarke','1986-10-23',17,'Lou Clark',0),('Emma Stone','1988-11-06',16,'Mia',1),('Felicity Jones','1983-10-17',30,'Jyn Erso',0),('Gary Oldman','1958-03-21',7,'Winston Churchill',0),('George Clooney','1961-05-06',10,'Danny Ocean',0),('Guy Pearce','1967-10-05',4,'Ed Exley',0),('Harrison Ford','1942-07-13',25,'Rick Deckard',0),('Hugh Jackman','1968-10-12',20,'Jean Valjean',0),('James D\'Arcy','1975-08-24',8,'Col. Winnant',0),('James McAvoy','1979-04-21',49,'Professor Charles Xavier',0),('Jason Biggs','1978-05-12',13,'Jim Levenstein',0),('Jean Reno','1948-07-30',11,'Leon',0),('Jeremy Renner','1971-01-07',35,'William James',0),('Jessica Alba','1987-04-28',45,'Morley Clarkson',0),('John Krasinski','1979-10-20',9,'Jack Silva',0),('John Travolta','1954-02-18',29,'Vincent Vega',0),('Keir Dullea','1936-05-30',0,'Dr. Dave Bowman',0),('Kevin Spacey','1959-07-26',15,'Lester Burnham',1),('Leandro Firmino','1978-06-23',12,'Ze Pequeno - Lil Ze',0),('Leonardo DiCaprio','1974-11-11',34,'Billy',0),('Liam Neeson','1952-06-07',31,'Oskar Schindler',0),('Marion Cotillard','1975-09-30',21,'Marianne Beausejour',0),('Mark Ruffalo','1967-11-22',33,'Mike Rezendes',0),('Matthew McConaughey','1969-11-04',42,'Lt. Andrew Tyler',0),('Mel Gibson','1956-01-03',5,'William Wallace',0),('Meryl Streep','1949-06-22',18,'Donna',0),('Michael Douglas','1944-09-25',3,'Charles Remington',0),('Natalie Portman','1981-06-09',44,'Evey',0),('Nathan Fillion','1971-03-27',1,'Captain Malcom \'Mal\' Reynolds',0),('Robert Duvall','1931-01-05',22,'Spurgeon Tanner',0),('Rumi Hiiragi','1987-08-01',32,'Chihiro Ogino',0),('Saffron Burrows','1972-10-22',14,'Dr. Susan McAlester',0),('Sally Hawkins','1976-04-27',39,'Elisa Esposito',0),('Tom Hanks','1956-07-09',41,'Woody',0),('Tommy Lee Jones','1946-09-15',26,'Ed Tom Bell',0),('Twiggy','1949-09-19',46,'Katie Lewis',0),('Wesley Snipes','1962-07-31',27,'Max Carlyle',0);
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
  `DOB` date NOT NULL,
  `idmovies` int(11) NOT NULL,
  `wonWriting` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`writerName`,`DOB`,`idmovies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writers`
--

LOCK TABLES `writers` WRITE;
/*!40000 ALTER TABLE `writers` DISABLE KEYS */;
INSERT INTO `writers` VALUES ('Adam Herz','1972-09-10',13,0),('Alan Ball','1957-05-13',15,1),('Andrew Stanton','1965-12-03',47,0),('Anthony McCarten','1961-04-28',7,0),('Arthur C. Clarke','1917-12-16',0,0),('Brian Helgeland','1961-01-17',4,1),('Bruce Joel Rubin','1943-03-10',22,0),('Catherine Johnson','1957-10-14',18,0),('Charles Perrault','1628-01-12',19,0),('Chris Weitz','1969-11-30',30,0),('Christopher Nolan','1970-07-30',8,0),('Chuck Palahniuk','1962-02-21',6,0),('Damien Chazelle','1985-01-19',16,0),('David Turpin','1956-07-14',37,0),('Donna Powers','1970-01-01',14,0),('Du Lu Wang','1909-01-01',23,0),('Ernest Lehman','1915-12-08',24,0),('Fran Walsh','1959-01-10',38,1),('George Clayton Johnson','1929-07-29',10,0),('Gerald Di Pego','1941-07-11',46,0),('Guillermo del Toro ','1964-10-09',39,0),('Hayao Miyazaki','1941-01-05',32,0),('Irene Mecchi','1949-09-21',36,0),('Joel Coen','1957-09-21',26,1),('John Lasseter','1957-01-12',41,0),('Jojo Moyes','1969-08-04',17,0),('Jonathan Mostow','1961-11-28',42,0),('Josh Singer','1972-02-27',33,1),('Joss Whedon','1964-06-23',1,0),('Katherine Fugate','1965-07-14',45,0),('Kay Cannon','1974-08-22',28,0),('Lilly Wachowski','1967-12-29',44,0),('Luc Besson','1959-03-18',11,0),('Mark Boal','1973-01-23',35,1),('Matthew Michael Carnahan','1961-02-06',48,0),('Michael Mann','1943-02-05',2,0),('Mike Figgis','1948-02-28',27,0),('Mitchell Zuckhoff','1962-01-01',9,0),('Paolo Lins','1958-01-01',12,0),('Paul Thomas Anderson','1970-06-26',40,0),('Pete Docter','1968-10-09',43,0),('Phillip K. Dick','1928-12-16',25,0),('Quentin Tarantino','1963-03-27',29,0),('Randall Wallace','1949-07-28',5,0),('Simon Kinberg','1973-08-02',49,0),('Steven Knight','1959-01-01',21,0),('Steven Zaillian','1953-01-30',31,1),('Victor Hugo','1802-02-26',20,0),('William Goldman','1931-08-12',3,0),('William Monahan','1960-11-03',34,1);
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

-- Dump completed on 2018-02-23 14:46:30
