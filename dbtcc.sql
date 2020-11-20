CREATE DATABASE  IF NOT EXISTS `dbtcc` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `dbtcc`;
-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: dbtcc
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agendamento` (
  `id_agendamento` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `barbearia` int(11) NOT NULL,
  `servico` int(11) NOT NULL,
  `status` tinytext NOT NULL DEFAULT 'P' COMMENT 'F - finalizado\nP - pendente\nC - cancelado',
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_agendamento`),
  KEY `fk_user_id` (`usuario`),
  KEY `fk_barbearia_id` (`barbearia`),
  KEY `fk_servico_id` (`servico`),
  CONSTRAINT `fk_barbearia_id` FOREIGN KEY (`barbearia`) REFERENCES `barbearia` (`barbearia_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servico_id` FOREIGN KEY (`servico`) REFERENCES `servico` (`id_servico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`usuario`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamento`
--

LOCK TABLES `agendamento` WRITE;
/*!40000 ALTER TABLE `agendamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `agendamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barbearia`
--

DROP TABLE IF EXISTS `barbearia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barbearia` (
  `barbearia_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_dono` varchar(45) NOT NULL,
  `cpf_dono` varchar(45) NOT NULL,
  `email_dono` varchar(45) NOT NULL,
  `senha_dono` varchar(45) NOT NULL,
  `nome_barbearia` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `cnpj` varchar(45) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `num_bar` varchar(10) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `uf` varchar(45) NOT NULL,
  `horario_abertura` time DEFAULT NULL,
  `horario_fechamento` time DEFAULT NULL,
  PRIMARY KEY (`barbearia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbearia`
--

LOCK TABLES `barbearia` WRITE;
/*!40000 ALTER TABLE `barbearia` DISABLE KEYS */;
INSERT INTO `barbearia` VALUES (8,'Almeida','111.111.111-11','barbearia_almeida@hotmail.com','b400de1f64beb532d80982347ebb5989','Barbearia Almeida','(75) 98116-6233','44032-568','11.111.111/1111-11','Rua Professora Bertholina Carneiro','353 ','Campo Limpo','Feira de Santana','BA','08:00:00','19:00:00'),(9,'Marcão','222.222.222-22','barbearia_marcao@hotmail.com','131adea421048c8644ed90e41b2fee77','Barbearia Sr. Marcão','(75) 99283-7999','44033-103','22.222.222/2222-22','Rua Desembarque','298','Campo Limpo','Feira de Santana','BA','08:00:00','18:00:00'),(10,'Guto ','333.333.333-33','guto_barbearia@gmail.com','25798ef6bed8c2875edf7121b9fcd18a','Guto Barbearia','(75) 99164-6434','44021-225','33.333.333/3333-33','Rua Arivaldo de Carvalho','54','Sobradinho','Feira de Santana','BA','09:00:00','19:00:00'),(11,'Siqueira','444.444.444-44','siqueira@gmail.com','45d0b1d56f056433c894563d4e20c89f','Barbearia Siqueira','(75) 98143-1976','44050-024','44.444.444/4444-44','Rua Intendente Abdon','7654','Queimadinha','Feira de Santana','BA','09:00:00','18:00:00'),(12,'Matheus','555.555.555-55','matheus_cortes@gmail.com','e56b6eea9b0bc782bbb9ea6098ead641','Matheus Cortes','(75) 98143-7191','44028-279','55.555.555/5555-55','Rua Olhos Verdes','149 ','Gabriela','Feira de Santana','BA','08:00:00','19:20:00'),(13,'Figueredo','666.666.666-66','figueredo@hotmail.com','2fdc2b916cbaac14a0339f076a71111d','Barbearia Figueredo','(75) 98347-1670','44053-654','66.666.666/6666-66','Rua Gérson','11 ','Cidade Nova','Feira de Santana','BA',NULL,NULL),(14,'Primos','777.777.777-77','primos_barbershop@hotmail.com','8b4521bba5f609ca1b20530190f91c52','Primos Barber Shop','(75) 98245-8944','44021-225','77.777.777/7777-77','Rua Arivaldo de Carvalho','1299 ','Sobradinho','Feira de Santana','BA',NULL,NULL),(15,'Dielson','888.888.888-88','dielson@gmail.com','25f9e794323b453885f5181f1b624d0b','Dielson barbearia','(75) 99277-6848','44024-336','88.888.888/8888-88','Rua Paulo Afonso','74','Jardim Cruzeiro','Feira de Santana','BA',NULL,NULL),(16,'Allan','999.999.999-99','allan@hotmail.com','d41222a59835f1805e182164ddf470e1','Barbearia Allabarber','(75) 98120-4535','44059-720','99.999.999/9999-99','Rua Papagaio','80','Papagaio','Feira de Santana','BA',NULL,NULL);
/*!40000 ALTER TABLE `barbearia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `preco` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_servico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `data_de_nascimento` date NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'joao','(78) 97897-9878','2000-03-29','324.423.432-43','ewqewqe@asdasd.com','25f9e794323b453885f5181f1b624d0b'),(2,'teste','(42) 34234-3243','1999-03-31','343.434.343-43','asdasdsad@ajsdk.com','315eb115d98fcbad39ffc5edebd669c9');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbtcc'
--
/*!50003 DROP PROCEDURE IF EXISTS `PROC_SEL_BARBEARIAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PROC_SEL_BARBEARIAS`()
BEGIN
	SELECT 
		nome_barbearia,
        horario_abertura,
        horario_fechamento,
		telefone,
		cidade
	FROM barbearia
    LIMIT 16;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 19:36:22
