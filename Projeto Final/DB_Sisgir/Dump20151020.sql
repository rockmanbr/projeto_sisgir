CREATE DATABASE  IF NOT EXISTS `sisgir` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sisgir`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: sisgir
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `bairros`
--

DROP TABLE IF EXISTS `bairros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairros` (
  `cd_bairro` int(11) NOT NULL,
  `cd_cidade` int(11) DEFAULT NULL,
  `ds_bairro_nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cd_bairro`),
  KEY `fk_bairros_cidades_idx` (`cd_cidade`),
  CONSTRAINT `fk_bairros_cidades` FOREIGN KEY (`cd_cidade`) REFERENCES `cidades` (`cd_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairros`
--

LOCK TABLES `bairros` WRITE;
/*!40000 ALTER TABLE `bairros` DISABLE KEYS */;
/*!40000 ALTER TABLE `bairros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `cd_cidade` int(11) NOT NULL,
  `cd_uf` int(11) DEFAULT NULL,
  `ds_cidade_nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cd_cidade`),
  KEY `fk_cidades_uf_idx` (`cd_uf`),
  CONSTRAINT `fk_cidades_uf` FOREIGN KEY (`cd_uf`) REFERENCES `uf` (`cd_uf`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entradas`
--

DROP TABLE IF EXISTS `entradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entradas` (
  `cod_entrada` int(11) NOT NULL,
  `dt_entrada` date DEFAULT NULL,
  `vl_entrada` decimal(10,2) DEFAULT NULL,
  `obs_entrada` varchar(255) DEFAULT NULL,
  `id_conta` int(11) DEFAULT NULL,
  `id_pessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_entrada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradas`
--

LOCK TABLES `entradas` WRITE;
/*!40000 ALTER TABLE `entradas` DISABLE KEYS */;
/*!40000 ALTER TABLE `entradas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estabelecimento`
--

DROP TABLE IF EXISTS `estabelecimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estabelecimento` (
  `cod_estabelecimento` int(11) NOT NULL,
  `dt_operacao` date DEFAULT NULL,
  `cnpj_estabelecimento` varchar(14) DEFAULT NULL,
  `fone_estab` varchar(30) DEFAULT NULL,
  `fax_estab` varchar(30) DEFAULT NULL,
  `cel_estab` varchar(30) DEFAULT NULL,
  `email_estab` varchar(50) DEFAULT NULL,
  `url_estab` varchar(50) DEFAULT NULL,
  `cd_logradouro` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_estabelecimento`),
  KEY `fk_estabelecimento_logradouro_idx` (`cd_logradouro`),
  CONSTRAINT `fk_estabelecimento_logradouro` FOREIGN KEY (`cd_logradouro`) REFERENCES `logradouros` (`CD_LOGRADOURO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estabelecimento`
--

LOCK TABLES `estabelecimento` WRITE;
/*!40000 ALTER TABLE `estabelecimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `estabelecimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_civil` (
  `id_estado_civil` int(2) NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_estado_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_civil`
--

LOCK TABLES `estado_civil` WRITE;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `cod_fornecedor` int(11) NOT NULL,
  `tipo_fornecedor` int(1) DEFAULT NULL,
  `ramo_atividade` varchar(200) DEFAULT NULL,
  `insc_estadual` varchar(20) DEFAULT NULL,
  `insc_municipal` varchar(20) DEFAULT NULL,
  `contato_fornecedor` varchar(100) DEFAULT NULL,
  `id_pessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_fornecedor`),
  KEY `fk_fornecedor_pessoa_idx` (`id_pessoa`),
  CONSTRAINT `fk_fornecedor_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logradouros`
--

DROP TABLE IF EXISTS `logradouros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logradouros` (
  `CD_LOGRADOURO` int(11) NOT NULL,
  `CD_BAIRRO` int(11) DEFAULT NULL,
  `CD_TIPO_LOGRADOUROS` int(11) DEFAULT NULL,
  `DS_LOGRADOURO_NOME` varchar(100) DEFAULT NULL,
  `NO_LOGRADOURO_CEP` int(11) DEFAULT NULL,
  PRIMARY KEY (`CD_LOGRADOURO`),
  KEY `fk_logradouros_bairros_idx` (`CD_BAIRRO`),
  CONSTRAINT `fk_logradouros_bairros` FOREIGN KEY (`CD_BAIRRO`) REFERENCES `bairros` (`cd_bairro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logradouros`
--

LOCK TABLES `logradouros` WRITE;
/*!40000 ALTER TABLE `logradouros` DISABLE KEYS */;
/*!40000 ALTER TABLE `logradouros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membro`
--

DROP TABLE IF EXISTS `membro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membro` (
  `cod_membro` int(11) NOT NULL,
  `dt_nas_membro` date DEFAULT NULL,
  `id_estado_civil` int(2) DEFAULT NULL,
  `sexo_membro` char(1) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT NULL,
  `naturalidade` varchar(20) DEFAULT NULL,
  `cnh_membro` int(11) DEFAULT NULL,
  `categoria_cnh` char(1) DEFAULT NULL,
  `conjuge_membro` varchar(100) DEFAULT NULL,
  `data_casamento` date DEFAULT NULL,
  `nm_pai_membro` varchar(100) DEFAULT NULL,
  `nm_mae_membro` varchar(100) DEFAULT NULL,
  `id_prof` int(22) DEFAULT NULL,
  `id_instrucao` int(2) DEFAULT NULL,
  `cod_estabelecimento` int(11) DEFAULT NULL,
  `id_motivo_entrada` int(2) DEFAULT NULL,
  `id_situacao` int(2) DEFAULT NULL,
  `dt_batismo` date DEFAULT NULL,
  `id_tipo_membro` int(2) DEFAULT NULL,
  `funcao_membro` int(2) DEFAULT NULL,
  `id_pessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_membro`),
  KEY `fk_membro_estadocivil_idx` (`id_estado_civil`),
  KEY `fk_membro_profissao_idx` (`id_prof`),
  KEY `fk_membro_instrucao_idx` (`id_instrucao`),
  KEY `fk_membro_motivoentrada_idx` (`id_motivo_entrada`),
  KEY `fk_membro_situacao_idx` (`id_situacao`),
  KEY `fk_membro_tipomembro_idx` (`id_tipo_membro`),
  KEY `fk_membro_pessoa_idx` (`id_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membro`
--

LOCK TABLES `membro` WRITE;
/*!40000 ALTER TABLE `membro` DISABLE KEYS */;
/*!40000 ALTER TABLE `membro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivo_entrada`
--

DROP TABLE IF EXISTS `motivo_entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motivo_entrada` (
  `id_motivo_entrada` int(2) NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_motivo_entrada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivo_entrada`
--

LOCK TABLES `motivo_entrada` WRITE;
/*!40000 ALTER TABLE `motivo_entrada` DISABLE KEYS */;
/*!40000 ALTER TABLE `motivo_entrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrimonio`
--

DROP TABLE IF EXISTS `patrimonio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patrimonio` (
  `cod_patrimonio` int(11) NOT NULL,
  `descricao_patrimonio` varchar(30) DEFAULT NULL,
  `num_serie` varchar(45) DEFAULT NULL,
  `descricao_complementar` varchar(50) DEFAULT NULL,
  `dt_aquisicao` date DEFAULT NULL,
  `dt_cadastro` date DEFAULT NULL,
  `dt_baixa` date DEFAULT NULL,
  `venc_garantia` date DEFAULT NULL,
  `num_nf` int(11) DEFAULT NULL,
  `chave_nfe` varchar(80) DEFAULT NULL,
  `vl_compra` decimal(10,2) DEFAULT NULL,
  `vl_baixa` decimal(10,2) DEFAULT NULL,
  `cod_fornecedor` int(11) DEFAULT NULL,
  `id_tipo_aquisicao` int(2) DEFAULT NULL,
  `cod_estabelecimento` int(11) DEFAULT NULL,
  `id_conta` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_patrimonio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrimonio`
--

LOCK TABLES `patrimonio` WRITE;
/*!40000 ALTER TABLE `patrimonio` DISABLE KEYS */;
/*!40000 ALTER TABLE `patrimonio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `id_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome_pessoa` varchar(200) DEFAULT NULL,
  `cnpj_cpf` varchar(14) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `fone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `cel` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `dt_cadastro` date DEFAULT NULL,
  `cd_logradouro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano_contas`
--

DROP TABLE IF EXISTS `plano_contas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plano_contas` (
  `id_conta` int(11) NOT NULL,
  `cod_conta` varchar(11) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `cod_conta_reduzida` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_conta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano_contas`
--

LOCK TABLES `plano_contas` WRITE;
/*!40000 ALTER TABLE `plano_contas` DISABLE KEYS */;
/*!40000 ALTER TABLE `plano_contas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profissoes`
--

DROP TABLE IF EXISTS `profissoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profissoes` (
  `id_prof` int(22) NOT NULL AUTO_INCREMENT,
  `nome_prof` varchar(200) NOT NULL,
  PRIMARY KEY (`id_prof`)
) ENGINE=MyISAM AUTO_INCREMENT=772 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profissoes`
--

LOCK TABLES `profissoes` WRITE;
/*!40000 ALTER TABLE `profissoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `profissoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saidas`
--

DROP TABLE IF EXISTS `saidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saidas` (
  `cod_saida` int(11) NOT NULL,
  `dt_saida` date DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `vl_saida` decimal(10,2) DEFAULT NULL,
  `obs_saida` varchar(255) DEFAULT NULL,
  `num_docto` int(11) DEFAULT NULL,
  `tipo_documento` varchar(50) DEFAULT NULL,
  `qt_parcela` int(2) DEFAULT NULL,
  `id_conta` int(11) DEFAULT NULL,
  `cod_fornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_saida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saidas`
--

LOCK TABLES `saidas` WRITE;
/*!40000 ALTER TABLE `saidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `saidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacao`
--

DROP TABLE IF EXISTS `situacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacao` (
  `id_situacao` int(2) NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_situacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacao`
--

LOCK TABLES `situacao` WRITE;
/*!40000 ALTER TABLE `situacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `situacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_aquisicao`
--

DROP TABLE IF EXISTS `tipo_aquisicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_aquisicao` (
  `id_tipo_aquisicao` int(2) NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_aquisicao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_aquisicao`
--

LOCK TABLES `tipo_aquisicao` WRITE;
/*!40000 ALTER TABLE `tipo_aquisicao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_aquisicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_instrucao`
--

DROP TABLE IF EXISTS `tipo_instrucao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_instrucao` (
  `id_instrucao` int(2) NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_instrucao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_instrucao`
--

LOCK TABLES `tipo_instrucao` WRITE;
/*!40000 ALTER TABLE `tipo_instrucao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_instrucao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_membro`
--

DROP TABLE IF EXISTS `tipo_membro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_membro` (
  `id_tipo_membro` int(2) NOT NULL,
  `nm_tipo_membro` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_membro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_membro`
--

LOCK TABLES `tipo_membro` WRITE;
/*!40000 ALTER TABLE `tipo_membro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_membro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uf` (
  `cd_uf` int(11) NOT NULL,
  `ds_uf_sigla` char(2) DEFAULT NULL,
  `ds_uf_nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cd_uf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `login` varchar(12) DEFAULT NULL,
  `senha` varchar(12) DEFAULT NULL,
  `cod_membro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_usuario_membro_idx` (`cod_membro`),
  CONSTRAINT `fk_usuario_membro` FOREIGN KEY (`cod_membro`) REFERENCES `membro` (`cod_membro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-20 16:43:09
