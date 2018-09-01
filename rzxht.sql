/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : rzxht

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-27 08:28:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gght_admin`
-- ----------------------------
DROP TABLE IF EXISTS `gght_admin`;
CREATE TABLE `gght_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '用户',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `addtime` varchar(11) DEFAULT NULL COMMENT '添加时间',
  `lasttime` varchar(11) DEFAULT '0' COMMENT '最后一次登陆时间',
  `roleid` int(5) DEFAULT NULL COMMENT '角色id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1启用 2禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gght_admin
-- ----------------------------
INSERT INTO `gght_admin` VALUES ('1', 'admin', 'dba5d9bddca63170f6be2b586b00fd13', '1524187866', '1524740927', '1', '1');
INSERT INTO `gght_admin` VALUES ('6', 'admin123', '3666bf57f8cfc71821498e325303c265', '1524559781', '1524562700', '4', '1');

-- ----------------------------
-- Table structure for `gght_advert`
-- ----------------------------
DROP TABLE IF EXISTS `gght_advert`;
CREATE TABLE `gght_advert` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '广告标题',
  `url` varchar(100) DEFAULT NULL COMMENT '跳转地址',
  `cover` varchar(100) DEFAULT NULL COMMENT '图片',
  `seatnum` tinyint(2) DEFAULT NULL COMMENT '位置编号',
  `status` tinyint(1) DEFAULT '1' COMMENT '开启状态  1启用  2禁用',
  `addtime` varchar(11) DEFAULT NULL COMMENT '添加时间',
  `sort` int(10) DEFAULT '10' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gght_advert
-- ----------------------------
INSERT INTO `gght_advert` VALUES ('1', '首页轮播-1', 'http://service.ruizhixue.cn/ht', 'advert/2018-04-26/5ae1393269d7e.png', '1', '1', '1524709692', '10');
INSERT INTO `gght_advert` VALUES ('2', '首页轮播-2', 'https://www.facebook.com/JohnDoe1', 'advert/2018-04-26/5ae13b8b18e03.png', '1', '1', '1524709740', '9');

