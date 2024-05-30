-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: Found_Your_Pet_db
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

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
-- Table structure for table `Anuncios_anunciomascota`
--

DROP TABLE IF EXISTS `Anuncios_anunciomascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Anuncios_anunciomascota` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `fecha_perdida` date NOT NULL,
  `lugar_perdida` varchar(255) NOT NULL,
  `edad` int unsigned NOT NULL,
  `genero` varchar(10) NOT NULL,
  `lleva_chip` varchar(10) NOT NULL,
  `raza` varchar(255) NOT NULL,
  `telefono_contacto` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Anuncios_anunciomascota_chk_1` CHECK ((`edad` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Anuncios_anunciomascota`
--

LOCK TABLES `Anuncios_anunciomascota` WRITE;
/*!40000 ALTER TABLE `Anuncios_anunciomascota` DISABLE KEYS */;
INSERT INTO `Anuncios_anunciomascota` VALUES (5,'Rambo','dsadsadsadasdad','mascotas_imagenes/yorshike_uNgbbdb.jpeg','2023-11-12','asdadasda',2,'Masculino','No','asdadadsasa','qweqweqweq'),(6,'Sofi','sdfsfds','mascotas_imagenes/yorshike_j4g8ghe.jpeg','2023-11-12','Av. Aurelio Coquillat Pascual',12,'Masculino','No','Mestizo','1234567'),(13,'Grupomascota','1 Border collie y 1 yorshai','mascotas_imagenes/yorshike.jpeg','2023-11-12','Av. Aurelio Coquillat Pascual',3,'Masculino','Si','Varios','1234567');
/*!40000 ALTER TABLE `Anuncios_anunciomascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios_myuser`
--

DROP TABLE IF EXISTS `Usuarios_myuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios_myuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios_myuser`
--

LOCK TABLES `Usuarios_myuser` WRITE;
/*!40000 ALTER TABLE `Usuarios_myuser` DISABLE KEYS */;
INSERT INTO `Usuarios_myuser` VALUES (1,'pbkdf2_sha256$260000$BANVa0UqeUpxxcGMmxV34g$MJvd2E8hfxMnrNNE6iFAHwBYQAlPX266pjhbznuA5gU=','2023-10-25 14:59:07.023883','Alejandro','Alejandroaguilarsabuco@hotmail.com',1,'2023-10-25 14:58:23.898134','2023-10-25 14:58:23.906440',1,1),(2,'pbkdf2_sha256$260000$FPJA9I3gk8tEen0Y1sPwbA$xcvom6Wn2xtakuh42MKxsfl8pFEtFl34zXqWOAuS6ig=','2024-05-23 12:55:01.438936','Prueba1','Prueba1@hotmail.com',1,'2023-10-25 15:03:45.661400','2023-10-25 15:03:45.705139',1,1),(3,'pbkdf2_sha256$260000$Oehi0U5WScNLLyYEL4ZQz8$7RAD9tn1BykqjT/Fl80RZw+lJgJBlbxWCn536I/dq4c=','2024-04-22 18:34:20.140063','prueba2','prueba2@hotmail.com',1,'2023-11-11 18:56:46.541572','2023-11-11 18:56:46.556017',1,1),(4,'Prueba4',NULL,'Prueba4','Prueba4@hotmail.com',1,'2023-11-19 13:39:35.645625','2024-03-13 16:15:54.252440',1,0);
/*!40000 ALTER TABLE `Usuarios_myuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios_myuser_groups`
--

DROP TABLE IF EXISTS `Usuarios_myuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios_myuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `myuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Usuarios_myuser_groups_myuser_id_group_id_ba0f13b5_uniq` (`myuser_id`,`group_id`),
  KEY `Usuarios_myuser_groups_group_id_8ee541d1_fk_auth_group_id` (`group_id`),
  CONSTRAINT `Usuarios_myuser_groups_group_id_8ee541d1_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `Usuarios_myuser_groups_myuser_id_bc928dca_fk_Usuarios_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `Usuarios_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios_myuser_groups`
--

LOCK TABLES `Usuarios_myuser_groups` WRITE;
/*!40000 ALTER TABLE `Usuarios_myuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuarios_myuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios_myuser_user_permissions`
--

DROP TABLE IF EXISTS `Usuarios_myuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios_myuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `myuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Usuarios_myuser_user_per_myuser_id_permission_id_b18911c7_uniq` (`myuser_id`,`permission_id`),
  KEY `Usuarios_myuser_user_permission_id_19ad0428_fk_auth_perm` (`permission_id`),
  CONSTRAINT `Usuarios_myuser_user_myuser_id_382b07d3_fk_Usuarios_` FOREIGN KEY (`myuser_id`) REFERENCES `Usuarios_myuser` (`id`),
  CONSTRAINT `Usuarios_myuser_user_permission_id_19ad0428_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios_myuser_user_permissions`
--

LOCK TABLES `Usuarios_myuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `Usuarios_myuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuarios_myuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add my user',6,'add_myuser'),(22,'Can change my user',6,'change_myuser'),(23,'Can delete my user',6,'delete_myuser'),(24,'Can view my user',6,'view_myuser'),(25,'Can add anuncio mascota',7,'add_anunciomascota'),(26,'Can change anuncio mascota',7,'change_anunciomascota'),(27,'Can delete anuncio mascota',7,'delete_anunciomascota'),(28,'Can view anuncio mascota',7,'view_anunciomascota');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_Usuarios_myuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_Usuarios_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `Usuarios_myuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-11-12 14:28:35.060651','1','AnuncioMascota object (1)',1,'[{\"added\": {}}]',7,2),(2,'2023-11-12 15:34:59.995772','2','AnuncioMascota object (2)',3,'',7,2),(3,'2023-11-13 22:02:03.464860','3','AnuncioMascota object (3)',3,'',7,2),(4,'2023-11-13 22:02:03.517656','1','AnuncioMascota object (1)',3,'',7,2),(5,'2023-11-15 21:22:32.873237','4','AnuncioMascota object (4)',2,'[{\"changed\": {\"fields\": [\"Genero\"]}}]',7,2),(6,'2023-11-15 21:26:17.011503','4','AnuncioMascota object (4)',2,'[{\"changed\": {\"fields\": [\"Lleva chip\"]}}]',7,2),(7,'2023-11-15 21:26:34.280153','4','AnuncioMascota object (4)',2,'[]',7,2),(8,'2023-11-15 21:37:29.997095','5','AnuncioMascota object (5)',2,'[{\"changed\": {\"fields\": [\"Lleva chip\"]}}]',7,2),(9,'2023-11-15 21:38:30.014623','4','AnuncioMascota object (4)',2,'[{\"changed\": {\"fields\": [\"Lleva chip\"]}}]',7,2),(10,'2023-11-15 21:38:32.858015','5','AnuncioMascota object (5)',2,'[]',7,2),(11,'2024-02-26 11:11:43.904155','4','AnuncioMascota object (4)',3,'',7,2),(12,'2024-03-13 16:15:54.289365','4','Prueba4@hotmail.com',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',6,2),(13,'2024-03-13 16:16:59.724624','5','Prueba5@hotmail.com',1,'[{\"added\": {}}]',6,2),(14,'2024-03-13 16:17:34.757563','5','Prueba5@hotmail.com',3,'',6,2),(15,'2024-03-13 17:02:40.047491','7','AnuncioMascota object (7)',3,'',7,2),(16,'2024-04-10 14:18:18.834067','10','AnuncioMascota object (10)',3,'',7,2),(17,'2024-05-20 11:51:00.757329','12','AnuncioMascota object (12)',3,'',7,2),(18,'2024-05-20 11:51:00.867929','11','AnuncioMascota object (11)',3,'',7,2),(19,'2024-05-20 11:51:12.769736','9','AnuncioMascota object (9)',3,'',7,2),(20,'2024-05-20 11:51:12.797459','8','AnuncioMascota object (8)',3,'',7,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'Anuncios','anunciomascota'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(6,'Usuarios','myuser');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-25 14:44:38.149444'),(2,'contenttypes','0002_remove_content_type_name','2023-10-25 14:44:38.294878'),(3,'auth','0001_initial','2023-10-25 14:44:39.078108'),(4,'auth','0002_alter_permission_name_max_length','2023-10-25 14:44:39.285579'),(5,'auth','0003_alter_user_email_max_length','2023-10-25 14:44:39.301687'),(6,'auth','0004_alter_user_username_opts','2023-10-25 14:44:39.311801'),(7,'auth','0005_alter_user_last_login_null','2023-10-25 14:44:39.332826'),(8,'auth','0006_require_contenttypes_0002','2023-10-25 14:44:39.341874'),(9,'auth','0007_alter_validators_add_error_messages','2023-10-25 14:44:39.352393'),(10,'auth','0008_alter_user_username_max_length','2023-10-25 14:44:39.364759'),(11,'auth','0009_alter_user_last_name_max_length','2023-10-25 14:44:39.384585'),(12,'auth','0010_alter_group_name_max_length','2023-10-25 14:44:39.410352'),(13,'auth','0011_update_proxy_permissions','2023-10-25 14:44:39.420751'),(14,'auth','0012_alter_user_first_name_max_length','2023-10-25 14:44:39.430743'),(15,'Usuarios','0001_initial','2023-10-25 14:44:39.504707'),(16,'Usuarios','0002_auto_20231016_1647','2023-10-25 14:44:39.613251'),(17,'Usuarios','0003_auto_20231018_1728','2023-10-25 14:44:40.081095'),(18,'Usuarios','0004_auto_20231018_1758','2023-10-25 14:44:40.167355'),(19,'Usuarios','0005_auto_20231018_1810','2023-10-25 14:44:40.697577'),(20,'admin','0001_initial','2023-10-25 14:44:40.932109'),(21,'admin','0002_logentry_remove_auto_add','2023-10-25 14:44:40.944821'),(22,'admin','0003_logentry_add_action_flag_choices','2023-10-25 14:44:40.980334'),(23,'sessions','0001_initial','2023-10-25 14:44:41.049197'),(24,'Anuncios','0001_initial','2023-11-11 19:40:13.890611'),(25,'Anuncios','0002_auto_20231113_2303','2023-11-13 22:03:07.243440'),(26,'Anuncios','0003_alter_anunciomascota_genero','2023-11-15 21:32:37.967364'),(27,'Anuncios','0004_alter_anunciomascota_genero','2023-11-15 21:32:57.706019'),(28,'Anuncios','0005_alter_anunciomascota_lleva_chip','2023-11-15 21:37:10.459372'),(29,'Anuncios','0006_alter_anunciomascota_lleva_chip','2023-11-15 21:38:57.203221');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('03p1f4cvkd1qo7gt4y79ffonxngjh6ri','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1r5DO7:5V3jNeKZr9QFkM1G8IaYzDIy8C6NBZ5yjD2uNc-XZMA','2023-11-21 23:09:07.542416'),('16iameft3qn13274rwdj85v4n0hfn66n','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1r4p8I:nrmJDU_ZWoqzjcofcB_7vljdLKqZohHrscf16inSyXg','2023-11-20 21:15:10.178300'),('1ajkutenwzdze9alh8npdyqvfsie8qk0','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1s3v5d:UUAAatvXpjAW_0Kw9H-vCibJP_BTIt_Yq_Ny8n0bipw','2024-05-07 09:56:57.982715'),('3tjbi35dradodb6udeug5636xudu7e1r','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1rxwxC:b1Gji-juca7FnaZ9aG5AAgVJ5dwXJ0cAcOhU6SopHqY','2024-04-20 22:43:34.760065'),('6nyr2hk7voss7kbqdv0v7r04iibjm668','.eJxVjMsOwiAUBf-FtSEUKA-X7v0Gch9UqgaS0q6M_65NutDtmZnzEgm2taSt5yXNLM7CiNPvhkCPXHfAd6i3JqnVdZlR7oo8aJfXxvl5Ody_gwK9fGsir9kwaK-CdcFHDcYGZptttNEhITGayaPiiTAq53gYlFPjqDMoE8T7A-jgN88:1ryyUe:WDl-CQHJ-9rgykgtJiH55QYK_HL4wcpZmVHHB29Oi4k','2024-04-23 18:34:20.147600'),('9junhn8ow4ym9raju48pkxk92q5rpk1y','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1s0y79:Mx28VuPZ0vaAhWwQBl6QEi7N7HXQNFHOPHiThoA-OaY','2024-04-29 06:34:19.229274'),('9viuwk87umm6c44569lun2dzp99fyghu','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1r1vdT:q10mreWALKrTDec81yES90sGOIYyK43AVgDj5P7r7JE','2023-11-12 21:35:23.803472'),('bekes53k5kp0kwuklrgnjxpvp4ou9nil','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1rkRs0:Oj0Bfhgwu0OTnlUihifh9R9a7SVDI-IMGDaaAlNauuo','2024-03-14 16:54:24.242802'),('bn8okcmxmpausqm4noqkq16h13rr7sg6','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1r2e5W:JO99H7OXRLI4sjE8nT_CCaapJbmXPEkKuK-8In3Vclg','2023-11-14 21:03:18.948377'),('c8ema49g9lmmq68555dd3f0j53327vgs','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1rjilH:SOCRrV1Hu04aYlKW_CfQ9JfIy50hxhFXw5VYCIcjSLw','2024-03-12 16:44:27.020120'),('cttbz7r4z9xddys6v49buh4ztygseeci','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1s2W9M:hsWe7IVhsH-LKa2HaKH1WOsfA9ibQYi8rj-GsV3FzaE','2024-05-03 13:07:00.891006'),('dq4hwo7bwwionp10re2fkpvdwhbdhr0k','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1r3NKV:sLj3sCCkGk-QBCSwTsLWCzGqXI2UG5DgqdnVoAg7Qgs','2023-11-16 21:21:47.245036'),('e41nesu4gvrgwjuh7nhkxt16021r9vgk','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1s92Ja:DjkYiP2eBqPGFD4QrW2fbteCy8O4k-oe1xWW1R-CJ9M','2024-05-21 12:40:30.289012'),('g7sj93i85mqjiwlkzh857vcx8c4f03d7','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1rnKeL:xf7RjSU0tswjgS8Z2pfBvURrMta-06rbTd29VPjkWAY','2024-03-22 15:48:13.738524'),('g9yr46om6my54o6ab5mpskconwlov5n8','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1qvfQu:-6W3a-H5nshg_DNRl5h8lkuqP690I0qzxMXf5kzH8y4','2023-10-26 15:04:32.653423'),('ge5xxe4e1v4b39sz61n2ze9lzam4u0j1','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1s79l0:9hZ-kiCZTEBlW32bduCWlTiIJ1Ruo25xBxWOrMqzehw','2024-05-16 08:13:02.627804'),('gf5f9y94p40v067mlkuz3cmqznmbrhij','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1sA7yH:7ieU5pQRVUE0Iek_8bwPDwdVcxlOvK4VVtDhmTTqiJw','2024-05-24 12:55:01.467370'),('h1kjii6te05gwj9mkr16qz70spxt9cmx','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1reBKW:7D0APX82sIF97WOt1HV_2jeFjApEBcrLahuJBDaMSFM','2024-02-26 10:01:56.034048'),('huilt7x1a31de515perusddyvrc5mfza','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1recEk:-jE6uKUeORmQ2bgWV-I1TXcw7ylLueH3ILwjhxqc-6s','2024-02-27 14:45:46.883966'),('k3co095hchap0cbchph4sgm3jen9zotg','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1rsUwN:eXmuFLSxLcsv5AqgOJkFSDUq2GiwSsKgemkzOkKFBqQ','2024-04-05 21:48:11.212967'),('k6v86vo7gkllg9q08pw3fsf3ch4k7ugm','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1s7yGR:cNfRC8bbsxknoUwKzp694oJPZl_8XxpSCfX3ZcIXEtc','2024-05-18 14:08:51.836688'),('lse424s0knjqwmbaok1i2x78r5behfy4','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1r2CQn:PqLzYgx6oQPqI6dc7PJSd_Q_kkIiWyxSaYidpFKXV9M','2023-11-13 15:31:25.184002'),('nu8zh5fnaz8ogpda22099ukf7t545shd','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1rs0HB:a5wU2rNFTCMFznqZ0GQJnhvvMcQY9PbiLKwPixk-ypc','2024-04-04 13:03:37.056033'),('r4m18adnoy8mqaimttlshrak3ylnegcx','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1ruYXN:WeyVbYVeHuV9bx88-pHAG84tKw2Exdb1S9Ji99qtugA','2024-04-11 14:02:53.234685'),('xhyy7ei24aw3oyj23ujcuwwwgvp9vl2c','.eJxVjDsOwjAQBe_iGln-BduU9DmDtd5d4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIijDj9bhnwwW0HdId2myXObV2mLHdFHrTLcSZ-Xg_376BCr9_aego-IuXgtVUxWEXGoy2ONQ-YQUXv0A7oHIfAzjAXDUo5iOcCyEa8P9ipOAg:1s7bld:QufsvlMAb-TgU3ClCzMyu2vdfvP6dql5zo2Gj-as5Qs','2024-05-17 14:07:33.633840');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  `es_administrador` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 21:27:27
