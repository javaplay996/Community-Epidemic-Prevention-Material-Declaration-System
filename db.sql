/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shequfywzshenbao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shequfywzshenbao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shequfywzshenbao`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (16,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2023-04-04 14:13:40'),(17,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2023-04-04 14:13:40'),(18,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2023-04-04 14:13:40'),(19,'wuzi_churu_inout_types','出入库类型',1,'出库',NULL,NULL,'2023-04-04 14:13:40'),(20,'wuzi_churu_inout_types','出入库类型',2,'入库',NULL,NULL,'2023-04-04 14:13:40'),(21,'wuzi_yuyue_yesno_types','申请状态',1,'已申请',NULL,NULL,'2023-04-04 14:13:40'),(22,'wuzi_yuyue_yesno_types','申请状态',2,'已同意',NULL,NULL,'2023-04-04 14:13:40'),(23,'wuzi_yuyue_yesno_types','申请状态',3,'已拒绝',NULL,NULL,'2023-04-04 14:13:40'),(24,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-04 14:13:40'),(25,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-04 14:13:40'),(26,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-04 14:13:40'),(27,'sex_types','性别',1,'男',NULL,NULL,'2023-04-04 14:13:40'),(28,'sex_types','性别',2,'女',NULL,NULL,'2023-04-04 14:13:40'),(29,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-04 14:13:40'),(30,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-04 14:13:40'),(31,'gongzuofenpei_types','工作类型',1,'工作类型1',NULL,NULL,'2023-04-04 14:13:41'),(32,'gongzuofenpei_types','工作类型',2,'工作类型2',NULL,NULL,'2023-04-04 14:13:41'),(33,'gongzuofenpei_types','工作类型',3,'工作类型3',NULL,NULL,'2023-04-04 14:13:41');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_phone` varchar(200) DEFAULT NULL COMMENT '图片',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_phone`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'17703786901','发布内容1',155,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(2,'帖子标题2',2,NULL,'17703786902','发布内容2',469,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(3,'帖子标题3',1,NULL,'17703786903','发布内容3',497,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(4,'帖子标题4',3,NULL,'17703786904','发布内容4',225,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(5,'帖子标题5',2,NULL,'17703786905','发布内容5',485,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(6,'帖子标题6',1,NULL,'17703786906','发布内容6',54,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(7,'帖子标题7',3,NULL,'17703786907','发布内容7',162,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(8,'帖子标题8',2,NULL,'17703786908','发布内容8',275,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(9,'帖子标题9',2,NULL,'17703786909','发布内容9',259,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(10,'帖子标题10',2,NULL,'17703786910','发布内容10',162,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(11,'帖子标题11',2,NULL,'17703786911','发布内容11',272,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(12,'帖子标题12',2,NULL,'17703786912','发布内容12',360,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(13,'帖子标题13',3,NULL,'17703786913','发布内容13',464,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(14,'帖子标题14',2,NULL,'17703786914','发布内容14',379,1,'2023-04-04 14:14:01','2023-04-04 14:14:01','2023-04-04 14:14:01'),(15,NULL,1,NULL,NULL,'登录后才可查看数据详情页',14,2,'2023-04-04 14:51:01',NULL,'2023-04-04 14:51:01'),(16,NULL,NULL,1,NULL,'222222222222',14,2,'2023-04-04 14:51:53',NULL,'2023-04-04 14:51:53');

/*Table structure for table `gongzuofenpei` */

DROP TABLE IF EXISTS `gongzuofenpei`;

CREATE TABLE `gongzuofenpei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongzuofenpei_uuid_number` varchar(200) DEFAULT NULL COMMENT '编号',
  `gongzuofenpei_name` varchar(200) DEFAULT NULL COMMENT '工作标题  Search111 ',
  `gongzuofenpei_photo` varchar(200) DEFAULT NULL COMMENT '工作图片',
  `shequrenyuan_id` int(11) DEFAULT NULL COMMENT '社区人员',
  `gongzuofenpei_types` int(11) DEFAULT NULL COMMENT '工作类型 Search111',
  `gongzuofenpei_time` timestamp NULL DEFAULT NULL COMMENT '分配时间',
  `gongzuofenpei_content` text COMMENT '工作分配详情 ',
  `gongzuofenpei_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='工作分配';

/*Data for the table `gongzuofenpei` */