-- ----------------------------
-- Table structure for `gght_article`
-- ----------------------------
DROP TABLE IF EXISTS `gght_article`;
CREATE TABLE `gght_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '文章标题',
  `desc` varchar(1000) DEFAULT NULL COMMENT '文章描述',
  `cateid` int(10) NOT NULL COMMENT '文章分类',
  `cover` varchar(100) DEFAULT NULL COMMENT '文章封面',
  `sort` int(10) DEFAULT '10' COMMENT '排序',
  `seenum` int(10) DEFAULT '0' COMMENT '查看次数',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用  2禁用',
  `content` text COMMENT '内容',
  `addtime` varchar(11) DEFAULT NULL COMMENT '添加时间',
  `updatetime` varchar(11) DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gght_article
-- ----------------------------
INSERT INTO `gght_article` VALUES ('1', '习近平总书记长江考察第一天', '习近平总书记长江考察', '7', '', '11', '1231', '1', '<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"font-weight: 700;\">过荆州、入岳阳：把脉长江经济带发展</span></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　25日上午，习近平总书记驱车一个半小时，从宜昌前往荆州。在荆州港码头登上轮船，顺江而下，考察长江。船行4个小时，抵达石首港。随后，他又驱车一个多小时，深入到长江湖南岳阳段考察。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　总书记不顾舟车劳顿，实地察看长江沿岸生态环境和发展建设情况，调查研究党中央提出的长江经济带“共抓大保护、不搞大开发”的要求落实到位了没有，下一步如何把长江经济带发展推向深入。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　登船后，习近平来到甲板，凭栏眺望。看到江面上过往的货船，他问：每天都是这样忙碌吗？晚上也通航吧？航道里危险的暗礁清除了没有？船上的生活用水还是直排吗？</p><p><img src=\"http://n.sinaimg.cn/news/crawl/136/w550h386/20180426/fBWk-fztkpin1740768.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　结合展板，习近平详细了解了长江干线航道治理、荆江大堤保护等情况，并听取了国家发展改革委、交通运输部、水利部和湖北省负责同志的汇报。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　长江经济带，覆盖11个省份，人口占到全国的40%、GDP也占全国的40%。总书记强调，长江经济带发展事关重大，每一步都要稳扎稳打。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平说，我提出长江经济带发展共抓大保护、不搞大开发，首先是要下个禁令，作为前提立在那里。否则，一说大开发，便一哄而上，抢码头、采砂石、开工厂、排污水，又陷入了破坏生态再去治理的恶性循环。所以，要设立生态这个禁区，我们搞的开发建设必须是绿色的、可持续的。</p><p><img src=\"http://n.sinaimg.cn/news/crawl/319/w550h569/20180426/vrWc-fztkpin1740917.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　今年全国两会期间，习近平在参加重庆代表团审议时讲到了这一点。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　从2016年1月重庆座谈会以来，长江经济带发展贯彻生态优先理念已经愈发明晰，不断深入人心。总书记此次到长江考察，就是要进一步统一思想，并通过实地调研进行分类指导。他用“兵马未动粮草先行”打比方，在长江经济带发展上，这个粮草，指的就是思想认识。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平强调，长江经济带不是独立单元，涉及11个省份，要树立一盘棋思想，全面协调协作。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　长江是中华民族的母亲河。让母亲河永葆生机活力，这是长江经济带发展的题中应有之意。</p><p><img src=\"http://n.sinaimg.cn/news/crawl/128/w550h378/20180426/BRWc-fztkpin1740989.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p><img src=\"http://n.sinaimg.cn/news/crawl/166/w550h416/20180426/nSuw-fztkpin1741102.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平强调，人与水的关系很重要。世界几大文明都发源于大江大河。人离不开水，但水患又是人类的心腹大患。人类在与自然共处、共生和斗争的进程中不断进步。和谐是共处平衡的表现，但达成和谐需要有很多斗争。中华民族正是在同自然灾害做斗争中发展起来的伟大民族。现在，水患仍是我们面对的最严重的自然灾害之一。要认真研究在实现“两个一百年”奋斗目标的进程中，防灾减灾的短板是什么，要拿出战略举措。</p><p><img src=\"http://n.sinaimg.cn/news/crawl/119/w550h369/20180426/qi9u-fztkpin1741169.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　25日下午，习近平来到湖南岳阳，考察了位于长江沿岸的岳阳市君山华龙码头。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　这里曾经是非法砂石码头。由于建在长江干流河滩，码头所产生的粉尘、废水、废渣破坏湿地生态，污染长江河水，影响汛期行洪。</p><p><img src=\"http://n.sinaimg.cn/news/crawl/134/w550h384/20180426/G72b-fztkpin1741264.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　去年以来，岳阳市对这个码头进行了拆除整治。如今，河滩复绿，尽显生机。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平走进一处巡护监测点，通过实时监控察看了东洞庭湖国家级自然保护区生态保护状况。总书记勉励大家继续做好长江保护和修复工作，守护好一江碧水。</p><p><img src=\"http://n.sinaimg.cn/news/crawl/149/w550h399/20180426/yGXA-fztkpin1741401.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p><img src=\"http://n.sinaimg.cn/news/crawl/133/w550h383/20180426/31pf-fztkpin1741510.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平还考察了被誉为洞庭湖及长江流域水情“晴雨表”的城陵矶水文站。</p><p><img src=\"http://n.sinaimg.cn/news/crawl/125/w550h375/20180426/5XDH-fztkpin1741563.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p><img src=\"http://n.sinaimg.cn/news/crawl/199/w550h449/20180426/rChd-fztkpin1741670.jpg\" alt=\"\" style=\"margin: 0px auto; padding: 0px; border: 0px none; vertical-align: top; display: block; max-width: 640px;\"/></p><p><br/></p>', '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('2', '习近平总书记长江考察第二天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('3', '习近平总书记长江考察第三天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('4', '习近平总书记长江考察第四天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('5', '习近平总书记长江考察第五天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('6', '习近平总书记长江考察第六天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('7', '习近平总书记长江考察第七天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('8', '习近平总书记长江考察第八天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('9', '习近平总书记长江考察第九天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('10', '习近平总书记长江考察第十天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('11', '习近平总书记长江考察第十一天', null, '7', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('12', '习近平总书记长江考察第十二天', null, '12', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('13', '习近平总书记长江考察第十三天', null, '12', null, '10', '0', '1', null, '1524729948', '1524735242');
INSERT INTO `gght_article` VALUES ('14', '习近平总书记长江考察第十四天', null, '12', null, '10', '0', '1', null, '1524729948', '1524735242');

-- ----------------------------
-- Table structure for `gght_category`
-- ----------------------------
DROP TABLE IF EXISTS `gght_category`;
CREATE TABLE `gght_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '分类名称',
  `cover` varchar(100) DEFAULT NULL COMMENT '封面图片',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `fid` int(10) NOT NULL DEFAULT '0' COMMENT '上级id 0顶级分类',
  `addcon` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否可添加内容  1是 2否',
  `addson` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否可添加子菜单  1是  2否',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '开启状态  1启用 2禁用  ',
  `addtime` varchar(11) DEFAULT NULL COMMENT '添加时间',
  `sort` int(5) NOT NULL DEFAULT '10' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gght_category
