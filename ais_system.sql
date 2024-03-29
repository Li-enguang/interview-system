CREATE DATABASE /*!32312 IF NOT EXISTS*/ `interview_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `interview_system`;

--
-- Table structure for table `reg_userinfo`
--

DROP TABLE IF EXISTS `reg_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_userinfo`
--

LOCK TABLES `reg_userinfo` WRITE;
/*!40000 ALTER TABLE `reg_userinfo` DISABLE KEYS */;
INSERT INTO `reg_userinfo` VALUES (1,'张三','1','1'),(2,'李四','111111','1226631@qq.com'),
(3,'王五','111111','121212@qq.com'),(4,'高博','111111','121234@qq.com');
/*!40000 ALTER TABLE `reg_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_info`
--

DROP TABLE IF EXISTS `stu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_info` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生编号',
  `stu_name` varchar(50) DEFAULT NULL COMMENT '学生姓名',
  `stu_school` varchar(50) DEFAULT NULL COMMENT '大学的学校',
  `stu_major` varchar(50) DEFAULT NULL COMMENT '大学学校的专业',
  `stu_grade` varchar(20) DEFAULT NULL COMMENT '大学年级',
  `stu_mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `stu_choice_score` float DEFAULT NULL COMMENT '笔试选择题分数',
  `stu_program_score` float DEFAULT NULL COMMENT '笔试代码题分数',
  `stu_total_score` float DEFAULT NULL COMMENT '笔试总分',
  `stu_interview_time` datetime DEFAULT NULL COMMENT '面试时间',
  `stu_speculative_score` float DEFAULT NULL COMMENT '理论知识',
  `stu_code_score` float DEFAULT NULL COMMENT '代码能力',
  `stu_think_score` float DEFAULT NULL COMMENT '思维能力',
  `stu_expression_score` float DEFAULT NULL COMMENT '表达能力',
  `stu_interview_score` float DEFAULT NULL COMMENT '面试总分',
  `stu_interview_techer` varchar(20) DEFAULT NULL COMMENT '面试老师',
  `stu_techer_suggest` text COMMENT '面试建议',
  `stu_modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `stu_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `stu_info` WRITE;
/*!40000 ALTER TABLE `stu_info` DISABLE KEYS */;
INSERT INTO `stu_info` VALUES 
(1,'张三','','计算机技术','大三','15066668888',45,45,90,'2020-08-04 08:02:35',23,22,21,24,90,'张老师','很不错','2020-08-04 08:02:35','通过'),
(2,'李四','','信息技术','大三','15000227799',44,44,88,'2020-08-14 12:47:22',23,22,21,24,90,'王老师','很不错','2020-08-14 12:47:22','通过'),
(3,'王五','','计算机技术','大三','15000238899',44,44,88,'2020-08-14 12:47:22',23,22,21,24,90,'张老师','很不错','2020-08-14 12:47:22','通过'),
(4,'高博','','计算机技术','大三','13567893322',44,44,88,'2020-08-14 12:47:22',23,22,21,24,90,'张老师','很不错','2020-08-14 12:47:22','通过');
/*!40000 ALTER TABLE `stu_info` ENABLE KEYS */;
UNLOCK TABLES;
