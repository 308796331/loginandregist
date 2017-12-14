/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.40 : Database - demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`demo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `demo`;

/*Table structure for table `t_book` */

DROP TABLE IF EXISTS `t_book`;

CREATE TABLE `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `bookTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `t_book` */

insert  into `t_book`(`id`,`bookName`,`price`,`author`,`bookTypeId`) values (5,'龙王传说',100,'唐家三少',3),(6,'斗罗大陆',290,'唐家三少',3),(7,'斗破苍穹',15.5,'天蚕土豆',3),(8,'明朝那些事',300,'奇奇',2),(9,'悟空传',45.5,'今何在',2),(10,'三国演义',21.5,'罗贯中',1),(11,'三重门',12.5,'韩寒',1),(12,'冰与火之歌',31.5,'无名',3),(13,'月亮和六便士',15,'毛姆',5),(14,'四世同堂',34.5,'老舍',4),(15,'老人与海',12,'海明威',4),(16,'茶花女',21.5,'大仲马',4),(17,'呐喊',12.44,'鲁迅',5),(18,'骆驼祥子',21.55,'老舍',5),(19,'三生三世',10,'十里桃花',1),(21,'蛙',23.5,'莫言',4),(22,'五魁',30,'贾平凹',4),(23,'四十一炮',23.5,'莫言',4),(24,'丰乳肥臀',40,'莫言',3),(25,'昆仑',23.5,'凤歌',3),(26,'沧海',23.5,'凤歌',3),(27,'灵飞经',23.5,'凤歌',3),(28,'阴阳冕',20,'唐家三少',2),(29,'西游记',30,'吴承恩',3),(30,'红楼梦',30,'曹雪芹',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
