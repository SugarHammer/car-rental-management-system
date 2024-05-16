# Host: localhost  (Version: 5.7.26)
# Date: 2024-04-29 16:27:09
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin_info"
#

DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编号',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `account` double(10,2) DEFAULT NULL COMMENT '余额',
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='超级管理员信息表';

#
# Data for table "admin_info"
#

INSERT INTO `admin_info` VALUES (1,'superadmin','e10adc3949ba59abbe56e057f20f883e','管理员','男',22,'2020-11-15 17:42:13','18843232356','上海市','111','aa@163.com','342425199001116372',101.30,1);

#
# Structure for table "advertiser_info"
#

DROP TABLE IF EXISTS `advertiser_info`;
CREATE TABLE `advertiser_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告名称',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '公告内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公告信息表';

#
# Data for table "advertiser_info"
#

INSERT INTO `advertiser_info` VALUES (1,'系统公告','<h1>租车用户违约管理办法：</h1><p><br></p><ol><li>如已支付预定费用，该费用不予退还。</li><li>如因此给车行造成损失，您需要承担相应的赔偿责任。</li><li>违约记录将被记入信用体系，可能对您的信用评分造成影响。 请确保今后遵守租车协议并按时履行义务。感谢您的理解和合作。</li></ol><p><br></p><p class=\"ql-align-center\"><img src=\"https://tse4-mm.cn.bing.net/th/id/OIP-C.HZkXOfhsHv3jifl2qgXbbQHaEn?pid=ImgDet&amp;rs=1\" alt=\"宝马电动概念4k汽车壁纸图片-汽车-3g电脑壁纸图片\"></p><p class=\"ql-align-center\"><br></p><h2>违约用户：</h2><ul><li>张三      13811457457     违约金：100</li><li>李四      13845741124     违约金：200</li><li><s>王五      13844775474     违约金：241</s></li></ul>','2023-04-24 17:53:03'),(2,'楚楚租车通知','<p>本系统旨在毕业设计使用，不用于商用，参考~<a href=\"https://car.autohome.com.cn/\" target=\"_blank\"><em><u>其他租车系统</u></em></a>~来编写Q!!!!!!</p>','2023-04-24 17:47:46');

#
# Structure for table "business_info"
#

DROP TABLE IF EXISTS `business_info`;
CREATE TABLE `business_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `account` double(10,2) DEFAULT NULL COMMENT '余额',
  `level` int(11) NOT NULL DEFAULT '2' COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员信息表';

#
# Data for table "business_info"
#

INSERT INTO `business_info` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','管理员','男',22,'2020-11-15 17:42:13','18843232356','上海市','aa@163.com','342425199001116372',0.00,2);

#
# Structure for table "cart_info"
#

DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `goodsId` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属商品',
  `userId` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属用户',
  `level` int(11) DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='购物车信息表';

#
# Data for table "cart_info"
#

INSERT INTO `cart_info` VALUES (7,1,3,1,3,'2023-04-24 18:00:47');

#
# Structure for table "check_info"
#

DROP TABLE IF EXISTS `check_info`;
CREATE TABLE `check_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年龄',
  `temperature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '体温',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='人员检测信息表';

#
# Data for table "check_info"
#

INSERT INTO `check_info` VALUES (1,'张三','23','38','13455556666','不还车'),(2,'李四','34','37.2','15600001111','租车出事故后掩盖事实');

#
# Structure for table "comment_info"
#

DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评价内容',
  `goodsId` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属商品',
  `userId` bigint(20) NOT NULL DEFAULT '0' COMMENT '评价人id',
  `level` int(11) DEFAULT NULL COMMENT '用户等级',
  `createTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品评价表';

#
# Data for table "comment_info"
#

INSERT INTO `comment_info` VALUES (1,'不错',1,1,1,'2020-11-15 21:12:53');

#
# Structure for table "comment_richtext_info"
#

DROP TABLE IF EXISTS `comment_richtext_info`;
CREATE TABLE `comment_richtext_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论时间',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论人',
  `foreignId` bigint(20) DEFAULT NULL COMMENT '关联的模块id',
  `parentId` bigint(20) DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='防疫须知评论信息表';

#
# Data for table "comment_richtext_info"
#