-- ----------------------------
INSERT INTO `gght_category` VALUES ('1', '一级分类', null, '', '0', '2', '1', '1', '1524625961', '10');
INSERT INTO `gght_category` VALUES ('2', '二级分类', null, null, '1', '2', '1', '1', '1524625995', '10');
INSERT INTO `gght_category` VALUES ('3', '三级分类', null, null, '2', '2', '1', '1', '1524626075', '110');
INSERT INTO `gght_category` VALUES ('12', '四级分类-2', '', '', '3', '1', '2', '1', '1524735490', '10');
INSERT INTO `gght_category` VALUES ('7', '四级分类', null, null, '3', '1', '2', '1', '1524627927', '10');

-- ----------------------------
-- Table structure for `gght_info`
-- ----------------------------
DROP TABLE IF EXISTS `gght_info`;
CREATE TABLE `gght_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `option` text NOT NULL COMMENT 'json 字符串',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gght_info
-- ----------------------------
INSERT INTO `gght_info` VALUES ('1', '{\"webtitle\":\"\\u745e\\u4e4b\\u96ea\\u7f51\\u7edc\\u79d1\\u6280\",\"kfqq\":\"3556180752\",\"tel\":\"0371-55685855\"}');

-- ----------------------------
-- Table structure for `gght_menu`
-- ----------------------------
DROP TABLE IF EXISTS `gght_menu`;
CREATE TABLE `gght_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `url` varchar(50) NOT NULL COMMENT '链接地址   控制器/方法名',
  `addtime` varchar(11) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '显示状态（显示在左侧） 1显示 2隐藏',
  `fid` int(10) DEFAULT '0' COMMENT '上级菜单分类 0顶级分类',
  `sort` int(10) DEFAULT '10' COMMENT '排序  倒序 数值越大越靠前',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gght_menu
