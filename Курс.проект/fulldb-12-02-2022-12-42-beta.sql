-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adress` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Улица',
  `hause` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Номер дома, корпус',
  `settlements_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Населенный пункт',
  PRIMARY KEY (`id`),
  KEY `settlements_id` (`settlements_id`),
  CONSTRAINT `settlements_id` FOREIGN KEY (`settlements_id`) REFERENCES `settlements` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Адрес';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES (1,'Ломоносова','227',1),(2,' Гикало','85',2),(3,' Ленина','55',3),(4,' Парковая','31',4),(5,' Солнечная','54',5),(6,' Лесная','207',1),(7,' Ленина','35',2),(8,' Гикало','153',3),(9,' Парковая','134',4),(10,'Ломоносова','193',5),(11,' Лесная','97',1),(12,' Ленина','158',2),(13,' Ленина','112',3),(14,' Ленина','48',4),(15,' Солнечная','227',5),(16,' Лесная','29',1),(17,' Гикало','88',2),(18,' Солнечная','109',3),(19,' Гикало','2',4),(20,' Лесная','58',5),(21,' Лесная','180',1),(22,'Ломоносова','241',2),(23,' Солнечная','82',3),(24,' Лесная','91',4),(25,'Ломоносова','219',5),(26,' Солнечная','45',1),(27,' Парковая','20',2),(28,' Гикало','50',3),(29,' Лесная','4',4),(30,' Гикало','147',5),(31,' Солнечная','159',1),(32,' Солнечная','136',2),(33,' Гикало','28',3),(34,' Гикало','235',4),(35,'Ломоносова','249',5),(36,' Гикало','171',1),(37,' Гикало','72',2),(38,' Ленина','141',3),(39,' Ленина','113',4),(40,' Солнечная','100',5),(41,' Ленина','58',1),(42,' Лесная','38',2),(43,' Лесная','215',3),(44,' Лесная','83',4),(45,'Ломоносова','152',5),(46,' Парковая','3',1),(47,'Ломоносова','73',2),(48,' Солнечная','144',3),(49,' Парковая','110',4),(50,'Ломоносова','95',5),(51,' Лесная','23',1),(52,' Гикало','93',2),(53,' Лесная','116',3),(54,' Парковая','120',4),(55,'Ломоносова','137',5),(56,'Ломоносова','13',1),(57,' Гикало','191',2),(58,' Гикало','215',3),(59,' Гикало','10',4),(60,'Ломоносова','234',5),(61,' Парковая','91',1),(62,'Ломоносова','49',2),(63,' Лесная','203',3),(64,' Лесная','51',4),(65,'Ломоносова','119',5),(66,' Гикало','45',1),(67,' Гикало','61',2),(68,' Солнечная','137',3),(69,' Ленина','26',4),(70,' Ленина','127',5),(71,' Солнечная','118',1),(72,' Гикало','5',2),(73,' Ленина','88',3),(74,' Гикало','192',4),(75,' Лесная','80',5),(76,' Солнечная','102',1),(77,' Парковая','195',2),(78,' Парковая','67',3),(79,' Гикало','120',4),(80,' Гикало','117',5),(81,'Ломоносова','176',1),(82,' Ленина','105',2),(83,' Солнечная','44',3),(84,' Парковая','161',4),(85,' Лесная','155',5),(86,' Парковая','31',1),(87,' Гикало','206',2),(88,' Парковая','221',3),(89,' Солнечная','51',4),(90,' Лесная','107',5),(91,' Лесная','68',1),(92,' Лесная','121',2),(93,' Парковая','65',3),(94,' Парковая','27',4),(95,' Ленина','118',5),(96,' Лесная','95',1),(97,' Солнечная','60',2),(98,' Солнечная','62',3),(99,'Ломоносова','45',4),(100,' Лесная','62',5);