INSERT INTO `comment_richtext_info` VALUES (1,'不错','2020-11-15 21:12:07','superadmin',1,0);

#
# Structure for table "goods_info"
#

DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '商品描述',
  `price` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `discount` double(10,2) DEFAULT '1.00' COMMENT '商品折扣',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '商品销量',
  `hot` int(11) NOT NULL DEFAULT '0' COMMENT '商品点赞数',
  `recommend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '否' COMMENT '是否是推荐',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '商品库存',
  `typeId` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属类别',
  `fileIds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品图片id，用英文逗号隔开',
  `userId` bigint(20) NOT NULL DEFAULT '0' COMMENT '评价人id',
  `level` int(11) DEFAULT NULL COMMENT '用户等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品详情表';

#
# Data for table "goods_info"
#

INSERT INTO `goods_info` VALUES (1,'揽胜极光','2021款 极光L 249PS R-Dynamic HSE 奢享版',500.00,0.80,33,128,'是',197,1,'[15]',1,1),(2,'奇瑞捷豹路虎','发现运动版 2022款 改款 249PS R-Dynamic SE 性能科技版 5座',439.00,0.80,10,8,'是',200,2,'[16]',1,1),(3,'华晨宝马','宝马X2 2023款 sDrive 25i 曜熠版',1500.00,0.80,20,8,'是',200,3,'[17]',1,1),(4,'北京奔驰','奔驰GLB 2023款 GLB 200 动感型',169.00,0.90,1,0,'是',199,1,'[24]',1,1),(5,'上汽通用别克','昂科拉 2020款 15T 自动进取型',999.00,0.90,0,0,'否',500,3,'[18]',1,1),(6,'Jeep','大切诺基(进口) 2020款 3.0L 专业导航版',13.00,5.00,1,0,'否',149,3,'[20]',1,1),(7,'江铃福特','领界 2020款 领界S EcoBoost 145 手动精领型',542.00,0.90,0,0,'否',138,3,'[21]',1,1),(8,'悦达起亚','KX3傲跑 2021款 1.5L CVT风尚版',650.00,0.90,0,0,'否',605,3,'[22]',1,1),(9,'捷豹(进口)','捷豹F-PACE 2022款 P250 HSE',750.00,0.70,0,0,'是',98,3,'[23]',1,1);

#
# Structure for table "message_info"
#

DROP TABLE IF EXISTS `message_info`;
CREATE TABLE `message_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '留言名称',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '留言内容',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '留言时间',
  `parentId` bigint(20) DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='在线交流信息表';

#
# Data for table "message_info"
#

INSERT INTO `message_info` VALUES (1,'superadmin','这个真的太棒了，女朋友哭死','2020-11-15 21:16:54',0),(2,'superadmin','那是！一个好看','2020-11-15 21:17:12',1);

#
# Structure for table "nx_system_file_info"
#

DROP TABLE IF EXISTS `nx_system_file_info`;
CREATE TABLE `nx_system_file_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `originName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '原始文件名',
  `fileName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存储文件名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文件信息表';

#
# Data for table "nx_system_file_info"
#

INSERT INTO `nx_system_file_info` VALUES (1,'1.jpg','1.jpg'),(2,'2.jpg','2.jpg'),(3,'3.jpg','3.jpg'),(4,'4.jpg','4.jpg'),(5,'001.jpg','0011667559582083.jpg'),(6,'002.jpg','0021667560712669.jpg'),(7,'003.jpg','0031667560977535.jpg'),(8,'004.jpg','0041667561100754.jpg'),(9,'008.jpg','0081667561505055.jpg'),(10,'005.jpg','0051667561602717.jpg'),(11,'006.jpg','0061667561698971.jpg'),(12,'007.jpg','0071667561757271.jpg'),(13,'009.jpg','0091667561837738.jpg'),(14,'010.jpg','0101667561956294.jpg'),(15,'21.jpg','211682327206489.jpg'),(16,'22.jpg','221682327243855.jpg'),(17,'23.jpg','231682327270379.jpg'),(18,'24.jpg','241682327292791.jpg'),(19,'25.jpg','251682327322322.jpg'),(20,'26.jpg','261682327330022.jpg'),(21,'27.jpg','271682327359904.jpg'),(22,'28.jpg','281682327379259.jpg'),(23,'29.jpg','291682327412413.jpg'),(24,'24.jpg','241682327456006.jpg');

