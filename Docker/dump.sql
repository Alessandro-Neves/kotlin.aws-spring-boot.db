-- MySQL dump 10.13  Distrib 5.7.37, for Win64 (x86_64)
--
-- Host: 173.230.137.157    Database: novo_gestor_web
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('37849c47-a1d9-4a27-aed5-dc0d98279cef','3c1c49c1c2414730f4d2fb3cecaf45756b361747b39aef7102d33e8b6c94322b','2022-06-21 00:22:44.907','20220613183101_timestamps_unique_token_and_stores_on_permissions',NULL,NULL,'2022-06-21 00:22:44.614',1),('626f6943-5da9-4db6-afe2-e172bbc76ae4','ec88f74027a29a3e8daaf0a0b96dbd20fab71ce87a315289db95a3fc79da40ae','2022-06-21 00:22:45.229','20220614130649_change_store_to_company',NULL,NULL,'2022-06-21 00:22:44.958',1),('7a74bfe4-26f1-4a21-a68b-f8d24fb03433','0194e2bba1a53858cfe73f85c7a56e80ea4526f1d94ecc69fa52b3cbb207fd56','2022-06-21 00:22:44.931','20220613184103_add_is_admin_to_user',NULL,NULL,'2022-06-21 00:22:44.910',1),('936acb2b-7943-4ac9-ae8a-cb5a9756c519','b6506b844b24a4f614bd84ae646510f80ef74509a19ff9c56733ac20a5f70a3b','2022-06-21 00:22:44.612','20220609140012_init',NULL,NULL,'2022-06-21 00:22:44.295',1),('a2dece24-733a-45e1-a0ae-636aaa0b11a3','4592425836f808c493467ef72299d1cda19afb36f335d5b5d65b63d778b29bac','2022-06-21 00:22:44.957','20220613185316_add_editable_to_permissions',NULL,NULL,'2022-06-21 00:22:44.933',1),('bcae366f-410c-4088-be77-5222e758f6f7','b1965d1fccbfeed85ad2f641b9a74fb90ca436bef1b68414252a26e418127812','2022-06-21 00:22:45.260','20220614134757_change_error_to_image_error',NULL,NULL,'2022-06-21 00:22:45.230',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) DEFAULT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `company` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company` (`company`),
  CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkMaps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watermark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/no-image.png',
  `watermarkError` tinyint(1) NOT NULL,
  `captcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `captcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ga_tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_hours` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `removed` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `imageError` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_website_link_key` (`website_link`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'PR','Campo Mourão','Teste 1','feeling-imoveis/company/7666eca1-6bc8-4ea0-b091-99234a10ff84.jpeg','Rua São José','87303-190',1464,'Centro','#b52a23','#763A3A','#ffffff','<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14575.16114142688!2d-52.3716397!3d-24.0384594!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc78c7a6970711f2!2sFeeling%20Im%C3%B3veis!5e0!3m2!1spt-BR!2sbr!4v1647628154887!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>','(44)99987-5954',0,'teste@teste.com','https://localhost:3001',NULL,'images/no-image.png',1,'6LdOhIofAAAAAAGjVu6yBZsO8E4zozFhD0z82_F_','6LdOhIofAAAAALwiUy4MiE-BRGrdVQ8mx2QKk8Ev','G-B2M1F7D05B','',0,'2022-06-21 00:22:49.478',NULL,0),(2,'PR','Campo Mourão','Teste 2','feeling-imoveis/company/7666eca1-6bc8-4ea0-b091-99234a10ff84.jpeg','RUA SANTOS DUMONT','87303-322',1540,'CENTRO','#3E4095','#3E4095','#ffffff','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3643.8776421116095!2d-52.37065798501326!3d-24.03537958444965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ed7531b98b71f9%3A0x13504a8acebcf169!2sImobiliaria%20Sul%20Invest!5e0!3m2!1spt-BR!2sbr!4v1650820414965!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','(44)99931-1257',0,'teste2@teste2.com','https://localhost:3002','SALA 3','images/no-image.png',1,'6LdOhIofAAAAAAGjVu6yBZsO8E4zozFhD0z82_F_','6LdOhIofAAAAALwiUy4MiE-BRGrdVQ8mx2QKk8Ev','G-B2M1F7D05B','',0,'2022-06-21 00:22:49.600',NULL,0);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_phones`
--

