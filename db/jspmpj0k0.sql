-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmpj0k0
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616736507009 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-26 05:21:51',1,1,'提问1','回复1',1),(62,'2021-03-26 05:21:51',2,2,'提问2','回复2',2),(63,'2021-03-26 05:21:51',3,3,'提问3','回复3',3),(64,'2021-03-26 05:21:51',4,4,'提问4','回复4',4),(65,'2021-03-26 05:21:51',5,5,'提问5','回复5',5),(66,'2021-03-26 05:21:51',6,6,'提问6','回复6',6),(1616736507008,'2021-03-26 05:28:26',1616736240272,NULL,'‍有问题\r\n','ok\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmpj0k0/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmpj0k0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmpj0k0/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `qiwangjiaoyididian` varchar(200) DEFAULT NULL COMMENT '期望交易地点',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `shangpinjieshao` varchar(200) DEFAULT NULL COMMENT '商品介绍',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616736444295 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (31,'2021-03-26 05:21:51','订单编号1','商品名称1','商品类型1',1,'期望交易地点1','2021-03-26','商品介绍1','账号1','姓名1','是','','未支付',1,1,1,'宇宙银河系地球1号'),(32,'2021-03-26 05:21:51','订单编号2','商品名称2','商品类型2',2,'期望交易地点2','2021-03-26','商品介绍2','账号2','姓名2','是','','未支付',2,2,2,'宇宙银河系地球2号'),(33,'2021-03-26 05:21:51','订单编号3','商品名称3','商品类型3',3,'期望交易地点3','2021-03-26','商品介绍3','账号3','姓名3','是','','未支付',3,3,3,'宇宙银河系地球3号'),(34,'2021-03-26 05:21:51','订单编号4','商品名称4','商品类型4',4,'期望交易地点4','2021-03-26','商品介绍4','账号4','姓名4','是','','未支付',4,4,4,'宇宙银河系地球4号'),(35,'2021-03-26 05:21:51','订单编号5','商品名称5','商品类型5',5,'期望交易地点5','2021-03-26','商品介绍5','账号5','姓名5','是','','未支付',5,5,5,'宇宙银河系地球5号'),(36,'2021-03-26 05:21:51','订单编号6','商品名称6','商品类型6',6,'期望交易地点6','2021-03-26','商品介绍6','账号6','姓名6','是','','未支付',6,6,6,'宇宙银河系地球6号'),(1616736444294,'2021-03-26 05:27:24','202132613263839407195','纸巾','日用百货',5,'安徽','2021-03-01','纸巾','002','李二','否',NULL,'未支付',6,NULL,NULL,'江苏省南京市秦淮区洪武路街道钓鱼巷76号钓鱼巷小区');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinshangjia`
--

DROP TABLE IF EXISTS `discussshangpinshangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinshangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='商品上架评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinshangjia`
--