insert  into `gongzuofenpei`(`id`,`gongzuofenpei_uuid_number`,`gongzuofenpei_name`,`gongzuofenpei_photo`,`shequrenyuan_id`,`gongzuofenpei_types`,`gongzuofenpei_time`,`gongzuofenpei_content`,`gongzuofenpei_delete`,`insert_time`,`create_time`) values (1,'1680588841239','工作标题1','upload/gongzuofenpei1.jpg',1,2,'2023-04-04 14:14:01','工作分配详情1',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(2,'1680588841204','工作标题2','upload/gongzuofenpei2.jpg',2,1,'2023-04-04 14:14:01','工作分配详情2',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(3,'1680588841206','工作标题3','upload/gongzuofenpei3.jpg',3,1,'2023-04-04 14:14:01','工作分配详情3',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(4,'1680588841198','工作标题4','upload/gongzuofenpei4.jpg',4,1,'2023-04-04 14:14:01','工作分配详情4',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(5,'1680588841193','工作标题5','upload/gongzuofenpei5.jpg',5,1,'2023-04-04 14:14:01','工作分配详情5',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(6,'1680588841260','工作标题6','upload/gongzuofenpei6.jpg',6,2,'2023-04-04 14:14:01','工作分配详情6',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(7,'1680588841225','工作标题7','upload/gongzuofenpei7.jpg',7,2,'2023-04-04 14:14:01','工作分配详情7',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(8,'1680588841195','工作标题8','upload/gongzuofenpei8.jpg',8,2,'2023-04-04 14:14:01','工作分配详情8',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(9,'1680588841194','工作标题9','upload/gongzuofenpei9.jpg',9,3,'2023-04-04 14:14:01','工作分配详情9',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(10,'1680588841210','工作标题10','upload/gongzuofenpei10.jpg',10,3,'2023-04-04 14:14:01','工作分配详情10',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(11,'1680588841246','工作标题11','upload/gongzuofenpei11.jpg',11,3,'2023-04-04 14:14:01','工作分配详情11',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(12,'1680588841268','工作标题12','upload/gongzuofenpei12.jpg',12,3,'2023-04-04 14:14:01','工作分配详情12',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(13,'1680588841266','工作标题13','upload/gongzuofenpei13.jpg',13,3,'2023-04-04 14:14:01','工作分配详情13',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(14,'1680588841286','工作标题14','upload/gongzuofenpei14.jpg',14,2,'2023-04-04 14:14:01','工作分配详情14',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(15,'1680591120140','打扫xxx地点的卫生','/upload/1680591141743.webp',13,3,'2023-04-05 00:00:00','<p>123</p>',1,'2023-04-04 14:52:27','2023-04-04 14:52:27');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-04-04 14:14:01','公告详情1','2023-04-04 14:14:01'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-04 14:14:01','公告详情2','2023-04-04 14:14:01'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-04 14:14:01','公告详情3','2023-04-04 14:14:01'),(4,'公告标题4',1,'upload/news4.jpg','2023-04-04 14:14:01','公告详情4','2023-04-04 14:14:01'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-04 14:14:01','公告详情5','2023-04-04 14:14:01'),(6,'公告标题6',3,'upload/news6.jpg','2023-04-04 14:14:01','公告详情6','2023-04-04 14:14:01'),(7,'公告标题7',2,'upload/news7.jpg','2023-04-04 14:14:01','公告详情7','2023-04-04 14:14:01'),(8,'公告标题8',2,'upload/news8.jpg','2023-04-04 14:14:01','公告详情8','2023-04-04 14:14:01'),(9,'公告标题9',1,'upload/news9.jpg','2023-04-04 14:14:01','公告详情9','2023-04-04 14:14:01'),(10,'公告标题10',3,'upload/news10.jpg','2023-04-04 14:14:01','公告详情10','2023-04-04 14:14:01'),(11,'公告标题11',1,'upload/news11.jpg','2023-04-04 14:14:01','公告详情11','2023-04-04 14:14:01'),(12,'公告标题12',1,'upload/news12.jpg','2023-04-04 14:14:01','公告详情12','2023-04-04 14:14:01'),(13,'公告标题13',2,'upload/news13.jpg','2023-04-04 14:14:01','公告详情13','2023-04-04 14:14:01'),(14,'公告标题14',2,'upload/news14.jpg','2023-04-04 14:14:01','公告详情14','2023-04-04 14:14:01');

/*Table structure for table `shequrenyuan` */

DROP TABLE IF EXISTS `shequrenyuan`;

CREATE TABLE `shequrenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shequrenyuan_name` varchar(200) DEFAULT NULL COMMENT '社区人员名称 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `shequrenyuan_photo` varchar(200) DEFAULT NULL COMMENT '人员头像',
  `shequrenyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shequrenyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `shequrenyuan_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `shequrenyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='社区人员';

/*Data for the table `shequrenyuan` */

insert  into `shequrenyuan`(`id`,`shequrenyuan_name`,`sex_types`,`shequrenyuan_photo`,`shequrenyuan_phone`,`shequrenyuan_email`,`shequrenyuan_address`,`shequrenyuan_delete`,`create_time`) values (1,'社区人员名称1',1,'upload/shequrenyuan1.jpg','17703786901','1@qq.com','住址1',1,'2023-04-04 14:14:01'),(2,'社区人员名称2',1,'upload/shequrenyuan2.jpg','17703786902','2@qq.com','住址2',1,'2023-04-04 14:14:01'),(3,'社区人员名称3',2,'upload/shequrenyuan3.jpg','17703786903','3@qq.com','住址3',1,'2023-04-04 14:14:01'),(4,'社区人员名称4',1,'upload/shequrenyuan4.jpg','17703786904','4@qq.com','住址4',1,'2023-04-04 14:14:01'),(5,'社区人员名称5',1,'upload/shequrenyuan5.jpg','17703786905','5@qq.com','住址5',1,'2023-04-04 14:14:01'),(6,'社区人员名称6',1,'upload/shequrenyuan6.jpg','17703786906','6@qq.com','住址6',1,'2023-04-04 14:14:01'),(7,'社区人员名称7',2,'upload/shequrenyuan7.jpg','17703786907','7@qq.com','住址7',1,'2023-04-04 14:14:01'),(8,'社区人员名称8',2,'upload/shequrenyuan8.jpg','17703786908','8@qq.com','住址8',1,'2023-04-04 14:14:01'),(9,'社区人员名称9',2,'upload/shequrenyuan9.jpg','17703786909','9@qq.com','住址9',1,'2023-04-04 14:14:01'),(10,'社区人员名称10',1,'upload/shequrenyuan10.jpg','17703786910','10@qq.com','住址10',1,'2023-04-04 14:14:01'),(11,'社区人员名称11',2,'upload/shequrenyuan11.jpg','17703786911','11@qq.com','住址11',1,'2023-04-04 14:14:01'),(12,'社区人员名称12',2,'upload/shequrenyuan12.jpg','17703786912','12@qq.com','住址12',1,'2023-04-04 14:14:01'),(13,'社区人员名称13',1,'upload/shequrenyuan13.jpg','17703786913','13@qq.com','住址13',1,'2023-04-04 14:14:01'),(14,'社区人员名称14',1,'upload/shequrenyuan14.jpg','17703786914','14@qq.com','住址14',1,'2023-04-04 14:14:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'a1','yonghu','用户','n5m71tsuq0ve9roeh3wasi57unkw7k3h','2023-04-04 14:39:23','2023-04-04 15:50:33'),(4,1,'admin','users','管理员','1k5unfr4sivop1mkziq4ewxj2u8rzwdh','2023-04-04 14:49:58','2023-04-04 15:56:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资图片',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int(11) DEFAULT NULL COMMENT '物资库存',
  `wuzi_content` text COMMENT '物资介绍 ',
  `wuzi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`wuzi_uuid_number`,`wuzi_name`,`wuzi_photo`,`wuzi_types`,`wuzi_kucun_number`,`wuzi_content`,`wuzi_delete`,`insert_time`,`create_time`) values (1,'1680588841230','物资名称1','upload/wuzi1.jpg',3,151,'物资介绍1',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(2,'1680588841229','物资名称2','upload/wuzi2.jpg',3,152,'物资介绍2',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(3,'1680588841202','物资名称3','upload/wuzi3.jpg',1,103,'物资介绍3',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(4,'1680588841268','物资名称4','upload/wuzi4.jpg',2,154,'物资介绍4',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(5,'1680588841205','物资名称5','upload/wuzi5.jpg',3,105,'物资介绍5',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(6,'1680588841272','物资名称6','upload/wuzi6.jpg',1,106,'物资介绍6',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(7,'1680588841284','物资名称7','upload/wuzi7.jpg',3,107,'物资介绍7',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(8,'1680588841205','物资名称8','upload/wuzi8.jpg',1,108,'物资介绍8',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(9,'1680588841291','物资名称9','upload/wuzi9.jpg',2,109,'物资介绍9',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(10,'1680588841253','物资名称10','upload/wuzi10.jpg',3,1010,'物资介绍10',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(11,'1680588841218','物资名称11','upload/wuzi11.jpg',3,1011,'物资介绍11',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(12,'1680588841206','物资名称12','upload/wuzi12.jpg',2,1012,'物资介绍12',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(13,'1680588841260','物资名称13','upload/wuzi13.jpg',3,1013,'物资介绍13',1,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(14,'1680588841228','物资名称14','upload/wuzi14.jpg',3,486,'<p>物资介绍14</p>',1,'2023-04-04 14:14:01','2023-04-04 14:14:01');

/*Table structure for table `wuzi_churu_inout` */

DROP TABLE IF EXISTS `wuzi_churu_inout`;

CREATE TABLE `wuzi_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `wuzi_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `wuzi_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型  Search111 ',
  `wuzi_churu_inout_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `wuzi_churu_inout` */

insert  into `wuzi_churu_inout`(`id`,`wuzi_churu_inout_uuid_number`,`wuzi_churu_inout_name`,`wuzi_churu_inout_types`,`wuzi_churu_inout_content`,`insert_time`,`create_time`) values (1,'1680588841289','出入库名称1',2,'备注1','2023-04-04 14:14:01','2023-04-04 14:14:01'),(2,'1680588841208','出入库名称2',2,'备注2','2023-04-04 14:14:01','2023-04-04 14:14:01'),(3,'1680588841218','出入库名称3',1,'备注3','2023-04-04 14:14:01','2023-04-04 14:14:01'),(4,'1680588841223','出入库名称4',1,'备注4','2023-04-04 14:14:01','2023-04-04 14:14:01'),(5,'1680588841229','出入库名称5',2,'备注5','2023-04-04 14:14:01','2023-04-04 14:14:01'),(6,'1680588841231','出入库名称6',1,'备注6','2023-04-04 14:14:01','2023-04-04 14:14:01'),(7,'1680588841253','出入库名称7',2,'备注7','2023-04-04 14:14:01','2023-04-04 14:14:01'),(8,'1680588841231','出入库名称8',1,'备注8','2023-04-04 14:14:01','2023-04-04 14:14:01'),(9,'1680588841236','出入库名称9',1,'备注9','2023-04-04 14:14:01','2023-04-04 14:14:01'),(10,'1680588841239','出入库名称10',1,'备注10','2023-04-04 14:14:01','2023-04-04 14:14:01'),(11,'1680588841224','出入库名称11',2,'备注11','2023-04-04 14:14:01','2023-04-04 14:14:01'),(12,'1680588841224','出入库名称12',1,'备注12','2023-04-04 14:14:01','2023-04-04 14:14:01'),(13,'1680588841301','出入库名称13',2,'备注13','2023-04-04 14:14:01','2023-04-04 14:14:01'),(14,'1680588841250','出入库名称14',2,'备注14','2023-04-04 14:14:01','2023-04-04 14:14:01'),(15,'1680591242344','采购物资1、2、3各 50',2,'','2023-04-04 14:54:02','2023-04-04 14:54:02');

/*Table structure for table `wuzi_churu_inout_list` */

DROP TABLE IF EXISTS `wuzi_churu_inout_list`;

CREATE TABLE `wuzi_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `wuzi_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `wuzi_churu_inout_list` */

insert  into `wuzi_churu_inout_list`(`id`,`wuzi_churu_inout_id`,`wuzi_id`,`wuzi_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,288,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(2,2,2,367,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(3,3,3,37,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(4,4,4,110,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(5,5,5,420,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(6,6,6,28,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(7,7,7,345,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(8,8,8,474,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(9,9,9,158,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(10,10,10,143,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(11,11,11,258,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(12,12,12,36,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(13,13,13,420,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(14,14,14,366,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(15,15,1,50,'2023-04-04 14:54:02','2023-04-04 14:54:02'),(16,15,2,50,'2023-04-04 14:54:02','2023-04-04 14:54:02'),(17,15,4,50,'2023-04-04 14:54:02','2023-04-04 14:54:02');

/*Table structure for table `wuzi_yuyue` */

DROP TABLE IF EXISTS `wuzi_yuyue`;

CREATE TABLE `wuzi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_yuyue_number` int(11) DEFAULT NULL COMMENT '申请数量',
  `wuzi_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `wuzi_yuyue_yesno_text` text COMMENT '申请结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物资申请';

/*Data for the table `wuzi_yuyue` */

insert  into `wuzi_yuyue`(`id`,`wuzi_id`,`yonghu_id`,`wuzi_yuyue_number`,`wuzi_yuyue_yesno_types`,`wuzi_yuyue_yesno_text`,`insert_time`,`create_time`) values (1,1,1,200,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(2,2,3,60,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(3,3,1,287,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(4,4,2,421,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(5,5,1,136,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(6,6,3,352,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(7,7,1,99,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(8,8,2,285,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(9,9,3,145,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(10,10,2,19,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(11,11,3,64,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(12,12,2,17,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(13,13,3,141,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(14,14,2,56,1,NULL,'2023-04-04 14:14:01','2023-04-04 14:14:01'),(15,12,1,1,3,'11111','2023-04-04 14:49:04','2023-04-04 14:49:04'),(16,14,1,14,2,'tongyi','2023-04-04 14:51:30','2023-04-04 14:51:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',2,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com',1,'2023-04-04 14:14:01'),(2,'a2','123456','用户姓名2',1,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com',1,'2023-04-04 14:14:01'),(3,'a3','123456','用户姓名3',1,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com',1,'2023-04-04 14:14:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