/*!40000 ALTER TABLE `adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Категория объектов недвижимости';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Квартиры'),(2,'Дома'),(3,'Коммерческая недвижимость'),(4,'Земельные участки');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Страна';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Россия'),(2,'Беларусь'),(3,'Украина'),(4,'Казахстан'),(5,'Грузия');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `metadata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Фотографии объектов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
INSERT INTO `foto` VALUES (1,'http://lorempixel.com/640/480/'),(2,'http://lorempixel.com/640/480/'),(3,'http://lorempixel.com/640/480/'),(4,'http://lorempixel.com/640/480/'),(5,'http://lorempixel.com/640/480/'),(6,'http://lorempixel.com/640/480/'),(7,'http://lorempixel.com/640/480/'),(8,'http://lorempixel.com/640/480/'),(9,'http://lorempixel.com/640/480/'),(10,'http://lorempixel.com/640/480/'),(11,'http://lorempixel.com/640/480/'),(12,'http://lorempixel.com/640/480/'),(13,'http://lorempixel.com/640/480/'),(14,'http://lorempixel.com/640/480/'),(15,'http://lorempixel.com/640/480/'),(16,'http://lorempixel.com/640/480/'),(17,'http://lorempixel.com/640/480/'),(18,'http://lorempixel.com/640/480/'),(19,'http://lorempixel.com/640/480/'),(20,'http://lorempixel.com/640/480/'),(21,'http://lorempixel.com/640/480/'),(22,'http://lorempixel.com/640/480/'),(23,'http://lorempixel.com/640/480/'),(24,'http://lorempixel.com/640/480/'),(25,'http://lorempixel.com/640/480/'),(26,'http://lorempixel.com/640/480/'),(27,'http://lorempixel.com/640/480/'),(28,'http://lorempixel.com/640/480/'),(29,'http://lorempixel.com/640/480/'),(30,'http://lorempixel.com/640/480/'),(31,'http://lorempixel.com/640/480/'),(32,'http://lorempixel.com/640/480/'),(33,'http://lorempixel.com/640/480/'),(34,'http://lorempixel.com/640/480/'),(35,'http://lorempixel.com/640/480/'),(36,'http://lorempixel.com/640/480/'),(37,'http://lorempixel.com/640/480/'),(38,'http://lorempixel.com/640/480/'),(39,'http://lorempixel.com/640/480/'),(40,'http://lorempixel.com/640/480/'),(41,'http://lorempixel.com/640/480/'),(42,'http://lorempixel.com/640/480/'),(43,'http://lorempixel.com/640/480/'),(44,'http://lorempixel.com/640/480/'),(45,'http://lorempixel.com/640/480/'),(46,'http://lorempixel.com/640/480/'),(47,'http://lorempixel.com/640/480/'),(48,'http://lorempixel.com/640/480/'),(49,'http://lorempixel.com/640/480/'),(50,'http://lorempixel.com/640/480/'),(51,'http://lorempixel.com/640/480/'),(52,'http://lorempixel.com/640/480/'),(53,'http://lorempixel.com/640/480/'),(54,'http://lorempixel.com/640/480/'),(55,'http://lorempixel.com/640/480/'),(56,'http://lorempixel.com/640/480/'),(57,'http://lorempixel.com/640/480/'),(58,'http://lorempixel.com/640/480/'),(59,'http://lorempixel.com/640/480/'),(60,'http://lorempixel.com/640/480/'),(61,'http://lorempixel.com/640/480/'),(62,'http://lorempixel.com/640/480/'),(63,'http://lorempixel.com/640/480/'),(64,'http://lorempixel.com/640/480/'),(65,'http://lorempixel.com/640/480/'),(66,'http://lorempixel.com/640/480/'),(67,'http://lorempixel.com/640/480/'),(68,'http://lorempixel.com/640/480/'),(69,'http://lorempixel.com/640/480/'),(70,'http://lorempixel.com/640/480/'),(71,'http://lorempixel.com/640/480/'),(72,'http://lorempixel.com/640/480/'),(73,'http://lorempixel.com/640/480/'),(74,'http://lorempixel.com/640/480/'),(75,'http://lorempixel.com/640/480/'),(76,'http://lorempixel.com/640/480/'),(77,'http://lorempixel.com/640/480/'),(78,'http://lorempixel.com/640/480/'),(79,'http://lorempixel.com/640/480/'),(80,'http://lorempixel.com/640/480/'),(81,'http://lorempixel.com/640/480/'),(82,'http://lorempixel.com/640/480/'),(83,'http://lorempixel.com/640/480/'),(84,'http://lorempixel.com/640/480/'),(85,'http://lorempixel.com/640/480/'),(86,'http://lorempixel.com/640/480/'),(87,'http://lorempixel.com/640/480/'),(88,'http://lorempixel.com/640/480/'),(89,'http://lorempixel.com/640/480/'),(90,'http://lorempixel.com/640/480/'),(91,'http://lorempixel.com/640/480/'),(92,'http://lorempixel.com/640/480/'),(93,'http://lorempixel.com/640/480/'),(94,'http://lorempixel.com/640/480/'),(95,'http://lorempixel.com/640/480/'),(96,'http://lorempixel.com/640/480/'),(97,'http://lorempixel.com/640/480/'),(98,'http://lorempixel.com/640/480/'),(99,'http://lorempixel.com/640/480/'),(100,'http://lorempixel.com/640/480/');
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inf_real`
--

DROP TABLE IF EXISTS `inf_real`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inf_real` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Название объекта - оглавление',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Описание объекта',
  `price` decimal(13,2) DEFAULT NULL COMMENT 'Цена за объект',
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Валюта',
  `total_area` decimal(10,2) DEFAULT NULL COMMENT 'Площадь общая, м2',
  `living_area` decimal(10,2) DEFAULT NULL COMMENT 'Площадь жилая, м2',
  `kitchen_area` decimal(10,2) DEFAULT NULL COMMENT 'Площадь кухни, м2',
  `land_area` decimal(10,2) DEFAULT NULL COMMENT 'Площадь зем.уч., соток',
  `created_at` datetime DEFAULT NULL COMMENT 'Дата создания сделки',
  `sales_at` datetime DEFAULT NULL COMMENT 'Дата закрытия сделки (продажи, сдачи в аренду)',
  `property` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Форма собственности',
  `foto_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Фото',
  `payment_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Способ оплаты',
  `adress_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Адрес',
  `settlements_id` bigint(20) unsigned DEFAULT NULL COMMENT 'населенный пункт',
  `type_transactions_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Вид сделки',
  `users_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Продавец',
  `types_real_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Вид объекта',
  `category_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Категория объекта',
  PRIMARY KEY (`id`),
  KEY `foto_id` (`foto_id`),
  KEY `payment_id` (`payment_id`),
  KEY `adress_id` (`adress_id`),
  KEY `settlements_id2` (`settlements_id`),
  KEY `type_transactions_id` (`type_transactions_id`),
  KEY `users_id` (`users_id`),
  KEY `types_real_id` (`types_real_id`),
  KEY `category_id6` (`category_id`),
  CONSTRAINT `adress_id` FOREIGN KEY (`adress_id`) REFERENCES `adress` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `category_id6` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `foto_id` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `settlements_id2` FOREIGN KEY (`settlements_id`) REFERENCES `settlements` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `type_transactions_id` FOREIGN KEY (`type_transactions_id`) REFERENCES `type_transactions` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `types_real_id` FOREIGN KEY (`types_real_id`) REFERENCES `types_real` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `users_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Информация об объектах';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inf_real`
--

LOCK TABLES `inf_real` WRITE;
/*!40000 ALTER TABLE `inf_real` DISABLE KEYS */;
INSERT INTO `inf_real` VALUES (1,'blanditiis','Hic iste dolorem voluptatibus aut eum voluptas provident. Nulla necessitatibus qui quo dolores cupiditate. Sed nostrum est sit quia vitae enim.',62857584.00,'руб.',113.00,18.00,23.00,1.00,'2016-08-06 20:11:29','2005-05-02 00:00:00',' собственник',1,1,1,1,1,101,1,1),(2,'id','Aut nihil et sit tempora enim amet quis dolorem. Dolores aut rerum consequatur neque dicta. Ut consequatur libero voluptatem nihil sint. Ut quaerat deleniti alias quos dolore quia.',108609415.00,'руб.',98.00,69.00,12.00,14.00,'2000-08-23 07:12:45','2018-04-06 00:00:00',' собственник',2,2,2,2,2,102,2,2),(3,'est','Doloribus eum libero facilis quam reprehenderit qui laborum. Saepe consectetur architecto cumque voluptas et.',186723497.00,'руб.',213.00,53.00,20.00,11.00,'2020-08-12 09:42:29','2013-05-08 00:00:00',' собственник',3,3,3,3,3,103,3,3),(4,'rerum','Dolores accusantium reiciendis ad unde fugit sit. Sit aut repellendus maxime incidunt ut hic eum reprehenderit. Tempora minima dolore corrupti iste et at esse.',48389968.00,'руб.',36.00,20.00,21.00,25.00,'2002-12-12 00:34:26','2001-04-05 00:00:00','агент',4,4,4,4,1,104,4,4),(5,'repudiandae','Harum cum consequuntur eligendi vel. Minima facere nesciunt ducimus aperiam itaque. Inventore consequatur ipsum asperiores repellendus laboriosam. Id quia qui id asperiores maxime.',174365231.00,'руб.',175.00,33.00,16.00,5.00,'2001-12-24 21:30:20','1994-05-12 00:00:00','агент',5,5,5,5,2,105,5,1),(6,'culpa','Vel aut tenetur eum qui id voluptas et. Similique aperiam qui porro omnis. Reiciendis minus architecto dolorum qui assumenda voluptatem vero. Sint architecto provident deserunt sed iste enim magnam.',52494831.00,'руб.',149.00,42.00,13.00,23.00,'1987-08-17 13:17:37','2008-12-24 00:00:00',' собственник',6,6,6,1,3,106,6,2),(7,'quibusdam','Non assumenda est ex. Totam dignissimos non voluptatem voluptas quos. Voluptatem impedit totam aut eum aut fuga. Quia molestiae iusto quo excepturi ex.',183093047.00,'руб.',73.00,32.00,11.00,11.00,'2021-01-11 12:39:38','1987-06-29 00:00:00',' собственник',7,7,7,2,1,108,7,3),(8,'aut','Vel iusto explicabo repudiandae ea ratione voluptas at. Repellat ut cum ut nostrum sit. Earum dolor omnis modi tenetur eaque ducimus omnis.',25894074.00,'руб.',25.00,58.00,19.00,19.00,'1972-06-25 16:43:36','1983-03-20 00:00:00',' собственник',8,1,8,3,2,110,8,4),(9,'commodi','Soluta ullam qui ab officia soluta voluptatem. Et alias culpa doloribus fuga voluptatem qui qui aspernatur. Quia perferendis perspiciatis enim voluptatibus dolores et.',27042320.00,'руб.',207.00,18.00,6.00,22.00,'1970-10-29 22:24:45','2021-08-27 00:00:00','агент',9,2,9,4,3,111,9,1),(10,'dolor','Dolor minima debitis repudiandae dicta voluptates blanditiis. Dolorum pariatur mollitia a voluptatem repudiandae. Autem omnis est perspiciatis repellendus quia nam dignissimos sint. Voluptatibus exercitationem sit ipsam magnam molestiae possimus vel. Ut eum eveniet natus.',130618080.00,'руб.',131.00,52.00,18.00,25.00,'1975-04-07 06:11:36','2014-02-04 00:00:00','агент',10,3,10,5,1,112,10,2),(11,'et','Perspiciatis qui qui ad. Maxime sed voluptatem distinctio repudiandae aut. Dolorem blanditiis porro optio a. Placeat earum ab sit exercitationem praesentium.',135412849.00,'руб.',209.00,40.00,25.00,1.00,'2021-04-15 13:03:24','2006-12-13 00:00:00',' собственник',11,4,11,1,2,113,11,3),(12,'neque','Vero nesciunt quo minima sequi sit consequatur ullam sit. Perspiciatis voluptatibus quidem libero. Rem dolor beatae quod et nobis. Eum odio itaque illum ut amet.',81078818.00,'руб.',89.00,39.00,18.00,26.00,'2007-03-02 00:18:20','1979-10-18 00:00:00',' собственник',12,5,12,2,3,114,12,4),(13,'ipsa','Consequuntur consequatur nisi eum molestiae consequuntur rem voluptatem. Omnis iste voluptatibus dolores non quasi impedit beatae. Distinctio perspiciatis ut occaecati ipsa incidunt cupiditate sint.',127994589.00,'руб.',216.00,45.00,13.00,20.00,'1998-11-04 13:28:57','1991-03-29 00:00:00',' собственник',13,6,13,3,1,115,13,1),(14,'officia','Porro voluptates quae et. Modi qui fuga enim consectetur reprehenderit placeat. Laboriosam veritatis doloribus et possimus qui et. Quia cum consectetur non omnis qui eligendi.',102563287.00,'руб.',139.00,60.00,20.00,18.00,'1978-04-29 17:06:45','1971-10-07 00:00:00',' собственник',14,7,14,4,2,116,14,2),(15,'et','Dolorum non vel non. Itaque minima aliquam aut rerum repudiandae quo rerum. Distinctio culpa ut maiores et. Non saepe quod ipsum omnis eius recusandae.',25918937.00,'руб.',74.00,33.00,17.00,18.00,'1974-08-22 16:32:48','1974-05-01 00:00:00',' собственник',15,1,15,5,3,117,15,3),(16,'totam','Aut quibusdam aut quia iusto repellendus repellat. Excepturi doloremque id tenetur enim voluptas id. Distinctio ut magni voluptates fugiat.',69118036.00,'руб.',57.00,73.00,15.00,8.00,'1972-05-21 20:35:27','2011-12-31 00:00:00','агент',16,2,16,1,1,118,16,4),(17,'optio','Ut sit aut similique rerum magni modi beatae temporibus. Odit exercitationem perspiciatis consequatur voluptas quasi rem veniam autem. Sint fugit recusandae quia dolores assumenda qui libero. Recusandae sit et repudiandae provident porro aut. Ullam est praesentium ea dignissimos ducimus expedita facilis.',135182282.00,'руб.',129.00,73.00,12.00,27.00,'2020-01-04 05:26:28','2012-08-03 00:00:00','агент',17,3,17,2,2,120,17,1),(18,'ullam','Facere sed voluptas aut aut corrupti. Laudantium maxime est sunt delectus consequatur et. Nobis fugit voluptatem esse dicta consequatur ratione. Saepe amet rerum et nihil fugiat.',8638256.00,'руб.',232.00,34.00,25.00,12.00,'2011-01-29 21:52:15','2003-09-11 00:00:00','агент',18,4,18,3,3,122,18,2),(19,'occaecati','Omnis tempore cupiditate illum commodi sit voluptas. Fuga sunt et iusto facilis non qui autem qui. Odit deleniti incidunt sapiente quia.',6349980.00,'руб.',96.00,78.00,23.00,28.00,'2010-01-06 19:02:29','1973-08-30 00:00:00',' собственник',19,5,19,4,1,123,19,3),(20,'voluptatem','Aut ea aut nihil debitis. Eius expedita enim quos mollitia. Alias et eos et ducimus sequi illum et. Expedita dolores ut illo atque omnis possimus similique.',72576024.00,'руб.',63.00,44.00,24.00,23.00,'2016-05-01 17:05:47','1973-03-25 00:00:00',' собственник',20,6,20,5,2,124,20,4),(21,'ea','Molestiae et dolor omnis. Perspiciatis voluptatem odit sit dolorum qui non. Ut qui qui tempora ea sint iste. Pariatur est ea ipsa. Enim eos voluptate cupiditate.',171358723.00,'руб.',204.00,58.00,6.00,8.00,'2001-05-10 19:02:39','1994-02-22 00:00:00','агент',21,7,21,1,3,125,21,1),(22,'ut','Iusto at voluptas ea eaque cupiditate. Illum ut similique cum expedita maiores eaque rerum.',63848704.00,'руб.',80.00,40.00,8.00,21.00,'2019-06-05 08:43:24','1987-04-22 00:00:00','агент',22,1,22,2,1,130,1,2),(23,'perferendis','Ad labore tenetur earum soluta. Expedita sed officiis iure qui omnis quo facere. Nisi aliquam architecto officiis minima veniam. Impedit odit sed iste eos provident natus vel.',65191178.00,'руб.',188.00,37.00,10.00,10.00,'1981-10-11 23:33:05','2021-12-18 00:00:00',' собственник',23,2,23,3,2,131,2,3),(24,'quos','Et dolorem voluptatibus porro perspiciatis explicabo unde. Quod ab dolore sit sequi inventore totam. Ducimus non doloremque iusto enim.',93785128.00,'руб.',30.00,35.00,15.00,20.00,'1989-02-18 21:26:03','1981-08-24 00:00:00','агент',24,3,24,4,3,133,3,4),(25,'quis','Cupiditate accusamus laudantium est nesciunt veritatis recusandae architecto qui. Ad non sint placeat expedita amet fuga quo voluptas. Harum aut tempore amet asperiores.',116134676.00,'руб.',207.00,59.00,25.00,11.00,'1971-12-11 00:56:48','2017-11-02 00:00:00','агент',25,4,25,5,1,134,4,1),(26,'quis','Delectus sit enim voluptates odio. Et voluptatem laudantium pariatur nobis sequi. Labore est quo non numquam pariatur modi. Molestiae voluptatem quo corrupti magni autem qui.',76920112.00,'руб.',147.00,75.00,8.00,15.00,'1983-05-24 04:25:13','1990-07-30 00:00:00',' собственник',26,5,26,1,2,136,5,2),(27,'quibusdam','Nihil quam mollitia beatae dolores quas optio. Alias reprehenderit voluptas sint libero. Tempore dolorum sed quia sint dolorem. Velit delectus aspernatur quia ut.',82378715.00,'руб.',34.00,59.00,6.00,5.00,'1992-12-29 01:36:53','1978-02-20 00:00:00',' собственник',27,6,27,2,3,138,6,3),(28,'amet','Nostrum et ipsum dolores illum. Explicabo ut nesciunt consequatur adipisci vero voluptatibus. Quos et ullam vel voluptatum ea et dolorum vitae. Voluptatem et iste qui est dignissimos sint. Cum et mollitia ut et aperiam totam accusantium.',77690355.00,'руб.',216.00,69.00,14.00,30.00,'1988-11-04 15:23:03','2010-09-02 00:00:00','агент',28,7,28,3,1,139,7,4),(29,'eveniet','Unde aliquid fugiat labore et quis esse debitis. Exercitationem ratione nemo ut est expedita maxime aperiam. Et fuga porro animi nam culpa. Modi ut accusantium provident qui.',31479323.00,'руб.',195.00,57.00,24.00,2.00,'1973-10-28 11:22:41','2015-03-07 00:00:00',' собственник',29,1,29,4,2,140,8,1),(30,'laboriosam','Soluta aut excepturi laudantium consequatur illo quidem occaecati. Molestiae animi ut minima quas possimus praesentium voluptatibus est. Esse est fugiat dignissimos. Nihil non quo in velit esse. Tenetur provident ea esse dolorem non.',90212428.00,'руб.',193.00,38.00,18.00,23.00,'1983-07-15 06:11:58','1977-02-26 00:00:00',' собственник',30,2,30,5,3,148,9,2),(31,'et','Rerum id quia nobis odio sequi autem aut inventore. Voluptates aut sequi eos est asperiores eaque temporibus earum.',35605778.00,'руб.',25.00,46.00,22.00,24.00,'1984-02-27 10:21:35','2016-06-29 00:00:00',' собственник',31,3,31,1,1,149,10,3),(32,'quos','Consectetur consequatur possimus et dolores eos nisi quia. Incidunt voluptas quasi reprehenderit corrupti similique quasi ut. Est voluptas voluptates ut minima dignissimos.',100010890.00,'руб.',223.00,23.00,9.00,13.00,'2016-02-17 21:44:45','1990-10-15 00:00:00',' собственник',32,4,32,2,2,151,11,4),(33,'eum','Provident explicabo quas quasi molestiae. Tenetur ipsa officia dolores dignissimos. Qui ab sint facere sint sit.',11928083.00,'руб.',183.00,42.00,7.00,20.00,'1989-03-14 12:31:46','1984-01-13 00:00:00',' собственник',33,5,33,3,3,154,12,1),(34,'velit','Placeat in doloribus ut tempore ratione laboriosam. Qui natus omnis nostrum at voluptatibus. Vel ducimus qui quia doloremque ea et est.',188356634.00,'руб.',129.00,69.00,9.00,30.00,'1995-03-02 22:02:00','2011-01-07 00:00:00','агент',34,6,34,4,1,155,13,2),(35,'non','Tempore earum et quaerat. Laborum laboriosam reiciendis rerum quasi natus perspiciatis itaque.',51616480.00,'руб.',117.00,38.00,23.00,26.00,'2016-04-03 19:06:06','2015-11-25 00:00:00','агент',35,7,35,5,2,156,14,3),(36,'minima','Maiores optio recusandae earum excepturi ea. Consequuntur quia et harum et voluptas. Quo aut est deserunt tenetur eius architecto.',90810298.00,'руб.',75.00,51.00,16.00,21.00,'2003-09-01 11:07:31','2011-08-04 00:00:00','агент',36,1,36,1,3,157,15,4),(37,'molestiae','Et officiis omnis nemo ut eos quod sint. Eum saepe quas suscipit ullam vitae repellendus voluptatem autem. Hic quae est quis veritatis tenetur. Ut ab molestiae et rem.',77762432.00,'руб.',221.00,49.00,23.00,16.00,'1979-10-02 03:36:06','1976-08-28 00:00:00','агент',37,2,37,2,1,158,16,1),(38,'reiciendis','In exercitationem sint quisquam expedita autem. Repellat aut et voluptatum rerum. Aliquam quidem cumque laudantium pariatur debitis officia ut atque. Quia nemo beatae voluptas qui et odit ad.',11122923.00,'руб.',27.00,80.00,13.00,25.00,'2021-09-05 05:43:50','1974-11-06 00:00:00','агент',38,3,38,3,2,161,17,2),(39,'sequi','Qui ea sit et recusandae velit eos. Repellat necessitatibus dolorum aut qui a. Nam porro alias est ut iure. Qui quidem quasi rem.',74101158.00,'руб.',207.00,29.00,9.00,28.00,'1981-02-16 15:43:38','2010-10-06 00:00:00',' собственник',39,4,39,4,3,162,18,3),(40,'autem','Eos et enim facere ea ducimus natus. Dolorem molestiae quo praesentium blanditiis facere quas corrupti laudantium. Dignissimos doloremque possimus quos aliquid alias beatae ab corrupti. Et non voluptatibus enim sint.',74060920.00,'руб.',62.00,41.00,22.00,15.00,'1975-12-24 18:51:08','2016-08-24 00:00:00','агент',40,5,40,5,1,163,19,4),(41,'aut','Magnam ea beatae quas. Et veniam adipisci repellat enim sequi voluptates. Dolores occaecati dolor dolores. Et a laborum voluptas ea voluptatem.',115213068.00,'руб.',123.00,26.00,21.00,20.00,'1995-06-08 04:34:19','1987-09-15 00:00:00',' собственник',41,6,41,1,2,165,20,1),(42,'iure','Et corporis possimus deserunt. Exercitationem nostrum officia eum quia. Ratione ut enim dolorem provident doloribus in voluptatem.',144081830.00,'руб.',37.00,39.00,17.00,17.00,'1988-12-24 20:47:29','1976-07-26 00:00:00','агент',42,7,42,2,3,166,21,2),(43,'laudantium','Quas id maiores modi quis similique distinctio quia. A nulla veritatis libero id et soluta sint dignissimos. Dolor eos vero placeat quis rerum quis non. Velit velit id distinctio tempora.',84138540.00,'руб.',172.00,27.00,19.00,30.00,'1970-12-28 22:07:07','1970-11-26 00:00:00',' собственник',43,1,43,3,1,167,1,3),(44,'incidunt','Sed perspiciatis vero corrupti minima illo. Vel voluptatem nemo sint in quisquam architecto sunt.',150757730.00,'руб.',203.00,78.00,11.00,29.00,'2001-10-30 18:46:49','1974-09-01 00:00:00','агент',44,2,44,4,2,170,2,4),(45,'ut','Ea qui ipsa corrupti voluptate eligendi delectus. Perspiciatis necessitatibus harum quia sit nemo architecto tenetur. Quis vel porro aliquam.',141388375.00,'руб.',173.00,41.00,9.00,12.00,'2003-12-07 08:05:17','1999-04-13 00:00:00','агент',45,3,45,5,3,174,3,1),(46,'id','Est voluptas rerum odio repellendus ipsam sed. Vero ducimus explicabo distinctio sint. Consequatur odio culpa non quam in.',159542459.00,'руб.',98.00,68.00,22.00,17.00,'1993-04-28 12:16:55','2010-02-13 00:00:00','агент',46,4,46,1,1,175,4,2),(47,'aut','Eum recusandae odio repellendus at. Reprehenderit vitae nostrum ipsam suscipit animi molestiae sed. In dolorem perspiciatis et aut ipsa voluptate.',77602314.00,'руб.',246.00,52.00,21.00,6.00,'1973-03-31 08:29:46','1982-07-15 00:00:00','агент',47,5,47,2,2,176,5,3),(48,'qui','Iste animi accusantium sequi. Adipisci sed aut ut cupiditate enim vero voluptate.',126403363.00,'руб.',109.00,36.00,18.00,10.00,'1977-02-17 11:10:50','1998-09-08 00:00:00',' собственник',48,6,48,3,3,177,6,4),(49,'nihil','Illum sit enim fugit minus vel. Ipsum in sed sit. Harum beatae beatae expedita omnis explicabo dolor ut.',88667725.00,'руб.',127.00,74.00,11.00,12.00,'1987-02-08 21:15:54','1984-12-19 00:00:00',' собственник',49,7,49,4,1,181,7,1),(50,'consequuntur','Dolorem repellat similique quibusdam deleniti eos. Quia ut vel quas unde aut illum voluptas. Quibusdam velit aut maxime amet similique.',165730148.00,'руб.',143.00,76.00,6.00,14.00,'2017-08-06 11:35:11','2009-05-24 00:00:00',' собственник',50,1,50,5,2,184,8,2),(51,'molestias','Eos quo repellendus fugiat consectetur a modi. Voluptates autem fugiat delectus animi. Reprehenderit quod tenetur aspernatur alias est dolorum. Molestiae ipsam et architecto voluptas sed.',22534427.00,'руб.',37.00,46.00,8.00,19.00,'2021-02-06 18:14:19','1975-12-14 00:00:00','агент',51,2,51,1,3,185,9,3),(52,'tempore','Laudantium minus perspiciatis minima consequatur omnis aut. Velit accusantium est eaque sit animi qui. Explicabo sapiente sunt voluptatem. Aspernatur quam expedita ab molestiae autem illo. Officiis placeat ratione molestiae tempora minus.',79002085.00,'руб.',195.00,53.00,23.00,3.00,'2005-06-24 19:44:26','2000-03-04 00:00:00',' собственник',52,3,52,2,1,186,10,4),(53,'voluptas','Dolorum qui facere libero aut officiis velit voluptatem quae. Vitae velit et aliquid quibusdam.',156219019.00,'руб.',198.00,31.00,24.00,30.00,'2017-07-11 17:33:52','1975-11-09 00:00:00','агент',53,4,53,3,2,187,11,1),(54,'rerum','Qui maxime fugit et omnis nesciunt aut sint. Accusantium eaque ad vel minima temporibus. Sint eveniet quibusdam officia rerum a saepe. Voluptas porro deserunt est repudiandae sequi assumenda eum.',164235793.00,'руб.',108.00,57.00,17.00,7.00,'2006-09-16 10:25:24','1988-08-21 00:00:00',' собственник',54,5,54,4,3,188,12,2),(55,'omnis','Perferendis et quidem iusto recusandae ipsam fugiat. Cumque possimus et qui culpa dolorum dolor laudantium culpa. Vel quia ut dolor. Tenetur omnis cum minus iusto.',191125313.00,'руб.',78.00,63.00,9.00,4.00,'2016-07-23 12:11:46','1983-01-14 00:00:00',' собственник',55,6,55,5,1,189,13,3),(56,'neque','Aut provident neque fuga repellat. Temporibus eum est eligendi.',181610716.00,'руб.',153.00,48.00,25.00,8.00,'2011-12-16 14:59:26','1972-06-30 00:00:00',' собственник',56,7,56,1,2,190,14,4),(57,'non','Placeat sint sequi aut laborum non sed eum et. Eaque laborum doloribus consequatur perferendis. Non voluptas dolor et quam.',10942734.00,'руб.',71.00,47.00,19.00,2.00,'2011-01-30 03:35:54','1975-09-03 00:00:00',' собственник',57,1,57,2,3,193,15,1),(58,'sequi','In blanditiis debitis autem ut maiores. Quia quos accusantium sed soluta itaque. Aut harum rerum nulla unde sunt eum quisquam et.',185518107.00,'руб.',122.00,33.00,23.00,24.00,'1972-05-02 04:55:16','2005-09-02 00:00:00',' собственник',58,2,58,3,1,195,16,2),(59,'voluptas','Sit quam mollitia voluptatem fuga sed porro non. Quod esse quis ex qui. Quis et pariatur est exercitationem. Praesentium illo debitis vitae nam rerum explicabo quia.',112027907.00,'руб.',210.00,33.00,15.00,25.00,'1983-06-17 12:59:20','1975-02-17 00:00:00','агент',59,3,59,4,2,198,17,3),(60,'architecto','Facilis iste ipsum iste illum sapiente doloribus facilis. Sit sit eum quis architecto quod reprehenderit. Quia voluptates voluptas natus eos.',72448357.00,'руб.',146.00,53.00,21.00,26.00,'1973-08-01 03:54:31','2009-10-08 00:00:00','агент',60,4,60,5,3,199,18,4),(61,'quo','Sapiente animi cumque esse et aliquam at. Inventore et et id perspiciatis. Rem eum fugit et qui consequatur quia.',33365342.00,'руб.',231.00,54.00,25.00,11.00,'1974-10-24 12:37:37','2004-09-20 00:00:00',' собственник',61,5,61,1,1,200,19,1),(62,'consequuntur','Rerum quo temporibus sequi. Numquam vitae ipsum nihil cum accusantium consequatur facilis voluptates. Quisquam deserunt tenetur qui veniam labore quidem.',16820052.00,'руб.',185.00,59.00,10.00,10.00,'1975-04-17 10:51:20','1996-03-20 00:00:00','агент',62,6,62,2,2,101,20,2),(63,'nulla','Debitis minus qui fugit accusamus rerum corporis dolore. Sed enim sequi sunt nihil voluptas labore nulla impedit. Quos quisquam eveniet a id consequatur.',87635475.00,'руб.',174.00,48.00,23.00,21.00,'2007-07-09 06:47:59','1985-12-19 00:00:00',' собственник',63,7,63,3,3,102,21,3),(64,'sit','Sed quia fuga ea corrupti voluptatum vitae. Dicta aut est aut deleniti perspiciatis accusantium sed. Quia et vel velit inventore rem velit.',144074104.00,'руб.',40.00,20.00,12.00,15.00,'2017-10-05 02:19:25','1982-09-25 00:00:00','агент',64,1,64,4,1,103,1,4),(65,'ut','Veniam et qui officiis et rerum. Aut iste et nihil commodi.',41254882.00,'руб.',189.00,33.00,21.00,26.00,'2015-01-26 15:19:06','2018-07-25 00:00:00','агент',65,2,65,5,2,104,2,1),(66,'nobis','Recusandae aspernatur beatae maiores sequi. Nihil labore quia praesentium rerum fuga labore impedit omnis. Veniam voluptas alias at dicta consequatur itaque.',176533928.00,'руб.',157.00,47.00,14.00,12.00,'1985-08-23 22:33:35','1972-03-23 00:00:00',' собственник',66,3,66,1,3,105,3,2),(67,'et','Perferendis ratione rerum nihil dicta voluptatibus adipisci quod. Placeat eum nisi quia eum voluptatum commodi commodi dicta. Dolores corporis magnam a. Magnam laudantium delectus unde rerum occaecati qui.',181585452.00,'руб.',164.00,60.00,18.00,16.00,'2011-05-25 19:53:05','2009-02-04 00:00:00','агент',67,4,67,2,1,106,4,3),(68,'facere','Nostrum itaque neque tenetur magni asperiores accusamus sapiente ullam. Et qui dolor nemo ducimus sit. Delectus illo earum dignissimos temporibus qui perferendis est eius. Eum animi exercitationem eos quae. Eius sunt ipsum laborum.',45549720.00,'руб.',162.00,25.00,12.00,3.00,'1981-06-03 14:48:17','2014-12-02 00:00:00',' собственник',68,5,68,3,2,108,5,4),(69,'qui','Atque nihil earum error eveniet sapiente. Vero numquam iure facere hic cumque eveniet. In sequi molestiae dolores. Non in aliquam sapiente eius vero et ex culpa.',25065291.00,'руб.',74.00,19.00,24.00,20.00,'2013-11-06 12:07:12','2007-04-18 00:00:00','агент',69,6,69,4,3,110,6,1),(70,'nesciunt','Quam sint ut maxime quod. Incidunt tempore aut dolores aut quisquam. Eligendi quo earum libero assumenda consequuntur.',182545042.00,'руб.',155.00,51.00,13.00,14.00,'2011-06-27 12:01:55','1978-03-01 00:00:00',' собственник',70,7,70,5,1,111,7,2),(71,'sit','Dicta voluptatem ut corporis aut sit voluptates. Exercitationem consequatur officia qui.',158325396.00,'руб.',169.00,42.00,6.00,4.00,'1980-04-21 15:35:06','2001-02-23 00:00:00','агент',71,1,71,1,2,112,8,3),(72,'veritatis','Necessitatibus provident aut fugiat perspiciatis. Rem odio quas nemo recusandae. Impedit doloribus vitae qui unde.',195255030.00,'руб.',112.00,28.00,24.00,13.00,'1972-12-01 02:29:25','2003-02-22 00:00:00',' собственник',72,2,72,2,3,113,9,4),(73,'eum','Dolores minima est quam eius est. Rerum omnis laboriosam non. Consequuntur architecto ut sunt aliquam voluptas. Adipisci impedit fuga vel fuga inventore natus.',167948529.00,'руб.',198.00,45.00,12.00,21.00,'2002-01-26 19:30:23','1972-11-15 00:00:00','агент',73,3,73,3,1,114,10,1),(74,'assumenda','Ab quasi quod fugit tempora odio. Dolor omnis temporibus dolor tempora numquam porro soluta. Sed corporis voluptatem corrupti qui nobis. Voluptatem voluptatem et qui reprehenderit laudantium.',196480926.00,'руб.',41.00,64.00,24.00,22.00,'1990-09-26 00:51:34','2017-05-22 00:00:00','агент',74,4,74,4,2,115,11,2),(75,'unde','Quasi quos qui dignissimos voluptatem quo est aut. Dolores voluptatum molestiae exercitationem inventore nulla. Voluptatem eligendi voluptas libero eum.',159295446.00,'руб.',117.00,49.00,25.00,30.00,'1981-08-14 13:01:12','2015-10-10 00:00:00',' собственник',75,5,75,5,3,116,12,3),(76,'cum','Explicabo qui non magnam. Ea eveniet excepturi voluptatum qui. Et ut quasi magni consequatur. Aut natus deleniti sed suscipit quod debitis reprehenderit.',3996849.00,'руб.',153.00,34.00,22.00,5.00,'2001-05-28 03:01:28','2021-05-15 00:00:00',' собственник',76,6,76,1,1,117,13,4),(77,'aut','Provident alias eos voluptate dolore. Et aut debitis voluptatem optio placeat.',167368667.00,'руб.',195.00,50.00,8.00,23.00,'1975-05-03 02:05:03','1989-02-16 00:00:00',' собственник',77,7,77,2,2,118,14,1),(78,'rem','Unde cum cupiditate ad. Rerum earum autem odit possimus magni deserunt eligendi. Aut nulla cupiditate culpa quis. Iure amet quae quis quia. Dolore repellendus odit similique necessitatibus.',100504216.00,'руб.',153.00,55.00,12.00,19.00,'1982-12-14 22:25:58','2014-10-06 00:00:00','агент',78,1,78,3,3,120,15,2),(79,'velit','Voluptates velit consequuntur quia numquam aut. Rerum inventore odit non illum in odio voluptates eligendi. Sit ratione animi ipsa distinctio molestiae. Repudiandae velit alias ut nemo iste aliquam. Repudiandae ut corporis sed in nobis.',173642931.00,'руб.',148.00,68.00,14.00,6.00,'2013-04-09 14:38:40','1996-07-28 00:00:00',' собственник',79,2,79,4,1,122,16,3),(80,'occaecati','Porro aut quis et quia. Amet odio aut sunt est dignissimos non consequatur tempore. Et quas corrupti architecto. Magni expedita velit impedit quo aperiam praesentium.',199400971.00,'руб.',238.00,62.00,7.00,20.00,'1987-11-10 09:32:06','2020-05-24 00:00:00',' собственник',80,3,80,5,2,123,17,4),(81,'animi','Dolor rerum dicta autem hic molestias. Sit quam sit perspiciatis error et deserunt. Et reprehenderit et reiciendis omnis dolor et ipsum iure. Consequatur corrupti sit maiores aut.',68757826.00,'руб.',249.00,54.00,16.00,6.00,'1979-03-07 17:11:21','2008-09-04 00:00:00','агент',81,4,81,1,3,124,18,1),(82,'et','Fugit pariatur voluptates et sunt rerum. Iusto aut reprehenderit cumque et tempore delectus.',129697287.00,'руб.',66.00,50.00,7.00,14.00,'1991-08-14 16:37:15','2012-12-13 00:00:00','агент',82,5,82,2,1,125,19,2),(83,'est','A non deserunt sed. Quia unde voluptas omnis natus beatae vero. Voluptatem minima blanditiis pariatur neque natus qui non. Sapiente alias omnis repudiandae et atque ut et.',130519258.00,'руб.',121.00,52.00,12.00,19.00,'1973-04-21 19:22:02','2013-12-05 00:00:00',' собственник',83,6,83,3,2,130,20,3),(84,'magni','Sequi architecto minima voluptatem nihil ducimus. Ab ut sit et maxime fugiat quidem quibusdam impedit. Sequi ut maiores et esse numquam perspiciatis minus. Rerum est dolorum eligendi labore.',138129638.00,'руб.',213.00,73.00,18.00,4.00,'1994-11-30 04:12:07','1984-08-28 00:00:00','агент',84,7,84,4,3,131,21,4),(85,'perspiciatis','Odit omnis perferendis et. Architecto enim exercitationem nesciunt quis. Harum eum vel in repudiandae ea et ea.',13278647.00,'руб.',151.00,55.00,22.00,8.00,'2007-02-14 02:34:23','2009-02-16 00:00:00','агент',85,1,85,5,1,133,1,1),(86,'quibusdam','Culpa voluptatum et dolores cumque qui eos. Debitis et quaerat aliquam rem velit ipsa. Vero autem eius quia suscipit suscipit iure voluptatem. Enim vel in autem autem eaque fugit.',84535386.00,'руб.',39.00,34.00,19.00,2.00,'2006-05-03 18:26:22','2007-07-15 00:00:00','агент',86,2,86,1,2,134,2,2),(87,'rerum','Non hic deleniti possimus aut ut earum earum. Provident aut animi aliquam.',50131623.00,'руб.',42.00,50.00,19.00,15.00,'1993-12-07 16:56:38','1970-02-15 00:00:00','агент',87,3,87,2,3,136,3,3),(88,'ea','Et facere eveniet inventore corrupti voluptatem rerum non. Ut pariatur non iusto et. Assumenda dolore quaerat corrupti et tempore cumque numquam.',155778272.00,'руб.',216.00,69.00,21.00,6.00,'1991-12-30 07:39:12','1993-06-16 00:00:00',' собственник',88,4,88,3,1,138,4,4),(89,'vitae','Sequi dolorem est sapiente commodi inventore odio. Est ut est asperiores voluptas qui eligendi corporis. Maxime doloremque ut corrupti quae harum.',192939092.00,'руб.',130.00,25.00,19.00,5.00,'2010-01-31 06:02:37','1978-03-31 00:00:00',' собственник',89,5,89,4,2,139,5,1),(90,'qui','Rerum eaque aliquam voluptatibus est sapiente aliquid molestiae. Eos et odio nulla veniam aut. In non quo debitis quia perspiciatis omnis magni.',39012279.00,'руб.',226.00,58.00,15.00,29.00,'2001-09-14 18:04:29','2015-09-17 00:00:00','агент',90,6,90,5,3,140,6,2),(91,'distinctio','Saepe sit dolore atque ea et autem. Pariatur repellendus maiores autem consectetur. Tempore qui ea ex culpa aut ut.',45378486.00,'руб.',40.00,79.00,14.00,10.00,'2006-11-27 08:35:33','2008-04-12 00:00:00','агент',91,7,91,1,1,148,7,3),(92,'vel','Eaque qui exercitationem est incidunt. Quasi aliquid rem praesentium vero. Culpa autem ut qui ut tempora dolorum aspernatur.',93466746.00,'руб.',196.00,55.00,15.00,11.00,'2003-06-09 00:53:48','2004-06-11 00:00:00','агент',92,1,92,2,2,149,8,4),(93,'voluptatum','Qui in explicabo necessitatibus atque nesciunt. Aliquam quia qui nesciunt. At libero quas voluptatibus itaque. Vel iure cum earum asperiores occaecati.',102762795.00,'руб.',211.00,18.00,23.00,4.00,'1980-03-16 06:02:20','1998-05-22 00:00:00','агент',93,2,93,3,3,151,9,1),(94,'odit','Quas occaecati sunt nesciunt voluptas. Voluptatibus quasi nulla dolorem autem. Voluptas voluptatem saepe et quam hic ut. Reprehenderit mollitia saepe cumque sed.',73270419.00,'руб.',74.00,75.00,25.00,10.00,'1972-02-09 08:08:18','1995-09-19 00:00:00',' собственник',94,3,94,4,1,154,10,2),(95,'sint','Temporibus eius voluptatem rem ab illo sint quo. At iusto delectus tenetur a. Voluptatum recusandae blanditiis sit sed voluptatum totam accusamus.',199098860.00,'руб.',91.00,21.00,18.00,13.00,'1988-07-25 02:03:23','2005-01-02 00:00:00','агент',95,4,95,5,2,155,11,3),(96,'a','Necessitatibus possimus natus est laborum. Reprehenderit ducimus illo adipisci nesciunt cum dolorum. Ipsa rem impedit enim quaerat. Cumque sed vel mollitia in dignissimos cumque sit.',117379730.00,'руб.',231.00,22.00,25.00,29.00,'2011-07-17 05:06:29','2006-08-18 00:00:00','агент',96,5,96,1,3,156,12,4),(97,'eius','Odio praesentium sed ut corporis et corrupti quo. Quod in cum vero debitis tempora non. Aliquam amet dolores amet suscipit beatae architecto.',23637440.00,'руб.',102.00,51.00,24.00,27.00,'1986-12-16 05:46:09','2002-04-26 00:00:00','агент',97,6,97,2,1,157,13,1),(98,'error','Alias repellendus sequi qui occaecati quia. Voluptatem fuga autem sed voluptates. Recusandae doloremque sed rerum in dolore.',128157785.00,'руб.',96.00,78.00,25.00,18.00,'1996-12-24 11:23:30','1985-05-24 00:00:00','агент',98,7,98,3,2,158,14,2),(99,'vel','Voluptatum adipisci dolorum dolores facilis sed eius cum ut. Asperiores consectetur inventore quis consequatur soluta tempora in est. Sit consectetur nisi omnis iusto nobis.',191375512.00,'руб.',64.00,72.00,15.00,11.00,'1972-07-11 05:17:03','1991-02-19 00:00:00',' собственник',99,1,99,4,3,161,15,3),(100,'rerum','Explicabo modi ullam eum quisquam est temporibus. Esse quisquam quae in laborum. Voluptates voluptatibus rerum suscipit sunt quo adipisci ducimus. Aliquid unde assumenda sed dolorem.',136136103.00,'руб.',58.00,67.00,11.00,6.00,'2017-02-13 04:55:42','2012-02-04 00:00:00',' собственник',100,2,100,5,1,162,16,4);
/*!40000 ALTER TABLE `inf_real` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrastructure`
--

DROP TABLE IF EXISTS `infrastructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infrastructure` (
  `inf_real_id` bigint(20) unsigned NOT NULL COMMENT 'привязка характеристик по id объекта',
  `shop` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'магазин рядом',
  `kindergarten` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'детсад рядом',
  `shcool` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'школа рядом',
  `centr` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'центр города рядом',
  `bich` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'пляж рядом',
  `metro1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'метро рядом',
  `see` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'водоем рядом',
  `park` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'парк рядом',
  `forests` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'лес рядом',
  `company` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'градостроительные предприятия',
  `mountains` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'горы рядом',
  `road` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'дороги, подъездные пути',
  PRIMARY KEY (`inf_real_id`),
  KEY `inf_real_id` (`inf_real_id`),
  CONSTRAINT `inf_real_id8` FOREIGN KEY (`inf_real_id`) REFERENCES `inf_real` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Наличие объектов инфраструктуры';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrastructure`
--

LOCK TABLES `infrastructure` WRITE;
/*!40000 ALTER TABLE `infrastructure` DISABLE KEYS */;
INSERT INTO `infrastructure` VALUES (1,'да','да','да',' нет',' нет',' нет',' нет',' нет',' нет',' нет',' нет',' нет'),(2,' нет','да','да',' нет','да',' нет',' нет','да','да',' нет',' нет',' нет'),(3,' нет',' нет','да','да',' нет','да','да','да','да','да',' нет','да'),(4,' нет',' нет',' нет','да','да','да','да','да','да','да','да',' нет'),(5,' нет','да',' нет','да',' нет',' нет','да',' нет','да',' нет','да','да'),(6,'да',' нет',' нет','да',' нет',' нет','да','да',' нет','да',' нет',' нет'),(7,'да','да','да',' нет','да',' нет',' нет',' нет',' нет','да','да','да'),(8,'да',' нет',' нет',' нет',' нет',' нет','да',' нет','да','да',' нет','да'),(9,' нет','да','да','да',' нет',' нет','да',' нет',' нет','да',' нет',' нет'),(10,' нет',' нет','да','да','да',' нет',' нет',' нет',' нет',' нет',' нет',' нет'),(11,'да','да','да',' нет',' нет','да',' нет','да',' нет','да',' нет','да'),(12,'да',' нет',' нет',' нет','да',' нет',' нет','да',' нет','да','да',' нет'),(13,'да','да',' нет',' нет',' нет',' нет',' нет','да','да','да',' нет',' нет'),(14,'да',' нет','да',' нет',' нет',' нет',' нет',' нет',' нет','да',' нет','да'),(15,'да',' нет',' нет',' нет',' нет',' нет',' нет','да','да','да',' нет','да'),(16,'да',' нет',' нет',' нет','да',' нет','да',' нет','да','да',' нет',' нет'),(17,' нет',' нет',' нет',' нет','да',' нет','да',' нет',' нет','да',' нет','да'),(18,'да','да',' нет','да',' нет','да','да','да',' нет','да',' нет','да'),(19,'да','да','да','да','да',' нет','да',' нет','да','да',' нет','да'),(20,'да',' нет',' нет','да',' нет',' нет',' нет',' нет','да',' нет','да',' нет'),(21,' нет','да',' нет',' нет','да','да','да','да','да',' нет','да','да'),(22,' нет',' нет','да',' нет',' нет',' нет',' нет',' нет','да',' нет',' нет','да'),(23,' нет','да','да',' нет','да','да','да','да','да',' нет',' нет',' нет'),(24,' нет',' нет','да','да',' нет','да',' нет',' нет',' нет',' нет','да','да'),(25,' нет',' нет','да','да',' нет','да','да','да','да',' нет','да',' нет'),(26,' нет','да',' нет','да','да',' нет',' нет',' нет',' нет',' нет',' нет',' нет'),(27,' нет',' нет','да',' нет',' нет',' нет','да','да',' нет','да',' нет',' нет'),(28,' нет','да',' нет','да','да',' нет','да','да','да','да',' нет',' нет'),(29,'да',' нет',' нет','да','да','да',' нет',' нет','да','да',' нет',' нет'),(30,' нет',' нет','да',' нет','да','да','да',' нет','да',' нет',' нет',' нет'),(31,'да','да','да','да',' нет','да','да','да','да','да',' нет',' нет'),(32,' нет',' нет',' нет',' нет','да','да',' нет','да',' нет',' нет','да','да'),(33,'да','да',' нет',' нет','да',' нет','да',' нет','да',' нет','да','да'),(34,'да',' нет',' нет','да',' нет','да',' нет',' нет',' нет','да','да','да'),(35,'да',' нет','да','да','да',' нет',' нет','да','да','да','да',' нет'),(36,'да','да','да',' нет','да',' нет','да',' нет',' нет','да','да',' нет'),(37,' нет',' нет','да','да','да',' нет',' нет',' нет',' нет',' нет','да',' нет'),(38,'да',' нет',' нет',' нет','да','да',' нет',' нет','да','да',' нет',' нет'),(39,'да','да',' нет','да',' нет',' нет','да','да','да','да','да','да'),(40,' нет','да','да','да',' нет',' нет','да','да',' нет','да',' нет','да'),(41,' нет','да','да',' нет','да',' нет','да','да',' нет','да','да',' нет'),(42,'да',' нет','да','да','да',' нет',' нет',' нет',' нет',' нет','да','да'),(43,'да','да','да','да','да',' нет',' нет',' нет',' нет',' нет','да',' нет'),(44,' нет','да',' нет',' нет',' нет','да','да',' нет','да',' нет','да','да'),(45,'да',' нет',' нет',' нет',' нет',' нет','да','да',' нет','да','да',' нет'),(46,'да',' нет','да',' нет','да','да','да',' нет',' нет',' нет','да','да'),(47,'да','да','да',' нет',' нет','да','да',' нет','да','да','да',' нет'),(48,'да',' нет','да',' нет','да',' нет','да',' нет',' нет',' нет','да',' нет'),(49,'да','да','да','да',' нет',' нет',' нет','да','да','да',' нет',' нет'),(50,' нет',' нет','да',' нет','да',' нет',' нет',' нет',' нет',' нет','да',' нет'),(51,' нет',' нет',' нет',' нет','да',' нет',' нет','да','да','да',' нет','да'),(52,'да',' нет',' нет','да','да','да',' нет','да','да','да',' нет',' нет'),(53,'да',' нет',' нет',' нет','да','да',' нет','да',' нет',' нет','да','да'),(54,' нет','да',' нет',' нет',' нет',' нет',' нет',' нет','да','да','да',' нет'),(55,' нет',' нет',' нет','да',' нет',' нет','да','да','да',' нет','да','да'),(56,'да',' нет',' нет','да',' нет','да','да','да',' нет','да',' нет',' нет'),(57,' нет',' нет',' нет','да','да',' нет',' нет','да',' нет','да','да','да'),(58,'да','да',' нет','да','да',' нет',' нет','да','да',' нет','да','да'),(59,' нет','да','да','да',' нет',' нет','да',' нет',' нет','да','да',' нет'),(60,'да','да','да','да',' нет',' нет',' нет',' нет','да',' нет','да','да'),(61,'да','да',' нет',' нет','да','да',' нет','да','да',' нет',' нет',' нет'),(62,' нет',' нет',' нет',' нет','да','да','да','да',' нет','да','да','да'),(63,'да',' нет',' нет','да','да',' нет',' нет','да',' нет',' нет','да','да'),(64,'да','да',' нет','да',' нет',' нет',' нет',' нет','да','да','да',' нет'),(65,' нет',' нет',' нет','да','да',' нет',' нет',' нет',' нет',' нет','да',' нет'),(66,'да',' нет','да','да',' нет',' нет','да','да','да',' нет','да','да'),(67,'да','да',' нет',' нет',' нет','да','да',' нет',' нет',' нет',' нет',' нет'),(68,'да','да','да',' нет','да',' нет',' нет','да','да',' нет',' нет','да'),(69,'да',' нет','да','да','да',' нет',' нет','да','да','да','да','да'),(70,' нет','да','да',' нет','да',' нет',' нет',' нет','да','да',' нет',' нет'),(71,'да',' нет','да',' нет','да','да',' нет',' нет',' нет','да','да',' нет'),(72,'да',' нет','да','да','да','да','да',' нет',' нет',' нет','да','да'),(73,'да','да','да','да',' нет',' нет','да',' нет','да','да',' нет','да'),(74,' нет','да','да','да',' нет',' нет','да',' нет','да',' нет',' нет','да'),(75,'да',' нет','да',' нет',' нет',' нет','да','да','да',' нет','да',' нет'),(76,' нет','да','да',' нет',' нет',' нет','да','да','да',' нет','да',' нет'),(77,' нет',' нет',' нет','да','да',' нет',' нет','да','да','да',' нет','да'),(78,' нет','да','да',' нет','да','да',' нет','да','да','да','да','да'),(79,' нет','да',' нет',' нет',' нет',' нет','да','да',' нет',' нет',' нет','да'),(80,' нет',' нет','да',' нет','да','да',' нет',' нет','да',' нет','да',' нет'),(81,'да',' нет','да',' нет','да',' нет','да',' нет','да','да',' нет',' нет'),(82,' нет','да','да','да','да','да',' нет',' нет','да',' нет',' нет','да'),(83,'да','да',' нет','да','да',' нет','да',' нет','да','да',' нет',' нет'),(84,' нет',' нет',' нет',' нет',' нет',' нет',' нет',' нет','да','да',' нет','да'),(85,'да',' нет','да',' нет','да',' нет',' нет',' нет','да',' нет','да',' нет'),(86,'да','да',' нет','да','да',' нет','да',' нет',' нет',' нет',' нет','да'),(87,' нет',' нет','да',' нет','да','да','да',' нет','да',' нет','да',' нет'),(88,' нет','да',' нет','да','да',' нет','да','да','да',' нет',' нет',' нет'),(89,' нет','да',' нет','да',' нет',' нет',' нет',' нет','да',' нет',' нет','да'),(90,' нет',' нет',' нет','да','да',' нет',' нет',' нет','да','да','да','да'),(91,' нет','да','да',' нет','да',' нет',' нет','да','да',' нет','да',' нет'),(92,'да','да',' нет','да','да','да',' нет','да',' нет','да',' нет','да'),(93,'да','да','да','да','да','да','да',' нет','да',' нет','да',' нет'),(94,'да','да','да',' нет','да',' нет',' нет','да',' нет','да',' нет',' нет'),(95,'да',' нет',' нет','да',' нет',' нет','да',' нет',' нет',' нет','да','да'),(96,' нет',' нет',' нет',' нет','да','да','да','да','да','да','да',' нет'),(97,' нет',' нет',' нет',' нет','да','да',' нет','да',' нет','да',' нет','да'),(98,' нет',' нет','да','да',' нет','да','да','да','да',' нет',' нет',' нет'),(99,' нет',' нет',' нет','да',' нет',' нет',' нет',' нет',' нет','да',' нет','да'),(100,' нет',' нет',' нет','да','да',' нет',' нет',' нет','да',' нет','да',' нет');
/*!40000 ALTER TABLE `infrastructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Условия оплаты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'наличные'),(2,'ипотека'),(3,'кредит'),(4,'рассрочка'),(5,'военная ипотека'),(6,'маткапитал'),(7,'обмен');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL COMMENT 'страна',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`(10)),
  KEY `country_id` (`country_id`),
  CONSTRAINT `country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Области, регионы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Московская область',1),(2,'Ленинградская область',1),(3,'Киевская область',3),(4,'Минская область',2),(5,'АР Аджария',5);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlements`
--

DROP TABLE IF EXISTS `settlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settlements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Населенный пункт',
  `region_id` bigint(20) unsigned DEFAULT NULL COMMENT 'область',
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Населенные пункты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlements`
--

LOCK TABLES `settlements` WRITE;
/*!40000 ALTER TABLE `settlements` DISABLE KEYS */;
INSERT INTO `settlements` VALUES (1,'г.Москва',1),(2,'г.Санкт-Петербург',2),(3,'г.Киев',3),(4,'г.Минск',4),(5,'г.Батуми',5);
/*!40000 ALTER TABLE `settlements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specification`
--

DROP TABLE IF EXISTS `specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specification` (
  `inf_real_id` bigint(20) unsigned NOT NULL COMMENT 'привязка характеристик по id объекта',
  `k_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'кадастровый номер объекта',
  `rooms` int(10) DEFAULT NULL COMMENT 'количество комнат',
  `floors` int(10) DEFAULT NULL COMMENT 'этажность',
  `floor1` int(10) DEFAULT NULL COMMENT 'этаж',
  `f_floor` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'первый этаж',
  `l_floor` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'последний этаж',
  `balcony` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'лоджия/балкон',
  `species` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'видовые ',
  `playground` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'детская площадка',
  `parking` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'парковка',
  `y_construction` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'год постройки',
  `t_construction` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'тип строительства',
  `renovation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ремонт',
  `furniture` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'мебель',
  `heating` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'тип отопления',
  `water_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'тип водоснабжения',
  `bathrooms` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'количество санузлов',
  `shared_bathr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'санузел совмещенный',
  `complex` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'жилищный комплекс',
  `property_class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'класс недвижимости',
  `under_const` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'стадия строительства ',
  `object_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'статус объекта',
  `gas` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'газ',
  `electricity` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'электричество',
  `water` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'вода ',
  `garage` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'гараж',
  `assignment_o` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'назначение объекта',
  PRIMARY KEY (`inf_real_id`),
  UNIQUE KEY `unique_k_number` (`k_number`),
  KEY `inf_real_id` (`inf_real_id`),
  CONSTRAINT `inf_real_id3` FOREIGN KEY (`inf_real_id`) REFERENCES `inf_real` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT=' Характеристики ОН';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specification`
--

LOCK TABLES `specification` WRITE;
/*!40000 ALTER TABLE `specification` DISABLE KEYS */;
INSERT INTO `specification` VALUES (1,'16850.649224154',3,10,12,' не','да','есть',' двор','есть','есть','1970',' деревянный',' евроремонт',' нет','центральное',' скважина','1',' совмещенный',' Московский',' элит','строительство','новостройка','есть',' нет','есть','есть','ИЖС'),(2,'27835.103771531',2,8,15,'да',' не','есть',' прочее','есть','есть','1970',' деревянный',' евроремонт',' нет','центральное',' другое','2',' совмещенный',' Лазурный','стандарт',' сдан','новостройка',' нет',' нет',' нет',' нет','ИЖС'),(3,'202068.62714371',1,14,1,'да',' не',' нет',' парк','есть',' нет','1970',' кирпичный',' без отделки','есть',' нет',' другое','2','раздельный',' Московский',' элит','строительство','новостройка',' нет','есть','есть','есть',' аренда'),(4,'702883.2481349',4,25,11,'да','да','есть',' парк','есть',' нет','1970',' каркасно-монолитный','стандартный','есть','центральное','центральное','1',' совмещенный',' Солнечный',' комфорт','строительство',' вторичное жилье',' нет',' нет','есть','есть','ИЖС'),(5,'133895.85545794',4,9,15,'да','да',' нет',' двор','есть',' нет','1970','блочный',' евроремонт',' нет',' другое',' скважина','2','раздельный',' Московский','стандарт',' сдан','новостройка',' нет','есть',' нет',' нет',' СХН'),(6,'74802701.209577',4,4,16,' не','да','есть','горы','есть',' нет','1970',' деревянный',' без отделки','есть',' нет',' другое','1',' совмещенный','Мирный',' комфорт',' сдан',' вторичное жилье','есть',' нет','есть','есть','ИЖС'),(7,'30321.379578487',1,6,25,' не','да',' нет','горы','есть',' нет','1970',' каркасно-монолитный',' без отделки','есть',' другое',' скважина','2',' совмещенный',' Солнечный','стандарт',' сдан',' вторичное жилье',' нет','есть',' нет','есть',' СХН'),(8,'133258.65478358',4,15,12,' не','да','есть',' двор',' нет','есть','1970',' кирпичный',' без отделки','есть',' нет',' скважина','1',' совмещенный',' Московский',' элит','строительство','новостройка',' нет','есть',' нет','есть',' аренда'),(9,'16762.192826821',4,9,4,' не','да',' нет',' лес','есть','есть','1970',' каркасно-монолитный',' без отделки','есть','центральное',' другое','1','раздельный',' Солнечный',' элит','строительство','новостройка',' нет','есть','есть',' нет',' СНТ'),(10,'97280.679322328',2,16,18,' не',' не',' нет',' двор','есть','есть','1970',' каркасно-монолитный','стандартный',' нет','центральное',' другое','2','раздельный',' Солнечный','стандарт',' сдан',' вторичное жилье','есть',' нет',' нет','есть',' СХН'),(11,'93157.80602638',3,15,8,' не',' не',' нет','горы',' нет',' нет','1970',' каркасно-монолитный','стандартный','есть',' нет','центральное','1',' совмещенный',' Московский',' комфорт',' сдан',' вторичное жилье','есть','есть',' нет','есть','ИЖС'),(12,'85036.098987347',2,12,5,'да','да','есть',' лес',' нет','есть','1970',' кирпичный','стандартный','есть',' нет',' скважина','2',' совмещенный',' Лазурный',' элит','строительство',' вторичное жилье','есть','есть',' нет',' нет',' СХН'),(13,'411114.23451572',3,6,22,' не','да',' нет',' лес','есть','есть','1970',' каркасно-монолитный',' евроремонт',' нет',' нет','центральное','2','раздельный',' Солнечный',' комфорт','строительство',' вторичное жилье',' нет','есть',' нет','есть','ИЖС'),(14,'756587.22196154',2,10,23,'да',' не','есть',' прочее',' нет','есть','1970',' кирпичный','стандартный',' нет','центральное',' скважина','2',' совмещенный',' Лазурный',' элит',' сдан','новостройка','есть',' нет','есть','есть',' аренда'),(15,'68512.695511667',4,11,22,'да','да','есть',' прочее',' нет','есть','1970',' деревянный',' без отделки',' нет',' нет',' другое','1','раздельный',' Лазурный','стандарт',' сдан','новостройка','есть','есть','есть',' нет',' СХН'),(16,'50646.004880083',1,5,10,'да',' не','есть',' двор','есть',' нет','1970',' деревянный','стандартный','есть','центральное',' другое','1',' совмещенный',' Солнечный',' комфорт',' сдан','новостройка',' нет','есть',' нет',' нет',' СХН'),(17,'40243859.555596',4,13,18,' не','да',' нет',' прочее','есть',' нет','1970','блочный',' евроремонт',' нет','центральное',' скважина','2',' совмещенный',' Московский','стандарт','строительство',' вторичное жилье','есть',' нет','есть','есть','ИЖС'),(18,'2268946.3338901',4,5,25,'да',' не',' нет','горы',' нет',' нет','1970',' каркасно-монолитный',' без отделки','есть',' нет',' скважина','1','раздельный','Мирный',' элит','строительство',' вторичное жилье',' нет','есть','есть',' нет',' аренда'),(19,'48940810.004145',4,14,22,' не','да','есть',' водоем','есть','есть','1970','блочный',' евроремонт',' нет',' нет','центральное','2','раздельный','Мирный','стандарт','строительство','новостройка',' нет','есть',' нет',' нет','ИЖС'),(20,'197890.1390635',1,17,6,'да','да',' нет',' водоем','есть',' нет','1970',' кирпичный','стандартный','есть',' нет',' скважина','2','раздельный',' Лазурный',' элит',' сдан',' вторичное жилье','есть',' нет',' нет','есть',' аренда'),(21,'1247674.1593408',4,18,17,' не',' не','есть',' парк','есть',' нет','1970',' каркасно-монолитный','стандартный',' нет',' другое',' другое','2','раздельный',' Солнечный',' элит','строительство','новостройка',' нет','есть','есть',' нет','ИЖС'),(22,'40486.87486583',1,25,10,'да','да',' нет',' водоем','есть','есть','1970',' кирпичный','стандартный',' нет','центральное',' скважина','1',' совмещенный','Мирный',' комфорт','строительство','новостройка','есть','есть','есть','есть',' СХН'),(23,'76211.560858106',1,6,20,' не',' не',' нет',' лес','есть',' нет','1970',' каркасно-монолитный',' без отделки',' нет','центральное',' другое','1','раздельный',' Московский',' комфорт',' сдан',' вторичное жилье','есть',' нет',' нет','есть',' СХН'),(24,'104934.64849546',4,3,3,'да',' не',' нет',' парк',' нет','есть','1970',' каркасно-монолитный','стандартный','есть',' нет',' другое','2','раздельный',' Солнечный','стандарт','строительство','новостройка',' нет','есть',' нет','есть',' СНТ'),(25,'73446.621241114',1,5,18,'да','да',' нет',' прочее',' нет','есть','1970',' кирпичный','стандартный','есть',' другое',' скважина','1','раздельный','Мирный',' элит','строительство','новостройка','есть','есть','есть','есть',' СХН'),(26,'123065.69201717',1,4,13,'да','да','есть',' прочее',' нет',' нет','1970','блочный',' без отделки','есть',' нет',' скважина','1',' совмещенный',' Солнечный',' элит','строительство',' вторичное жилье',' нет','есть',' нет',' нет','ИЖС'),(27,'583603484.87026',3,12,8,' не','да',' нет',' парк',' нет',' нет','1970',' деревянный',' евроремонт','есть','центральное','центральное','2','раздельный','Мирный',' комфорт','строительство','новостройка',' нет',' нет',' нет',' нет',' СНТ'),(28,'124676.15093467',4,22,19,'да',' не','есть',' парк',' нет','есть','1970','блочный',' без отделки',' нет','центральное','центральное','2',' совмещенный',' Солнечный','стандарт',' сдан',' вторичное жилье',' нет',' нет',' нет','есть','ИЖС'),(29,'406410.88192132',3,19,20,'да','да','есть',' двор',' нет',' нет','1970',' деревянный','стандартный',' нет',' нет',' скважина','1','раздельный','Мирный',' комфорт','строительство',' вторичное жилье',' нет',' нет','есть','есть',' аренда'),(30,'99260.427082264',2,8,8,' не',' не','есть',' прочее',' нет',' нет','1970',' деревянный',' евроремонт','есть',' другое',' скважина','2',' совмещенный',' Солнечный',' комфорт',' сдан','новостройка',' нет','есть',' нет',' нет',' СХН'),(31,'5454319.426089',3,8,13,'да','да',' нет','горы','есть','есть','1970',' кирпичный',' без отделки','есть','центральное','центральное','1',' совмещенный','Мирный','стандарт',' сдан','новостройка','есть',' нет','есть',' нет',' аренда'),(32,'55696.813708444',1,16,3,'да','да',' нет',' водоем','есть',' нет','1970','блочный','стандартный','есть',' другое','центральное','2','раздельный',' Лазурный','стандарт','строительство','новостройка',' нет','есть',' нет',' нет',' аренда'),(33,'38549.593906305',2,10,18,'да',' не',' нет',' лес',' нет','есть','1970',' кирпичный',' евроремонт',' нет',' нет',' другое','2','раздельный',' Лазурный','стандарт',' сдан',' вторичное жилье',' нет','есть','есть','есть',' СНТ'),(34,'337665598.94588',1,22,20,' не','да','есть',' лес','есть',' нет','1970','блочный',' без отделки',' нет',' другое',' скважина','2',' совмещенный',' Солнечный',' комфорт','строительство','новостройка',' нет',' нет','есть',' нет','ИЖС'),(35,'13868349.778534',4,3,3,' не',' не','есть',' лес',' нет','есть','1970','блочный','стандартный',' нет',' нет','центральное','1','раздельный',' Солнечный','стандарт','строительство',' вторичное жилье',' нет','есть',' нет',' нет',' СНТ'),(36,'207882.24852406',1,18,25,'да',' не','есть',' парк',' нет','есть','1970',' деревянный','стандартный',' нет',' другое',' другое','2',' совмещенный',' Московский','стандарт',' сдан',' вторичное жилье','есть',' нет',' нет','есть','ИЖС'),(37,'75864.640351322',4,13,25,'да','да',' нет',' парк','есть','есть','1970',' деревянный',' евроремонт','есть',' нет',' другое','1','раздельный','Мирный','стандарт','строительство','новостройка',' нет',' нет','есть',' нет','ИЖС'),(38,'241807.75642238',1,24,23,' не','да',' нет','горы','есть',' нет','1970',' каркасно-монолитный',' без отделки','есть',' другое','центральное','1',' совмещенный',' Солнечный',' элит',' сдан',' вторичное жилье','есть','есть','есть','есть','ИЖС'),(39,'74407.240091705',2,8,4,'да',' не','есть',' водоем','есть',' нет','1970',' кирпичный','стандартный','есть','центральное',' скважина','2',' совмещенный',' Солнечный',' комфорт','строительство',' вторичное жилье','есть',' нет','есть','есть',' СНТ'),(40,'988698.51088346',3,12,3,'да','да','есть','горы','есть',' нет','1970',' деревянный',' евроремонт','есть','центральное','центральное','2',' совмещенный',' Московский',' элит',' сдан',' вторичное жилье',' нет',' нет','есть','есть',' СХН'),(41,'85270.344789731',2,22,17,'да','да',' нет',' парк','есть',' нет','1970','блочный',' евроремонт','есть',' нет',' другое','2','раздельный',' Московский','стандарт',' сдан','новостройка',' нет',' нет','есть','есть',' аренда'),(42,'14214117.225064',4,18,3,' не',' не',' нет',' водоем','есть','есть','1970',' деревянный',' без отделки',' нет',' нет',' скважина','1',' совмещенный',' Московский',' элит',' сдан','новостройка','есть',' нет',' нет',' нет',' аренда'),(43,'107594.45412926',4,22,9,' не','да',' нет','горы','есть','есть','1970',' деревянный','стандартный',' нет',' другое',' скважина','1','раздельный',' Солнечный',' комфорт',' сдан',' вторичное жилье','есть','есть','есть',' нет',' СНТ'),(44,'115948.59520388',2,24,11,'да','да',' нет',' двор',' нет','есть','1970','блочный',' без отделки',' нет','центральное','центральное','2',' совмещенный','Мирный','стандарт','строительство','новостройка','есть',' нет',' нет','есть','ИЖС'),(45,'111170.48348355',1,3,14,' не','да',' нет',' водоем','есть',' нет','1970',' деревянный',' евроремонт',' нет',' другое',' другое','1',' совмещенный',' Солнечный',' комфорт',' сдан','новостройка',' нет',' нет','есть','есть',' аренда'),(46,'80621.020924589',3,22,5,' не','да',' нет',' лес','есть',' нет','1970',' деревянный',' без отделки','есть','центральное',' другое','2','раздельный',' Московский',' комфорт','строительство',' вторичное жилье',' нет','есть',' нет',' нет','ИЖС'),(47,'107468.1405851',2,13,14,'да','да',' нет',' двор','есть','есть','1970',' кирпичный',' без отделки',' нет',' другое',' другое','1','раздельный',' Солнечный','стандарт',' сдан',' вторичное жилье',' нет',' нет',' нет',' нет','ИЖС'),(48,'28945.293694675',2,9,22,'да','да','есть',' лес',' нет',' нет','1970','блочный',' без отделки','есть',' нет',' скважина','2',' совмещенный',' Солнечный','стандарт',' сдан','новостройка','есть','есть','есть','есть',' аренда'),(49,'74556.464532982',1,6,14,'да','да',' нет',' лес',' нет','есть','1970',' деревянный',' евроремонт',' нет',' нет','центральное','1',' совмещенный','Мирный',' элит',' сдан','новостройка',' нет','есть',' нет',' нет',' СХН'),(50,'83992.348007854',4,22,20,'да',' не',' нет',' парк','есть',' нет','1970',' каркасно-монолитный',' евроремонт',' нет','центральное',' другое','1',' совмещенный',' Лазурный',' комфорт','строительство','новостройка','есть','есть',' нет','есть',' аренда'),(51,'73537.101262072',2,15,7,'да',' не','есть',' водоем',' нет','есть','1970',' деревянный',' евроремонт','есть',' другое','центральное','1',' совмещенный',' Лазурный',' комфорт','строительство','новостройка','есть','есть','есть','есть',' аренда'),(52,'121494.46331883',2,22,20,'да',' не','есть',' двор',' нет','есть','1970',' кирпичный',' евроремонт',' нет',' другое',' скважина','2',' совмещенный',' Лазурный',' комфорт',' сдан','новостройка',' нет',' нет',' нет',' нет',' СХН'),(53,'65237850.959549',3,7,22,'да',' не',' нет',' парк','есть',' нет','1970',' деревянный',' евроремонт',' нет','центральное',' другое','1',' совмещенный','Мирный','стандарт',' сдан','новостройка',' нет',' нет','есть','есть',' СНТ'),(54,'84568.343901617',4,15,13,' не','да',' нет',' лес','есть',' нет','1970',' деревянный','стандартный','есть','центральное','центральное','2',' совмещенный','Мирный','стандарт',' сдан',' вторичное жилье','есть',' нет',' нет',' нет','ИЖС'),(55,'908640.59119124',1,25,19,' не','да',' нет',' двор',' нет','есть','1970','блочный','стандартный','есть',' другое',' скважина','2','раздельный',' Лазурный',' элит',' сдан','новостройка',' нет','есть',' нет',' нет',' СХН'),(56,'62454.274437442',3,20,17,' не',' не',' нет',' водоем',' нет',' нет','1970',' каркасно-монолитный',' евроремонт','есть',' нет',' другое','1','раздельный','Мирный',' комфорт','строительство','новостройка',' нет',' нет',' нет','есть',' аренда'),(57,'63309.121410409',4,18,10,'да','да',' нет',' двор','есть',' нет','1970','блочный',' евроремонт','есть','центральное',' другое','2',' совмещенный',' Лазурный','стандарт','строительство',' вторичное жилье',' нет',' нет','есть',' нет',' СХН'),(58,'108269.97000563',1,15,12,' не',' не',' нет','горы','есть','есть','1970',' деревянный',' евроремонт',' нет','центральное',' другое','2','раздельный',' Лазурный',' элит','строительство','новостройка','есть',' нет','есть',' нет',' СНТ'),(59,'17197.306778839',3,4,23,' не','да','есть',' парк','есть',' нет','1970','блочный','стандартный','есть',' другое',' скважина','2','раздельный',' Солнечный','стандарт','строительство',' вторичное жилье','есть','есть',' нет',' нет','ИЖС'),(60,'36656.675579332',4,2,25,' не',' не',' нет',' двор','есть','есть','1970',' каркасно-монолитный',' евроремонт',' нет',' другое','центральное','1',' совмещенный',' Лазурный',' элит','строительство','новостройка',' нет','есть','есть','есть','ИЖС'),(61,'5519391.3304685',2,4,4,'да','да',' нет',' двор','есть','есть','1970','блочный',' евроремонт',' нет',' другое','центральное','1','раздельный',' Московский',' комфорт',' сдан','новостройка',' нет',' нет','есть',' нет',' аренда'),(62,'5202695.8599591',2,1,14,'да','да',' нет',' двор',' нет','есть','1970',' деревянный',' без отделки',' нет','центральное',' другое','1',' совмещенный',' Лазурный','стандарт','строительство','новостройка',' нет','есть',' нет',' нет',' СХН'),(63,'49583.708569214',4,22,24,'да',' не','есть',' водоем',' нет',' нет','1970',' кирпичный','стандартный',' нет',' другое',' другое','1',' совмещенный',' Солнечный',' элит','строительство',' вторичное жилье',' нет','есть',' нет','есть',' СХН'),(64,'102490.30320602',2,24,24,' не','да',' нет',' лес','есть',' нет','1970',' каркасно-монолитный','стандартный',' нет',' нет',' другое','1',' совмещенный',' Московский',' комфорт','строительство','новостройка',' нет','есть','есть','есть',' СНТ'),(65,'396006.30042453',4,5,11,'да',' не',' нет',' лес',' нет',' нет','1970','блочный','стандартный',' нет',' нет',' другое','1',' совмещенный',' Лазурный',' элит',' сдан','новостройка','есть','есть','есть','есть','ИЖС'),(66,'637902.02627838',3,17,22,' не','да','есть','горы',' нет','есть','1970',' каркасно-монолитный',' евроремонт',' нет',' другое',' другое','2','раздельный',' Московский',' элит',' сдан',' вторичное жилье','есть','есть','есть',' нет',' аренда'),(67,'619835.30029449',1,5,7,'да',' не','есть',' водоем','есть',' нет','1970',' каркасно-монолитный',' без отделки',' нет',' нет','центральное','1',' совмещенный','Мирный',' элит','строительство','новостройка','есть','есть','есть',' нет',' СХН'),(68,'331097.56666869',2,20,10,' не',' не','есть',' парк','есть','есть','1970',' каркасно-монолитный','стандартный',' нет','центральное','центральное','2','раздельный',' Московский',' элит','строительство',' вторичное жилье','есть',' нет','есть','есть',' аренда'),(69,'136994.65645075',3,9,9,'да',' не','есть',' двор','есть','есть','1970',' деревянный',' евроремонт','есть',' нет',' другое','1',' совмещенный',' Московский','стандарт',' сдан','новостройка','есть',' нет','есть',' нет',' СНТ'),(70,'62686.890361247',4,22,13,' не',' не',' нет',' парк',' нет',' нет','1970',' каркасно-монолитный',' евроремонт','есть',' нет',' скважина','1','раздельный','Мирный','стандарт','строительство',' вторичное жилье','есть','есть',' нет','есть',' СХН'),(71,'6332133.8715295',3,20,4,'да',' не','есть',' лес','есть','есть','1970',' кирпичный',' без отделки',' нет','центральное','центральное','2',' совмещенный',' Солнечный',' элит','строительство',' вторичное жилье','есть','есть',' нет','есть',' аренда'),(72,'87399.668721577',3,18,25,'да','да','есть','горы','есть','есть','1970',' кирпичный','стандартный','есть',' другое','центральное','1',' совмещенный',' Московский','стандарт','строительство',' вторичное жилье',' нет',' нет','есть','есть',' СХН'),(73,'54188740.027649',2,20,3,'да','да',' нет','горы','есть','есть','1970','блочный',' евроремонт','есть','центральное',' скважина','1','раздельный','Мирный','стандарт','строительство','новостройка','есть',' нет',' нет',' нет','ИЖС'),(74,'55964.989142938',2,9,3,' не',' не',' нет',' водоем',' нет',' нет','1970',' кирпичный',' евроремонт','есть',' нет',' другое','1',' совмещенный',' Лазурный','стандарт','строительство','новостройка','есть',' нет','есть',' нет','ИЖС'),(75,'129122.27247024',4,3,21,' не',' не',' нет','горы','есть','есть','1970',' деревянный',' без отделки',' нет',' нет',' скважина','2','раздельный',' Московский','стандарт',' сдан','новостройка',' нет',' нет','есть','есть',' СХН'),(76,'53604.492595445',2,9,17,' не','да',' нет',' лес','есть',' нет','1970',' каркасно-монолитный',' евроремонт',' нет',' нет','центральное','1',' совмещенный','Мирный',' элит',' сдан',' вторичное жилье',' нет','есть',' нет',' нет',' аренда'),(77,'82556.245552076',2,1,16,'да',' не',' нет',' парк',' нет',' нет','1970',' кирпичный',' без отделки','есть',' нет',' скважина','2','раздельный',' Лазурный',' элит',' сдан','новостройка',' нет',' нет','есть','есть','ИЖС'),(78,'106173.41488211',4,20,24,'да',' не',' нет','горы',' нет','есть','1970',' деревянный',' евроремонт','есть','центральное',' другое','2','раздельный','Мирный',' комфорт','строительство',' вторичное жилье',' нет',' нет',' нет',' нет',' СНТ'),(79,'410954.39984626',1,15,9,' не','да',' нет',' прочее',' нет','есть','1970',' каркасно-монолитный',' без отделки','есть',' нет','центральное','2','раздельный',' Московский','стандарт','строительство',' вторичное жилье',' нет',' нет','есть','есть',' аренда'),(80,'86450.213012179',2,16,22,'да',' не',' нет',' двор','есть','есть','1970',' кирпичный',' без отделки','есть','центральное','центральное','1','раздельный',' Московский',' элит',' сдан','новостройка','есть',' нет',' нет',' нет',' СНТ'),(81,'67662.965154608',2,14,24,' не',' не',' нет',' водоем',' нет','есть','1970',' кирпичный',' евроремонт',' нет',' другое',' скважина','2',' совмещенный',' Солнечный',' элит','строительство','новостройка','есть',' нет',' нет',' нет',' СНТ'),(82,'837153959.40836',2,5,3,' не','да',' нет','горы',' нет',' нет','1970',' деревянный',' евроремонт',' нет',' другое','центральное','1',' совмещенный',' Солнечный','стандарт','строительство','новостройка',' нет',' нет','есть','есть',' аренда'),(83,'105224.63082695',3,8,12,'да','да',' нет',' лес','есть','есть','1970',' деревянный',' евроремонт','есть','центральное','центральное','2','раздельный',' Лазурный',' комфорт',' сдан',' вторичное жилье',' нет','есть','есть',' нет',' СНТ'),(84,'47092.859202198',2,8,9,'да','да','есть',' лес',' нет','есть','1970',' кирпичный','стандартный',' нет','центральное',' скважина','2',' совмещенный',' Московский','стандарт',' сдан','новостройка','есть',' нет',' нет',' нет',' СНТ'),(85,'31479.889170378',2,13,13,' не','да','есть','горы',' нет',' нет','1970',' каркасно-монолитный','стандартный',' нет',' другое',' другое','2','раздельный',' Московский',' комфорт','строительство',' вторичное жилье',' нет','есть',' нет',' нет',' СНТ'),(86,'275070.50432462',4,5,1,'да','да','есть','горы',' нет','есть','1970',' каркасно-монолитный',' евроремонт',' нет',' другое',' другое','1','раздельный',' Московский','стандарт',' сдан','новостройка',' нет','есть','есть',' нет',' аренда'),(87,'95449.710654411',1,16,11,'да',' не','есть',' двор','есть',' нет','1970','блочный',' без отделки',' нет',' нет',' скважина','1','раздельный',' Солнечный','стандарт',' сдан','новостройка','есть','есть','есть','есть',' СНТ'),(88,'96809.689309378',2,11,13,'да','да','есть',' лес',' нет',' нет','1970','блочный',' без отделки','есть',' другое',' другое','1',' совмещенный',' Солнечный','стандарт','строительство','новостройка','есть','есть',' нет',' нет',' СНТ'),(89,'7617.5917026352',3,10,4,' не',' не','есть',' лес','есть',' нет','1970',' кирпичный',' евроремонт','есть',' другое',' скважина','1','раздельный','Мирный',' элит','строительство',' вторичное жилье','есть',' нет','есть','есть','ИЖС'),(90,'31737.771128182',2,20,22,' не',' не','есть','горы','есть',' нет','1970','блочный','стандартный',' нет',' нет','центральное','1','раздельный',' Солнечный',' элит','строительство',' вторичное жилье','есть','есть','есть',' нет','ИЖС'),(91,'109568.95629537',1,13,15,' не',' не',' нет',' прочее',' нет',' нет','1970','блочный',' евроремонт',' нет','центральное',' другое','2',' совмещенный',' Лазурный','стандарт','строительство',' вторичное жилье',' нет',' нет',' нет',' нет','ИЖС'),(92,'34420.704293178',3,4,19,'да','да',' нет','горы','есть',' нет','1970',' каркасно-монолитный','стандартный','есть',' нет','центральное','1',' совмещенный',' Московский',' комфорт','строительство','новостройка','есть',' нет','есть',' нет',' СХН'),(93,'6150239.5005571',3,14,13,'да',' не',' нет',' прочее','есть',' нет','1970','блочный',' без отделки',' нет',' другое','центральное','1',' совмещенный',' Солнечный',' комфорт',' сдан',' вторичное жилье','есть',' нет','есть','есть','ИЖС'),(94,'122918.79543008',3,10,19,' не',' не','есть','горы','есть',' нет','1970',' каркасно-монолитный','стандартный',' нет',' другое','центральное','2',' совмещенный',' Московский','стандарт','строительство',' вторичное жилье',' нет','есть',' нет',' нет',' аренда'),(95,'95262.459860555',4,13,3,'да','да',' нет','горы',' нет',' нет','1970','блочный',' евроремонт','есть','центральное',' скважина','2',' совмещенный',' Московский',' комфорт','строительство',' вторичное жилье',' нет',' нет',' нет',' нет',' СХН'),(96,'1518340.2959001',2,2,12,'да','да',' нет',' лес',' нет','есть','1970',' кирпичный',' евроремонт',' нет',' другое',' другое','2','раздельный',' Лазурный','стандарт',' сдан',' вторичное жилье',' нет',' нет',' нет',' нет','ИЖС'),(97,'49652536.746284',4,6,21,' не','да','есть',' водоем',' нет','есть','1970',' каркасно-монолитный','стандартный','есть',' другое',' другое','2',' совмещенный',' Солнечный',' элит',' сдан','новостройка','есть',' нет',' нет','есть',' СНТ'),(98,'114151.4220676',4,4,19,' не','да','есть',' двор',' нет',' нет','1970',' каркасно-монолитный',' евроремонт','есть',' другое',' другое','1',' совмещенный','Мирный',' элит','строительство','новостройка',' нет',' нет','есть','есть','ИЖС'),(99,'60631.720507812',1,1,10,' не','да',' нет','горы','есть',' нет','1970',' каркасно-монолитный',' без отделки',' нет',' другое','центральное','2','раздельный',' Лазурный',' комфорт','строительство','новостройка','есть','есть',' нет',' нет',' аренда'),(100,'58929.971552112',2,3,6,'да',' не',' нет','горы',' нет','есть','1970','блочный',' евроремонт',' нет',' нет',' другое','1','раздельный','Мирный',' элит',' сдан','новостройка',' нет','есть',' нет',' нет',' СНТ');
/*!40000 ALTER TABLE `specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_transactions`
--

DROP TABLE IF EXISTS `type_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Вид сделки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Виды сделок';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_transactions`
--

LOCK TABLES `type_transactions` WRITE;
/*!40000 ALTER TABLE `type_transactions` DISABLE KEYS */;
INSERT INTO `type_transactions` VALUES (1,'покупка/продажа'),(2,'аренда долгосрочная'),(3,'аренда посуточная');
/*!40000 ALTER TABLE `type_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_real`
--

DROP TABLE IF EXISTS `types_real`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_real` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Вид объекта недвижимости',
  `category_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Категория объекта',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`(20)),
  KEY `category_id` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Вид объекта недвижимости';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_real`
--

LOCK TABLES `types_real` WRITE;
/*!40000 ALTER TABLE `types_real` DISABLE KEYS */;
INSERT INTO `types_real` VALUES (1,'Квартира',1),(2,'Студия',1),(3,'Свободная планировка',1),(4,'Аппартаменты',1),(5,'Комната',1),(6,'Дом',2),(7,'Полдома',2),(8,'Коттедж',2),(9,'Дача',2),(10,'Таунхаус',2),(11,'Дуплекс',2),(12,'Помещение под офис',3),(13,'Квартира под офис',3),(14,'Помещение для розничной торговли',3),(15,'Готовый бизнес',3),(16,'Склад',3),(17,'Производственное помещение',3),(18,'Участок для ИЖС',4),(19,'Участок в СНТ',4),(20,'Участок СХН',4),(21,'Участок в аренду',4);
/*!40000 ALTER TABLE `types_real` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Имя Продавца',
  `phone` bigint(20) DEFAULT NULL COMMENT 'Телефон',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Эл.Почта',
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Продавец/покупатель',
  `password1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-12 12:42:25
