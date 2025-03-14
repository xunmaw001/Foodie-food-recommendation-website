-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm3uxuc
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611883511007 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-29 01:04:50',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-29 01:04:50',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-29 01:04:50',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-29 01:04:50',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-29 01:04:50',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-29 01:04:50',6,'宇宙银河系月球1号','月某','13823888886','是'),(1611883511006,'2021-01-29 01:25:10',1611883445962,'湖北省荆州市洪湖市峰口镇谢家台','小李','16459878988','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'zaixianshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611883663343 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=1611884005154 DEFAULT CHARSET=utf8 COMMENT='在线聊天';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-29 01:04:50',1,1,'提问1','回复1',1),(82,'2021-01-29 01:04:50',2,2,'提问2','回复2',2),(83,'2021-01-29 01:04:50',3,3,'提问3','回复3',3),(84,'2021-01-29 01:04:50',4,4,'提问4','回复4',4),(85,'2021-01-29 01:04:50',5,5,'提问5','回复5',5),(86,'2021-01-29 01:04:50',6,6,'提问6','回复6',6),(1611883693560,'2021-01-29 01:28:12',1611883445962,NULL,'这里可以在线咨询聊天',NULL,0),(1611884005153,'2021-01-29 01:33:24',1611883445962,1,NULL,'这里可以回复用户咨询',NULL);
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm3uxuc/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm3uxuc/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm3uxuc/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `pingjiabiaoti` varchar(200) NOT NULL COMMENT '评价标题',
  `dingdanpingfen` varchar(200) DEFAULT NULL COMMENT '订单评分',
  `dingdanpingjia` longtext COMMENT '订单评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611884112566 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (1611884112565,'2021-01-29 01:35:12','2021129926252098324','这里对订单进行评价','5','<p>666</p>','2021-02-05','666','16459878983','是','这里回复评价');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishifenxiang`
--

DROP TABLE IF EXISTS `discussmeishifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='美食分享评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishifenxiang`
--

LOCK TABLES `discussmeishifenxiang` WRITE;
/*!40000 ALTER TABLE `discussmeishifenxiang` DISABLE KEYS */;
INSERT INTO `discussmeishifenxiang` VALUES (171,'2021-01-29 01:04:50',1,1,'评论内容1','回复内容1'),(172,'2021-01-29 01:04:50',2,2,'评论内容2','回复内容2'),(173,'2021-01-29 01:04:50',3,3,'评论内容3','回复内容3'),(174,'2021-01-29 01:04:50',4,4,'评论内容4','回复内容4'),(175,'2021-01-29 01:04:50',5,5,'评论内容5','回复内容5'),(176,'2021-01-29 01:04:50',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussmeishifenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussremenmeishi`
--

DROP TABLE IF EXISTS `discussremenmeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussremenmeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611883535653 DEFAULT CHARSET=utf8 COMMENT='热门美食评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussremenmeishi`
--

LOCK TABLES `discussremenmeishi` WRITE;
/*!40000 ALTER TABLE `discussremenmeishi` DISABLE KEYS */;
INSERT INTO `discussremenmeishi` VALUES (151,'2021-01-29 01:04:50',1,1,'评论内容1','回复内容1'),(152,'2021-01-29 01:04:50',2,2,'评论内容2','回复内容2'),(153,'2021-01-29 01:04:50',3,3,'评论内容3','回复内容3'),(154,'2021-01-29 01:04:50',4,4,'评论内容4','回复内容4'),(155,'2021-01-29 01:04:50',5,5,'评论内容5','回复内容5'),(156,'2021-01-29 01:04:50',6,6,'评论内容6','回复内容6'),(1611883535652,'2021-01-29 01:25:34',31,1611883445962,'登录后可以收藏  评论  购买等操作','这里回复用户评论');
/*!40000 ALTER TABLE `discussremenmeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszaixianshangcheng`
--

DROP TABLE IF EXISTS `discusszaixianshangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszaixianshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='在线商城评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszaixianshangcheng`
--

LOCK TABLES `discusszaixianshangcheng` WRITE;
/*!40000 ALTER TABLE `discusszaixianshangcheng` DISABLE KEYS */;
INSERT INTO `discusszaixianshangcheng` VALUES (161,'2021-01-29 01:04:50',1,1,'评论内容1','回复内容1'),(162,'2021-01-29 01:04:50',2,2,'评论内容2','回复内容2'),(163,'2021-01-29 01:04:50',3,3,'评论内容3','回复内容3'),(164,'2021-01-29 01:04:50',4,4,'评论内容4','回复内容4'),(165,'2021-01-29 01:04:50',5,5,'评论内容5','回复内容5'),(166,'2021-01-29 01:04:50',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszaixianshangcheng` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1611883625277 DEFAULT CHARSET=utf8 COMMENT='用户交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1611883625276,'2021-01-29 01:27:04','在这里发帖交流','<p>发帖可以插入图片</p><p><img src=\"../../../upload/1611883619660.jpg\" height=\"181\" width=\"181\"></p><p>这里针对用户的帖子  比如敏感话题或者敏感类字眼  可以修改  或者删除</p>',0,1611883445962,'666','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishifenlei`
--

DROP TABLE IF EXISTS `meishifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishifenlei` varchar(200) NOT NULL COMMENT '美食分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `meishifenlei` (`meishifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1611883790530 DEFAULT CHARSET=utf8 COMMENT='美食分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishifenlei`
--

LOCK TABLES `meishifenlei` WRITE;
/*!40000 ALTER TABLE `meishifenlei` DISABLE KEYS */;
INSERT INTO `meishifenlei` VALUES (11,'2021-01-29 01:04:49','家常菜'),(12,'2021-01-29 01:04:49','传统小吃'),(13,'2021-01-29 01:04:49','甜品'),(14,'2021-01-29 01:04:49','健身食谱'),(15,'2021-01-29 01:04:49','厨房百科'),(16,'2021-01-29 01:04:49','美食分类6'),(1611883790529,'2021-01-29 01:29:49','这里添加美食分类');
/*!40000 ALTER TABLE `meishifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishifenxiang`
--

DROP TABLE IF EXISTS `meishifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenxiangbiaoti` varchar(200) NOT NULL COMMENT '分享标题',
  `meishifenlei` varchar(200) NOT NULL COMMENT '美食分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `xiangqing` longtext COMMENT '详情',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611883759472 DEFAULT CHARSET=utf8 COMMENT='美食分享';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishifenxiang`
--

LOCK TABLES `meishifenxiang` WRITE;
/*!40000 ALTER TABLE `meishifenxiang` DISABLE KEYS */;
INSERT INTO `meishifenxiang` VALUES (71,'2021-01-29 01:04:49','分享标题1','美食分类1','http://localhost:8080/ssm3uxuc/upload/meishifenxiang_tupian1.jpg','','详情1','用户名1','邮箱1','是','',2,1),(72,'2021-01-29 01:04:49','分享标题2','美食分类2','http://localhost:8080/ssm3uxuc/upload/meishifenxiang_tupian2.jpg','','详情2','用户名2','邮箱2','是','',2,2),(73,'2021-01-29 01:04:49','分享标题3','美食分类3','http://localhost:8080/ssm3uxuc/upload/meishifenxiang_tupian3.jpg','','详情3','用户名3','邮箱3','是','',3,3),(74,'2021-01-29 01:04:49','分享标题4','美食分类4','http://localhost:8080/ssm3uxuc/upload/meishifenxiang_tupian4.jpg','','详情4','用户名4','邮箱4','是','',4,4),(75,'2021-01-29 01:04:49','分享标题5','美食分类5','http://localhost:8080/ssm3uxuc/upload/meishifenxiang_tupian5.jpg','','详情5','用户名5','邮箱5','是','',5,5),(76,'2021-01-29 01:04:49','分享标题6','美食分类6','http://localhost:8080/ssm3uxuc/upload/meishifenxiang_tupian6.jpg','','详情6','用户名6','邮箱6','是','',6,6),(1611883759471,'2021-01-29 01:29:19','这里可以分享','家常菜','http://localhost:8080/ssm3uxuc/upload/1611883721707.jpg','http://localhost:8080/ssm3uxuc/upload/1611883734395.mp4','<p>用户上传的分享  管理员那边审核通过后 才会显示在前台</p><p><img src=\"http://localhost:8080/ssm3uxuc/upload/1611883757975.jpg\"></p>','666','16@123.com','是','这里审核用户分享',1,0);
/*!40000 ALTER TABLE `meishifenxiang` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='美食资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (141,'2021-01-29 01:04:50','一年煎700块牛排，40岁大叔用美食收获500多万粉丝','\"小关老师您来了，欢迎您来我们这里探店啊!\"周末，小关老师和朋友到上海一家餐厅吃饭，尽管戴着口罩，但刚一进门就被服务员认了出来。','http://localhost:8080/ssm3uxuc/upload/news_picture1.jpg','<p class=\"ql-align-justify\">	一年多来，小关老师也记不清类似的事总共发生了多少次。朋友们都打趣他说，你火了。</p><p class=\"ql-align-justify\">	小关老师，1981年出生。2019年，他用自己的抖音账号@小关老师，发布了第一条原创的视频，他让网友们知道，原来煎好牛排后，不能直接吃，而是要醒肉后才能吃。这条视频最后让他收获了10万多个点赞和7万多粉丝。</p><p class=\"ql-align-justify\">	截至目前，他已经发布了700多个视频，收获了520多万粉丝和4000多万点赞量，2020年初开始直播带货，单月直播成交额过千万，一年下来，总成交额已经超1亿元。这一年，他在抖音煎了700块牛排。</p><p><br></p>'),(142,'2021-01-29 01:04:50','“世界长寿之乡”美食走上深圳人餐桌','深圳晚报讯（记者 邱志东 通讯员 苏文昌 黄耀辉 李月香） 1月28日','http://localhost:8080/ssm3uxuc/upload/news_picture2.jpg','<p class=\"ql-align-justify\">	由大鹏新区扶贫办指导、华润万家有限公司和深圳市一盏灯农产品供应链有限公司联合成立的大鹏新区消费扶贫专区在华润万家大鹏店揭牌，通过在卖场显眼地方特设消费扶贫产品专区 ,助力大鹏新区对口帮扶地区的农特产品销售。</p><p class=\"ql-align-justify\">	消费扶贫是社会各界通过消费来自贫困地区和贫困人口的产品与服务，帮助贫困人口增收脱贫的一种扶贫方式，是社会力量参与脱贫攻坚的重要途径。通过开设消费扶贫专柜的方式助力农产品走出大山，让人民群众都能了解消费扶贫、都能参与到消费扶贫当中,打通扶贫的痛点和难点,走出一条扶贫新路，从而有效地助力乡村振兴，使贫困群众早日脱贫致富。</p><p class=\"ql-align-justify\">	揭牌仪式后，参会嘉宾们共同参观了解专区各项工作。大鹏新区消费扶贫专区相关负责人表示，大鹏新区消费扶贫专区上线销售的巴马香米、巴马香猪腊肠、巴马香猪腊肉、巴马香猪肉条等农产品由深圳市一盏灯农产品供应链有限公司选购，均是来自广西巴马瑶族自治县的特色生态农产品。今后大鹏新区消费扶贫专区将上线更多农产品，并完善购买渠道，将更优质、更健康的农产品带给大家。</p><p class=\"ql-align-justify\">	据悉，2020年，大鹏新区帮助广西巴马瑶族自治县农产品销售到广东的金额超8200万元，巴马县“稻尊牌瑶乡农家粘香米”“天醇”酸奶和山茶油等5个农副产品已通过深圳市“圳品”认证，大鹏新区各单位购买扶贫产品近2000万元。</p><p class=\"ql-align-justify\">	此外，大鹏新区还精心组织开展“消费扶贫月”活动，与中国广核集团有限公司联手打造首个“进企业”的“大鹏新区扶贫产品专区”，启动消费扶贫关爱行动暨巴马乡村振兴共创行动，助力“世界长寿之乡”美食走进深圳，首个“巴马·肴”健康餐厅已在深开业。近三年来，在深圳、广州设立3个面积不少于200平方米，集服务、招商、展览、销售和扶贫五大主体功能于一体的“巴马之窗”展示点，成为巴马走向深圳甚至粤港澳大湾区的窗口。</p><p><br></p>'),(143,'2021-01-29 01:04:50','英国人问：英国很著名的美食，为什么中国人很难接受？','在中国吃货的眼中，世界地图其实就是一个美食地图。无论是美国的牛排、日本的寿司、德国的烤肠和墨西哥的手卷，都是令人垂涎欲滴的美食。这些能象征一个国家的著名美食，在全世界的地位都非常的高','http://localhost:8080/ssm3uxuc/upload/news_picture3.jpg','<p>如果说日本的代表美食是寿司，韩国是泡菜，美国是牛排。那么对于英国来说，炸鱼薯条就是最能代表着英国的美食。在英国无论是老弱年少还是男性女性，对这一道美食都爱的无法自拔。炸鱼薯条对于英国人来说，就像米饭面条在中国人心中的地位。所以对于这一美食英国人也是非常自豪的，但是最令他们疑惑的就是，为什么同样作为能代表国家的美食，中国人却很难接受英国的炸鱼薯条呢？</p><p><br></p>'),(144,'2021-01-29 01:04:50','永州市新田县扎肉：家常美食 馈赠佳品','所谓百里不同风，千里不同俗。不同的地域，有着独特的民俗风情，最令人津津乐道的，莫过于地方特色美食。新田地处湘南，勤劳而又智慧的新田人，从未放弃对美食文化的传承与创新，众多家常菜品中，新田扎肉独树一帜。春节临近，人们忙着制作扎肉，这道传统美食也开始走俏市场。','http://localhost:8080/ssm3uxuc/upload/news_picture4.jpg','<p>	腊月拉开过年的序幕，在新田的农村，乡亲们陆续宰杀年猪，准备过年的肉菜。在枧头镇豪山村，村民刘家林家一大早就热闹了起来，他家要杀一头年猪，请来了村民们来帮忙。刘家林的土猪采取散养式喂养，吃草料野菜长大，猪受到惊吓，四处乱窜，野性十足，大家费了好大劲，才把猪按在案板上。</p><p>	根据之前的约定，从事餐饮行业的彭红海，一大早也从县城驱车来到豪山村，准备从刘家林这里购买一些制作扎肉的食材。“肉质好，做出来的扎肉香味就很足，吃起来有一种小时候的味道，所以我们对食材的要求，尽量选用农村红薯蔬菜喂养的猪肉。”彭红海对制作扎肉的材料极为苛刻。他介绍，制作扎肉的流程并不复杂，但是材料将直接影响扎肉的口感。</p><p>	五花肉肥瘦相间，最适合制作扎肉，做成扎肉后吃起来嚼劲十足，香辣可口。将五花肉清洗干净后，剔除猪皮上残留的细毛，切成大小均匀的肉片，洒入少许高度白酒，增加扎肉的香醇，然后再根据一定的比例，洒入食盐，用双手不断搅拌均匀。五花肉放置沥干水份后，接下来就是拌辣椒粉。辣椒选用的是陶岭三味辣椒，手工舂制成辣椒粉，撒在扎肉上用手不断地搅拌。</p>'),(145,'2021-01-29 01:04:50','舌尖上的邵阳特色风味美食小吃','湖南省邵阳市有“铁打的宝庆”的称号。这称号来源于邵阳优越的地理位置，邵阳在古代时，被邵水环绕，四面环山，属于易守难攻的类型，故获此美称。许多城市也有独特的美食和小吃','http://localhost:8080/ssm3uxuc/upload/news_picture5.jpg','<p class=\"ql-align-justify\">如北京，烤鸭的扎江面，天津，的麻花，济南，的宣亚，郑州的回面等。当然，今天的主角邵阳也不例外。除了美丽的风景，这里还有无数美味的食物。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">猪血丸子始于清康熙年间，民间历代相传，至今已有好几百年的历史。猪血丸子的主要原料是豆腐，先用纱布将豆腐中的水分滤干，然后将豆腐捏碎，再将新鲜猪肉切成肉丁或条状，拌以适量猪血、盐、辣椒粉、五香粉以及少许麻油、香油、味精、芝麻等佐料，搅拌匀后，做成馒头大小椭圆形状的丸子，放在太阳下晒几天，再挂在柴火灶上让烟火熏干，烟熏的时间越长，腊香味越浓。也有做一铁架，架下用火炉焚烧锯木屑、糠皮、谷壳或木炭熏烤，此种熏法特别讲究火候，不能过急过猛，否则口味不佳。</p><p><br></p>'),(146,'2021-01-29 01:04:50','舌尖上的邵阳特色风味美食小吃','湖南省邵阳市有“铁打的宝庆”的称号。这称号来源于邵阳优越的地理位置，邵阳在古代时，被邵水环绕，四面环山，属于易守难攻的类型，故获此美称。许多城市也有独特的美食和小吃，如北京，烤鸭的扎江面，天津，的麻花，济南，的宣亚，郑州的回面等。当然，今天的主角邵阳也不例外。除了美丽的风景，这里还有无数美味的食物。','http://localhost:8080/ssm3uxuc/upload/news_picture6.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">猪血丸子始于清康熙年间，民间历代相传，至今已有好几百年的历史。猪血丸子的主要原料是豆腐，先用纱布将豆腐中的水分滤干，然后将豆腐捏碎，再将新鲜猪肉切成肉丁或条状，拌以适量猪血、盐、辣椒粉、五香粉以及少许麻油、香油、味精、芝麻等佐料，搅拌匀后，做成馒头大小椭圆形状的丸子，放在太阳下晒几天，再挂在柴火灶上让烟火熏干，烟熏的时间越长，腊香味越浓。也有做一铁架，架下用火炉焚烧锯木屑、糠皮、谷壳或木炭熏烤，此种熏法特别讲究火候，不能过急过猛，否则口味不佳。武冈卤豆腐，湖南邵阳特色的美食之一，这道美食选择的是当地特有的优质豆腐来作为主要的原材料，加上特制卤汁制作而成，口感非常筋道，颜色是鲜亮的黄褐色，营养丰富。</span></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'zaixianshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1611883670010 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1611883575867,'2021-01-29 01:26:15','2021129926252098324','zaixianshangcheng',1611883445962,46,'商品名称6','http://localhost:8080/ssm3uxuc/upload/1611883082298.jpg',1,19,19,19,19,1,'已完成','湖北省荆州市洪湖市峰口镇谢家台'),(1611883670009,'2021-01-29 01:27:49','20211299273696039373','zaixianshangcheng',1611883445962,41,'食谱','http://localhost:8080/ssm3uxuc/upload/zaixianshangcheng_tupian1.jpg',1,20,20,20,20,1,'已完成','湖北省荆州市洪湖市峰口镇谢家台');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remenmeishi`
--

DROP TABLE IF EXISTS `remenmeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remenmeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishifenlei` varchar(200) NOT NULL COMMENT '美食分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `diqu` varchar(200) NOT NULL COMMENT '地区',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `tese` varchar(200) DEFAULT NULL COMMENT '特色',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `tuijianxiangqing` longtext COMMENT '推荐详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='热门美食';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remenmeishi`
--

LOCK TABLES `remenmeishi` WRITE;
/*!40000 ALTER TABLE `remenmeishi` DISABLE KEYS */;
INSERT INTO `remenmeishi` VALUES (31,'2021-01-29 01:04:49','美食名称1','传统小吃','http://localhost:8080/ssm3uxuc/upload/remenmeishi_tupian1.jpg','地区1','口味1','特色1','http://localhost:8080/ssm3uxuc/upload/1611882911345.mp4','<p>推荐详情1</p>','2021-01-29 09:33:54',5),(32,'2021-01-29 01:04:49','美食名称2','美食分类2','http://localhost:8080/ssm3uxuc/upload/remenmeishi_tupian2.jpg','地区2','口味2','特色2','','推荐详情2','2021-01-29 09:04:49',2),(33,'2021-01-29 01:04:49','美食名称3','美食分类3','http://localhost:8080/ssm3uxuc/upload/remenmeishi_tupian3.jpg','地区3','口味3','特色3','','推荐详情3','2021-01-29 09:04:49',3),(34,'2021-01-29 01:04:49','美食名称4','美食分类4','http://localhost:8080/ssm3uxuc/upload/remenmeishi_tupian4.jpg','地区4','口味4','特色4','','推荐详情4','2021-01-29 09:04:49',4),(35,'2021-01-29 01:04:49','美食名称5','美食分类5','http://localhost:8080/ssm3uxuc/upload/remenmeishi_tupian5.jpg','地区5','口味5','特色5','','推荐详情5','2021-01-29 09:04:49',5),(36,'2021-01-29 01:04:49','美食名称6','美食分类6','http://localhost:8080/ssm3uxuc/upload/remenmeishi_tupian6.jpg','地区6','口味6','特色6','','推荐详情6','2021-01-29 09:04:49',6);
/*!40000 ALTER TABLE `remenmeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1611883802406 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (21,'2021-01-29 01:04:49','水果'),(22,'2021-01-29 01:04:49','教学课程'),(23,'2021-01-29 01:04:49','厨房家电'),(24,'2021-01-29 01:04:49','生鲜'),(25,'2021-01-29 01:04:49','蔬菜'),(1611883802405,'2021-01-29 01:30:01','这里添加商品分类');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1611883565158 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611883523160,'2021-01-29 01:25:22',1611883445962,31,'remenmeishi','美食名称1','http://localhost:8080/ssm3uxuc/upload/remenmeishi_tupian1.jpg'),(1611883565157,'2021-01-29 01:26:04',1611883445962,46,'zaixianshangcheng','商品名称6','http://localhost:8080/ssm3uxuc/upload/1611883082298.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','pud1u3xs2tegnsi0foks5eldpra3ur0z','2021-01-29 01:06:18','2021-01-29 02:35:19'),(2,1611883445962,'666','yonghu','用户','pl02bezyzpjtntigdkri2cox7p8420zv','2021-01-29 01:24:13','2021-01-29 02:35:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-29 01:04:50'),(2,'000','000','管理员','2021-01-29 01:32:52');
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611883445963 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (51,'2021-01-29 01:04:49','用户1','123456','姓名1','男','http://localhost:8080/ssm3uxuc/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',100),(52,'2021-01-29 01:04:49','用户2','123456','姓名2','男','http://localhost:8080/ssm3uxuc/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',100),(53,'2021-01-29 01:04:49','用户3','123456','姓名3','男','http://localhost:8080/ssm3uxuc/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',100),(54,'2021-01-29 01:04:49','用户4','123456','姓名4','男','http://localhost:8080/ssm3uxuc/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com',100),(55,'2021-01-29 01:04:49','用户5','123456','姓名5','男','http://localhost:8080/ssm3uxuc/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',100),(1611883445962,'2021-01-29 01:24:05','666','666','小李','男','http://localhost:8080/ssm3uxuc/upload/1611883467117.jpg','16459878983','16@123.com',561);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianshangcheng`
--

DROP TABLE IF EXISTS `zaixianshangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `jieshao` varchar(200) DEFAULT NULL COMMENT '介绍',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='在线商城';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianshangcheng`
--

LOCK TABLES `zaixianshangcheng` WRITE;
/*!40000 ALTER TABLE `zaixianshangcheng` DISABLE KEYS */;
INSERT INTO `zaixianshangcheng` VALUES (41,'2021-01-29 01:04:49','食谱','教学课程','http://localhost:8080/ssm3uxuc/upload/zaixianshangcheng_tupian1.jpg','规格1','http://localhost:8080/ssm3uxuc/upload/1611883337456.mp4','2021-02-06','<p>商品详情1</p>',20),(42,'2021-01-29 01:04:49','商品名称2','商品分类2','http://localhost:8080/ssm3uxuc/upload/zaixianshangcheng_tupian2.jpg','规格2','','2021-01-29','商品详情2',99.9),(43,'2021-01-29 01:04:49','商品名称3','商品分类3','http://localhost:8080/ssm3uxuc/upload/zaixianshangcheng_tupian3.jpg','规格3','','2021-01-29','商品详情3',99.9),(44,'2021-01-29 01:04:49','商品名称4','商品分类4','http://localhost:8080/ssm3uxuc/upload/zaixianshangcheng_tupian4.jpg','规格4','','2021-01-29','商品详情4',99.9),(45,'2021-01-29 01:04:49','商品名称5','厨房家电','http://localhost:8080/ssm3uxuc/upload/1611883058298.jpg','规格5','','2021-01-29','<p>商品详情5</p>',26),(46,'2021-01-29 01:04:49','商品名称6','厨房家电','http://localhost:8080/ssm3uxuc/upload/1611883082298.jpg','规格6','','2021-01-03','<p>商品详情6</p>',19);
/*!40000 ALTER TABLE `zaixianshangcheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-30  9:32:51
