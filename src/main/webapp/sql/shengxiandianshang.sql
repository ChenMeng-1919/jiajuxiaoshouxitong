/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.24-community-nt : Database - shengxiandianshang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shengxiandianshang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shengxiandianshang`;

/*Table structure for table `bbs` */

DROP TABLE IF EXISTS `bbs`;

CREATE TABLE `bbs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `note` text,
  `pubtime` varchar(30) default NULL,
  `note2` text,
  `etime` varchar(30) default NULL,
  `isdel` varchar(10) default NULL,
  `uid` int(11) default NULL,
  `gid` int(11) default NULL,
  `btype` varchar(20) default NULL,
  `status` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bbs` */

/*Table structure for table `forder` */

DROP TABLE IF EXISTS `forder`;

CREATE TABLE `forder` (
  `kid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `fid` int(11) default NULL,
  `status` varchar(30) default NULL,
  `pj` varchar(255) default NULL,
  `stime` varchar(50) default NULL,
  `etime` varchar(50) default NULL,
  `amount` int(11) default NULL,
  `isdel` varchar(50) default NULL,
  `pubtime` varchar(50) default NULL,
  `zprice` double default NULL,
  `ono` varchar(255) default NULL,
  `otype` varchar(10) default NULL,
  `ytime` varchar(30) default NULL,
  `sid` int(11) default NULL,
  PRIMARY KEY  (`kid`),
  KEY `FK_keep` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forder` */

insert  into `forder`(`kid`,`uid`,`fid`,`status`,`pj`,`stime`,`etime`,`amount`,`isdel`,`pubtime`,`zprice`,`ono`,`otype`,`ytime`,`sid`) values (1,5,NULL,'配送完成',NULL,'2020-02-29 21:59:17','2020-02-29 22:00:01',NULL,'1','2020-02-29',20,'20200229215917136024',NULL,NULL,NULL);

/*Table structure for table `fshop` */

DROP TABLE IF EXISTS `fshop`;

CREATE TABLE `fshop` (
  `id` int(11) NOT NULL auto_increment,
  `fid` int(11) default NULL,
  `num` int(11) default NULL,
  `sid` int(11) default NULL,
  `uid` int(11) default NULL,
  `pubtime` varchar(30) default NULL,
  `status` varchar(10) default NULL,
  `oid` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fshop` */

insert  into `fshop`(`id`,`fid`,`num`,`sid`,`uid`,`pubtime`,`status`,`oid`) values (1,4,2,2,5,'2020-02-29 21:58:20','配送完成','20200229215917136024'),(3,7,1,2,5,'2020-02-29 21:58:48','配送完成','20200229215917136024');

/*Table structure for table `ftype` */

DROP TABLE IF EXISTS `ftype`;