#
# Structure for table "order_goods_rel"
#

DROP TABLE IF EXISTS `order_goods_rel`;
CREATE TABLE `order_goods_rel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint(20) DEFAULT NULL COMMENT '订单ID',
  `goodsId` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属商品',
  `count` int(11) DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='订单商品关系映射表';

#
# Data for table "order_goods_rel"
#

INSERT INTO `order_goods_rel` VALUES (1,1,1,30),(2,2,2,10),(3,3,3,20),(4,4,1,1),(5,5,4,1),(6,6,1,1),(7,7,6,1),(8,8,1,1);

#
# Structure for table "order_info"
#

DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `orderId` bigint(20) DEFAULT NULL COMMENT '订单ID',
  `totalPrice` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价格',
  `userId` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属用户',
  `level` int(11) DEFAULT NULL COMMENT '用户等级',
  `linkAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系地址',
  `linkPhone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系电话',
  `linkMan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系人',
  `createTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建时间',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未发货' COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品订单信息表';

#
# Data for table "order_info"
#

INSERT INTO `order_info` VALUES (1,111111,480.00,1,1,'安徽省合肥市高新区','18812337865','admin','2020-11-15 17:42:13','完成'),(2,222222,160.00,1,2,'上海市浦东新区','18812337865','张三','2020-11-15 17:42:13','完成'),(3,333333,320.00,1,3,'上海市长宁区','18812337865','李四','2020-11-15 17:42:13','完成'),(4,12020111520363133,16.00,1,1,'上海市','18843232356','管理员','2020-11-15 20:36:13','完成'),(5,12020111521132628,2.70,1,1,'上海市','18843232356','管理员','2020-11-15 21:13:44','完成'),(6,12022110417028010,16.00,1,3,'上海市','18843232356','老张','2022-11-04 17:02:58','待付款'),(7,12023042417306487,65.00,1,3,'上海红桥区睿王渊小区5楼1506号','18843232356','老张','2023-04-24 17:30:03','申请还车中'),(8,12023042417357048,400.00,1,3,'上海红桥区睿王渊小区5楼1506号','18843232356','老张','2023-04-24 17:35:37','已还车');

#
# Structure for table "praise_richtext_info"
#

DROP TABLE IF EXISTS `praise_richtext_info`;
CREATE TABLE `praise_richtext_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户id',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '点赞时间',
  `level` int(11) DEFAULT NULL COMMENT '用户等级',
  `foreignId` bigint(20) DEFAULT NULL COMMENT '关联的模块id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='防疫须知点赞信息表';

#
# Data for table "praise_richtext_info"
#

INSERT INTO `praise_richtext_info` VALUES (1,1,'2022-11-15 21:11:58',1,1),(2,1,'2022-11-04 19:44:53',3,1);

#
# Structure for table "richtext_info"
#

