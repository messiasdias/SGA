-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: sga
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB-0+deb9u1

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
-- Table structure for table `atend_codif`
--

DROP TABLE IF EXISTS `atend_codif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atend_codif` (
  `atendimento_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `servico_id` int(11) NOT NULL,
  `valor_peso` smallint(6) NOT NULL,
  PRIMARY KEY (`atendimento_id`,`servico_id`),
  KEY `atend_codif_ibfk_2` (`servico_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atend_codif`
--

LOCK TABLES `atend_codif` WRITE;
/*!40000 ALTER TABLE `atend_codif` DISABLE KEYS */;
/*!40000 ALTER TABLE `atend_codif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atend_meta`
--

DROP TABLE IF EXISTS `atend_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atend_meta` (
  `atendimento_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`atendimento_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atend_meta`
--

LOCK TABLES `atend_meta` WRITE;
/*!40000 ALTER TABLE `atend_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `atend_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atendimentos`
--

DROP TABLE IF EXISTS `atendimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atendimentos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `unidade_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `usuario_tri_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `prioridade_id` int(11) NOT NULL,
  `atendimento_id` bigint(20) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `sigla_senha` varchar(1) NOT NULL,
  `num_senha` int(11) NOT NULL,
  `num_senha_serv` int(11) NOT NULL,
  `nm_cli` varchar(100) DEFAULT NULL,
  `num_local` smallint(6) NOT NULL,
  `dt_cheg` datetime NOT NULL,
  `dt_cha` datetime DEFAULT NULL,
  `dt_ini` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `ident_cli` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `atendimentos_ibfk_1` (`prioridade_id`),
  KEY `atendimentos_ibfk_2` (`unidade_id`,`servico_id`),
  KEY `atendimentos_ibfk_4` (`usuario_id`),
  KEY `atendimentos_ibfk_5` (`usuario_tri_id`),
  KEY `atendimentos_ibfk_6` (`atendimento_id`),
  KEY `fki_atendimentos_ibfk_3` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendimentos`
--

LOCK TABLES `atendimentos` WRITE;
/*!40000 ALTER TABLE `atendimentos` DISABLE KEYS */;
INSERT INTO `atendimentos` VALUES (1,1,1,1,1,1,NULL,5,'A',1,1,'',1,'2019-05-23 15:38:38','2019-05-23 15:39:16',NULL,'2019-05-23 15:41:52',''),(2,1,1,1,1,1,NULL,5,'A',2,2,'',1,'2019-07-17 11:09:05','2019-07-17 11:09:36',NULL,'2019-07-17 11:32:28',''),(3,1,1,1,1,1,NULL,5,'A',3,3,'Messias',1,'2019-07-17 11:32:44','2019-07-17 11:33:04',NULL,'2019-07-17 12:18:46','12345678910'),(4,1,1,1,1,1,NULL,5,'A',4,4,'Minha Rola',1,'2019-07-17 12:18:34','2019-07-17 12:18:47',NULL,'2019-07-17 12:18:57','123456789'),(5,1,1,1,1,1,NULL,5,'A',5,5,'Francisglaydson josé de lima Golçalves',1,'2019-07-17 12:19:37','2019-07-17 12:19:55',NULL,'2019-07-17 12:23:20','123456789'),(6,1,1,1,1,2,NULL,5,'A',6,6,'ricardo',1,'2019-07-17 12:22:57','2019-07-17 12:23:23',NULL,'2019-07-17 13:00:56',''),(7,1,1,1,1,1,NULL,5,'A',7,7,'',1,'2019-07-17 12:25:05','2019-07-17 13:01:14',NULL,'2019-07-17 13:01:16',''),(8,1,1,1,1,1,NULL,5,'A',8,8,'',1,'2019-07-17 12:25:09','2019-07-17 13:01:17',NULL,'2019-07-17 13:01:19',''),(9,1,1,1,1,2,NULL,5,'A',9,9,'',1,'2019-07-17 12:25:16','2019-07-17 13:00:57',NULL,'2019-07-17 13:01:02',''),(10,1,1,1,1,4,NULL,5,'A',10,10,'',1,'2019-07-17 12:25:26','2019-07-17 13:01:04',NULL,'2019-07-17 13:01:10',''),(11,1,1,1,1,1,NULL,5,'A',11,11,'',1,'2019-07-17 12:25:31','2019-07-17 13:01:20',NULL,'2019-07-17 13:01:22',''),(12,1,1,1,1,1,NULL,5,'A',12,12,'',1,'2019-07-17 12:25:37','2019-07-17 13:01:23',NULL,'2019-07-17 13:01:25',''),(13,1,1,1,1,1,NULL,5,'A',13,13,'Ricardo',1,'2019-07-17 13:01:56','2019-07-17 13:02:42',NULL,'2019-07-17 13:02:50','1234567'),(14,1,1,1,1,1,NULL,5,'A',14,14,'Jonatan',1,'2019-07-17 13:02:11','2019-07-17 13:03:23',NULL,'2019-07-17 13:03:35','10924827812'),(15,1,1,1,1,2,NULL,5,'A',15,15,'Cleyton',1,'2019-07-17 13:02:29','2019-07-17 13:02:52',NULL,'2019-07-17 13:03:22','38297645'),(16,1,1,1,1,1,NULL,5,'A',16,16,'Estefano emanoel',1,'2019-07-17 13:04:11','2019-07-17 13:04:55',NULL,'2019-07-17 13:05:06',''),(17,1,1,1,1,2,NULL,5,'A',17,17,'Maria do Socorro Pereira',1,'2019-07-17 13:06:10','2019-07-17 13:06:20',NULL,'2019-07-17 13:40:09','237645236'),(18,1,1,1,1,1,NULL,5,'A',18,18,'Maria do Socorro Pereira de Oliveira',1,'2019-07-19 11:29:10','2019-07-19 11:29:22',NULL,'2019-07-19 12:12:28',''),(19,1,1,1,1,5,NULL,5,'A',19,19,'Maria do Socorro Pereira de Oliveira',1,'2019-07-19 12:12:51','2019-07-19 12:13:02',NULL,'2019-07-19 12:24:10',''),(20,1,1,1,1,1,NULL,2,'A',20,20,'Messias Wagner da Silva Dias',1,'2019-07-19 12:24:26','2019-07-19 12:24:39',NULL,NULL,'');
/*!40000 ALTER TABLE `atendimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `esquerda` int(11) NOT NULL,
  `direita` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Administrador','Administrador geral do sistema',1,10,0),(2,'Gerente','Gerencia a instância do SGA como um todo.',2,9,1),(3,'Administrador da Unidade','Administra a unidade onde o SGA estiver instalado.',3,8,2),(4,'Atendimento','Realiza o atendimento na unidade onde o SGA estiver instalado.',4,5,3),(5,'Triagem','Realiza a triagem na unidade onde o SGA estiver instalado.',6,7,3);
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos_mod_perm`
--

DROP TABLE IF EXISTS `cargos_mod_perm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargos_mod_perm` (
  `cargo_id` int(11) NOT NULL,
  `modulo_id` int(11) NOT NULL,
  `permissao` int(11) NOT NULL,
  PRIMARY KEY (`cargo_id`,`modulo_id`),
  KEY `cargos_mod_perm_ibfk_2` (`modulo_id`),
  CONSTRAINT `cargos_mod_perm_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`),
  CONSTRAINT `cargos_mod_perm_ibfk_2` FOREIGN KEY (`modulo_id`) REFERENCES `modulos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos_mod_perm`
--

LOCK TABLES `cargos_mod_perm` WRITE;
/*!40000 ALTER TABLE `cargos_mod_perm` DISABLE KEYS */;
INSERT INTO `cargos_mod_perm` VALUES (1,1,3),(1,2,3),(1,3,3),(1,4,3),(1,5,3),(1,6,3),(1,7,3),(1,8,3),(1,9,3),(1,10,3),(1,11,3),(1,12,3),(1,13,3),(1,14,3),(1,15,3),(2,2,3),(2,3,3),(2,4,3),(2,5,3),(2,6,3),(2,7,3),(2,8,3),(2,9,3),(2,10,3),(2,11,3),(2,12,3),(2,13,3),(2,14,3),(2,15,3),(3,2,3),(3,4,3),(3,8,3),(3,11,3),(3,12,3),(4,2,3),(5,11,3);
/*!40000 ALTER TABLE `cargos_mod_perm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `chave` varchar(150) NOT NULL,
  `valor` text NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('auth','a:3:{s:4:\"type\";s:2:\"db\";s:2:\"db\";a:0:{}s:4:\"ldap\";a:7:{s:4:\"host\";s:0:\"\";s:4:\"port\";s:0:\"\";s:6:\"baseDn\";s:0:\"\";s:14:\"loginAttribute\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"filter\";s:0:\"\";}}',3),('numeracao','1',2),('version','1.5.0',1),('vetor.panel.config','{\"news\":{\"interval\":30000,\"sources\":[{\"url\":\"http://painelsga.setev.local/feed.php?url=https://pox.globo.com/rss/g1/pe/\",\"type\":\"rss\"}]},\"widgets\":[],\"timestamp\":1558633045791}',1);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contador`
--

DROP TABLE IF EXISTS `contador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador` (
  `unidade_id` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`unidade_id`),
  CONSTRAINT `contador_ibfk_1` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contador`
--

LOCK TABLES `contador` WRITE;
/*!40000 ALTER TABLE `contador` DISABLE KEYS */;
INSERT INTO `contador` VALUES (1,20);
/*!40000 ALTER TABLE `contador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `esquerda` int(11) NOT NULL,
  `direita` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `direita` (`direita`),
  KEY `esqdir` (`esquerda`,`direita`),
  KEY `esquerda` (`esquerda`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (1,'Raíz','Grupo Raíz',1,2,0);
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_atend_codif`
--

DROP TABLE IF EXISTS `historico_atend_codif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_atend_codif` (
  `atendimento_id` bigint(20) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `valor_peso` smallint(6) NOT NULL,
  PRIMARY KEY (`atendimento_id`,`servico_id`),
  KEY `historico_atend_codif_ibfk_2` (`servico_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_atend_codif`
--

LOCK TABLES `historico_atend_codif` WRITE;
/*!40000 ALTER TABLE `historico_atend_codif` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_atend_codif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_atend_meta`
--

DROP TABLE IF EXISTS `historico_atend_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_atend_meta` (
  `atendimento_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`atendimento_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_atend_meta`
--

LOCK TABLES `historico_atend_meta` WRITE;
/*!40000 ALTER TABLE `historico_atend_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_atend_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_atendimentos`
--

DROP TABLE IF EXISTS `historico_atendimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_atendimentos` (
  `id` bigint(20) NOT NULL,
  `unidade_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `usuario_tri_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `prioridade_id` int(11) NOT NULL,
  `atendimento_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `sigla_senha` varchar(1) NOT NULL,
  `num_senha` int(11) NOT NULL,
  `num_senha_serv` int(11) NOT NULL,
  `nm_cli` varchar(100) DEFAULT NULL,
  `num_local` smallint(6) NOT NULL,
  `dt_cheg` datetime NOT NULL,
  `dt_cha` datetime DEFAULT NULL,
  `dt_ini` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `ident_cli` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `historico_atendimentos_ibfk_1` (`prioridade_id`),
  KEY `historico_atendimentos_ibfk_2` (`unidade_id`,`servico_id`),
  KEY `historico_atendimentos_ibfk_4` (`usuario_id`),
  KEY `historico_atendimentos_ibfk_5` (`usuario_tri_id`),
  KEY `historico_atendimentos_ibfk_6` (`atendimento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_atendimentos`
--

LOCK TABLES `historico_atendimentos` WRITE;
/*!40000 ALTER TABLE `historico_atendimentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_atendimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locais`
--

DROP TABLE IF EXISTS `locais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `local_serv_nm` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locais`
--

LOCK TABLES `locais` WRITE;
/*!40000 ALTER TABLE `locais` DISABLE KEYS */;
INSERT INTO `locais` VALUES (1,'Guichê'),(3,'Mesa'),(2,'Sala');
/*!40000 ALTER TABLE `locais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos`
--

DROP TABLE IF EXISTS `modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(50) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `tipo` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `modulos_chave` (`chave`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos`
--

LOCK TABLES `modulos` WRITE;
/*!40000 ALTER TABLE `modulos` DISABLE KEYS */;
INSERT INTO `modulos` VALUES (1,'sga.admin','Administração','Configurações gerais do sistema',1,1),(2,'sga.atendimento','Atendimento','Efetue o atendimento às senhas distribuídas dos serviços que você atende',0,1),(3,'sga.cargos','Cargos','Gerencie os cargos do sistema',1,1),(4,'sga.estatisticas','Estatísticas','Visualize e exporte estastísticas e relatórios sobre o sistema',1,1),(5,'sga.grupos','Grupos','Gerencie os grupos do sistema',1,1),(6,'sga.locais','Locais','Gerencie os locais de atendimento',1,1),(7,'sga.modulos','Módulos','Gerencie os módulos instalados',1,1),(8,'sga.monitor','Monitor','Gerencie as senhas aguardando atendimento',0,1),(9,'sga.prioridades','Prioridades','Gerencie os prioridades do sistema',1,1),(10,'sga.servicos','Serviços','Gerencie os serviços do sistema',1,1),(11,'sga.triagem','Triagem','Gerencie a distribuíção das senhas da unidade atual',0,1),(12,'sga.unidade','Configuração','Módulo para gerenciamento da unidade atual',0,1),(13,'sga.unidades','Unidades','Gerencie as unidades do sistema',1,1),(14,'sga.usuarios','Usuários','Gerencie os usuários do sistema',1,1),(15,'vetor.panel','Vetor Panel','Módulo de administração do Vetor Panel',1,1);
/*!40000 ALTER TABLE `modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_scopes` (
  `scope` text,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scopes`
--

LOCK TABLES `oauth_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paineis`
--

DROP TABLE IF EXISTS `paineis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paineis` (
  `unidade_id` int(11) NOT NULL,
  `host` int(11) NOT NULL,
  PRIMARY KEY (`host`),
  KEY `paineis_ibfk_1` (`unidade_id`),
  CONSTRAINT `paineis_ibfk_1` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paineis`
--

LOCK TABLES `paineis` WRITE;
/*!40000 ALTER TABLE `paineis` DISABLE KEYS */;
/*!40000 ALTER TABLE `paineis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paineis_servicos`
--

DROP TABLE IF EXISTS `paineis_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paineis_servicos` (
  `host` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  PRIMARY KEY (`host`,`servico_id`),
  KEY `paineis_servicos_ibfk_2` (`unidade_id`,`servico_id`),
  CONSTRAINT `paineis_servicos_ibfk_1` FOREIGN KEY (`host`) REFERENCES `paineis` (`host`),
  CONSTRAINT `paineis_servicos_ibfk_2` FOREIGN KEY (`unidade_id`, `servico_id`) REFERENCES `uni_serv` (`unidade_id`, `servico_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paineis_servicos`
--

LOCK TABLES `paineis_servicos` WRITE;
/*!40000 ALTER TABLE `paineis_servicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `paineis_servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `painel_senha`
--

DROP TABLE IF EXISTS `painel_senha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `painel_senha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidade_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `num_senha` int(11) NOT NULL,
  `sig_senha` varchar(1) NOT NULL,
  `msg_senha` varchar(20) NOT NULL,
  `local` varchar(15) NOT NULL,
  `num_local` smallint(6) NOT NULL,
  `peso` smallint(6) NOT NULL,
  `prioridade` varchar(100) DEFAULT NULL,
  `nome_cliente` varchar(100) DEFAULT NULL,
  `documento_cliente` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `painel_senha_ibfk_1` (`unidade_id`),
  KEY `painel_senha_ibfk_2` (`servico_id`),
  CONSTRAINT `painel_senha_ibfk_1` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`),
  CONSTRAINT `painel_senha_ibfk_2` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `painel_senha`
--

LOCK TABLES `painel_senha` WRITE;
/*!40000 ALTER TABLE `painel_senha` DISABLE KEYS */;
INSERT INTO `painel_senha` VALUES (1,1,1,1,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(2,1,1,1,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(3,1,1,1,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(4,1,1,1,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(5,1,1,1,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(6,1,1,1,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(7,1,1,1,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(8,1,1,2,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(9,1,1,2,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(10,1,1,3,'A','Convencional','Guichê',1,0,'Sem prioridade','Messias','12345678910'),(11,1,1,4,'A','Convencional','Guichê',1,0,'Sem prioridade','Minha Rola','123456789'),(12,1,1,5,'A','Convencional','Guichê',1,0,'Sem prioridade','Francisglaydson josé de lima Golçalves','123456789'),(13,1,1,5,'A','Convencional','Guichê',1,0,'Sem prioridade','Francisglaydson josé de lima Golçalves','123456789'),(14,1,1,6,'A','Prioridade','Guichê',1,1,'Portador de Deficiência','ricardo',''),(15,1,1,9,'A','Prioridade','Guichê',1,1,'Portador de Deficiência','',''),(16,1,1,10,'A','Prioridade','Guichê',1,1,'Idoso','',''),(17,1,1,7,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(18,1,1,8,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(19,1,1,11,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(20,1,1,12,'A','Convencional','Guichê',1,0,'Sem prioridade','',''),(21,1,1,13,'A','Convencional','Guichê',1,0,'Sem prioridade','Ricardo','1234567'),(22,1,1,15,'A','Prioridade','Guichê',1,1,'Portador de Deficiência','Cleyton','38297645'),(23,1,1,14,'A','Convencional','Guichê',1,0,'Sem prioridade','Jonatan','10924827812'),(24,1,1,16,'A','Convencional','Guichê',1,0,'Sem prioridade','Estefano emanoel',''),(25,1,1,17,'A','Prioridade','Guichê',1,1,'Portador de Deficiência','Maria do Socorro Pereira','237645236'),(26,1,1,17,'A','Prioridade','Guichê',1,1,'Portador de Deficiência','Maria do Socorro Pereira','237645236'),(27,1,1,17,'A','Prioridade','Guichê',1,1,'Portador de Deficiência','Maria do Socorro Pereira','237645236'),(28,1,1,17,'A','Prioridade','Guichê',1,1,'Portador de Deficiência','Maria do Socorro Pereira','237645236'),(29,1,1,17,'A','Prioridade','Guichê',1,1,'Portador de Deficiência','Maria do Socorro Pereira','237645236'),(30,1,1,17,'A','Prioridade','Guichê',1,1,'Portador de Deficiência','Maria do Socorro Pereira','237645236'),(31,1,1,18,'A','Convencional','Guichê',1,0,'Sem prioridade','Maria do Socorro Pereira de Oliveira',''),(32,1,1,19,'A','Prioridade','Guichê',1,1,'Outros','Maria do Socorro Pereira de Oliveira',''),(33,1,1,20,'A','Convencional','Guichê',1,0,'Sem prioridade','Messias Wagner da Silva Dias','');
/*!40000 ALTER TABLE `painel_senha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prioridades`
--

DROP TABLE IF EXISTS `prioridades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prioridades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `peso` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioridades`
--

LOCK TABLES `prioridades` WRITE;
/*!40000 ALTER TABLE `prioridades` DISABLE KEYS */;
INSERT INTO `prioridades` VALUES (1,'Sem prioridade','Atendimento normal',0,1),(2,'Portador de Deficiência','Atendimento prioritáro para portadores de deficiência',1,1),(3,'Gestante','Atendimento prioritáro para gestantes',1,1),(4,'Idoso','Atendimento prioritáro para idosos',1,1),(5,'Outros','Qualquer outra prioridade',1,1);
/*!40000 ALTER TABLE `prioridades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serv_meta`
--

DROP TABLE IF EXISTS `serv_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serv_meta` (
  `servico_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`servico_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serv_meta`
--

LOCK TABLES `serv_meta` WRITE;
/*!40000 ALTER TABLE `serv_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `serv_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `macro_id` int(11) DEFAULT NULL,
  `descricao` varchar(100) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `peso` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `servicos_ibfk_1` (`macro_id`),
  CONSTRAINT `servicos_ibfk_1` FOREIGN KEY (`macro_id`) REFERENCES `servicos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (1,NULL,'Serviço criado para realizar testes.','Serviço Padrão',1,1);
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni_meta`
--

DROP TABLE IF EXISTS `uni_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni_meta` (
  `unidade_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`unidade_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni_meta`
--

LOCK TABLES `uni_meta` WRITE;
/*!40000 ALTER TABLE `uni_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni_serv`
--

DROP TABLE IF EXISTS `uni_serv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni_serv` (
  `unidade_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `local_id` int(11) NOT NULL,
  `sigla` varchar(1) NOT NULL,
  `status` smallint(6) NOT NULL,
  `peso` smallint(6) NOT NULL,
  PRIMARY KEY (`unidade_id`,`servico_id`),
  KEY `uni_serv_ibfk_2` (`servico_id`),
  KEY `uni_serv_ibfk_3` (`local_id`),
  CONSTRAINT `uni_serv_ibfk_1` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`),
  CONSTRAINT `uni_serv_ibfk_2` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`),
  CONSTRAINT `uni_serv_ibfk_3` FOREIGN KEY (`local_id`) REFERENCES `locais` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni_serv`
--

LOCK TABLES `uni_serv` WRITE;
/*!40000 ALTER TABLE `uni_serv` DISABLE KEYS */;
INSERT INTO `uni_serv` VALUES (1,1,1,'A',1,1);
/*!40000 ALTER TABLE `uni_serv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `stat_imp` smallint(6) NOT NULL,
  `msg_imp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `unidades_grupo_id_fkey` (`grupo_id`),
  CONSTRAINT `unidades_grupo_id_fkey` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` VALUES (1,1,'1','Unidade Padrão',1,1,'Novo SGA');
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usu_grup_cargo`
--

DROP TABLE IF EXISTS `usu_grup_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usu_grup_cargo` (
  `usuario_id` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id`,`grupo_id`),
  KEY `usu_grup_cargo_ibfk_2` (`grupo_id`),
  KEY `usu_grup_cargo_ibfk_3` (`cargo_id`),
  CONSTRAINT `usu_grup_cargo_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `usu_grup_cargo_ibfk_2` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
  CONSTRAINT `usu_grup_cargo_ibfk_3` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usu_grup_cargo`
--

LOCK TABLES `usu_grup_cargo` WRITE;
/*!40000 ALTER TABLE `usu_grup_cargo` DISABLE KEYS */;
INSERT INTO `usu_grup_cargo` VALUES (1,1,1);
/*!40000 ALTER TABLE `usu_grup_cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usu_meta`
--

DROP TABLE IF EXISTS `usu_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usu_meta` (
  `usuario_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`usuario_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usu_meta`
--

LOCK TABLES `usu_meta` WRITE;
/*!40000 ALTER TABLE `usu_meta` DISABLE KEYS */;
INSERT INTO `usu_meta` VALUES (1,'unidade','1'),(1,'atendimento.local','1'),(1,'atendimento.tipo','1');
/*!40000 ALTER TABLE `usu_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usu_serv`
--

DROP TABLE IF EXISTS `usu_serv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usu_serv` (
  `unidade_id` int(11) NOT NULL,
  `servico_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`unidade_id`,`servico_id`,`usuario_id`),
  KEY `usu_serv_ibfk_1` (`servico_id`,`unidade_id`),
  KEY `usu_serv_ibfk_2` (`usuario_id`),
  CONSTRAINT `usu_serv_ibfk_1` FOREIGN KEY (`servico_id`, `unidade_id`) REFERENCES `uni_serv` (`servico_id`, `unidade_id`),
  CONSTRAINT `usu_serv_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usu_serv`
--

LOCK TABLES `usu_serv` WRITE;
/*!40000 ALTER TABLE `usu_serv` DISABLE KEYS */;
INSERT INTO `usu_serv` VALUES (1,1,1);
/*!40000 ALTER TABLE `usu_serv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `ult_acesso` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'suporte',':D','Suporte','29f7d731cbb46bfa8f6ae96d1b584004','2019-07-19 11:28:51',1,'v8t63ciu7onn8iqavurp0i6i26');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_historico_atend_codif`
--

DROP TABLE IF EXISTS `view_historico_atend_codif`;
/*!50001 DROP VIEW IF EXISTS `view_historico_atend_codif`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_historico_atend_codif` (
  `atendimento_id` tinyint NOT NULL,
  `servico_id` tinyint NOT NULL,
  `valor_peso` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_historico_atend_meta`
--

DROP TABLE IF EXISTS `view_historico_atend_meta`;
/*!50001 DROP VIEW IF EXISTS `view_historico_atend_meta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_historico_atend_meta` (
  `atendimento_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `value` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_historico_atendimentos`
--

DROP TABLE IF EXISTS `view_historico_atendimentos`;
/*!50001 DROP VIEW IF EXISTS `view_historico_atendimentos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_historico_atendimentos` (
  `id` tinyint NOT NULL,
  `unidade_id` tinyint NOT NULL,
  `usuario_id` tinyint NOT NULL,
  `usuario_tri_id` tinyint NOT NULL,
  `servico_id` tinyint NOT NULL,
  `prioridade_id` tinyint NOT NULL,
  `atendimento_id` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `sigla_senha` tinyint NOT NULL,
  `num_senha` tinyint NOT NULL,
  `num_senha_serv` tinyint NOT NULL,
  `nm_cli` tinyint NOT NULL,
  `num_local` tinyint NOT NULL,
  `dt_cheg` tinyint NOT NULL,
  `dt_cha` tinyint NOT NULL,
  `dt_ini` tinyint NOT NULL,
  `dt_fim` tinyint NOT NULL,
  `ident_cli` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_historico_atend_codif`
--

/*!50001 DROP TABLE IF EXISTS `view_historico_atend_codif`*/;
/*!50001 DROP VIEW IF EXISTS `view_historico_atend_codif`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`setev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_historico_atend_codif` AS select `atend_codif`.`atendimento_id` AS `atendimento_id`,`atend_codif`.`servico_id` AS `servico_id`,`atend_codif`.`valor_peso` AS `valor_peso` from `atend_codif` union all select `historico_atend_codif`.`atendimento_id` AS `atendimento_id`,`historico_atend_codif`.`servico_id` AS `servico_id`,`historico_atend_codif`.`valor_peso` AS `valor_peso` from `historico_atend_codif` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_historico_atend_meta`
--

/*!50001 DROP TABLE IF EXISTS `view_historico_atend_meta`*/;
/*!50001 DROP VIEW IF EXISTS `view_historico_atend_meta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`setev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_historico_atend_meta` AS select `atend_meta`.`atendimento_id` AS `atendimento_id`,`atend_meta`.`name` AS `name`,`atend_meta`.`value` AS `value` from `atend_meta` union all select `historico_atend_meta`.`atendimento_id` AS `atendimento_id`,`historico_atend_meta`.`name` AS `name`,`historico_atend_meta`.`value` AS `value` from `historico_atend_meta` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_historico_atendimentos`
--

/*!50001 DROP TABLE IF EXISTS `view_historico_atendimentos`*/;
/*!50001 DROP VIEW IF EXISTS `view_historico_atendimentos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`setev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_historico_atendimentos` AS select `atendimentos`.`id` AS `id`,`atendimentos`.`unidade_id` AS `unidade_id`,`atendimentos`.`usuario_id` AS `usuario_id`,`atendimentos`.`usuario_tri_id` AS `usuario_tri_id`,`atendimentos`.`servico_id` AS `servico_id`,`atendimentos`.`prioridade_id` AS `prioridade_id`,`atendimentos`.`atendimento_id` AS `atendimento_id`,`atendimentos`.`status` AS `status`,`atendimentos`.`sigla_senha` AS `sigla_senha`,`atendimentos`.`num_senha` AS `num_senha`,`atendimentos`.`num_senha_serv` AS `num_senha_serv`,`atendimentos`.`nm_cli` AS `nm_cli`,`atendimentos`.`num_local` AS `num_local`,`atendimentos`.`dt_cheg` AS `dt_cheg`,`atendimentos`.`dt_cha` AS `dt_cha`,`atendimentos`.`dt_ini` AS `dt_ini`,`atendimentos`.`dt_fim` AS `dt_fim`,`atendimentos`.`ident_cli` AS `ident_cli` from `atendimentos` union all select `historico_atendimentos`.`id` AS `id`,`historico_atendimentos`.`unidade_id` AS `unidade_id`,`historico_atendimentos`.`usuario_id` AS `usuario_id`,`historico_atendimentos`.`usuario_tri_id` AS `usuario_tri_id`,`historico_atendimentos`.`servico_id` AS `servico_id`,`historico_atendimentos`.`prioridade_id` AS `prioridade_id`,`historico_atendimentos`.`atendimento_id` AS `atendimento_id`,`historico_atendimentos`.`status` AS `status`,`historico_atendimentos`.`sigla_senha` AS `sigla_senha`,`historico_atendimentos`.`num_senha` AS `num_senha`,`historico_atendimentos`.`num_senha_serv` AS `num_senha_serv`,`historico_atendimentos`.`nm_cli` AS `nm_cli`,`historico_atendimentos`.`num_local` AS `num_local`,`historico_atendimentos`.`dt_cheg` AS `dt_cheg`,`historico_atendimentos`.`dt_cha` AS `dt_cha`,`historico_atendimentos`.`dt_ini` AS `dt_ini`,`historico_atendimentos`.`dt_fim` AS `dt_fim`,`historico_atendimentos`.`ident_cli` AS `ident_cli` from `historico_atendimentos` */;
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

-- Dump completed on 2019-07-19 15:52:29