CREATE TABLE `ftype` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `isdel` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ftype` */

insert  into `ftype`(`id`,`name`,`isdel`) values (1,'分类1','1'),(2,'分类2','1'),(3,'分类3','1'),(4,'分类4','1'),(5,'分类5','1'),(6,'水果',NULL);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL auto_increment,
  `fid` int(11) default NULL,
  `status` varchar(255) default NULL,
  `img` varchar(255) default NULL,
  `name` varchar(200) default NULL,
  `note` text,
  `price` double default NULL,
  `pubtime` varchar(50) default NULL,
  `isdel` varchar(20) default NULL,
  `uid` varchar(20) default NULL,
  `xnum` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_flower` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`id`,`fid`,`status`,`img`,`name`,`note`,`price`,`pubtime`,`isdel`,`uid`,`xnum`) values (1,2,'','u=2426426128,1742665078&fm=26&gp=0.jpg','商品2','<img src=\"/qichexiaoshou/attached/image/20181204/20181204230356_849.jpg\" alt=\"\" /><img src=\"/qichexiaoshou/attached/image/20181208/20181208201050_99.jpg\" alt=\"\" /><span class=\"txt_tart\" color:#bfbfbf;line-height:40px;background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 40px;\">“</span><span font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\">木耳中的铁元素含量丰富，能有效改善缺铁性贫血症状，达到补血的目的，特别适合女性食用，还能改善女性气色。多吃木耳还是有益的。</span><span class=\"txt_end\" color:#bfbfbf;line-height:40px;background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 40px;\">”</span>',28,'2020-02-26 22:27:22','1','2',5),(2,3,'','u=2265819222,256476065&fm=26&gp=0.jpg','商品3','<img src=\"/qichexiaoshou/attached/image/20181204/20181204230941_175.jpg\" alt=\"\" /><img src=\"/qichexiaoshou/attached/image/20181208/20181208201130_842.jpg\" alt=\"\" /><img src=\"/shengxiandianshang/attached/image/20200226/20200226220647_155.jpg\" alt=\"\" />',29,'2020-02-26 22:27:22','1','2',2),(3,3,'','u=3253580202,2866477226&fm=26&gp=0.jpg','商品4','说明如下',9,'2020-02-26 22:27:22','1','2',3),(4,4,NULL,'u=3416390466,984714222&fm=11&gp=0.jpg','商品6','<p>\r\n	说明333\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',5,'2020-02-26 22:27:22','1','2',3),(5,5,NULL,'u=3440188030,2638509306&fm=115&gp=0.jpg','商品7','说明',8,'2020-02-26 22:27:22','1','2',0),(6,7,NULL,'u=1428075574,3170616397&fm=26&gp=0.jpg','测试商品1','说明如下',25,'2020-02-26 22:27:22','1','4',0),(7,4,NULL,'u=2040131125,2459502508&fm=26&gp=0.jpg','商品8','说明222',10,'2020-02-26 22:27:22','1','2',1),(8,6,NULL,'u=19905030,2284323792&fm=26&gp=0.jpg','苹果1','说明如下',6,'2020-02-29 22:03:37','1','6',0),(9,6,NULL,'u=1115949978,16102597&fm=26&gp=0.jpg','橘子','<img src=\"/shengxiandianshang/attached/image/20200229/20200229220428_698.jpg\" alt=\"\" />',3,'2020-02-29 22:04:31','1','6',0);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `img` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `note` text,
  `isdel` varchar(20) default NULL,
  `pubtime` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`id`,`img`,`name`,`note`,`isdel`,`pubtime`) values (1,'u=2312887304,3104398556&fm=26&gp=0.jpg','新闻2','<img src=\"/qichexiaoshou/attached/image/20181208/20181208200858_970.jpg\" alt=\"\" /><p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\"><strong>4、多喝汤</strong> \r\n	</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\">当人出汗比较多，体液损耗比较大的时候，多喝汤既能及时补充水分，又有利于消化吸收。简单易学的“防暑汤”如山楂汤、绿豆酸梅汤、金银花汤、西瓜翠衣汤等。\r\n</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\"><strong>5、多饮茶</strong> \r\n	</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\">研究人员对炎热天喝温茶水和喝饮料的两组人员的测定表明，温茶能降低皮肤温度1-2度，而冷饮只能使口腔周围变冷。\r\n</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\">喝茶者感觉清凉舒适，渴感全消，而喝冷饮者，周身不畅，渴感未消。如能在温茶中适当加点盐，以弥补出汗过多而丢失的盐分，对预防中暑更有裨益。\r\n	</p>\r\n<p font-size:16px;background-color:#ffffff;text-align:center;\"=\"\" style=\"white-space: normal;\"><a href=\"https://home.meishichina.com/recipe-140200.html\" target=\"_blank\"><img src=\"https://i3.meishichina.com/attachment/recipe/2015/06/09/c640_201506091433836351105.jpg@!c320\" width=\"320\" height=\"320\" title=\"西芹百合\" /></a><br />\r\n<a href=\"https://home.meishichina.com/recipe-140200.html\" target=\"_blank\">西芹百合</a> \r\n</p>','1','2020-02-26 22:27:22'),(2,'14338376572363.jpg','芹菜选购技巧','<img src=\"/qichexiaoshou/attached/image/20181208/20181208200933_323.jpg\" alt=\"\" /><p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\">芹菜是我们总能够吃到的蔬菜，无论什么季节。芹菜不仅营养价值高，而且好搭配，口感还非常的鲜脆。市场上的芹菜主要有四个类型：青芹、黄心芹、白芹和美芹。要想买到优质的芹菜，就得先了解这四种芹菜的食用品质特点：青芹味浓；黄心芹味浓，嫩相；白芹味淡，不脆；美芹味淡，吃口脆。\r\n	</p>\r\n<p background-color:#ffffff;text-align:center;\"=\"\" style=\"white-space: normal; font-size: 14px;\"><img src=\"http://i3.meishichina.com/attachment/201506/9/14338376572363.jpg\" title=\"400-300.jpg\" />\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\">那么如何挑选新鲜的芹菜呢？下面的方法希望能够帮到大家。\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\"><strong>1、看芹菜的根部颜色：</strong>\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\">新鲜芹菜的根部多以翠绿色为主，颜色很饱满。在挑选的时候，根部要以干净，颜色翠绿，无斑点为主要挑选对象。如果芹菜的根部，出现少量的黄色，那么芹菜的存储时间稍久。&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\"><strong>2、看芹菜叶：</strong>\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\">通过芹菜的叶子也是可以看出新鲜与否的。正常叶子应与芹菜茎部分为一个颜色，一样的翠绿。 如果叶子出现黄色的现象，或者叶子蔫，叶子不平整，那么这样的芹菜也是存放稍久的。大多数朋友在做芹菜的时候，会把叶子扔掉。其实叶子的营养是很高的，建议大家可以做一些小菜，咸菜，芹菜叶饼等都是比较美味而且营养丰富的食物。\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\"><strong>3、看芹菜粗细：</strong>\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\">芹菜的茎有些比较粗，而有些较细。大多数朋友购买芹菜是吃它的茎，所以挑选茎比较均匀，肉质较厚的就可以了。芹菜在挑选的时候，可以稍稍摘下叶，很容易折断的那么是新鲜的，可以挑选的。\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\"><strong>4、闻芹菜的味道：</strong>\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\">好的芹菜会有很浓的芹菜味，离的很远也能知道那里有芹菜。 挑选的时候可以放在鼻子下面轻轻闻一下，是不是那种芹菜特有的清香。如果味道很谈的话，不建议大家购买。&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;\r\n	</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\"><strong>5、看芹菜的的叶柄：</strong>\r\n</p>\r\n<p background-color:#ffffff;\"=\"\" style=\"white-space: normal; font-size: 14px;\">叶柄要以肥厚，清脆为主。一颗芹菜要有4个左右的叶柄，叶柄较直 ，而且整齐。 这样的芹菜味道比较的鲜美。&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n	</p>','1','2020-02-26 22:27:22'),(5,'u=1756240822,3791775158&fm=26&gp=0.jpg','养生，注意“五多”原则','<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\">夏天已到，温度逐渐升高，我们需要及时防暑降温。在这么酷热的日子里应该怎么才能养生防暑呢？小编推荐夏至饮食“五多”原则，一起来看看吧！\r\n	</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\"><strong>“五多”原则</strong> \r\n</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\"><strong>1、多吃青菜</strong> \r\n	</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\">天热湿气重，人们一般都喜欢吃清淡味鲜而不油腻的食物，而青菜既有这种特点，又含有丰富的维生素和矿物元素。所以，应尽量多吃青菜，如各种豆类、瓜类、小白菜、香菜等。既可以凉拌生吃，也可放少许瘦肉丝炒熟吃。\r\n</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\"><strong>2、多吃瓜果</strong> \r\n	</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\">瓜果汁多味甜，不仅生津止渴，也能清热解暑。西瓜味甜多汁性凉，是清暑解渴的瓜类之首。另外，香瓜、黄瓜洗净之后生食，或榨汁之后饮用，都有很好的清热解暑作用。猕猴桃含有大量维生素C，有非常好的清热解暑作用。\r\n</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\"><strong>3、多吃粥</strong> \r\n	</p>\r\n<p font-size:16px;background-color:#ffffff;\"=\"\" style=\"white-space: normal;\">在炎热的夏季，人的肠胃因受暑热刺激，功能会相对减弱，容易发生头重倦怠、食欲不振等不适，重者还会中暑。因此，夏季喝消暑保健粥则是饮食调理措施之一，如绿豆粥、金银花粥、薄荷粥、莲子粥、荷叶粥、莲藕粥等。\r\n</p>\r\n<p font-size:16px;background-color:#ffffff;text-align:center;\"=\"\" style=\"white-space: normal;\"><a href=\"https://home.meishichina.com/recipe-210815.html\" target=\"_blank\"><img src=\"https://i3.meishichina.com/attachment/recipe/2015/02/15/c640_201502151423997644243.jpg@!c320\" width=\"320\" height=\"320\" title=\"蚝油西兰花\" /></a><br />\r\n<a href=\"https://home.meishichina.com/recipe-210815.html\" target=\"_blank\">蚝油西兰花</a> \r\n	</p>','1','2020-02-26 22:27:22'),(6,'20120323175338995802970.jpg','补钙','<p style=\"font-size:16px;font-family:\" vertical-align:baseline;color:#333333;\"=\"\">\r\n	　[汽车之家&nbsp;<p class=\"collect_txt\" background-color:#ffffff;\"=\"\" style=\"color: rgb(51, 51, 51); font-size: 16px;\">人体中99%的钙质存在骨骼牙齿中，支持人体的运动和咀嚼能力。体内缺钙，会影响身体成长，导致神经性偏头痛、烦躁不安、失眠，还会出现肌肉痉挛的症状。经常盐酸背痛、血糖低或者常饮用碳酸饮料的人群需要补钙。补钙的最佳方式多在日常饮食中选择天然的食物，如牛奶和豆制品，其钙含量绝对能够满足一个人的需要。\r\n	</p>\r\n	<div class=\"mo\" style=\"margin:0px;padding:20px 0px 20px 25px;color:#FF6767;font-size:20px;\">\r\n		<h3 style=\"font-size:20px;font-weight:400;color:#333333;\">\r\n			补钙推荐食材\r\n		</h3>\r\n	</div>\r\n<div class=\"tui_c\" background-color:#ffffff;\"=\"\" style=\"margin: 0px; padding: 0px;\">\r\n	<ul>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/HeiDou/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2012/03/23/20120323175338995802970.jpg\" width=\"90\" height=\"90\" />黑豆</a>\r\n		</li>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/HeiMuEr/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2012/03/22/20120322173506852102483.jpg\" width=\"90\" height=\"90\" />黑木耳</a>\r\n		</li>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/ZiCai/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2012/03/22/2012032215132557870446.jpg\" width=\"90\" height=\"90\" />紫菜</a>\r\n		</li>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/HaiSen/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2012/03/22/20120322161451270552133.jpg\" width=\"90\" height=\"90\" />海参</a>\r\n		</li>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/JieCai/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2012/03/22/20120322151356831335718.jpg\" width=\"90\" height=\"90\" />芥菜</a>\r\n		</li>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/RuLao/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2014/10/28/20141028174016269705950.jpg\" width=\"90\" height=\"90\" />乳酪</a>\r\n		</li>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/HaiDai/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2012/03/22/20120322151326912549618.jpg\" width=\"90\" height=\"90\" />海带</a>\r\n		</li>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/NiuNai/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2012/03/23/2012032317525972816994.jpg\" width=\"90\" height=\"90\" />牛奶</a>\r\n		</li>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/XiaPi/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2012/03/22/20120322165654897037662.jpg\" width=\"90\" height=\"90\" />虾皮</a>\r\n		</li>\r\n		<li>\r\n			<a href=\"https://www.meishichina.com/YuanLiao/ZhiMa/\" target=\"_blank\"><img class=\"imgLoad\" src=\"https://i3.meishichina.com/attachment/ingredient/2012/03/22/20120322155304930168130.jpg\" width=\"90\" height=\"90\" />芝麻</a>\r\n		</li>\r\n	</ul>\r\n		</div>\r\n		<div class=\"mo\" style=\"margin:0px 0px -20px;padding:20px 0px 20px 25px;color:#FF6767;font-size:20px;\">\r\n			<h3 style=\"font-size:20px;font-weight:400;color:#333333;\">\r\n				补钙食谱\r\n			</h3>\r\n		</div>\r\n<div class=\"ui_newlist_1 get_num\" id=\"J_list\" background-color:#ffffff;\"=\"\" style=\"margin: 0px; padding: 0px;\">\r\n		<ul>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-258479.html\"><img alt=\"小米豆腐虾仁丸\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2016/03/29/c640_20160329145922153397013.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-258479.html\">小米豆腐虾仁丸</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-6357690.html\">小艾厨娘</a>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：小米、鲜虾、豆腐、生姜、大葱、料酒、盐、胡椒粉。\r\n					</p>\r\n					<div class=\"substatus clear\" style=\"margin:0px;padding:20px 0px 0px;\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-257198.html\"><img alt=\"紫菜虾皮鲜肉馄饨\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2016/03/18/c640_20160318145830899556913.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-257198.html\">紫菜虾皮鲜肉馄饨</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-8357090.html\">宝妈小厨.</a>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：面粉、猪肉馅、虾皮、紫菜、葱姜末、料酒、植物油、十三香、盐、生抽、米醋、香油。\r\n					</p>\r\n					<div class=\"substatus clear\" style=\"margin:0px;padding:20px 0px 0px;\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-248491.html\"><img alt=\"海带结大骨汤\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2016/01/16/c640_20160116145295099089113.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-248491.html\">海带结大骨汤</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-6771674.html\">小董妞@厨房</a>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：猪前腿骨、海带结、生姜、草果、盐、味精。\r\n					</p>\r\n					<div class=\"substatus clear\" style=\"margin:0px;padding:20px 0px 0px;\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-244136.html\"><img alt=\"海带黄豆猪蹄汤\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2015/12/17/c640_201512171450347737649.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-244136.html\">海带黄豆猪蹄汤</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-6867953.html\">salila82</a>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：猪蹄、黄豆、花生、海带、红枣、盐、大葱、生姜、花椒、白酒、料酒。\r\n					</p>\r\n					<div class=\"substatus clear\" style=\"margin:0px;padding:20px 0px 0px;\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-256573.html\"><img alt=\"海带萝卜\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2016/03/14/c640_20160314145793391535613.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-256573.html\">海带萝卜</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-602110.html\">辽南蟹</a>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：绿萝卜、海带、蒜苗、山茶油、盐、生抽。\r\n					</p>\r\n					<div class=\"substatus clear\" style=\"margin:0px;padding:20px 0px 0px;\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-255547.html\"><img alt=\"凉拌海带丝\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2016/03/05/c640_20160305145716743096113.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-255547.html\">凉拌海带丝</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-7336788.html\">coldly</a>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：海带丝、生抽、香醋、白糖、芝麻油、辣椒油、红辣椒、蒜、姜、香菜。\r\n					</p>\r\n					<div class=\"substatus clear\" style=\"margin:0px;padding:20px 0px 0px;\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-258695.html\"><img alt=\"海带豆腐汤\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2016/03/30/c640_20160330145934053757813.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-258695.html\">海带豆腐汤</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-8805424.html\">奇玉音缘</a>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：海虹、海带、豆腐、胡椒粉、白糖、料酒、盐、生抽\r\n					</p>\r\n					<div class=\"substatus clear\" style=\"margin:0px;padding:20px 0px 0px;\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-256914.html\"><img alt=\"海带猪蹄汤\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2016/03/16/c640_20160316145813441734713.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-256914.html\">海带猪蹄汤</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-9088392.html\">爱生活的馋猫</a>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：猪蹄、胡椒粉、姜片、海带、料酒、清水。\r\n					</p>\r\n					<div class=\"substatus clear\" style=\"margin:0px;padding:20px 0px 0px;\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-245128.html\"><img alt=\"西洋参炖海参\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2015/12/23/c640_201512231450878917910.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-245128.html\">西洋参炖海参</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-2261565.html\">香儿厨房</a>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：猪排骨、海参、枸杞子、生姜片、小葱、西洋参、料酒、盐。\r\n					</p>\r\n					<div class=\"substatus clear\" style=\"margin:0px;padding:20px 0px 0px;\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"pic\" style=\"margin:20px 0px 0px;padding:0px;\">\r\n					<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-255262.html\"><img alt=\"牛奶燕麦片\" width=\"180\" height=\"180\" src=\"https://i3.meishichina.com/attachment/recipe/2016/03/03/c640_20160303145697187278113.jpg@!c320\" class=\"imgLoad\" /></a>\r\n				</div>\r\n				<div class=\"detail\" style=\"margin:0px;padding:16px 0px 0px 200px;color:#666666;\">\r\n					<h2 style=\"font-size:20px;font-weight:400;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/recipe-255262.html\">牛奶燕麦片</a>\r\n					</h2>\r\n					<p class=\"subline\" style=\"font-size:14px;\">\r\n						<a target=\"_blank\" href=\"https://home.meishichina.com/space-8942382.html\">虫妈小米</a><span class=\"get_nums\" style=\"color:#999999;\"></span>\r\n					</p>\r\n					<p class=\"subcontent\" style=\"color:#333333;font-size:14px;\">\r\n						原料：即食燕麦片、开水、牛奶。\r\n					</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div>\r\n					<br />\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</p>\r\n<p align=\"left\" style=\"font-size:16px;font-family:\" vertical-align:baseline;color:#333333;\"=\"\"><br />\r\n	</p>','1','2020-02-26 22:27:22'),(7,'u=1428075574,3170616397&fm=26&gp=0.jpg','新闻222','寿命','1','2020-02-26 22:27:22'),(8,'u=19905030,2284323792&fm=26&gp=0.jpg','测试新闻11','<p>\r\n	新闻说明111\r\n</p>\r\n<p>\r\n	<img src=\"/shengxiandianshang/attached/image/20200226/20200226220145_243.jpg\" alt=\"\" />\r\n</p>','1','2020-02-26 22:27:22'),(9,'u=3086695044,3692358172&fm=26&gp=0.jpg','新闻44','2222222','1','2020-02-29 22:01:58');

