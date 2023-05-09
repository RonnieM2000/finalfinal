-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: greenprop
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `playerid` int NOT NULL AUTO_INCREMENT,
  `fname` text NOT NULL,
  `lname` text,
  `jersey_no` int NOT NULL,
  `team` text NOT NULL,
  PRIMARY KEY (`playerid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` (`playerid`, `fname`, `lname`, `jersey_no`, `team`) VALUES (1,'Lebron','James',23,'Lakers'),(2,'Anthony','Davis',3,'Lakers'),(3,'Stephen ','Curry',30,'Warriors'),(4,'Kevin ','Durant',35,'Suns'),(5,'Joel ','Embiid',21,'76ers'),(6,'Jimmy ','Butler',22,'Heat'),(7,'Nikola','Jokic',15,'Nuggets'),(8,'Jayson ','Tatum',0,'Celtics'),(9,'Jaylen','Brown',7,'Celtics'),(10,'Jalen','Brunson',11,'Knicks');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `playerid` int NOT NULL,
  `points` int NOT NULL,
  `rebounds` int NOT NULL,
  `assists` int NOT NULL,
  `stat_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`playerid`,`stat_id`),
  UNIQUE KEY `stat_id` (`stat_id`),
  CONSTRAINT `stats_players_playerid_fk` FOREIGN KEY (`playerid`) REFERENCES `players` (`playerid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` (`playerid`, `points`, `rebounds`, `assists`, `stat_id`) VALUES (1,22,5,6,1),(1,15,10,5,2),(1,22,20,7,3),(1,25,9,5,4),(1,28,12,3,5),(2,16,14,1,6),(2,31,19,1,7),(2,12,11,2,8),(2,31,17,2,9),(2,13,8,3,10),(3,50,8,6,11),(3,29,4,5,12),(3,31,2,8,13),(3,32,5,4,14),(3,36,6,3,15),(4,24,8,3,16),(4,29,14,1,17),(4,31,6,4,18),(4,31,11,6,19),(4,28,6,5,20),(5,0,0,0,21),(5,0,0,0,22),(5,14,10,2,23),(5,20,19,7,24),(5,26,5,3,25),(6,25,11,4,26),(6,42,8,4,27),(6,56,9,2,28),(6,30,5,4,29),(6,25,3,3,30),(7,39,16,5,31),(7,24,19,5,32),(7,28,17,12,33),(7,43,11,6,34),(7,20,11,12,35),(8,39,11,5,36),(8,30,14,7,37),(8,19,8,8,38),(8,31,7,4,39),(8,29,10,5,40),(9,23,6,4,41),(9,32,5,2,42),(9,35,7,5,43),(9,31,4,3,44),(9,15,1,3,45),(10,25,5,7,46),(10,23,4,4,47),(10,29,6,6,48),(10,21,4,6,49),(10,20,5,6,50);
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `teamName` text,
  `arena` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` (`teamName`, `arena`) VALUES ('76ers','wells fargo arena'),('nuggets','ball arena'),('knicks','madison square garden'),('lakers','crypto.com arena'),('heat','kaseya center'),('warriors','chase center'),('celtics','td garden');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userid`, `username`, `name`, `password`) VALUES (1,'ronnie@cau.edu','Ronnie Mayfield','1234'),(2,'taiwan@cau.edu','Taiwan Coleman','1234'),(3,'donald@cau.edu','Donald McIntosh','1234'),(4,'chris@cau.edu','Chris Springer','1234');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-09 16:44:43