LOCK TABLES `discussshangpinshangjia` WRITE;
/*!40000 ALTER TABLE `discussshangpinshangjia` DISABLE KEYS */;
INSERT INTO `discussshangpinshangjia` VALUES (101,'2021-03-26 05:21:51',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-26 05:21:51',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-26 05:21:51',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-26 05:21:51',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-26 05:21:51',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-26 05:21:51',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinshangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (111,'2021-03-26 05:21:51',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-26 05:21:51',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-26 05:21:51',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-26 05:21:51',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-26 05:21:51',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-26 05:21:51',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-26 05:21:51','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-26 05:21:51','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-26 05:21:51','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-26 05:21:51','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-26 05:21:51','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-26 05:21:51','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lianxishangjia`
--

DROP TABLE IF EXISTS `lianxishangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lianxishangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `neirong` varchar(200) DEFAULT NULL COMMENT '内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `riqi` varchar(200) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616736479984 DEFAULT CHARSET=utf8 COMMENT='联系商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lianxishangjia`
--

LOCK TABLES `lianxishangjia` WRITE;
/*!40000 ALTER TABLE `lianxishangjia` DISABLE KEYS */;
INSERT INTO `lianxishangjia` VALUES (51,'2021-03-26 05:21:51','标题1','商品名称1','商品类型1','内容1','账号1','姓名1','日期1'),(52,'2021-03-26 05:21:51','标题2','商品名称2','商品类型2','内容2','账号2','姓名2','日期2'),(53,'2021-03-26 05:21:51','标题3','商品名称3','商品类型3','内容3','账号3','姓名3','日期3'),(54,'2021-03-26 05:21:51','标题4','商品名称4','商品类型4','内容4','账号4','姓名4','日期4'),(55,'2021-03-26 05:21:51','标题5','商品名称5','商品类型5','内容5','账号5','姓名5','日期5'),(56,'2021-03-26 05:21:51','标题6','商品名称6','商品类型6','内容6','账号6','姓名6','日期6'),(1616736479983,'2021-03-26 05:27:59','纸巾邮寄问题','纸巾','日用百货','距离很远，邮寄吗','002','李二','');
/*!40000 ALTER TABLE `lianxishangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-03-26 05:21:51','标题1','简介1','http://localhost:8080/jspmpj0k0/upload/news_picture1.jpg','内容1'),(92,'2021-03-26 05:21:51','标题2','简介2','http://localhost:8080/jspmpj0k0/upload/news_picture2.jpg','内容2'),(93,'2021-03-26 05:21:51','标题3','简介3','http://localhost:8080/jspmpj0k0/upload/news_picture3.jpg','内容3'),(94,'2021-03-26 05:21:51','标题4','简介4','http://localhost:8080/jspmpj0k0/upload/news_picture4.jpg','内容4'),(95,'2021-03-26 05:21:51','标题5','简介5','http://localhost:8080/jspmpj0k0/upload/news_picture5.jpg','内容5'),(96,'2021-03-26 05:21:51','标题6','简介6','http://localhost:8080/jspmpj0k0/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinshangjia`
--

DROP TABLE IF EXISTS `shangpinshangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinshangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `qiwangjiaoyididian` varchar(200) DEFAULT NULL COMMENT '期望交易地点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616736276269 DEFAULT CHARSET=utf8 COMMENT='商品上架';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinshangjia`
--

LOCK TABLES `shangpinshangjia` WRITE;
/*!40000 ALTER TABLE `shangpinshangjia` DISABLE KEYS */;
INSERT INTO `shangpinshangjia` VALUES (21,'2021-03-26 05:21:51','商品编号1','商品名称1','日用百货',1,1,'期望交易地点1','http://localhost:8080/jspmpj0k0/upload/shangpinshangjia_tupian1.jpg','2021-03-26','商品介绍1','账号1','姓名1','是','',1,1,'2021-03-26 13:21:51'),(22,'2021-03-26 05:21:51','商品编号2','商品名称2','日用百货',2,2,'期望交易地点2','http://localhost:8080/jspmpj0k0/upload/shangpinshangjia_tupian2.jpg','2021-03-26','商品介绍2','账号2','姓名2','是','',2,2,'2021-03-26 13:21:51'),(23,'2021-03-26 05:21:51','商品编号3','商品名称3','日用百货',3,3,'期望交易地点3','http://localhost:8080/jspmpj0k0/upload/shangpinshangjia_tupian3.jpg','2021-03-26','商品介绍3','账号3','姓名3','是','',3,3,'2021-03-26 13:21:51'),(24,'2021-03-26 05:21:51','商品编号4','商品名称4','日用百货',4,4,'期望交易地点4','http://localhost:8080/jspmpj0k0/upload/shangpinshangjia_tupian4.jpg','2021-03-26','商品介绍4','账号4','姓名4','是','',4,4,'2021-03-26 13:21:51'),(25,'2021-03-26 05:21:51','商品编号5','商品名称5','日用百货',5,5,'期望交易地点5','http://localhost:8080/jspmpj0k0/upload/shangpinshangjia_tupian5.jpg','2021-03-26','商品介绍5','账号5','姓名5','是','',5,5,'2021-03-26 13:21:51'),(26,'2021-03-26 05:21:51','商品编号6','商品名称6','日用百货',6,6,'期望交易地点6','http://localhost:8080/jspmpj0k0/upload/shangpinshangjia_tupian6.jpg','2021-03-26','商品介绍6','账号6','姓名6','是','',6,6,'2021-03-26 13:21:51'),(1616736276268,'2021-03-26 05:24:35','1616736253','纸巾','日用百货',20,35,'安徽','http://localhost:8080/jspmpj0k0/upload/1616736270241.jpg','2021-03-01','纸巾','001','李一','是','同意',0,0,'2021-03-26 13:25:13');
/*!40000 ALTER TABLE `shangpinshangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `qiwangjiaoyididian` varchar(200) DEFAULT NULL COMMENT '期望交易地点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `shangpinjieshao` varchar(200) DEFAULT NULL COMMENT '商品介绍',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616736316814 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-03-26 05:21:51','商品编号1','商品名称1','商品类型1',1,'期望交易地点1','http://localhost:8080/jspmpj0k0/upload/shangpinxinxi_tupian1.jpg','2021-03-26','商品介绍1','账号1','姓名1','是','',1,1,1),(42,'2021-03-26 05:21:51','商品编号2','商品名称2','商品类型2',2,'期望交易地点2','http://localhost:8080/jspmpj0k0/upload/shangpinxinxi_tupian2.jpg','2021-03-26','商品介绍2','账号2','姓名2','是','',2,2,2),(43,'2021-03-26 05:21:51','商品编号3','商品名称3','商品类型3',3,'期望交易地点3','http://localhost:8080/jspmpj0k0/upload/shangpinxinxi_tupian3.jpg','2021-03-26','商品介绍3','账号3','姓名3','是','',3,3,3),(44,'2021-03-26 05:21:51','商品编号4','商品名称4','商品类型4',4,'期望交易地点4','http://localhost:8080/jspmpj0k0/upload/shangpinxinxi_tupian4.jpg','2021-03-26','商品介绍4','账号4','姓名4','是','',4,4,4),(45,'2021-03-26 05:21:51','商品编号5','商品名称5','商品类型5',5,'期望交易地点5','http://localhost:8080/jspmpj0k0/upload/shangpinxinxi_tupian5.jpg','2021-03-26','商品介绍5','账号5','姓名5','是','',5,5,5),(46,'2021-03-26 05:21:51','商品编号6','商品名称6','商品类型6',6,'期望交易地点6','http://localhost:8080/jspmpj0k0/upload/shangpinxinxi_tupian6.jpg','2021-03-26','商品介绍6','账号6','姓名6','是','',6,6,6),(1616736316813,'2021-03-26 05:25:16','1616736253','纸巾','日用百货',15,'安徽','http://localhost:8080/jspmpj0k0/upload/1616736270241.jpg','2021-03-01','纸巾','001','李一','是','',0,0,6);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1616736208411,'001','yonghu','用户','4mah1p3xplntboqfxm45c3e76mnx35ju','2021-03-26 05:24:07','2021-03-26 06:28:47'),(2,1,'abo','users','管理员','7hzn7l84wty2jahi627x2jm10yfdynvc','2021-03-26 05:24:46','2021-03-26 06:29:34'),(3,1616736240272,'002','yonghu','用户','dtjeyhxi9osjja9qzg0z4z2sw3k4bv0y','2021-03-26 05:26:06','2021-03-26 06:26:06');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-26 05:21:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616736240273 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-26 05:21:51','用户1','123456','姓名1','男','13823888881','440300199101010001','http://localhost:8080/jspmpj0k0/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-26 05:21:51','用户2','123456','姓名2','男','13823888882','440300199202020002','http://localhost:8080/jspmpj0k0/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-26 05:21:51','用户3','123456','姓名3','男','13823888883','440300199303030003','http://localhost:8080/jspmpj0k0/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-26 05:21:51','用户4','123456','姓名4','男','13823888884','440300199404040004','http://localhost:8080/jspmpj0k0/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-26 05:21:51','用户5','123456','姓名5','男','13823888885','440300199505050005','http://localhost:8080/jspmpj0k0/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-26 05:21:51','用户6','123456','姓名6','男','13823888886','440300199606060006','http://localhost:8080/jspmpj0k0/upload/yonghu_zhaopian6.jpg'),(1616736208411,'2021-03-26 05:23:28','001','001','李一',NULL,'13589652369','258963258963258963',NULL),(1616736240272,'2021-03-26 05:24:00','002','002','李二',NULL,'15236985236','258987563258963258',NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-27 10:05:27