/*Table structure for table `sysuser` */

DROP TABLE IF EXISTS `sysuser`;

CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(20) default NULL,
  `sex` varchar(10) default NULL,
  `address` varchar(100) default NULL,
  `pwd` varchar(20) default NULL,
  `utype` varchar(30) default '会员',
  `tel` varchar(20) default NULL,
  `age` varchar(10) default NULL,
  `mbanswer` varchar(30) default NULL,
  `question` varchar(30) default NULL,
  `email` varchar(30) default NULL,
  `pubtime` varchar(30) default NULL,
  `tname` varchar(50) default NULL,
  `money` double default '0',
  `img` varchar(255) default NULL,
  `isdel` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sysuser` */

insert  into `sysuser`(`id`,`uname`,`sex`,`address`,`pwd`,`utype`,`tel`,`age`,`mbanswer`,`question`,`email`,`pubtime`,`tname`,`money`,`img`,`isdel`) values (1,'admin','女','lll','123','超级管理员','13628796354','29',NULL,NULL,NULL,'2020-02-26 22:27:22','管理员',NULL,'head.jpg','在用'),(2,'yh01','男','地址1','123456','管理员','15687492896','26',NULL,NULL,NULL,'2020-02-26 22:27:22','管理员1',148,'zanwu.jpg','在用'),(3,'test01','女','地址1','123456','用户','14584845215','26',NULL,NULL,NULL,'2020-02-26 22:27:22','测试用户',108,'head.jpg','在用'),(4,'sj02','男','地址1','123456','管理员','15632149876','29',NULL,NULL,NULL,'2020-02-26 22:27:22','管理员2',NULL,'141124854.jpg','1'),(5,'test','女','地址1','123456','用户','15584845215','28',NULL,NULL,NULL,'2020-02-29 21:58:00','测试用户',80,'head.jpg','在用'),(6,'gly01','男','333','123456','管理员','15632149872','25',NULL,NULL,NULL,'2020-02-29 22:01:09','管理员1',NULL,'141124854.jpg','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