DROP TABLE IF EXISTS `richtext_info`;
CREATE TABLE `richtext_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '时间',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '公告内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='防疫须知信息表';

#
# Data for table "richtext_info"
#

INSERT INTO `richtext_info` VALUES (1,'新冠肺炎的预防和控制','2022-11-15T20:35','<h2><br></h2><p>1.新型冠状病毒</p><p><br></p><p>新型冠状病毒是指以前从未在人类中发现的冠状病毒新毒株。2019年12月导致武汉病毒性肺炎暴发疫情的病毒为新型冠状病毒，世界卫生组织将该病毒命名为COVID-19。</p><h2><br></h2><p>2.传染源</p><p><br></p><p>目前主要是新型冠状病毒感染的患者，无症状感染者也可能成为传染源。</p><p><br></p><p>3.传播途径</p><p>\t</p><p>经呼吸道飞沫和密切接触传播是主要的传播途径，在相对封闭的环境中长时间暴露于高浓度气溶胶情况下存在经气溶胶传播的可能。</p><p>\t</p><p>4.新冠肺炎的症状</p><p>\t</p><p>以发热、乏力、干咳为主要表现。少数患者伴有鼻塞、流涕、腹泻等症状。重型病例多在一周后出现呼吸困难，严重者快速进展为急性呼吸窘迫综合征、脓毒症休克、难以纠正的代谢性酸中毒和出凝血功能障碍。值得注意的是重型、危重型患者病程中可为中低热，甚至无明显发热。</p><p>\t</p><p>部分患者仅表现为低热、轻微乏力等，无肺炎表现，多在1周后恢复。</p><p>\t</p><p>从目前收治的病例情况看，多数患者预后良好，儿童病例症状相对较轻，少数患者病情危重。死亡病例多见于老年人和有慢性基础疾病者。</p><p>\t</p><p>5.新冠肺炎的预防</p><p>\t（1）避免去疾病正在流行的地区。</p><p>\t（2）减少到人员密集的公共场所活动，尤其是空气流动性差的地方，例如公共浴池、温泉、影院、网吧、KTV、 商场、车站、机场、码头、展览馆等。</p><p>\t（3）不要接触、购买和食用野生动物(即野味)，避免前往售卖活体动物(禽类、海产品、野生动物等)的市场，禽肉蛋要充分煮熟后食用。</p><p>\t（4）居室保持清洁，勤开窗，经常通风，每天2次，每次半小时。</p><p>\t（5）随时保持手卫生。减少接触公共场所的公共物品和部位；从公共场所返回、咳嗽用手捂之后、饭前便后，用洗手液或香皂等流水洗手，或者使用含酒精成分的免洗洗手液；不确定手是否清洁时，避免用手接触口鼻眼；打喷嚏或咳嗽时用手肘衣服遮住口鼻。</p><p>\t（6）建议外出佩戴口罩。外出前往公共场所、乘坐公共交通工具时，可佩戴一次性使用医用口罩，外出就医应佩戴医用外科口罩或N95口罩。</p><p>\t（7）保持良好卫生和健康习惯。家庭成员不共用毛巾，保持家居、餐具清洁，勤晒衣被。不随地吐痰，口鼻分泌物用纸巾包好，弃置于有盖垃圾箱内。注意营养，勤运动。</p><p>\t（8）主动做好个人及家庭成员的健康监测。建议早晚测量体温各一次。</p><p>\t（9）准备常用物资。家庭应常备体温计和一次性使用医用口罩、家用消毒用品等物品。也可备有医用外科口罩或N95口罩供必要时外出使用。</p><p>\t（10）家庭成员出现可疑症状(包括发热、咳嗽、咽痛、胸闷等)时，及时就诊。</p><p>\t观察是否有异常反应发生。</p>');

#
# Structure for table "submit_info"
#

DROP TABLE IF EXISTS `submit_info`;
CREATE TABLE `submit_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '提交时间',
  `subreason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '来由',
  `userName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '提交人',
  `level` int(11) DEFAULT NULL COMMENT '用户等级',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审核状态',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '理由',
  `verifyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='外来人员报备信息表';

#
# Data for table "submit_info"
#

INSERT INTO `submit_info` VALUES (1,'赵大刚','2020-11-15 19:09:52','预约单1002144的租车左前轮有问题','superadmin',1,'审核通过','前轮损坏','superadmin'),(2,'赵千里','2020-11-15 21:14:39','租车单5541244的车辆停在104省道，坏了','superadmin',1,'审核通过','发电机报废','superadmin');

#
# Structure for table "type_info"
#

DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型名称',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类型描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品类别表';

#
# Data for table "type_info"
#

INSERT INTO `type_info` VALUES (1,'商务租车','商务车'),(2,'自驾租车','自驾车'),(3,'市区租车','市区车');

#
# Structure for table "user_info"
#

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nickName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生日',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `cardId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `account` double(10,2) DEFAULT NULL COMMENT '余额',
  `level` int(11) NOT NULL DEFAULT '3' COMMENT '权限等级',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

#
# Data for table "user_info"
#

INSERT INTO `user_info` VALUES (1,'user','e10adc3949ba59abbe56e057f20f883e','老张','男',22,'2020-11-15 17:42:13','18843232356','上海红桥区睿王渊小区5楼1506号','aa@163.com','342425199001116372',0.00,3);
