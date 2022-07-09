-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: novo_gestor_web
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('0c66f6c9-ecbe-4dfc-884d-d0382fc47252','0bfd7f41d11f9b85eb2a68d667270b80d0113fa55b4872326c2a0dd720083185','2022-07-06 00:10:15.290','20220703222524_add_unique_to_blog_post_images',NULL,NULL,'2022-07-06 00:10:15.207',1),('1f928f1f-d046-444d-8a24-2af877622873','4480af863b43d5b04644ad5047d0f5f06d6ef6c1a2e9142253601229741ad59f','2022-07-06 23:32:25.854','20220706010429_add_end_date_start_date_to_posts',NULL,NULL,'2022-07-06 23:32:25.740',1),('2f11a445-7e98-44d2-a7f5-192fa5809486','af3e26958170cff5321e2161b810e47053815a95cd6ae4608685c95ddc60394c','2022-07-06 00:10:12.226','20220628173805_add_newsletter_and_emails',NULL,NULL,'2022-07-06 00:10:11.689',1),('300b9e40-29e6-4a70-ad1b-089a6aa2c99b','90ccfc43656e7d6c02ec9fb4ac97efac76f895c0ee8442e51a522f4d9a72b64e','2022-07-06 00:10:14.421','20220630170818_add_tags_to_blog_posts',NULL,NULL,'2022-07-06 00:10:14.333',1),('37849c47-a1d9-4a27-aed5-dc0d98279cef','3c1c49c1c2414730f4d2fb3cecaf45756b361747b39aef7102d33e8b6c94322b','2022-06-21 00:22:44.907','20220613183101_timestamps_unique_token_and_stores_on_permissions',NULL,NULL,'2022-06-21 00:22:44.614',1),('51817330-19db-44da-8813-a2ac29ead67a','2fd68ce9f69f1bccfdaede554db5b0b9551c125cf5a9c9ed1fe8cff15283daa7','2022-07-07 18:48:22.412','20220707135048_add_image_to_menus',NULL,NULL,'2022-07-07 18:48:22.117',1),('5203c2d6-b94d-44ff-9c36-016f1acfcb0f','6aee9cc374f3ffae7ce614ba6157e818076e3c36cacf66996ec1e4590ddcc3a1','2022-07-06 00:10:14.324','20220630145707_add_text_to_blog_posts',NULL,NULL,'2022-07-06 00:10:14.227',1),('5313261d-3ac2-4221-a6dc-0c561012da1d','85be650864d77185d02ae67c22f4591a287b24e84ff0307c74f33ef9100ff50a','2022-07-06 00:10:12.573','20220628193933_remove_updated_from_emails',NULL,NULL,'2022-07-06 00:10:12.477',1),('55415a9e-c94e-490d-800f-4cd3d98b7321','4078259cbcbdfe48851b02a3faddda9ecac174a922e36e8ccae1f3875f775209','2022-07-06 00:10:11.276','20220622114304_add_default_to_complement_and_working_hours',NULL,NULL,'2022-07-06 00:10:10.954',1),('5601378b-04d5-4588-9bd3-2b87d4423357','58c678452faa590e3254880dd64d9ac87bcacb701a94cc206de25ba06f380eb8','2022-07-06 00:10:13.532','20220629193442_add_blog',NULL,NULL,'2022-07-06 00:10:12.581',1),('5db3a83b-9889-4672-947d-96c0ae739458','0f624e6204f2bcf6ea1f9e22996fe08c9fc31c12d9b2a9bada3b3b9e97aa058b','2022-07-06 00:10:14.219','20220629205619_add_category_to_posts',NULL,NULL,'2022-07-06 00:10:13.897',1),('5e8f664f-6216-47e8-9060-f43bde31d3e5','2c4c91248042cb668962e3de17661f3bb4c584e02fb63dc39f6a474a850f2746','2022-07-06 00:10:13.890','20220629193557_change_emails_to_newsletter_emails',NULL,NULL,'2022-07-06 00:10:13.540',1),('626f6943-5da9-4db6-afe2-e172bbc76ae4','ec88f74027a29a3e8daaf0a0b96dbd20fab71ce87a315289db95a3fc79da40ae','2022-06-21 00:22:45.229','20220614130649_change_store_to_company',NULL,NULL,'2022-06-21 00:22:44.958',1),('67da6eb2-d861-461f-aaea-678505fa200f','bfaf4748d248c8c47a745db35196d2381b7eae56001104c2d0ab737c7a9d2ac5','2022-07-06 00:10:15.198','20220703221951_add_show_first_to_blog_images',NULL,NULL,'2022-07-06 00:10:15.114',1),('7a74bfe4-26f1-4a21-a68b-f8d24fb03433','0194e2bba1a53858cfe73f85c7a56e80ea4526f1d94ecc69fa52b3cbb207fd56','2022-06-21 00:22:44.931','20220613184103_add_is_admin_to_user',NULL,NULL,'2022-06-21 00:22:44.910',1),('90de2abf-53b1-40a4-a1d0-faface3dcf95','981db3d997d16731b4790d245543c7a5e15703ac9e3d99a726b15257f83c27cb','2022-07-08 17:16:17.232','20220707184943_add_company_praises',NULL,NULL,'2022-07-08 17:16:17.138',1),('936acb2b-7943-4ac9-ae8a-cb5a9756c519','b6506b844b24a4f614bd84ae646510f80ef74509a19ff9c56733ac20a5f70a3b','2022-06-21 00:22:44.612','20220609140012_init',NULL,NULL,'2022-06-21 00:22:44.295',1),('93aed9fd-e75c-4ae0-a11d-7891c344ffce','cffa1ab4339f802ca48e027b1ed377e6202914b0ca53ce4d4f0537d4c7a01d9f','2022-07-06 00:10:15.104','20220702172538_add_disabled_do_blog_post',NULL,NULL,'2022-07-06 00:10:14.990',1),('945c0484-6592-4a6b-bcfb-e6c20f3b189c','0a0ecdbf5b75b247be29a9296b2859afd964846bcb208d6d4af7b352e92905f5','2022-07-06 00:10:14.904','20220702170932_add_company_to_blog_post_images',NULL,NULL,'2022-07-06 00:10:14.671',1),('99e05932-52b2-4868-a0e7-60d265501198','f938af01d2c8bddec138b5082dfa5a4dc557b3ddc66a2e52fcc76fb2c1d57cff','2022-07-06 00:10:12.360','20220628174533_add_token_to_email_to_unsubscribe',NULL,NULL,'2022-07-06 00:10:12.234',1),('9b52132d-d7a1-4fa1-8850-2b67018eb656','efee92f2e5f23369255500196a899abb14cd4c428705a921fa1807e5374771e2','2022-07-08 17:16:17.310','20220708122757_change_permissions_to_have_nullable_comapny',NULL,NULL,'2022-07-08 17:16:17.236',1),('a2dece24-733a-45e1-a0ae-636aaa0b11a3','4592425836f808c493467ef72299d1cda19afb36f335d5b5d65b63d778b29bac','2022-06-21 00:22:44.957','20220613185316_add_editable_to_permissions',NULL,NULL,'2022-06-21 00:22:44.933',1),('b0f777f2-2211-438f-8ede-2468d15b23d0','158c331910e9a06b62b45280944fae6b1a4a02cea3e98ddd9b255baef82ae86a','2022-07-06 00:10:11.682','20220628170623_add_default_to_booleans',NULL,NULL,'2022-07-06 00:10:11.282',1),('b4b23c22-e375-4fc5-bcb1-d40619cf1322','c67b6950275b3f8c400b659fee8ac3793897af95beb1b7d7398c8c14b1a0c13a','2022-07-06 00:10:12.465','20220628183911_add_ip_to_emails',NULL,NULL,'2022-07-06 00:10:12.368',1),('bba62ead-6bd2-479d-961c-216675e9dc80','e977d46efab56f7760d7e84ec6ed2cf90ff77e057fd0b76deb8d56c3fc84e287','2022-07-06 23:32:25.733','20220706005351_remove_required_from_posts_text',NULL,NULL,'2022-07-06 23:32:25.592',1),('bcae366f-410c-4088-be77-5222e758f6f7','b1965d1fccbfeed85ad2f641b9a74fb90ca436bef1b68414252a26e418127812','2022-06-21 00:22:45.260','20220614134757_change_error_to_image_error',NULL,NULL,'2022-06-21 00:22:45.230',1),('bcec937c-7c72-4c45-8f9f-053869fdfb0d','ad4288f3384597b475f94aa1ea1e1cd8452c6d590a8f9c8027369109ca133088','2022-07-06 00:10:14.664','20220630201407_add_unique_to_author_and_category',NULL,NULL,'2022-07-06 00:10:14.427',1),('dfba9635-116e-46e4-9ba3-3ab210c681fd','7dd8ead78644044b9afd69f527d2a465046e334e666884fd759ac70e59015032','2022-07-06 00:10:14.982','20220702171526_add_image_error_to_blog_post_images',NULL,NULL,'2022-07-06 00:10:14.911',1),('e1e9fd9f-5ea3-4d99-9420-92a77bd6c3c2','f8071e797753e3c1aa92d0e867a2645cd0897e8d77fec0cbf2c578c7c6aae3ac','2022-07-06 23:32:26.009','20220706134735_add_quem_somos',NULL,NULL,'2022-07-06 23:32:25.862',1),('f7534b10-d89e-4baf-86d9-574bc7ffc502','d8b1d8fe2df05992f70e23ff252d27e007e3b2ddd954157468b4dd8ef93f1936','2022-07-06 00:10:15.765','20220705164916_create_menus',NULL,NULL,'2022-07-06 00:10:15.298',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `company` int unsigned NOT NULL,
  `imageError` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `company` (`company`),
  CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (2,'2022-07-07 00:00:00',NULL,'images/teste-1/banners/62ba55c7-e6d9-4ce7-a91d-c8afdef7e8c6.jpeg','dasd','dsadsa',0,'2022-07-07 14:29:46.193','2022-07-07 14:29:46.194',1,1);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_authors`
--

DROP TABLE IF EXISTS `blog_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_authors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` int unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_authors_name_key` (`name`),
  KEY `blog_authors_fk_companies` (`company`),
  CONSTRAINT `blog_authors_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_authors`
--

LOCK TABLES `blog_authors` WRITE;
/*!40000 ALTER TABLE `blog_authors` DISABLE KEYS */;
INSERT INTO `blog_authors` VALUES (1,'Vivian Voigt',1,'2022-07-06 23:53:35.527','2022-07-06 23:53:35.528');
/*!40000 ALTER TABLE `blog_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` int unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_categories_name_key` (`name`),
  KEY `blog_categories_fk_companies` (`company`),
  CONSTRAINT `blog_categories_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,'Felicidade',1,'2022-07-06 23:54:21.274','2022-07-07 14:36:56.790'),(2,'Nutrição',1,'2022-07-07 14:35:40.267','2022-07-07 14:35:40.268'),(3,'Fitness',1,'2022-07-07 14:35:52.644','2022-07-07 14:35:52.644');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_images`
--

DROP TABLE IF EXISTS `blog_post_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post_images` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` int unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `company` int unsigned NOT NULL,
  `imageError` tinyint(1) NOT NULL DEFAULT '0',
  `showFirst` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_images_image_key` (`image`),
  KEY `blog_post_images_fk_blog_posts` (`post`),
  KEY `blog_post_images_fk_companies` (`company`),
  CONSTRAINT `blog_post_images_fk_blog_posts` FOREIGN KEY (`post`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blog_post_images_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_images`
--

LOCK TABLES `blog_post_images` WRITE;
/*!40000 ALTER TABLE `blog_post_images` DISABLE KEYS */;
INSERT INTO `blog_post_images` VALUES (1,'images/teste-1/blog_post_images/3c6aabf4-b605-440e-8b9e-8952e81dc507.jpeg',1,'2022-07-07 14:31:42.726','2022-07-07 14:38:35.072',1,1,0),(2,'images/teste-1/blog_post_images/b5bc35a1-46fc-4e53-a3c3-59cfeba0db80.jpeg',1,'2022-07-07 14:34:03.926','2022-07-07 14:38:35.078',1,1,0),(4,'images/teste-1/blog_post_images/8e6a4da2-0876-493d-9779-d07dc48f72da.jpeg',2,'2022-07-07 14:38:08.450','2022-07-08 16:05:42.472',1,1,0),(5,'images/teste-1/blog_post_images/ba0d9b4f-971f-40b3-a4be-31b471c34d58.jpeg',3,'2022-07-07 14:39:40.776','2022-07-07 14:39:40.777',1,1,0),(6,'images/teste-1/blog_post_images/8e3ee18a-a7e8-4b27-83f9-5eff479e26f5.jpeg',4,'2022-07-08 15:18:37.936','2022-07-08 15:58:12.469',1,1,0),(7,'images/teste-1/blog_post_images/8152c5ea-c14a-42f3-a38d-f16c90ef4067.jpeg',5,'2022-07-08 16:01:17.087','2022-07-08 16:01:17.087',1,1,0),(8,'images/teste-1/blog_post_images/d0e031b8-1fff-49b2-89e2-0156bbbb700b.jpeg',6,'2022-07-08 16:01:56.803','2022-07-08 16:01:56.804',1,1,0),(9,'images/teste-1/blog_post_images/34b959cc-8c9e-4c4e-b50a-a7a3e9243f82.jpeg',7,'2022-07-08 16:21:45.405','2022-07-08 16:22:13.886',1,1,0);
/*!40000 ALTER TABLE `blog_post_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_posts`
--

DROP TABLE IF EXISTS `blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int unsigned NOT NULL,
  `company` int unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `category` int unsigned NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_fk_companies` (`company`),
  KEY `post_fk_blog_authors` (`author`),
  KEY `post_fk_blog_categories` (`category`),
  CONSTRAINT `post_fk_blog_authors` FOREIGN KEY (`author`) REFERENCES `blog_authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `post_fk_blog_categories` FOREIGN KEY (`category`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `post_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_posts`
--

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
INSERT INTO `blog_posts` VALUES (1,'Blog 1: Ipsum Loren','<p><span style=\"color: rgb(0, 0, 0)\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>',1,1,'2022-07-07 14:31:40.878','2022-07-07 14:38:35.091',3,NULL,'blog teste vivian dev',0,NULL,'2022-07-07 00:00:00'),(2,'Blog 2: Lorem Ipsum','<p><span style=\"color: rgb(0, 0, 0)\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>',1,1,'2022-07-07 14:38:05.299','2022-07-08 16:05:42.475',2,NULL,'dolor consectetur',0,NULL,'2022-07-07 00:00:00'),(3,'Blog 3: Contrary to popular belief','<p><span style=\"color: rgb(0, 0, 0)\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p>',1,1,'2022-07-07 14:39:39.116','2022-07-07 14:39:39.117',3,NULL,'blog ipsum',0,NULL,'2022-07-07 00:00:00'),(4,'Especial: Alimentação saudavel é necessária','<p><span style=\"color: rgb(0, 0, 0)\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>',1,1,'2022-07-08 15:18:37.246','2022-07-08 15:58:12.470',3,NULL,'blog ipsum',0,NULL,'2022-07-08 00:00:00'),(5,'Saude: sim ou não?','<p><span style=\"color: rgb(0, 0, 0)\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span></p>',1,1,'2022-07-08 16:01:16.609','2022-07-08 16:01:16.610',2,NULL,'blog teste vivian dev',0,NULL,'2022-07-01 00:00:00'),(6,'Blog 4: Correr ou nadar','<p><span style=\"color: rgb(0, 0, 0)\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span></p>',1,1,'2022-07-08 16:01:56.441','2022-07-08 16:01:56.441',3,NULL,'blog ipsum',0,NULL,'2022-07-06 00:00:00'),(7,'Especial: Como ter uma alimentação saudavel e regrada','<p><span style=\"color: rgb(0, 0, 0)\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span></p>',1,1,'2022-07-08 16:21:44.815','2022-07-08 16:22:13.887',3,NULL,'blog ipsum',0,NULL,'2022-06-08 00:00:00');
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int NOT NULL,
  `neighborhood` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkMaps` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `watermark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/no-image.png',
  `watermarkError` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `captcha_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ga_tracking_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_hours` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `removed` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `imageError` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_website_link_key` (`website_link`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'PR','Campo Mourão','Teste 1','feeling-imoveis/company/7666eca1-6bc8-4ea0-b091-99234a10ff84.jpeg','Rua São José','87303-190',1464,'Centro','#b52a23','#763A3A','#ffffff','<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14575.16114142688!2d-52.3716397!3d-24.0384594!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc78c7a6970711f2!2sFeeling%20Im%C3%B3veis!5e0!3m2!1spt-BR!2sbr!4v1647628154887!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>','(44)99987-5954',0,'teste@teste.com','https://localhost:3001',NULL,'images/no-image.png',1,'6LdOhIofAAAAAAGjVu6yBZsO8E4zozFhD0z82_F_','6LdOhIofAAAAALwiUy4MiE-BRGrdVQ8mx2QKk8Ev','G-B2M1F7D05B','',0,'2022-06-21 00:22:49.478','2022-07-07 14:27:39.394',0),(2,'PR','Campo Mourão','Teste 2','feeling-imoveis/company/7666eca1-6bc8-4ea0-b091-99234a10ff84.jpeg','RUA SANTOS DUMONT','87303-322',1540,'CENTRO','#3E4095','#3E4095','#ffffff','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3643.8776421116095!2d-52.37065798501326!3d-24.03537958444965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ed7531b98b71f9%3A0x13504a8acebcf169!2sImobiliaria%20Sul%20Invest!5e0!3m2!1spt-BR!2sbr!4v1650820414965!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','(44)99931-1257',0,'teste2@teste2.com','https://localhost:3002','SALA 3','images/no-image.png',1,'6LdOhIofAAAAAAGjVu6yBZsO8E4zozFhD0z82_F_','6LdOhIofAAAAALwiUy4MiE-BRGrdVQ8mx2QKk8Ev','G-B2M1F7D05B','',0,'2022-06-21 00:22:49.600',NULL,0);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_phones`
--

DROP TABLE IF EXISTS `company_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_phones` (
  `phone` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` int unsigned NOT NULL,
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
-- Table structure for table `company_praises`
--

DROP TABLE IF EXISTS `company_praises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_praises` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` int unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_praises_fk_companies` (`company`),
  CONSTRAINT `company_praises_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_praises`
--

LOCK TABLES `company_praises` WRITE;
/*!40000 ALTER TABLE `company_praises` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_praises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isLink` tinyint(1) NOT NULL DEFAULT '0',
  `company` int unsigned NOT NULL,
  `menu_id` int unsigned DEFAULT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageError` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `menu_fk_companies` (`company`),
  KEY `menu_fk_menu_idx` (`menu_id`),
  CONSTRAINT `menu_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `menu_fk_menu` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'HOME','','/home',1,1,NULL,'2022-07-07 00:08:21.803','2022-07-07 00:09:36.414',NULL,0),(2,'ATENDIMENTOS','','',0,1,NULL,'2022-07-07 00:08:42.396','2022-07-07 00:08:42.397',NULL,0),(3,'CONSULTA CONVENCIONAL','','/atendimentos/convencional',1,1,2,'2022-07-07 00:10:39.208','2022-07-07 00:10:39.209',NULL,0),(4,'PROGRAMA ALIMENTAR PERSONALIZADO','','/atendimentos/personalizado',1,1,2,'2022-07-07 00:11:34.226','2022-07-07 00:11:34.227',NULL,0),(5,'REEDUCAÇÃO ALIMENTAR GRADATIVA','','/atendimentos/reeducacao',1,1,2,'2022-07-07 00:12:17.057','2022-07-07 00:12:17.058',NULL,0),(6,'SOBRE','','/sobre',1,1,NULL,'2022-07-07 00:13:37.929','2022-07-07 00:13:37.930',NULL,0),(7,'BLOG','','/blog',1,1,NULL,'2022-07-07 00:13:54.099','2022-07-07 00:13:54.100',NULL,0),(8,'CONTATO','','/contato',1,1,NULL,'2022-07-07 00:14:11.040','2022-07-07 00:14:11.040',NULL,0);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageError` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `company` int unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `newsletter_fk_companies` (`company`),
  CONSTRAINT `newsletter_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_emails`
--

DROP TABLE IF EXISTS `newsletter_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_emails` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` int unsigned NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletter_emails_token_key` (`token`),
  KEY `newsletter_emails_fk_companies` (`company`),
  CONSTRAINT `newsletter_emails_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_emails`
--

LOCK TABLES `newsletter_emails` WRITE;
/*!40000 ALTER TABLE `newsletter_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset` (
  `user` int unsigned NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `company` int unsigned DEFAULT NULL,
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
-- Table structure for table `quem_somos`
--

DROP TABLE IF EXISTS `quem_somos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quem_somos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` int unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quem_somos_fk_companies` (`company`),
  CONSTRAINT `quem_somos_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quem_somos`
--

LOCK TABLES `quem_somos` WRITE;
/*!40000 ALTER TABLE `quem_somos` DISABLE KEYS */;
/*!40000 ALTER TABLE `quem_somos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `company` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company` (`company`),
  CONSTRAINT `social_media_fk_companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media`
--

LOCK TABLES `social_media` WRITE;
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
INSERT INTO `social_media` VALUES (1,'Instagram','InstagramIcon','https://www.instagram.com/vivivoigt/',0,'2022-07-06 23:59:00.327','2022-07-07 00:01:59.074',1),(2,'email','LinkedInIcon','contato@vivianvoigt.com.br',0,'2022-07-07 00:00:33.679','2022-07-07 00:00:33.680',1),(3,'Telefone','FacebookIcon','(47) 9.9937-4736',0,'2022-07-07 00:01:29.938','2022-07-07 00:01:29.939',1);
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_companies`
--

DROP TABLE IF EXISTS `user_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_companies` (
  `user` int unsigned NOT NULL,
  `company` int unsigned NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permissions` (
  `user` int unsigned NOT NULL,
  `permission` int unsigned NOT NULL,
  `createdAt` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) DEFAULT NULL,
  `company` int unsigned NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'Admin','a@a.com','$2b$10$ZFN4TBrTTACi2AKPo0fX9O.twWRuhZQSr73rjplbB/15it2ANNJPa','1ba1446fc6b8bb9e2a57076196167c53f0b2547e47e2d16a6313940033eea7dc425aa3643ff5113a3b9588118d7ee76af6ec5314af24b532a116eee5b6c8dad9',0,'2022-08-08 12:59:23','2022-07-08 12:59:23','2022-06-21 00:22:49.443','2022-07-08 15:59:23.330',1),(2,'Usuário 2','b@b.com','$2b$10$oC4zpffOIRLWZpQqI4UomugHtYGR1bwBqJGBwlgA.L4aKfHHB4BM6','03c230d6961177061a8f6caef9634670e4889c4e3a6d813c12fb273ab28000aa191a0418145b687636d23cc3a09bdbe9d2c63ff43fc266680b01500b3f31e4be',0,'2022-06-28 12:02:58','2022-06-27 12:02:58','2022-06-21 00:22:49.465','2022-06-27 12:02:57.891',0),(3,'Usuário 3','c@c.com','$2b$10$oC4zpffOIRLWZpQqI4UomugHtYGR1bwBqJGBwlgA.L4aKfHHB4BM6',NULL,0,NULL,NULL,'2022-06-21 00:22:49.469','2022-06-21 00:22:49.470',0),(4,'Usuário 2','d@d.com','$2b$10$oC4zpffOIRLWZpQqI4UomugHtYGR1bwBqJGBwlgA.L4aKfHHB4BM6',NULL,0,NULL,NULL,'2022-06-21 00:22:49.474','2022-06-21 00:22:49.474',0);
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

-- Dump completed on 2022-07-08 19:15:04