DROP TABLE IF EXISTS `company_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_phones` (
  `phone` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` int(10) unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`phone`,`company`),
  KEY `company` (`company`),
  CONSTRAINT `company_phones_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_phones`
--

LOCK TABLES `company_phones` WRITE;
/*!40000 ALTER TABLE `company_phones` DISABLE KEYS */;
INSERT INTO `company_phones` VALUES ('(44)3016-4942',2,'2022-06-21 00:22:49.612','2022-06-21 00:22:49.612'),('(44)3017-6868',1,'2022-06-21 00:22:49.497','2022-06-21 00:22:49.498');
/*!40000 ALTER TABLE `company_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset` (
  `user` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usable` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`user`,`code`),
  UNIQUE KEY `password_reset_token_key` (`token`),
  CONSTRAINT `password_reset_fk_users` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset`
--

LOCK TABLES `password_reset` WRITE;
/*!40000 ALTER TABLE `password_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `company` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company` (`company`),
  CONSTRAINT `permissions_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'ROLE_LOJAS_LIST','Listar Loja','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(2,'ROLE_LOJAS_UPDATE','Editar Loja','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(3,'ROLE_USUARIOS_ADD','Adicionar Usuários','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(4,'ROLE_USUARIOS_LIST','Listar Usuários','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(5,'ROLE_USUARIOS_UPDATE','Editar Usuários','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(6,'ROLE_USUARIOS_DELETE','Deletar Usuários','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(7,'ROLE_PERMISSIONS_ADD','Adicionar Permissões','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(8,'ROLE_PERMISSIONS_LIST','Listar Permissões','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(9,'ROLE_PERMISSIONS_UPDATE','Editar Permissões','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(10,'ROLE_PERMISSIONS_DELETE','Deletar Permissões','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(11,'ROLE_MIDIA_SOCIAL_ADD','Adicionar Mídia Social','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(12,'ROLE_MIDIA_SOCIAL_LIST','Listar Mídia Social','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(13,'ROLE_MIDIA_SOCIAL_UPDATE','Editar Mídia Social','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(14,'ROLE_MIDIA_SOCIAL_DELETE','Deletar Mídia Social','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(15,'ROLE_BANNERS_ADD','Adicionar Banners','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(16,'ROLE_BANNERS_LIST','Listar Banners','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(17,'ROLE_BANNERS_UPDATE','Editar Banners','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(18,'ROLE_BANNERS_DELETE','Deletar Banners','2022-06-21 00:22:49.490','2022-06-21 00:22:49.491',0,1),(19,'ROLE_LOJAS_LIST','Listar Loja','2022-06-21 00:22:49.607','2022-06-21 00:22:49.607',0,2),(20,'ROLE_LOJAS_UPDATE','Editar Loja','2022-06-21 00:22:49.607','2022-06-21 00:22:49.607',0,2),(21,'ROLE_USUARIOS_ADD','Adicionar Usuários','2022-06-21 00:22:49.607','2022-06-21 00:22:49.607',0,2),(22,'ROLE_USUARIOS_LIST','Listar Usuários','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(23,'ROLE_USUARIOS_UPDATE','Editar Usuários','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(24,'ROLE_USUARIOS_DELETE','Deletar Usuários','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(25,'ROLE_PERMISSIONS_ADD','Adicionar Permissões','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(26,'ROLE_PERMISSIONS_LIST','Listar Permissões','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(27,'ROLE_PERMISSIONS_UPDATE','Editar Permissões','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(28,'ROLE_PERMISSIONS_DELETE','Deletar Permissões','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(29,'ROLE_MIDIA_SOCIAL_ADD','Adicionar Mídia Social','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(30,'ROLE_MIDIA_SOCIAL_LIST','Listar Mídia Social','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(31,'ROLE_MIDIA_SOCIAL_UPDATE','Editar Mídia Social','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(32,'ROLE_MIDIA_SOCIAL_DELETE','Deletar Mídia Social','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(33,'ROLE_BANNERS_ADD','Adicionar Banners','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(34,'ROLE_BANNERS_LIST','Listar Banners','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(35,'ROLE_BANNERS_UPDATE','Editar Banners','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2),(36,'ROLE_BANNERS_DELETE','Deletar Banners','2022-06-21 00:22:49.607','2022-06-21 00:22:49.608',0,2);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `company` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company` (`company`),
  CONSTRAINT `social_media_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media`
--

LOCK TABLES `social_media` WRITE;
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_companies`
--

DROP TABLE IF EXISTS `user_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_companies` (
  `user` int(10) unsigned NOT NULL,
  `company` int(10) unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`user`,`company`),
  UNIQUE KEY `user_companies_user_company_unique` (`user`,`company`),
  KEY `company` (`company`),
  CONSTRAINT `user_companies_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_companies_fk_users` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_companies`
--

LOCK TABLES `user_companies` WRITE;
/*!40000 ALTER TABLE `user_companies` DISABLE KEYS */;
INSERT INTO `user_companies` VALUES (2,1,'2022-06-21 00:22:49.503','2022-06-21 00:22:49.504'),(3,2,'2022-06-21 00:22:49.617','2022-06-21 00:22:49.618'),(4,1,'2022-06-21 00:22:49.621','2022-06-21 00:22:49.621'),(4,2,'2022-06-21 00:22:49.624','2022-06-21 00:22:49.625');
/*!40000 ALTER TABLE `user_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_permissions` (
  `user` int(10) unsigned NOT NULL,
  `permission` int(10) unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `company` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user`,`permission`,`company`),
  KEY `permission` (`permission`),
  KEY `company` (`company`),
  CONSTRAINT `user_permissions_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_permissions_fk_permissions` FOREIGN KEY (`permission`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_permissions_fk_users` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
INSERT INTO `user_permissions` VALUES (2,1,'2022-06-21 00:22:49.511','2022-06-21 00:22:49.512',1),(2,2,'2022-06-21 00:22:49.520','2022-06-21 00:22:49.520',1),(2,3,'2022-06-21 00:22:49.523','2022-06-21 00:22:49.524',1),(2,4,'2022-06-21 00:22:49.528','2022-06-21 00:22:49.529',1),(2,5,'2022-06-21 00:22:49.532','2022-06-21 00:22:49.533',1),(2,6,'2022-06-21 00:22:49.535','2022-06-21 00:22:49.536',1),(2,7,'2022-06-21 00:22:49.547','2022-06-21 00:22:49.548',1),(2,8,'2022-06-21 00:22:49.563','2022-06-21 00:22:49.563',1),(2,9,'2022-06-21 00:22:49.566','2022-06-21 00:22:49.567',1),(2,10,'2022-06-21 00:22:49.570','2022-06-21 00:22:49.570',1),(2,11,'2022-06-21 00:22:49.573','2022-06-21 00:22:49.573',1),(2,12,'2022-06-21 00:22:49.577','2022-06-21 00:22:49.577',1),(2,13,'2022-06-21 00:22:49.580','2022-06-21 00:22:49.581',1),(2,14,'2022-06-21 00:22:49.583','2022-06-21 00:22:49.583',1),(2,15,'2022-06-21 00:22:49.586','2022-06-21 00:22:49.587',1),(2,16,'2022-06-21 00:22:49.590','2022-06-21 00:22:49.590',1),(2,17,'2022-06-21 00:22:49.593','2022-06-21 00:22:49.593',1),(2,18,'2022-06-21 00:22:49.596','2022-06-21 00:22:49.597',1),(3,18,'2022-06-21 00:22:49.628','2022-06-21 00:22:49.628',2),(3,19,'2022-06-21 00:22:49.630','2022-06-21 00:22:49.631',2),(3,20,'2022-06-21 00:22:49.633','2022-06-21 00:22:49.634',2),(3,21,'2022-06-21 00:22:49.636','2022-06-21 00:22:49.637',2),(3,22,'2022-06-21 00:22:49.639','2022-06-21 00:22:49.639',2),(3,23,'2022-06-21 00:22:49.642','2022-06-21 00:22:49.643',2),(3,24,'2022-06-21 00:22:49.645','2022-06-21 00:22:49.646',2),(3,25,'2022-06-21 00:22:49.648','2022-06-21 00:22:49.649',2),(3,26,'2022-06-21 00:22:49.651','2022-06-21 00:22:49.651',2),(3,27,'2022-06-21 00:22:49.653','2022-06-21 00:22:49.654',2),(3,28,'2022-06-21 00:22:49.656','2022-06-21 00:22:49.657',2),(3,29,'2022-06-21 00:22:49.659','2022-06-21 00:22:49.659',2),(3,30,'2022-06-21 00:22:49.661','2022-06-21 00:22:49.662',2),(3,31,'2022-06-21 00:22:49.664','2022-06-21 00:22:49.665',2),(3,32,'2022-06-21 00:22:49.667','2022-06-21 00:22:49.668',2),(3,33,'2022-06-21 00:22:49.670','2022-06-21 00:22:49.671',2),(3,34,'2022-06-21 00:22:49.674','2022-06-21 00:22:49.674',2),(3,35,'2022-06-21 00:22:49.678','2022-06-21 00:22:49.678',2),(3,36,'2022-06-21 00:22:49.684','2022-06-21 00:22:49.684',2),(4,1,'2022-06-21 00:22:49.689','2022-06-21 00:22:49.689',1),(4,2,'2022-06-21 00:22:49.691','2022-06-21 00:22:49.692',1),(4,3,'2022-06-21 00:22:49.694','2022-06-21 00:22:49.694',1),(4,4,'2022-06-21 00:22:49.697','2022-06-21 00:22:49.698',1),(4,5,'2022-06-21 00:22:49.700','2022-06-21 00:22:49.701',1),(4,6,'2022-06-21 00:22:49.703','2022-06-21 00:22:49.703',1),(4,7,'2022-06-21 00:22:49.709','2022-06-21 00:22:49.710',1),(4,8,'2022-06-21 00:22:49.714','2022-06-21 00:22:49.715',1),(4,9,'2022-06-21 00:22:49.717','2022-06-21 00:22:49.718',1),(4,10,'2022-06-21 00:22:49.720','2022-06-21 00:22:49.721',1),(4,11,'2022-06-21 00:22:49.723','2022-06-21 00:22:49.723',1),(4,12,'2022-06-21 00:22:49.726','2022-06-21 00:22:49.726',1),(4,13,'2022-06-21 00:22:49.729','2022-06-21 00:22:49.729',1),(4,14,'2022-06-21 00:22:49.732','2022-06-21 00:22:49.733',1),(4,15,'2022-06-21 00:22:49.735','2022-06-21 00:22:49.735',1),(4,16,'2022-06-21 00:22:49.738','2022-06-21 00:22:49.739',1),(4,17,'2022-06-21 00:22:49.742','2022-06-21 00:22:49.742',1),(4,18,'2022-06-21 00:22:49.745','2022-06-21 00:22:49.746',1),(4,19,'2022-06-21 00:22:49.748','2022-06-21 00:22:49.749',2),(4,20,'2022-06-21 00:22:49.751','2022-06-21 00:22:49.752',2),(4,21,'2022-06-21 00:22:49.755','2022-06-21 00:22:49.755',2),(4,22,'2022-06-21 00:22:49.758','2022-06-21 00:22:49.759',2),(4,23,'2022-06-21 00:22:49.769','2022-06-21 00:22:49.770',2),(4,24,'2022-06-21 00:22:49.773','2022-06-21 00:22:49.773',2),(4,25,'2022-06-21 00:22:49.776','2022-06-21 00:22:49.776',2),(4,26,'2022-06-21 00:22:49.779','2022-06-21 00:22:49.779',2),(4,27,'2022-06-21 00:22:49.782','2022-06-21 00:22:49.782',2),(4,28,'2022-06-21 00:22:49.785','2022-06-21 00:22:49.786',2),(4,29,'2022-06-21 00:22:49.789','2022-06-21 00:22:49.789',2),(4,30,'2022-06-21 00:22:49.793','2022-06-21 00:22:49.793',2),(4,31,'2022-06-21 00:22:49.796','2022-06-21 00:22:49.796',2),(4,32,'2022-06-21 00:22:49.799','2022-06-21 00:22:49.799',2),(4,33,'2022-06-21 00:22:49.802','2022-06-21 00:22:49.802',2),(4,34,'2022-06-21 00:22:49.805','2022-06-21 00:22:49.806',2),(4,35,'2022-06-21 00:22:49.808','2022-06-21 00:22:49.809',2),(4,36,'2022-06-21 00:22:49.813','2022-06-21 00:22:49.813',2);
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `expires` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_key` (`email`),
  UNIQUE KEY `users_token_key` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','a@a.com','$2b$10$ZFN4TBrTTACi2AKPo0fX9O.twWRuhZQSr73rjplbB/15it2ANNJPa','5c428f9527d01a9bb9d7f5da547f886266af3b3322911bfb37ed4d36bf7fab988fe571ae195be8daf2ede13d40ed6ac8fdc2c13c3e18b51ce18f2fbc98b6fb0f',0,'2022-08-01 16:23:00','2022-07-01 16:23:00','2022-06-21 00:22:49.443','2022-07-01 16:23:00.163',1),(2,'Usuário 2','b@b.com','$2b$10$oC4zpffOIRLWZpQqI4UomugHtYGR1bwBqJGBwlgA.L4aKfHHB4BM6','03c230d6961177061a8f6caef9634670e4889c4e3a6d813c12fb273ab28000aa191a0418145b687636d23cc3a09bdbe9d2c63ff43fc266680b01500b3f31e4be',0,'2022-06-28 12:02:58','2022-06-27 12:02:58','2022-06-21 00:22:49.465','2022-06-27 12:02:57.891',0),(3,'Usuário 3','c@c.com','$2b$10$oC4zpffOIRLWZpQqI4UomugHtYGR1bwBqJGBwlgA.L4aKfHHB4BM6',NULL,0,NULL,NULL,'2022-06-21 00:22:49.469','2022-06-21 00:22:49.470',0),(4,'Usuário 2','d@d.com','$2b$10$oC4zpffOIRLWZpQqI4UomugHtYGR1bwBqJGBwlgA.L4aKfHHB4BM6',NULL,0,NULL,NULL,'2022-06-21 00:22:49.474','2022-06-21 00:22:49.474',0);
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

-- Dump completed on 2022-07-05 14:20:13