-- ----------------------------
INSERT INTO `gght_menu` VALUES ('1', '系统管理', '&#xe614;', '1524218662', '1', '0', '20');
INSERT INTO `gght_menu` VALUES ('8', '权限管理', 'Power/datalist', '1524444844', '1', '1', '80');
INSERT INTO `gght_menu` VALUES ('7', '菜单管理', 'Menu/datalist', '1524444737', '1', '1', '90');
INSERT INTO `gght_menu` VALUES ('9', '管理员管理', 'Admin/datalist', '1524444927', '1', '27', '70');
INSERT INTO `gght_menu` VALUES ('11', '添加菜单', 'Menu/add', '1524453599', '2', '1', '90');
INSERT INTO `gght_menu` VALUES ('30', '修改权限', 'Power/update', '1524534240', '2', '1', '80');
INSERT INTO `gght_menu` VALUES ('31', '禁用、启用权限', 'Power/changeStatus', '1524534306', '2', '1', '80');
INSERT INTO `gght_menu` VALUES ('26', '数据统计', 'Index/manage', '1524478072', '1', '1', '100');
INSERT INTO `gght_menu` VALUES ('27', '运营管理', '&#xe857;', '1524534057', '1', '0', '15');
INSERT INTO `gght_menu` VALUES ('28', '广告管理', 'Advert/datalist', '1524534150', '1', '27', '60');
INSERT INTO `gght_menu` VALUES ('29', '添加权限', 'Power/add', '1524534221', '2', '1', '80');
INSERT INTO `gght_menu` VALUES ('23', '修改菜单', 'Menu/update', '1524467254', '2', '1', '90');
INSERT INTO `gght_menu` VALUES ('24', '删除菜单（单一）', 'Menu/delInfo', '1524467326', '2', '1', '90');
INSERT INTO `gght_menu` VALUES ('25', '删除菜单（批量）', 'Menu/pdelData', '1524467349', '2', '1', '90');
INSERT INTO `gght_menu` VALUES ('32', '删除权限（单一）', 'Power/delinfo', '1524534345', '2', '1', '80');
INSERT INTO `gght_menu` VALUES ('33', '网站信息', 'Info/index', '1524534389', '1', '27', '10');
INSERT INTO `gght_menu` VALUES ('34', '删除权限（批量）', 'Power/pdelData', '1524534491', '2', '1', '80');
INSERT INTO `gght_menu` VALUES ('35', '菜单显示、隐藏', 'Menu/changeStatus', '1524534543', '2', '1', '90');
INSERT INTO `gght_menu` VALUES ('39', '分类管理', 'Category/datalist', '1524619687', '1', '38', '50');
INSERT INTO `gght_menu` VALUES ('38', '内容管理', '&#xe60a;', '1524619655', '1', '0', '10');
INSERT INTO `gght_menu` VALUES ('40', '添加分类', 'Category/add', '1524619722', '2', '38', '50');
INSERT INTO `gght_menu` VALUES ('41', '修改分类', 'Category/update', '1524619736', '2', '38', '50');
INSERT INTO `gght_menu` VALUES ('42', '禁用、启用分类', 'Category/changeStatus', '1524619764', '2', '38', '50');
INSERT INTO `gght_menu` VALUES ('43', '分类删除（单一）', 'Category/delInfo', '1524619828', '2', '38', '50');
INSERT INTO `gght_menu` VALUES ('44', '分类删除（批量）', 'Category/pdelData', '1524619874', '2', '38', '50');
INSERT INTO `gght_menu` VALUES ('45', '添加管理员', 'Admin/add', '1524648541', '2', '27', '70');
INSERT INTO `gght_menu` VALUES ('46', '修改管理员', 'Admin/update', '1524648568', '2', '27', '70');
INSERT INTO `gght_menu` VALUES ('47', '禁用、启用管理员', 'Admin/changeStatus', '1524648652', '2', '27', '70');
INSERT INTO `gght_menu` VALUES ('48', '删除管理员（单一）', 'Admin/delInfo', '1524648670', '2', '27', '70');
INSERT INTO `gght_menu` VALUES ('49', '删除管理员（批量）', 'Admin/pdelData', '1524648702', '2', '27', '70');
INSERT INTO `gght_menu` VALUES ('50', '修改密码', 'Admin/updatepwd', '1524648736', '1', '27', '70');
INSERT INTO `gght_menu` VALUES ('51', '添加广告图片', 'Advert/add', '1524648870', '2', '27', '60');
INSERT INTO `gght_menu` VALUES ('52', '修改广告图片', 'Advert/update', '1524648902', '2', '27', '60');
INSERT INTO `gght_menu` VALUES ('53', '禁用、启用广告图片', 'Advert/changeStatus', '1524648963', '2', '27', '60');
INSERT INTO `gght_menu` VALUES ('54', '删除广告图片（单一）', 'Advert/delInfo', '1524648988', '2', '27', '60');
INSERT INTO `gght_menu` VALUES ('55', '删除广告图片（批量）', 'Advert/pdelData', '1524649198', '2', '27', '60');
INSERT INTO `gght_menu` VALUES ('56', '文章管理', 'Article/datalist', '1524726034', '1', '38', '40');
INSERT INTO `gght_menu` VALUES ('57', '添加文章', 'Article/add', '1524726051', '2', '38', '40');
INSERT INTO `gght_menu` VALUES ('58', '修改文章', 'Article/update', '1524726068', '2', '38', '40');
INSERT INTO `gght_menu` VALUES ('59', '禁用、启用文章', 'Article/changeStatus', '1524726100', '2', '38', '40');
INSERT INTO `gght_menu` VALUES ('60', '删除文章（单一）', 'Article/delInfo', '1524726126', '2', '38', '40');
INSERT INTO `gght_menu` VALUES ('61', '删除文章（批量）', 'Article/pdelData', '1524726156', '2', '38', '40');

-- ----------------------------
-- Table structure for `gght_power`
-- ----------------------------
DROP TABLE IF EXISTS `gght_power`;
CREATE TABLE `gght_power` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `name` varchar(50) NOT NULL COMMENT '权限名称',
  `mid` varchar(3000) NOT NULL COMMENT '可操作的菜单',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1启用  2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gght_power
-- ----------------------------
INSERT INTO `gght_power` VALUES ('1', '超级管理员', '1,26,7,11,23,24,25,35,8,29,30,31,32,34,27,9,45,46,47,48,49,50,28,51,52,53,54,55,33,38,39,40,41,42,43,44,56,57,58,59,60,61', '1');
INSERT INTO `gght_power` VALUES ('4', '系统管理员', '1,26,7,8,11,23,24,25,29,30,31,32,34,35', '1');
