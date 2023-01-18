CREATE DATABASE  IF NOT EXISTS `fragrance_database` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fragrance_database`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: fragrance_database
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `age_range`
--

DROP TABLE IF EXISTS `age_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `age_range` (
  `age_range_ID` int NOT NULL,
  `age_range` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`age_range_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_range`
--

LOCK TABLES `age_range` WRITE;
/*!40000 ALTER TABLE `age_range` DISABLE KEYS */;
INSERT INTO `age_range` VALUES (1,'8-24'),(2,'25-34'),(3,'35-44'),(4,'45-54'),(5,'55-64'),(6,'64 and over');
/*!40000 ALTER TABLE `age_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `agerange_purchasemethod`
--

DROP TABLE IF EXISTS `agerange_purchasemethod`;
/*!50001 DROP VIEW IF EXISTS `agerange_purchasemethod`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `agerange_purchasemethod` AS SELECT 
 1 AS `age_range`,
 1 AS `purchase_method`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avgcost_continent`
--

DROP TABLE IF EXISTS `avgcost_continent`;
/*!50001 DROP VIEW IF EXISTS `avgcost_continent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avgcost_continent` AS SELECT 
 1 AS `average_cost`,
 1 AS `continent_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avgcostfrag_women`
--

DROP TABLE IF EXISTS `avgcostfrag_women`;
/*!50001 DROP VIEW IF EXISTS `avgcostfrag_women`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avgcostfrag_women` AS SELECT 
 1 AS `average_cost`,
 1 AS `gender_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `brandfrag_incomerange`
--

DROP TABLE IF EXISTS `brandfrag_incomerange`;
/*!50001 DROP VIEW IF EXISTS `brandfrag_incomerange`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `brandfrag_incomerange` AS SELECT 
 1 AS `brand_name`,
 1 AS `income_range`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_ID` int NOT NULL,
  `brand_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brand_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Ariana Grande'),(2,'Calvin Klein'),(3,'Carolina Herrera'),(4,'Chanel'),(5,'Davidoff'),(6,'Calvin Klien'),(7,'Dior'),(8,'Revlon'),(9,'Lancome'),(10,'Maison Margiela'),(11,'Glossier'),(12,'YSL'),(13,'Gucci'),(14,'Viktor Rolf'),(15,'Tom Ford'),(16,'Versace'),(17,'Le Labo'),(18,'Baccarat Rouge');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `continents`
--

DROP TABLE IF EXISTS `continents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `continents` (
  `continent_ID` int NOT NULL,
  `continent_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`continent_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `continents`
--

LOCK TABLES `continents` WRITE;
/*!40000 ALTER TABLE `continents` DISABLE KEYS */;
INSERT INTO `continents` VALUES (1,'Asia'),(2,'Africa'),(3,'Australia'),(4,'Europe'),(5,'North America'),(6,'South America');
/*!40000 ALTER TABLE `continents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `expensivefrag_gender`
--

DROP TABLE IF EXISTS `expensivefrag_gender`;
/*!50001 DROP VIEW IF EXISTS `expensivefrag_gender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `expensivefrag_gender` AS SELECT 
 1 AS `fragrances_name`,
 1 AS `fragrance_cost`,
 1 AS `gender_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fragrance_genders`
--

DROP TABLE IF EXISTS `fragrance_genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fragrance_genders` (
  `gender_ID` int NOT NULL,
  `fragrance_ID` int NOT NULL,
  KEY `fk_fragrance_genders_gender1_idx` (`gender_ID`),
  KEY `fk_fragrance_genders_fragrances1_idx` (`fragrance_ID`),
  CONSTRAINT `fk_fragrance_genders_fragrances1` FOREIGN KEY (`fragrance_ID`) REFERENCES `fragrances` (`fragrance_ID`),
  CONSTRAINT `fk_fragrance_genders_gender1` FOREIGN KEY (`gender_ID`) REFERENCES `gender` (`gender_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fragrance_genders`
--

LOCK TABLES `fragrance_genders` WRITE;
/*!40000 ALTER TABLE `fragrance_genders` DISABLE KEYS */;
INSERT INTO `fragrance_genders` VALUES (1,1),(2,1),(2,2),(1,3),(2,4),(2,5),(3,5),(3,6),(1,7),(2,7),(1,8),(2,8),(1,9),(3,10),(2,10),(3,11),(2,11),(1,12),(3,12),(1,13),(3,14),(1,14),(2,15),(3,15),(1,16),(2,16),(3,17),(2,17),(3,18),(2,18);
/*!40000 ALTER TABLE `fragrance_genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fragrances`
--

DROP TABLE IF EXISTS `fragrances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fragrances` (
  `fragrance_ID` int NOT NULL,
  `fragrances_name` varchar(100) NOT NULL,
  `brand_ID` int NOT NULL,
  `continent_ID` int NOT NULL,
  `purchase_methodID` int NOT NULL,
  `fragrance_cost` decimal(9,2) NOT NULL,
  `age_range_ID` int NOT NULL,
  `income_rangeID` int NOT NULL,
  PRIMARY KEY (`fragrance_ID`),
  KEY `fk_Frangrance_brands1_idx` (`brand_ID`),
  KEY `fk_Frangrance_continents1_idx` (`continent_ID`),
  KEY `fk_Frangrance_purchase1_idx` (`purchase_methodID`),
  KEY `fk_Frangrance_age_range1_idx` (`age_range_ID`),
  KEY `fk_Frangrance_income_range1_idx` (`income_rangeID`),
  CONSTRAINT `fk_Fragrance_age_range` FOREIGN KEY (`age_range_ID`) REFERENCES `age_range` (`age_range_ID`),
  CONSTRAINT `fk_Fragrance_brands` FOREIGN KEY (`brand_ID`) REFERENCES `brands` (`brand_ID`),
  CONSTRAINT `fk_Fragrance_continents` FOREIGN KEY (`continent_ID`) REFERENCES `continents` (`continent_ID`),
  CONSTRAINT `fk_Fragrance_income_range` FOREIGN KEY (`income_rangeID`) REFERENCES `income_range` (`income_rangeID`),
  CONSTRAINT `fk_Fragrance_purchase` FOREIGN KEY (`purchase_methodID`) REFERENCES `purchase` (`purchase_methodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fragrances`
--

LOCK TABLES `fragrances` WRITE;
/*!40000 ALTER TABLE `fragrances` DISABLE KEYS */;
INSERT INTO `fragrances` VALUES (1,'Ariana Grande: Cloud Eau De Parfum',1,5,2,45.00,1,3),(2,'Calvin Klein: Eternity',2,1,2,35.00,4,4),(3,'Carolina Herrera: Good Girl Eau De Parfum',3,6,1,62.00,3,3),(4,'Chanel: Bleu de Chanel',4,6,2,90.00,6,6),(5,'Cool Water: EDT',5,2,2,28.00,1,1),(6,'Ck One:EDT',6,1,1,45.00,3,1),(7,'Dior: Sauvage',7,4,2,78.00,2,2),(8,'Revlon: Jean Nate',8,5,1,22.00,1,1),(9,'Lancome: Idole Eau De Parfum',9,4,1,102.00,2,2),(10,'Maison Margiela: Jazz Club EDT',10,5,1,76.00,2,2),(11,'Glossier: You',11,3,2,152.00,3,3),(12,'YSL: Black Opium Eau de Parfum',12,2,1,70.00,4,4),(13,'Gucci: Bloom EDP',13,4,2,92.00,4,4),(14,'Viktor Rolf: Flowerbomb EDP',14,6,1,64.00,4,4),(15,'Tom Ford: Oud Wood',15,3,2,175.00,5,5),(16,'Versace: Eros',16,2,1,86.00,5,5),(17,'Le Labo: Santal 33 EDP',17,4,2,300.00,6,6),(18,'Maison Francis Kurkdjian',18,1,2,300.00,2,6);
/*!40000 ALTER TABLE `fragrances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `gender_ID` int NOT NULL,
  `gender_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gender_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'female'),(2,'male'),(3,'unisex');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_range`
--

DROP TABLE IF EXISTS `income_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income_range` (
  `income_rangeID` int NOT NULL,
  `income_range` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`income_rangeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_range`
--

LOCK TABLES `income_range` WRITE;
/*!40000 ALTER TABLE `income_range` DISABLE KEYS */;
INSERT INTO `income_range` VALUES (1,'Less than $20,000'),(2,'$20,000 to $34,999'),(3,'$35,000 to $49,999'),(4,'$50,000 to $74,999'),(5,'$75,000 to $99,999'),(6,'Over $100,000');
/*!40000 ALTER TABLE `income_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `leastexpfrag_agerange`
--

DROP TABLE IF EXISTS `leastexpfrag_agerange`;
/*!50001 DROP VIEW IF EXISTS `leastexpfrag_agerange`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `leastexpfrag_agerange` AS SELECT 
 1 AS `fragrances_name`,
 1 AS `fragrance_cost`,
 1 AS `age_range`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `purchase_methodID` int NOT NULL,
  `purchase_method` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`purchase_methodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,'In-Person'),(2,'Online');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `agerange_purchasemethod`
--

/*!50001 DROP VIEW IF EXISTS `agerange_purchasemethod`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `agerange_purchasemethod` AS select `age_range`.`age_range` AS `age_range`,`purchase`.`purchase_method` AS `purchase_method` from ((`fragrances` join `age_range` on((`fragrances`.`age_range_ID` = `age_range`.`age_range_ID`))) join `purchase` on((`fragrances`.`purchase_methodID` = `purchase`.`purchase_methodID`))) where (`purchase`.`purchase_method` = 'online') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avgcost_continent`
--

/*!50001 DROP VIEW IF EXISTS `avgcost_continent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avgcost_continent` AS select concat('$',truncate(avg(`fragrances`.`fragrance_cost`),2)) AS `average_cost`,`continents`.`continent_name` AS `continent_name` from (`fragrances` join `continents` on((`fragrances`.`continent_ID` = `continents`.`continent_ID`))) group by `fragrances`.`continent_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avgcostfrag_women`
--

/*!50001 DROP VIEW IF EXISTS `avgcostfrag_women`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avgcostfrag_women` AS select truncate(avg(`fragrances`.`fragrance_cost`),2) AS `average_cost`,`gender`.`gender_type` AS `gender_type` from ((`fragrances` join `fragrance_genders` on((`fragrances`.`fragrance_ID` = `fragrance_genders`.`fragrance_ID`))) join `gender` on((`fragrance_genders`.`gender_ID` = `gender`.`gender_ID`))) where (`gender`.`gender_type` = 'female') group by `gender`.`gender_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `brandfrag_incomerange`
--

/*!50001 DROP VIEW IF EXISTS `brandfrag_incomerange`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `brandfrag_incomerange` AS select `brands`.`brand_name` AS `brand_name`,`income_range`.`income_range` AS `income_range` from ((`fragrances` join `brands` on((`fragrances`.`brand_ID` = `brands`.`brand_ID`))) join `income_range` on((`fragrances`.`income_rangeID` = `income_range`.`income_rangeID`))) where (`income_range`.`income_range` = 'Less than $20,000') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expensivefrag_gender`
--

/*!50001 DROP VIEW IF EXISTS `expensivefrag_gender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expensivefrag_gender` AS select `fragrances`.`fragrances_name` AS `fragrances_name`,`fragrances`.`fragrance_cost` AS `fragrance_cost`,`gender`.`gender_type` AS `gender_type` from ((`fragrances` join `fragrance_genders` on((`fragrances`.`fragrance_ID` = `fragrance_genders`.`fragrance_ID`))) join `gender` on((`fragrance_genders`.`gender_ID` = `gender`.`gender_ID`))) where (`fragrances`.`fragrance_cost` = (select max(`fragrances`.`fragrance_cost`) from `fragrances`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `leastexpfrag_agerange`
--

/*!50001 DROP VIEW IF EXISTS `leastexpfrag_agerange`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `leastexpfrag_agerange` AS select `fragrances`.`fragrances_name` AS `fragrances_name`,`fragrances`.`fragrance_cost` AS `fragrance_cost`,`age_range`.`age_range` AS `age_range` from (`fragrances` join `age_range` on((`fragrances`.`age_range_ID` = `age_range`.`age_range_ID`))) where (`fragrances`.`fragrance_cost` = (select min(`fragrances`.`fragrance_cost`) from `fragrances`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-11 19:06:41
