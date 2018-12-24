/*
Navicat MySQL Data Transfer

Source Server         : 127.1.1.
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : new_shopping9_new

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-12-14 19:20:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `nc_cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_article`;
CREATE TABLE `nc_cms_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `title` varchar(50) NOT NULL COMMENT '文章标题',
  `class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类编号',
  `short_title` varchar(50) NOT NULL DEFAULT '' COMMENT '文章短标题',
  `source` varchar(50) NOT NULL DEFAULT '' COMMENT '文章来源',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文章来源链接',
  `author` varchar(50) NOT NULL COMMENT '文章作者',
  `summary` varchar(140) NOT NULL DEFAULT '' COMMENT '文章摘要',
  `content` text NOT NULL COMMENT '文章正文',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '文章标题图片',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '文章关键字',
  `article_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '相关文章',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章点击量',
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章排序0-255',
  `commend_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章推荐标志0-未推荐，1-已推荐',
  `comment_flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章是否允许评论1-允许，0-不允许',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0-草稿、1-待审核、2-已发布、-1-回收站',
  `attachment_path` text NOT NULL COMMENT '文章附件路径',
  `tag` varchar(255) NOT NULL DEFAULT '' COMMENT '文章标签',
  `comment_count` int(10) unsigned NOT NULL COMMENT '文章评论数',
  `share_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章分享数',
  `publisher_name` varchar(50) NOT NULL COMMENT '发布者用户名 ',
  `uid` int(10) unsigned NOT NULL COMMENT '发布者编号',
  `last_comment_time` int(11) DEFAULT '0' COMMENT '最新评论时间',
  `public_time` int(11) DEFAULT '0' COMMENT '发布时间',
  `create_time` int(11) DEFAULT '0' COMMENT '文章发布时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '文章修改时间',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=6553 COMMENT='CMS文章表';

-- ----------------------------
-- Records of nc_cms_article
-- ----------------------------
INSERT INTO `nc_cms_article` VALUES ('1', '井柏然倪妮结束2年半恋情 私下约会甜蜜接地气', '2', '井柏然倪妮结束2年半恋情', '', 'http://localhost/shopping9/index.php?s=/admin/cms/addarticle', '高剑离', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">6月中旬，在某电影节晚宴上，之前一直在晚宴形影不离的井柏然与倪妮此次晚宴却意外没有&quot;合体&quot;，且全程无交流。</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t01e9611da18b6816be.jpg?size=630x945\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">井柏然、倪妮</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">7月5日，井柏然、倪妮工作室同时在微博发声明宣布，经双方经慎重考虑，两人于今年5月和平分手。未来将以朋友的身份真诚祝福彼此，今后将不对此事做任何回应。此外，井柏然方另发声明否认两人是&quot;合约情侣&quot;，谴责恶意造谣的行为，要求立即删除否则将法律追责。倪妮方则在另一条声明中否认与胡某在一起及炒作恋情。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">倪妮与井柏然二人于2013年因拍摄电影《等风来》相识，不过当时的倪妮尚有男友冯绍峰[微博]。在当时的某次采访中，井柏然曾直言羡慕倪妮和冯绍峰的感情。对此倪妮笑称&quot;让井柏然早点下手，不然好的都被挑走了&quot;。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">而自倪妮、冯绍峰和平分手后，2016年，倪妮、井柏然两人被拍到共同度夜。之后，倪妮大方承认了恋情。同时双方经纪人宣布:&quot;两人从2016年春节开始尝试交往，希望大家可以给双方一些空间，多多祝福。&quot;</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">自公开恋情后，这对情侣一直十分低调。少数几次共同亮相多为众星云集的晚会或时尚杂志拍摄活动。虽然如此，但他们的每次&quot;合体&quot;必引网友直呼&quot;男才女貌，配一脸!&quot;</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">此外，这对小情侣私下生活似也颇为甜蜜，烟火气十足。被拍到的场景多为一起逛超市、买衣服等生活场景。在去年的第三季《花儿与少年》中，倪妮在井柏然家里露出的&quot;惊鸿一瞥&quot;则是在井柏然出发前两人接吻告别，被观众直呼&quot;甜蜜爆表&quot;。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">不过近来，两人&quot;疑似分手&quot;类新闻不断，有心的网友也总结了各类蛛丝马迹。今年5月，疑似两人的游戏账号换掉了情侣头像，同时井柏然退出了倪妮战队。6月中旬，在某电影节晚宴上，之前一直在晚宴形影不离的他们此次晚宴却意外没有&quot;合体&quot;，且全程无交流。而在井柏然在近期参加巴黎时尚活动时，也有眼尖的网友从照片中发现井柏然似乎戴上了尾戒。众所周知，尾戒的含义即为单身。但&quot;分手&quot;传闻并未得到当事人回应。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">而就在今日(7月5日)，井柏然、倪妮工作室同时在微博发声明宣布，经双方经慎重考虑，两人于今年5月和平分手。未来将以朋友的身份真诚祝福彼此，今后将不对此事做任何回应。</p><p><br/></p>', 'upload/common/1530840458.jpg', '', '', '0', '0', '1', '1', '2', '', '井柏然倪妮结束2年半恋情', '0', '0', 'admin', '2', '0', '1530840514', '1530840514', '0');
INSERT INTO `nc_cms_article` VALUES ('2', '娱乐圈的烂演员终于被公布了！演员也要有工匠精神！', '4', '演员也要有工匠精神！', '娱乐', 'https://item.btime.com/31tovsdjgbq9kv8p9cej1tgf14i?from=haoz1t2p1', '未知', '第一名是杨幂老公刘恺威，电视剧作品全都低于六分..也实在尴尬。而作为少女杀手的鹿晗在最后一名。看来观众的眼睛还是雪亮的！', '<p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">如今娱乐圈的风头可谓全被小鲜肉小花旦给抢了，而真正的有本事的有演技的都被渐渐遗忘。不是不能接受新事物，而是这些人得演技实在让人恭维啊！拿着几千万甚至上亿的片酬，一个比一个叫的凶猛！可是留给观众的却是不堪入目的作品！</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t0191b7d436e5b1f575.jpg?size=640x359\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在战狼2之后，不少人为其撑场面，其因就是因为这部影片演出了真正地好作品！而近日广电统计了一份关于演艺圈内演员烂剧的排行榜，许多小鲜肉和小花旦们被点名，更让这些人被人们熟知！</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t01ad03c8df95d764a1.jpg?size=580x716\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">第一名是杨幂老公刘恺威，电视剧作品全都低于六分..也实在尴尬。而作为少女杀手的鹿晗在最后一名。看来观众的眼睛还是雪亮的！</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t01fc72c53006840831.jpg?size=640x421\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">如若中国的影视圈都是充满了毫无演技，只靠颜值的小鲜肉的话，那想要如国力一样赶超其他国家那真不知道要到什么时候，虽说在当今这个社会，颜值被默认为一项财富。但印度的阿米尔汗可谓是印度影视界的国宝级人物啊，他在拍摄一部电影爆瘦爆增，我们中国也并不是没有，可是真正有才华的都被这些小鲜肉抢了机会！工匠精神同样可以适用于任何一个行业啊！而在娱乐圈真正具有这样精神的人被遗弃，广电也早该整治一下了，还娱乐圈一片清净，对此，你有什么想说的呢？</p><p><br/></p>', 'upload/common/1531275757.jpg', '娱乐圈', '', '3', '0', '1', '1', '2', '', '演员', '5', '5', 'admin', '2', '0', '1531275830', '1531275830', '0');

-- ----------------------------
-- Table structure for `nc_cms_article_class`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_article_class`;
CREATE TABLE `nc_cms_article_class` (
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号 ',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级分类',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='cms文章分类表';

-- ----------------------------
-- Records of nc_cms_article_class
-- ----------------------------
INSERT INTO `nc_cms_article_class` VALUES ('1', '0', '生活', '0');
INSERT INTO `nc_cms_article_class` VALUES ('2', '0', '奇问异事', '0');
INSERT INTO `nc_cms_article_class` VALUES ('3', '1', '教育', '0');
INSERT INTO `nc_cms_article_class` VALUES ('4', '1', '琐事', '0');

-- ----------------------------
-- Table structure for `nc_cms_article_comment`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_article_comment`;
CREATE TABLE `nc_cms_article_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `text` varchar(2000) NOT NULL COMMENT '评论内容',
  `uid` int(10) unsigned NOT NULL COMMENT '评论人编号',
  `quote_comment_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论引用',
  `up` int(10) unsigned NOT NULL COMMENT '点赞数量',
  `comment_time` int(10) unsigned NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='CMS评论表';

-- ----------------------------
-- Records of nc_cms_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `nc_cms_topic`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_topic`;
CREATE TABLE `nc_cms_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '专题编号',
  `instance_id` int(10) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `title` varchar(255) NOT NULL COMMENT '专题标题',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '专题封面',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '专题状态  0草稿  1发布',
  `content` text NOT NULL COMMENT '专题内容',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专题';

-- ----------------------------
-- Records of nc_cms_topic
-- ----------------------------
INSERT INTO `nc_cms_topic` VALUES ('1', '0', '小心你后面', 'upload/common/1530840115.jpg', '1', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; text-align: right; background-color: rgb(255, 255, 255);\">专题内容</span><br/></p>', '1530840123', '0');
INSERT INTO `nc_cms_topic` VALUES ('2', '0', '生为小雄死弈为鬼雄', 'upload/common/1531275919.jpg', '0', '<p><a href=\"https://sh.qihoo.com/99a635ae804f79554?uid=be68d903bf64d4448b9cdd0b5cc5bfb8&sign=360dh&djsource=Ft06Nw&scene=1&refer_scene=0\" title=\"厅官伙同儿子受贿贪腐近2亿 老婆手脚也不干净\" style=\"text-decoration: none; cursor: pointer; color: rgb(51, 51, 51); display: block; font-family: arial, 宋体, georgia, verdana, helvetica, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">厅官伙同儿子受贿贪腐近2亿 老婆手脚也不干净</a></p>', '1531275934', '0');

-- ----------------------------
-- Table structure for `ns_account`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account`;
CREATE TABLE `ns_account` (
  `account_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '账户ID',
  `account_profit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台的总营业额',
  `account_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台资金总余额',
  `account_return` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台利润总额',
  `account_deposit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '保证金总额',
  `account_order` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商城订单总额',
  `account_withdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商城提现总额',
  `account_shop` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺总余额',
  `account_shop_withdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺总提现',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='商城资金统计';

-- ----------------------------
-- Records of ns_account
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_assistant_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_assistant_records`;
CREATE TABLE `ns_account_assistant_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_no` varchar(50) NOT NULL DEFAULT '' COMMENT '流水号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招商员支付记录';

-- ----------------------------
-- Records of ns_account_assistant_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_order_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_order_records`;
CREATE TABLE `ns_account_order_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_no` varchar(50) NOT NULL DEFAULT '' COMMENT '流水号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='金额账户记录';

-- ----------------------------
-- Records of ns_account_order_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_period`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_period`;
CREATE TABLE `ns_account_period` (
  `period_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '账户ID',
  `period_year` int(10) NOT NULL COMMENT '账期年份',
  `period_month` int(10) NOT NULL COMMENT '账期月份',
  `account_profit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期总营业额',
  `account_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期总发生余额',
  `account_return` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期利润总额',
  `account_deposit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期保证金总额',
  `account_order` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期订单总额',
  `account_withdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期店铺提现总额',
  `account_shop` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期店铺总发生额',
  `account_shop_withdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期店铺总提现额',
  `start_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  PRIMARY KEY (`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商城账期结算表';

-- ----------------------------
-- Records of ns_account_period
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_records`;
CREATE TABLE `ns_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `is_calculate` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否参与计算',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='金额账户记录';

-- ----------------------------
-- Records of ns_account_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_return_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_return_records`;
CREATE TABLE `ns_account_return_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `return_type` int(11) NOT NULL DEFAULT '0' COMMENT '提成类型',
  `type_alis_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联id',
  `is_display` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_calculate` int(11) NOT NULL DEFAULT '0' COMMENT '是否计算',
  `remark` varchar(255) NOT NULL DEFAULT '0' COMMENT '备注',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=910 COMMENT='平台的利润的记录';

-- ----------------------------
-- Records of ns_account_return_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_withdraw_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_withdraw_records`;
CREATE TABLE `ns_account_withdraw_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_no` varchar(50) NOT NULL DEFAULT '' COMMENT '流水号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='金额账户记录';

-- ----------------------------
-- Records of ns_account_withdraw_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_withdraw_user_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_withdraw_user_records`;
CREATE TABLE `ns_account_withdraw_user_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_no` varchar(50) NOT NULL DEFAULT '' COMMENT '流水号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

-- ----------------------------
-- Records of ns_account_withdraw_user_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ns_attribute`;
CREATE TABLE `ns_attribute` (
  `attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性ID',
  `attr_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性名称',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否使用',
  `spec_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '关联规格',
  `sort` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  `brand_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '关联品牌',
  PRIMARY KEY (`attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商品相关属性';

-- ----------------------------
-- Records of ns_attribute
-- ----------------------------
INSERT INTO `ns_attribute` VALUES ('1', '短袖T恤', '1', '', '0', '1530781487', '0', '');
INSERT INTO `ns_attribute` VALUES ('2', '五分马裤', '1', '', '0', '1530781521', '0', '');
INSERT INTO `ns_attribute` VALUES ('3', '运动/休闲', '1', '', '0', '1531272641', '0', '');

-- ----------------------------
-- Table structure for `ns_attribute_value`
-- ----------------------------
DROP TABLE IF EXISTS `ns_attribute_value`;
CREATE TABLE `ns_attribute_value` (
  `attr_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性值ID',
  `attr_value_name` varchar(50) NOT NULL DEFAULT '' COMMENT '属性值名称',
  `attr_id` int(11) NOT NULL COMMENT '属性ID',
  `value` varchar(1000) NOT NULL DEFAULT '' COMMENT '属性对应相关数据',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '属性对应输入类型1.直接2.单选3.多选',
  `sort` int(11) NOT NULL DEFAULT '1999' COMMENT '排序号',
  `is_search` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否使用',
  PRIMARY KEY (`attr_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='商品属性值';

-- ----------------------------
-- Records of ns_attribute_value
-- ----------------------------
INSERT INTO `ns_attribute_value` VALUES ('1', '短袖T恤2.0', '1', '短袖T恤2.0', '2', '0', '1');
INSERT INTO `ns_attribute_value` VALUES ('2', '五分马裤2.0', '2', '五分马裤2.0', '3', '0', '1');
INSERT INTO `ns_attribute_value` VALUES ('3', '运动/休闲A', '3', '运动/休闲B', '2', '0', '1');

-- ----------------------------
-- Table structure for `ns_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ns_cart`;
CREATE TABLE `ns_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '买家id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `shop_name` varchar(100) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(200) NOT NULL COMMENT '商品名称',
  `sku_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品的skuid',
  `sku_name` varchar(200) NOT NULL DEFAULT '' COMMENT '商品的sku名称',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `num` smallint(5) NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品图片',
  `bl_id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '组合套装ID',
  PRIMARY KEY (`cart_id`),
  KEY `member_id` (`buyer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='购物车表';

-- ----------------------------
-- Records of ns_cart
-- ----------------------------
INSERT INTO `ns_cart` VALUES ('4', '5', '0', 'Niushop开源商城', '3', '2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生', '3', '', '1.00', '1', '10', '0');
INSERT INTO `ns_cart` VALUES ('6', '3', '0', 'Niushop开源商城', '3', '2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生', '3', '', '1.00', '1', '10', '0');
INSERT INTO `ns_cart` VALUES ('8', '6', '0', 'Niushop开源商城', '6', '平凡的世界', '6', '', '42.00', '1', '15', '0');

-- ----------------------------
-- Table structure for `ns_click_fabulous`
-- ----------------------------
DROP TABLE IF EXISTS `ns_click_fabulous`;
CREATE TABLE `ns_click_fabulous` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `create_time` int(11) DEFAULT '0' COMMENT '点赞时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '点赞状态 0 未点赞 1 点赞',
  `number` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商品点赞记录表';

-- ----------------------------
-- Records of ns_click_fabulous
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_combo_package_promotion`
-- ----------------------------
DROP TABLE IF EXISTS `ns_combo_package_promotion`;
CREATE TABLE `ns_combo_package_promotion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `combo_package_name` varchar(100) NOT NULL DEFAULT '' COMMENT '组合套餐名称',
  `combo_package_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '组合套餐价格',
  `goods_id_array` varchar(255) NOT NULL COMMENT '参与组合套餐的商品集合',
  `is_shelves` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否上架（0:下架,1:上架）',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `original_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '原价,仅作参考商品原价所取为sku列表中最低价',
  `save_the_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '节省价,仅作参考不参与实际计算',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组合套餐促销';

-- ----------------------------
-- Records of ns_combo_package_promotion
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_consult`
-- ----------------------------
DROP TABLE IF EXISTS `ns_consult`;
CREATE TABLE `ns_consult` (
  `consult_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '咨询编号',
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品编号',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '咨询发布者会员编号(0：游客)',
  `member_name` varchar(100) NOT NULL DEFAULT '' COMMENT '会员名称',
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '店铺编号',
  `shop_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `ct_id` int(10) unsigned NOT NULL COMMENT '咨询类型',
  `consult_content` varchar(255) NOT NULL DEFAULT '' COMMENT '咨询内容',
  `consult_reply` varchar(255) NOT NULL DEFAULT '' COMMENT '咨询回复内容',
  `isanonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示不匿名 1表示匿名',
  `consult_addtime` int(11) DEFAULT '0' COMMENT '咨询发布时间',
  `consult_reply_time` int(11) DEFAULT '0' COMMENT '咨询回复时间',
  PRIMARY KEY (`consult_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='咨询类型表';

-- ----------------------------
-- Records of ns_consult
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_consult_type`
-- ----------------------------
DROP TABLE IF EXISTS `ns_consult_type`;
CREATE TABLE `ns_consult_type` (
  `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '咨询类型id',
  `ct_name` varchar(50) NOT NULL DEFAULT '' COMMENT '咨询类型名称',
  `ct_introduce` text NOT NULL COMMENT '咨询类型详细介绍',
  `ct_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='咨询类型表';

-- ----------------------------
-- Records of ns_consult_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `ns_coupon`;
CREATE TABLE `ns_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券id',
  `coupon_type_id` int(11) NOT NULL COMMENT '优惠券类型id',
  `shop_id` int(11) NOT NULL COMMENT '店铺Id',
  `coupon_code` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠券编码',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '领用人',
  `use_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券使用订单id',
  `create_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建订单id(优惠券只有是完成订单发放的优惠券时才有值)',
  `money` decimal(10,2) NOT NULL COMMENT '面额',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '优惠券状态 0未领用 1已领用（未使用） 2已使用 3已过期',
  `get_type` int(11) NOT NULL DEFAULT '0' COMMENT '获取方式1订单2.首页领取',
  `fetch_time` int(11) DEFAULT '0' COMMENT '领取时间',
  `use_time` int(11) DEFAULT '0' COMMENT '使用时间',
  `start_time` int(11) DEFAULT '0' COMMENT '有效期开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '有效期结束时间',
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=148 COMMENT='优惠券表';

-- ----------------------------
-- Records of ns_coupon
-- ----------------------------
INSERT INTO `ns_coupon` VALUES ('1', '1', '0', '1530783323764', '6', '15', '0', '100.00', '2', '2', '1531277905', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('2', '1', '0', '1530783323137', '6', '0', '0', '100.00', '3', '2', '1531278208', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('3', '1', '0', '1530783323900', '3', '0', '0', '100.00', '3', '1', '1537335766', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('4', '1', '0', '1530783323475', '0', '0', '0', '100.00', '3', '0', '0', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('5', '1', '0', '1530783323529', '0', '0', '0', '100.00', '3', '0', '0', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('6', '1', '0', '1530783323142', '0', '0', '0', '100.00', '3', '0', '0', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('7', '1', '0', '1530783323178', '0', '0', '0', '100.00', '3', '0', '0', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('8', '1', '0', '1530783323288', '0', '0', '0', '100.00', '3', '0', '0', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('9', '1', '0', '1530783323675', '0', '0', '0', '100.00', '3', '0', '0', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('10', '1', '0', '1530783323701', '0', '0', '0', '100.00', '3', '0', '0', '0', '1531215315', '1532684119');
INSERT INTO `ns_coupon` VALUES ('11', '2', '0', '1530942464315', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('12', '2', '0', '1530942464497', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('13', '2', '0', '1530942464416', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('14', '2', '0', '1530942464693', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('15', '2', '0', '1530942464266', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('16', '2', '0', '1530942464480', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('17', '2', '0', '1530942464265', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('18', '2', '0', '1530942464717', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('19', '2', '0', '1530942464562', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('20', '2', '0', '1530942464789', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('21', '2', '0', '1530942464834', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('22', '2', '0', '1530942464164', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('23', '2', '0', '1530942464953', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('24', '2', '0', '1530942464839', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('25', '2', '0', '1530942464763', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('26', '2', '0', '1530942464893', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('27', '2', '0', '1530942464745', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('28', '2', '0', '1530942464491', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('29', '2', '0', '1530942464912', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('30', '2', '0', '1530942464767', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('31', '2', '0', '1530942464578', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('32', '2', '0', '1530942464940', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('33', '2', '0', '1530942464809', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('34', '2', '0', '1530942464757', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('35', '2', '0', '1530942464645', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('36', '2', '0', '1530942464269', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('37', '2', '0', '1530942464427', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('38', '2', '0', '1530942464502', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('39', '2', '0', '1530942464696', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('40', '2', '0', '1530942464562', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('41', '2', '0', '1530942464182', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('42', '2', '0', '1530942464975', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('43', '2', '0', '1530942464926', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('44', '2', '0', '1530942464791', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('45', '2', '0', '1530942464936', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('46', '2', '0', '1530942464925', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('47', '2', '0', '1530942464195', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('48', '2', '0', '1530942464372', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('49', '2', '0', '1530942464437', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('50', '2', '0', '1530942464435', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('51', '2', '0', '1530942464477', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('52', '2', '0', '1530942464944', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('53', '2', '0', '1530942464437', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('54', '2', '0', '1530942464923', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('55', '2', '0', '1530942464633', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('56', '2', '0', '1530942464147', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('57', '2', '0', '1530942464463', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('58', '2', '0', '1530942464695', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('59', '2', '0', '1530942464856', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('60', '2', '0', '1530942464507', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('61', '2', '0', '1530942464487', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('62', '2', '0', '1530942464276', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('63', '2', '0', '1530942464896', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('64', '2', '0', '1530942464554', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('65', '2', '0', '1530942464926', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('66', '2', '0', '1530942464641', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('67', '2', '0', '1530942464949', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('68', '2', '0', '1530942464147', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('69', '2', '0', '1530942464864', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('70', '2', '0', '1530942464539', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('71', '2', '0', '1530942464764', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('72', '2', '0', '1530942464482', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('73', '2', '0', '1530942464716', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('74', '2', '0', '1530942464942', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('75', '2', '0', '1530942464536', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('76', '2', '0', '1530942464530', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('77', '2', '0', '1530942464456', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('78', '2', '0', '1530942464601', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('79', '2', '0', '1530942464903', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('80', '2', '0', '1530942464597', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('81', '2', '0', '1530942464499', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('82', '2', '0', '1530942464486', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('83', '2', '0', '1530942464282', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('84', '2', '0', '1530942464544', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('85', '2', '0', '1530942464818', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('86', '2', '0', '1530942464238', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('87', '2', '0', '1530942464201', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('88', '2', '0', '1530942464677', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('89', '2', '0', '1530942464941', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('90', '2', '0', '1530942464829', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('91', '2', '0', '1530942464855', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('92', '2', '0', '1530942464857', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('93', '2', '0', '1530942464841', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('94', '2', '0', '1530942464119', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('95', '2', '0', '1530942464215', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('96', '2', '0', '1530942464501', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('97', '2', '0', '1530942464933', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('98', '2', '0', '1530942464859', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('99', '2', '0', '1530942464254', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('100', '2', '0', '1530942464358', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('101', '2', '0', '1530942464300', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('102', '2', '0', '1530942464910', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('103', '2', '0', '1530942464722', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('104', '2', '0', '1530942464734', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('105', '2', '0', '1530942464250', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('106', '2', '0', '1530942464355', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('107', '2', '0', '1530942464924', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('108', '2', '0', '1530942464602', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('109', '2', '0', '1530942464753', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('110', '2', '0', '1530942464610', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('111', '2', '0', '1530942464610', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('112', '2', '0', '1530942464266', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('113', '2', '0', '1530942464449', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('114', '2', '0', '1530942464871', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('115', '2', '0', '1530942464865', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('116', '2', '0', '1530942464477', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('117', '2', '0', '1530942464199', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('118', '2', '0', '1530942464776', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('119', '2', '0', '1530942464548', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('120', '2', '0', '1530942464652', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('121', '2', '0', '1530942464420', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('122', '2', '0', '1530942464408', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('123', '2', '0', '1530942464743', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('124', '2', '0', '1530942464652', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('125', '2', '0', '1530942464194', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('126', '2', '0', '1530942464296', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('127', '2', '0', '1530942464311', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('128', '2', '0', '1530942464781', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('129', '2', '0', '1530942464828', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('130', '2', '0', '1530942464522', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('131', '2', '0', '1530942464336', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('132', '2', '0', '1530942464902', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('133', '2', '0', '1530942464515', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('134', '2', '0', '1530942464725', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('135', '2', '0', '1530942464568', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('136', '2', '0', '1530942464431', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('137', '2', '0', '1530942464562', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('138', '2', '0', '1530942464989', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('139', '2', '0', '1530942464312', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('140', '2', '0', '1530942464118', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('141', '2', '0', '1530942464940', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('142', '2', '0', '1530942464953', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('143', '2', '0', '1530942464207', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('144', '2', '0', '1530942464269', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('145', '2', '0', '1530942464289', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('146', '2', '0', '1530942464700', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('147', '2', '0', '1530942464447', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('148', '2', '0', '1530942464744', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('149', '2', '0', '1530942464358', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('150', '2', '0', '1530942464758', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('151', '2', '0', '1530942464783', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('152', '2', '0', '1530942464960', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('153', '2', '0', '1530942464676', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('154', '2', '0', '1530942464320', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('155', '2', '0', '1530942464520', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('156', '2', '0', '1530942464779', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('157', '2', '0', '1530942464325', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('158', '2', '0', '1530942464805', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('159', '2', '0', '1530942464296', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('160', '2', '0', '1530942464506', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('161', '2', '0', '1530942464611', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('162', '2', '0', '1530942464517', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('163', '2', '0', '1530942464308', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('164', '2', '0', '1530942464891', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('165', '2', '0', '1530942464618', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('166', '2', '0', '1530942464874', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('167', '2', '0', '1530942464303', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('168', '2', '0', '1530942464462', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('169', '2', '0', '1530942464762', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('170', '2', '0', '1530942464179', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('171', '2', '0', '1530942464478', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('172', '2', '0', '1530942464857', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('173', '2', '0', '1530942464127', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('174', '2', '0', '1530942464741', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('175', '2', '0', '1530942464581', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('176', '2', '0', '1530942464605', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('177', '2', '0', '1530942464906', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('178', '2', '0', '1530942464862', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('179', '2', '0', '1530942464807', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('180', '2', '0', '1530942464455', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('181', '2', '0', '1530942464406', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('182', '2', '0', '1530942464184', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('183', '2', '0', '1530942464907', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('184', '2', '0', '1530942464713', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('185', '2', '0', '1530942464821', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('186', '2', '0', '1530942464566', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('187', '2', '0', '1530942464185', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('188', '2', '0', '1530942464351', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('189', '2', '0', '1530942464345', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('190', '2', '0', '1530942464759', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('191', '2', '0', '1530942464171', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('192', '2', '0', '1530942464564', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('193', '2', '0', '1530942464284', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('194', '2', '0', '1530942464846', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('195', '2', '0', '1530942464168', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('196', '2', '0', '1530942464324', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('197', '2', '0', '1530942464610', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('198', '2', '0', '1530942464466', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('199', '2', '0', '1530942464816', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('200', '2', '0', '1530942464825', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('201', '2', '0', '1530942464852', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('202', '2', '0', '1530942464592', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('203', '2', '0', '1530942464532', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('204', '2', '0', '1530942464151', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('205', '2', '0', '1530942464980', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('206', '2', '0', '1530942464861', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('207', '2', '0', '1530942464844', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('208', '2', '0', '1530942464385', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('209', '2', '0', '1530942464523', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('210', '2', '0', '1530942464469', '0', '0', '0', '100.00', '3', '0', '0', '0', '1530942450', '1534312053');
INSERT INTO `ns_coupon` VALUES ('211', '3', '0', '1531274537772', '6', '0', '0', '50.00', '3', '2', '1531278211', '0', '1531274511', '1533952913');
INSERT INTO `ns_coupon` VALUES ('212', '3', '0', '1531274537745', '6', '0', '0', '50.00', '3', '2', '1531278215', '0', '1531274511', '1533952913');
INSERT INTO `ns_coupon` VALUES ('213', '3', '0', '1531274537753', '0', '0', '0', '50.00', '3', '0', '0', '0', '1531274511', '1533952913');
INSERT INTO `ns_coupon` VALUES ('214', '3', '0', '1531274537955', '0', '0', '0', '50.00', '3', '0', '0', '0', '1531274511', '1533952913');
INSERT INTO `ns_coupon` VALUES ('215', '3', '0', '1531274537427', '0', '0', '0', '50.00', '3', '0', '0', '0', '1531274511', '1533952913');
INSERT INTO `ns_coupon` VALUES ('216', '3', '0', '1531274537733', '0', '0', '0', '50.00', '3', '0', '0', '0', '1531274511', '1533952913');
INSERT INTO `ns_coupon` VALUES ('217', '3', '0', '1531274537456', '0', '0', '0', '50.00', '3', '0', '0', '0', '1531274511', '1533952913');
INSERT INTO `ns_coupon` VALUES ('218', '3', '0', '1531274537369', '0', '0', '0', '50.00', '3', '0', '0', '0', '1531274511', '1533952913');
INSERT INTO `ns_coupon` VALUES ('219', '3', '0', '1531274537254', '0', '0', '0', '50.00', '3', '0', '0', '0', '1531274511', '1533952913');
INSERT INTO `ns_coupon` VALUES ('220', '3', '0', '1531274537790', '0', '0', '0', '50.00', '3', '0', '0', '0', '1531274511', '1533952913');

-- ----------------------------
-- Table structure for `ns_coupon_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_coupon_goods`;
CREATE TABLE `ns_coupon_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type_id` int(11) NOT NULL COMMENT '优惠券类型id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=606 COMMENT='优惠券使用商品表';

-- ----------------------------
-- Records of ns_coupon_goods
-- ----------------------------
INSERT INTO `ns_coupon_goods` VALUES ('1', '3', '6');
INSERT INTO `ns_coupon_goods` VALUES ('2', '3', '7');

-- ----------------------------
-- Table structure for `ns_coupon_type`
-- ----------------------------
DROP TABLE IF EXISTS `ns_coupon_type`;
CREATE TABLE `ns_coupon_type` (
  `coupon_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券类型Id',
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `coupon_name` varchar(50) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `money` decimal(10,2) NOT NULL COMMENT '发放面额',
  `count` int(11) NOT NULL COMMENT '发放数量',
  `max_fetch` int(11) NOT NULL DEFAULT '0' COMMENT '每人最大领取个数 0无限制',
  `at_least` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '满多少元使用 0代表无限制',
  `need_user_level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '领取人会员等级',
  `range_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '使用范围0部分产品使用 1全场产品使用',
  `is_show` int(11) NOT NULL DEFAULT '0' COMMENT '是否允许首页显示0不显示1显示',
  `start_time` int(11) DEFAULT '0' COMMENT '有效日期开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '有效日期结束时间',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`coupon_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1365 COMMENT='优惠券类型表';

-- ----------------------------
-- Records of ns_coupon_type
-- ----------------------------
INSERT INTO `ns_coupon_type` VALUES ('1', '0', '分分钟称你', '100.00', '10', '2', '10.00', '0', '1', '1', '1531215315', '1532684119', '1530783322', '0');
INSERT INTO `ns_coupon_type` VALUES ('2', '0', '十一秒', '100.00', '200', '10', '10.00', '0', '1', '0', '1530942450', '1534312053', '1530942464', '0');
INSERT INTO `ns_coupon_type` VALUES ('3', '0', '好书赠送识书人', '50.00', '10', '2', '10.00', '0', '0', '1', '1531274511', '1533952913', '1531274537', '0');

-- ----------------------------
-- Table structure for `ns_customer_service`
-- ----------------------------
DROP TABLE IF EXISTS `ns_customer_service`;
CREATE TABLE `ns_customer_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `order_no` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单项id',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名称',
  `sku_id` int(11) NOT NULL DEFAULT '0' COMMENT 'skuID',
  `sku_name` varchar(50) NOT NULL DEFAULT '' COMMENT 'sku名称',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品图片',
  `num` varchar(255) NOT NULL DEFAULT '' COMMENT '购买数量',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买人ID',
  `order_type` int(11) NOT NULL COMMENT '订单类型',
  `refund_money` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `refund_way` varchar(255) NOT NULL DEFAULT '' COMMENT '退款方式  退款退货',
  `refund_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '退款原因',
  `audit_status` int(11) NOT NULL DEFAULT '0' COMMENT '审核状态',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '申请时间',
  `audit_time` int(11) NOT NULL DEFAULT '0' COMMENT '审核时间',
  `order_from` varchar(255) NOT NULL DEFAULT '' COMMENT '订单来源',
  `receiver_province` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人所在省',
  `receiver_city` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人所在城市',
  `receiver_district` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人所在街道',
  `receiver_address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `payment_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付类型。取值范围：...',
  `receiver_mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人的手机号码',
  `shipping_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '订单配送方式',
  `goods_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `fixed_telephone` varchar(50) NOT NULL DEFAULT '' COMMENT '固定电话',
  `receiver_name` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '买家会员名称',
  `refund_shipping_code` varchar(255) NOT NULL DEFAULT '' COMMENT '退款物流单号',
  `refund_shipping_company` varchar(255) NOT NULL DEFAULT '' COMMENT '退款物流公司名称',
  `refund_balance_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单退款余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='售后记录表';

-- ----------------------------
-- Records of ns_customer_service
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_customer_service_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_customer_service_records`;
CREATE TABLE `ns_customer_service_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单商品表id',
  `refund_status` varchar(255) NOT NULL DEFAULT '' COMMENT '操作状态 流程状态(refund_status)  状态名称(refund_status_name)  操作时间1 买家申请  发起了退款申请,等待卖家处理2 等待买家退货  卖家已同意退款申请,等待买家退货3 等待卖家确认收货  买家已退货,等待卖家确认收货4 等待卖家确认退款  卖家同意退款0 退款已成功 卖家退款给买家，本次维权结束-1  退款已拒绝 卖家拒绝本次退款，本次维权结束-2 退款已关闭 主动撤销退款，退款关闭-3 退款申请不通过 拒绝了本次退款申请,等待买家修改',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '退款操作内容描述',
  `action_way` tinyint(4) NOT NULL DEFAULT '0' COMMENT '操作方 1 买家 2 卖家',
  `action_userid` varchar(255) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `action_username` varchar(255) NOT NULL DEFAULT '' COMMENT '操作人姓名',
  `action_time` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='售后操作记录表';

-- ----------------------------
-- Records of ns_customer_service_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_express_company`
-- ----------------------------
DROP TABLE IF EXISTS `ns_express_company`;
CREATE TABLE `ns_express_company` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表序号',
  `shop_id` int(11) NOT NULL COMMENT '商铺id',
  `company_name` varchar(50) NOT NULL DEFAULT '' COMMENT '物流公司名称',
  `express_no` varchar(20) NOT NULL DEFAULT '' COMMENT '物流编号',
  `is_enabled` int(11) NOT NULL DEFAULT '1' COMMENT '使用状态',
  `image` varchar(255) DEFAULT '' COMMENT '物流公司模版图片',
  `phone` varchar(50) NOT NULL DEFAULT '' COMMENT '联系电话',
  `orders` int(11) DEFAULT NULL,
  `express_logo` varchar(255) DEFAULT '' COMMENT '公司logo',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '是否设置为默认 0未设置 1 默认',
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=420 COMMENT='物流公司';

-- ----------------------------
-- Records of ns_express_company
-- ----------------------------
INSERT INTO `ns_express_company` VALUES ('1', '0', '东方快截', '885698', '1', '', '18356987412', '0', 'upload/common/1530840621.jpg', '0');
INSERT INTO `ns_express_company` VALUES ('2', '0', '夏通快运', '889856', '1', '', '15688898989', '0', 'upload/common/1531276122.jpeg', '1');

-- ----------------------------
-- Table structure for `ns_express_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ns_express_shipping`;
CREATE TABLE `ns_express_shipping` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '运单模版id',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `template_name` varchar(255) NOT NULL DEFAULT '' COMMENT '模版名称',
  `co_id` int(11) NOT NULL DEFAULT '0' COMMENT '物流公司 id',
  `size_type` smallint(6) NOT NULL DEFAULT '1' COMMENT '尺寸类型 1像素px  2毫米mm',
  `width` smallint(6) NOT NULL DEFAULT '0' COMMENT '宽度',
  `height` smallint(6) NOT NULL DEFAULT '0' COMMENT '长度',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '快递单图片',
  PRIMARY KEY (`sid`),
  KEY `IDX_express_shipping_co_id` (`co_id`),
  KEY `IDX_express_shipping_shopId` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 COMMENT='运单模板';

-- ----------------------------
-- Records of ns_express_shipping
-- ----------------------------
INSERT INTO `ns_express_shipping` VALUES ('1', '0', '东方快截', '1', '1', '0', '0', '');
INSERT INTO `ns_express_shipping` VALUES ('2', '0', '夏通快运', '2', '1', '0', '0', '');

-- ----------------------------
-- Table structure for `ns_express_shipping_items`
-- ----------------------------
DROP TABLE IF EXISTS `ns_express_shipping_items`;
CREATE TABLE `ns_express_shipping_items` (
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '运单模版id',
  `field_name` varchar(30) NOT NULL COMMENT '字段名称',
  `field_display_name` varchar(255) NOT NULL COMMENT '打印项名称',
  `is_print` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否打印',
  `x` int(11) NOT NULL DEFAULT '0' COMMENT 'x',
  `y` int(11) NOT NULL DEFAULT '0' COMMENT 'y',
  PRIMARY KEY (`sid`,`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=420 COMMENT='物流模板打印项';

-- ----------------------------
-- Records of ns_express_shipping_items
-- ----------------------------
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A1', '订单编号', '1', '10', '11');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A10', '收件人邮编', '1', '10', '86');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A11', '货到付款物流编号', '1', '10', '286');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A12', '代收金额', '1', '10', '186');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A13', '备注', '1', '10', '311');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A2', '发件人公司', '1', '10', '36');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A3', '发件人地址', '1', '10', '136');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A4', '发件人姓名', '1', '10', '111');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A5', '发件人电话', '1', '10', '211');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A6', '发件人邮编', '1', '10', '236');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A7', '收件人地址', '1', '10', '261');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A8', '收件人姓名', '1', '10', '61');
INSERT INTO `ns_express_shipping_items` VALUES ('1', 'A9', '收件人电话', '1', '10', '161');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A1', '订单编号', '1', '10', '11');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A10', '收件人邮编', '1', '10', '86');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A11', '货到付款物流编号', '1', '10', '286');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A12', '代收金额', '1', '10', '186');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A13', '备注', '1', '10', '311');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A2', '发件人公司', '1', '10', '36');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A3', '发件人地址', '1', '10', '136');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A4', '发件人姓名', '1', '10', '111');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A5', '发件人电话', '1', '10', '211');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A6', '发件人邮编', '1', '10', '236');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A7', '收件人地址', '1', '10', '261');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A8', '收件人姓名', '1', '10', '61');
INSERT INTO `ns_express_shipping_items` VALUES ('2', 'A9', '收件人电话', '1', '10', '161');

-- ----------------------------
-- Table structure for `ns_express_shipping_items_library`
-- ----------------------------
DROP TABLE IF EXISTS `ns_express_shipping_items_library`;
CREATE TABLE `ns_express_shipping_items_library` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物流模版打印项库ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `field_name` varchar(50) NOT NULL COMMENT '字段名',
  `field_display_name` varchar(50) NOT NULL COMMENT '字段显示名',
  `is_enabled` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否启用',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1260 COMMENT='物流模版打印项库';

-- ----------------------------
-- Records of ns_express_shipping_items_library
-- ----------------------------
INSERT INTO `ns_express_shipping_items_library` VALUES ('1', '0', 'A1', '订单编号', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('2', '0', 'A2', '发件人公司', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('3', '0', 'A8', '收件人姓名', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('4', '0', 'A10', '收件人邮编', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('5', '0', 'A4', '发件人姓名', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('6', '0', 'A3', '发件人地址', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('7', '0', 'A9', '收件人电话', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('8', '0', 'A12', '代收金额', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('9', '0', 'A5', '发件人电话', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('10', '0', 'A6', '发件人邮编', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('11', '0', 'A7', '收件人地址', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('12', '0', 'A11', '货到付款物流编号', '');
INSERT INTO `ns_express_shipping_items_library` VALUES ('13', '0', 'A13', '备注', '');

-- ----------------------------
-- Table structure for `ns_gift_grant_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_gift_grant_records`;
CREATE TABLE `ns_gift_grant_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gift_id` int(11) NOT NULL COMMENT '赠送活动ID',
  `goods_id` int(11) NOT NULL COMMENT '赠送商品ID',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '赠送商品名称',
  `goods_img` varchar(255) NOT NULL DEFAULT '' COMMENT '赠送商品图片',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '赠送数量',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '发放方式',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '发放相关ID',
  `memo` text NOT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT '0' COMMENT '赠送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='赠品发放记录';

-- ----------------------------
-- Records of ns_gift_grant_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods`;
CREATE TABLE `ns_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id(SKU)',
  `goods_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '店铺id',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类id',
  `category_id_1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级分类id',
  `category_id_2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级分类id',
  `category_id_3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '三级分类id',
  `brand_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '品牌id',
  `group_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `promotion_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '促销类型 0无促销，1团购，2限时折扣',
  `promote_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销活动ID',
  `goods_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '实物或虚拟商品标志 1实物商品 0 虚拟商品 2 F码商品',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品原价格',
  `promotion_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品促销价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `point_exchange_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '积分兑换类型 0 非积分兑换 1 只能积分兑换 ',
  `point_exchange` int(11) NOT NULL DEFAULT '0' COMMENT '积分兑换',
  `give_point` int(11) NOT NULL DEFAULT '0' COMMENT '购买商品赠送积分',
  `is_member_discount` int(1) NOT NULL DEFAULT '0' COMMENT '参与会员折扣',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费 0为免运费',
  `shipping_fee_id` int(11) NOT NULL DEFAULT '0' COMMENT '售卖区域id 物流模板id  ns_order_shipping_fee 表id',
  `stock` int(10) NOT NULL DEFAULT '0' COMMENT '商品库存',
  `max_buy` int(11) NOT NULL DEFAULT '0' COMMENT '限购 0 不限购',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数量',
  `min_stock_alarm` int(11) NOT NULL DEFAULT '0' COMMENT '库存预警值',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
  `collects` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `star` tinyint(3) unsigned NOT NULL DEFAULT '5' COMMENT '好评星级',
  `evaluates` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价数',
  `shares` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级地区id',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级地区id',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品主图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '商品关键词',
  `introduction` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简介，促销语',
  `description` text NOT NULL COMMENT '商品详情',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '商家编号',
  `is_stock_visible` int(1) NOT NULL DEFAULT '0' COMMENT '页面不显示库存',
  `is_hot` int(1) NOT NULL DEFAULT '0' COMMENT '是否热销商品',
  `is_recommend` int(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `is_new` int(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_pre_sale` int(11) DEFAULT '0',
  `is_bill` int(1) NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `state` tinyint(3) NOT NULL DEFAULT '1' COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `img_id_array` varchar(1000) DEFAULT NULL COMMENT '商品图片序列',
  `sku_img_array` varchar(1000) DEFAULT NULL COMMENT '商品sku应用图片列表  属性,属性值，图片ID',
  `match_point` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）',
  `match_ratio` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）百分比',
  `real_sales` int(10) NOT NULL DEFAULT '0' COMMENT '实际销量',
  `goods_attribute_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品类型',
  `goods_spec_format` text NOT NULL COMMENT '商品规格',
  `goods_weight` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品重量',
  `goods_volume` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品体积',
  `shipping_fee_type` int(11) NOT NULL DEFAULT '1' COMMENT '计价方式1.重量2.体积3.计件',
  `extend_category_id` varchar(255) DEFAULT NULL,
  `extend_category_id_1` varchar(255) DEFAULT NULL,
  `extend_category_id_2` varchar(255) DEFAULT NULL,
  `extend_category_id_3` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT '0' COMMENT '供货商id',
  `sale_date` int(11) DEFAULT '0' COMMENT '上下架时间',
  `create_time` int(11) DEFAULT '0' COMMENT '商品添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '商品编辑时间',
  `min_buy` int(11) NOT NULL DEFAULT '0' COMMENT '最少买几件',
  `virtual_goods_type_id` int(11) DEFAULT '0' COMMENT '虚拟商品类型id',
  `production_date` int(11) NOT NULL DEFAULT '0' COMMENT '生产日期',
  `shelf_life` varchar(50) NOT NULL DEFAULT '' COMMENT '保质期',
  `goods_video_address` varchar(455) DEFAULT '' COMMENT '商品视频地址，不为空时前台显示视频',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品自定义模板',
  `max_use_point` int(11) NOT NULL DEFAULT '0' COMMENT '积分抵现最大可用积分数 0为不可使用',
  `is_open_presell` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否支持预售',
  `presell_time` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货时间',
  `presell_day` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货天数',
  `presell_delivery_type` int(11) NOT NULL DEFAULT '1' COMMENT '预售发货方式1. 按照预售发货时间 2.按照预售发货天数',
  `presell_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售金额',
  `goods_unit` varchar(20) NOT NULL DEFAULT '' COMMENT '商品单位',
  PRIMARY KEY (`goods_id`),
  KEY `UK_ns_goods_brand_id` (`brand_id`),
  KEY `UK_ns_goods_category_id` (`category_id`),
  KEY `UK_ns_goods_category_id_1` (`category_id_1`),
  KEY `UK_ns_goods_category_id_2` (`category_id_2`),
  KEY `UK_ns_goods_category_id_3` (`category_id_3`),
  KEY `UK_ns_goods_extend_category_id` (`extend_category_id`),
  KEY `UK_ns_goods_extend_category_id_1` (`extend_category_id_1`),
  KEY `UK_ns_goods_extend_category_id_2` (`extend_category_id_2`),
  KEY `UK_ns_goods_extend_category_id_3` (`extend_category_id_3`),
  KEY `UK_ns_goods_goods_attribute_id` (`goods_attribute_id`),
  KEY `UK_ns_goods_group_id_array` (`group_id_array`),
  KEY `UK_ns_goods_promotion_price` (`promotion_price`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16554 COMMENT='商品表';

-- ----------------------------
-- Records of ns_goods
-- ----------------------------
INSERT INTO `ns_goods` VALUES ('1', '夏季中国风棉麻休闲短裤男加肥加大码透气中裤韩版裤子潮流五分裤', '0', '3', '1', '3', '0', '1', '1', '0', '0', '1', '120.00', '200.00', '200.00', '120.00', '0', '10', '1', '0', '0.00', '0', '5', '5', '13', '1', '11', '0', '0', '0', '10', '26', '282', '7', '夏季中国风棉麻休闲短裤男加肥加大码透气中裤韩版裤子潮流五分裤', '夏季中国风棉麻休闲短裤男加肥加大码透气中裤韩版裤子潮流五分裤', '<p>品牌名称：<span class=\"J_EbrandLogo\" target=\"_blank\" href=\"//brand.tmall.com/brandInfo.htm?brandId=962158852&type=0&scm=1048.1.1.4\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">NCTTG</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><a class=\"ui-more-nbg tm-MRswitchAttrs\" href=\"https://detail.tmall.com/item.htm?spm=a220m.1000858.1000725.335.3d447dc2VJ46o7&id=571987527836&skuId=3875940630301&areaId=330100&user_id=2606714824&cat_id=53636001&is_b=1&rn=df5d4464952adeb793da8c3714215973#J_Attrs\" style=\"margin: 0px; padding: 0px 28px 0px 10px; text-decoration: none; color: rgb(153, 153, 153); outline: 0px; display: inline-block; position: relative; height: 20px; line-height: 22px; float: right;\">更多参数<em class=\"ui-more-nbg-arrow tm-MRswitchAttrs\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;//assets.alicdn.com/apps/tmall/mui/more/img/more.png&quot;); background-repeat: no-repeat; position: absolute; display: inline-block; top: 6px; right: 10px; height: 13px; line-height: 13px; width: 13px; overflow: hidden; background-position: 0px -26px;\"></em></a><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">产品参数：</span></p><ul id=\"J_AttrUL\" style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>上市年份季节:&nbsp;2018年夏季</p></li><li><p>材质成分:&nbsp;棉95% 聚酯纤维5%</p></li><li><p>货号:&nbsp;电商A015-9227</p></li><li><p>销售渠道类型:&nbsp;纯电商(只在线上销售)</p></li><li><p>品牌:&nbsp;NCTTG</p></li><li><p>弹力:&nbsp;无弹</p></li><li><p>厚薄:&nbsp;薄</p></li><li><p>基础风格:&nbsp;时尚都市</p></li></ul><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_1.png', '11212', '1', '0', '0', '0', '0', '0', '1', '0', '7', '', null, null, '0', '0', '[{\"spec_name\":\"100*100\",\"spec_id\":1,\"value\":[{\"spec_value_name\":\"100*100\",\"spec_name\":\"100*100\",\"spec_id\":1,\"spec_value_id\":1,\"spec_show_type\":\"1\",\"spec_value_data\":\"\"}]}]', '0.00', '0.00', '3', '', '', '', '', '1', '1530782054', '1530782054', '1530837510', '1', '0', '1530633600', '1', '', '', '', '1000', '0', '0', '0', '1', '0.00', '件');
INSERT INTO `ns_goods` VALUES ('3', '2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生', '0', '3', '1', '3', '0', '1', '1', '0', '0', '1', '1.00', '1.00', '1.00', '1.00', '0', '1', '0', '0', '0.00', '0', '1', '1', '11', '1', '1', '0', '0', '0', '-1', '24', '262', '10', '2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生', '2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生', '<p>品牌名称：<span class=\"J_EbrandLogo\" target=\"_blank\" href=\"//brand.tmall.com/brandInfo.htm?brandId=1452337497&type=0&scm=1048.1.1.4\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">佐卡曼</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><a class=\"ui-more-nbg tm-MRswitchAttrs\" href=\"https://detail.tmall.com/item.htm?spm=a220m.1000858.1000725.8.3d447dc2VJ46o7&id=572499810383&areaId=330100&user_id=2973681982&cat_id=53636001&is_b=1&rn=df5d4464952adeb793da8c3714215973#J_Attrs\" style=\"margin: 0px; padding: 0px 28px 0px 10px; text-decoration: none; color: rgb(153, 153, 153); outline: 0px; display: inline-block; position: relative; height: 20px; line-height: 22px; float: right;\">更多参数<em class=\"ui-more-nbg-arrow tm-MRswitchAttrs\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;//assets.alicdn.com/apps/tmall/mui/more/img/more.png&quot;); background-repeat: no-repeat; position: absolute; display: inline-block; top: 6px; right: 10px; height: 13px; line-height: 13px; width: 13px; overflow: hidden; background-position: 0px -26px;\"></em></a><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">产品参数：</span></p><ul id=\"J_AttrUL\" style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>上市年份季节:&nbsp;2018年夏季</p></li><li><p>材质成分:&nbsp;棉98.6% 聚氨酯弹性纤维(氨纶)1.4%</p></li><li><p>货号:&nbsp;ZKM08553KZ</p></li><li><p>销售渠道类型:&nbsp;纯电商(只在线上销售)</p></li><li><p>品牌:&nbsp;佐卡曼</p></li><li><p>弹力:&nbsp;微弹</p></li><li><p>厚薄:&nbsp;薄</p></li><li><p>基础风格:&nbsp;青春流行</p></li><li><p>面料:&nbsp;卡其布</p></li></ul><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_3.png', '1', '1', '0', '0', '0', '0', '0', '1', '0', '10', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '1', '1530783051', '1530783051', '0', '1', '0', '1532448000', '1', 'upload/goods_video/1530783037.mp4', '', '', '3', '0', '0', '0', '1', '0.00', '件');
INSERT INTO `ns_goods` VALUES ('4', '连帽衬衫青少年学生', '0', '2', '1', '2', '0', '1', '1', '0', '0', '1', '200.00', '100.00', '100.00', '50.00', '0', '100', '0', '0', '0.00', '0', '97', '5', '143', '1', '14', '0', '0', '0', '10', '21', '233', '11', '2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生SS', '2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生SS', '<p>天</p>', 'upload/goods_qrcode/goods_qrcode_4.png', '11212', '1', '0', '0', '0', '0', '0', '1', '0', '11', '', '3.00', '60.00', '3', '1', '[{\"spec_name\":\"100*100\",\"spec_id\":1,\"value\":[{\"spec_value_name\":\"100*100\",\"spec_name\":\"100*100\",\"spec_id\":1,\"spec_value_id\":1,\"spec_show_type\":\"1\",\"spec_value_data\":\"\"}]}]', '0.00', '0.00', '3', '', '', '', '', '1', '1530783240', '1530783240', '1530942482', '1', '0', '1530460800', '1', 'upload/goods_video/1530837566.mp4', '', '', '400', '0', '0', '0', '1', '0.00', '个');
INSERT INTO `ns_goods` VALUES ('6', '平凡的世界', '0', '5', '5', '0', '0', '2', '2', '0', '0', '1', '50.00', '60.00', '60.00', '30.00', '0', '5', '0', '0', '0.00', '0', '97', '5', '18', '10', '17', '1', '0', '0', '10', '27', '289', '15', '茅盾', '读来令人荡气回肠，不忍释卷；被誉为“茅盾文学奖皇冠上的明珠，激励千万青年的不朽经典”', '<p>《平凡的世界》是中国著名作家路遥创作的一部百万字的长篇巨著；这是一部全景式地表现中国当代城乡社会生活的长篇小说；全书共三部；作者在中国70年代中期到80年代中期近十年间的广阔背景上，通过复杂的矛盾纠葛，以孙少安和孙少平两兄弟为中心，刻画了当时社会各阶层众多普通人的形象；劳动与爱情、挫折与追求、痛苦与欢乐、日常生活与巨大社会冲突纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路；读来令人荡气回肠，不忍释卷；被誉为“茅盾文学奖皇冠上的明珠，激励千万青年的不朽经典”。</p><p>作者简介</p><p style=\"white-space: normal;\"><img class=\"size-full wp-image-523\" title=\"路遥先生\" src=\"http://www.pingfandeshijie.com/wp-content/uploads/2012/02/luyao.jpg\" alt=\"路遥先生\" width=\"144\" height=\"199\"/></p><p class=\"wp-caption-text\" style=\"white-space: normal;\">路遥先生</p><p>路遥（1949—1992）原名王卫国，1949年12月3日生于陕西榆林市清涧县一个贫困的农民家庭，7岁时因为家里困难被过继给延川县农村的伯父。曾在延川县立中学学习，1969年回乡务农。这段时间里他做过许多临时性的工作，并在农村一所小学中教过一年书。1973年进入延安大学中文系学习，其间开始文学创作。</p><p>大学毕业后，任《陕西文艺》（今为《延河》）编辑。1980年发表《惊心动魄的一幕》，获得第一届全国优秀中篇小说奖，1982年发表中篇小说《人生》，后被改编为电影，轰动全国。</p><p>路遥最重要的代表作《平凡的世界》以其恢宏的气势和史诗般的品格，全景式地表现了改革时代中国城乡的社会生活和人们思想情感的巨大变迁，路遥因此而荣获茅盾文学奖。</p><p>1992年11月17日上午8时20分，路遥因病医治无效在陕西西安英年早逝，年仅42岁。</p><p>内容概要</p><p><br/></p><p>《平凡的世界》时间跨度从1975年到1985年，全景式地反映了中国近10年间城乡社会生活的巨大历史性变迁；以孙少安和孙少平两兄弟为中心，以整个社会的变迁、思想的转型为背景，通过复杂的矛盾纠葛，刻画了社会各阶层普通人们的形象，成功地塑造了孙少安和孙少平这些为生活默默承受着人生苦难的人们，在这里人性的自尊、自强与自信，人生的苦难与拼搏，挫折与追求，痛苦与欢乐，纷繁地交织，读来令人荡气回肠，不忍释卷。</p><p>而书中最引人感动的，还是孙氏兄弟不甘为命运的玩偶，在沉重的生活中发掘自己被禁锢的价值，自强不息的命运主旋律。</p><p>第一部</p><p>1975年初农民子弟孙少平到原西县高中读书，他贫困，自尊；后对处境相同的地主家庭出身的郝红梅产生情愫，被侯玉英发现并当众说破后，与郝红梅关系渐变恶劣，后来郝红梅却与家境优越的顾养民恋爱，少平高中毕业，回到家乡做了一名教师。但他并没有消沉，他与县革委副主任田福军女儿田晓霞建立了友情，在晓霞帮助下关注着外部世界。少平的哥哥少安一直在家劳动，与村支书田福堂女儿，县城教师润叶是青梅竹马，却遭到田福堂反对。经过痛苦的煎熬，少安到山西与勤劳善良的秀莲相亲并结了婚，润叶也只得含泪与向前结婚。这时农村生活混乱，旱灾又火上加油，田福堂为加强自己威信，组织偷挖河坝与上游抢水，不料出了人命，为了“学大寨”，他好大喜功炸山修田叫人搬家又弄得天怒人怨。生活的航道已到了非改变不可的地步。</p><p>第二部</p><p>1979年春，十一届三中全会后百废待兴又矛盾重重，田福堂连夜召开支部会抵制责任制，孙少安却领导生产队率先实行接着也就在全村推广了责任制。头脑灵活的少安又进城拉砖，用赚的钱建窑烧砖，成了公社的“冒尖户”。少平青春的梦想和追求也激励着他到外面去“闯荡世界”，他从漂泊的揽工汉成为正式的建筑工人，最后又获得了当煤矿工人的好机遇，他的女友晓霞从师专毕业后到省报当了记者，他们相约两年后再相会。润叶远离她不爱的丈夫到团地委工作，引起钟情痴心的丈夫酒后开车致残，润叶受到内疚回到丈夫身边，开始幸福生活。她的弟弟润生也已长大成人，他在异乡与命运坎坷的郝红梅邂逅，终于两人结为夫妻。往昔主宰全村命运的强人田福堂，不仅对新时期的变革抵触，同时也为女儿、儿子的婚事窝火，加上病魔缠身，弄得焦头烂额。</p><p>第三部</p><p>1982年孙少平到了煤矿，尽心尽力干活，成了一名优秀工人。可是，就在孙少平与田晓霞产生强烈感情的时候，田晓霞却因在抗洪采访中为抢救灾民光荣献身了,后来田福军给孙少平发了封电报，少平悲痛不已。少安的砖窑也有了很大发展，他决定贷款扩建机器制砖，不料因技师根本不懂技术，砖窑蒙受很大损失，后来在朋友和县长的帮助下再度奋起，通过几番努力，终于成了当地社会主义建设的领头人。但是祸不单行，少安的妻子秀莲，在欢庆由他家出资一万五千元扩建的小学会上口吐鲜血，确诊肺癌。润叶生活幸福，生了个胖儿子，润生和郝红梅的婚事也终于得到了父母的承认，并添了可爱的女儿。27岁的少平在一次事故中为救护徒弟也受了重伤，英俊面容尽毁，却遇少时玩伴金波之妹告白，少平为她的前途与自己的感情选择拒绝……他们并没有被不幸压垮，少平从医院出来，面对了现实，又充满信心地回到了矿山，迎接他新的生活与挑战。</p><p>130 条评论 发表在“平凡的世界</p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_6.png', '11214', '1', '0', '0', '0', '0', '0', '1', '0', '15,16,17', '', null, null, '3', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '2', '1531274264', '1531274264', '1531276702', '1', '0', '1531152000', '100', '', '', '', '10', '0', '0', '0', '1', '0.00', '本');
INSERT INTO `ns_goods` VALUES ('7', '人生', '0', '5', '5', '0', '0', '0', '2', '0', '0', '1', '60.00', '50.00', '50.00', '40.00', '0', '0', '0', '0', '0.00', '0', '96', '30', '17', '8', '14', '0', '0', '0', '10', '20', '229', '18', '优秀中篇小说奖', '《人生》是作家路遥创作的小说，也是其成名作。原载《收获》1982年第三期，获1981--1982全国优秀中篇小说奖。', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">《人生》是作家<a target=\"_blank\" href=\"https://baike.so.com/doc/5378854-5615069.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">路遥</a>创作的<a target=\"_blank\" href=\"https://baike.so.com/doc/5355412-5590879.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">小说</a>，也是其成名作。原载《<a target=\"_blank\" href=\"https://baike.so.com/doc/6193721-7584987.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">收获</a>》1982年第三期，获1981--1982全国优秀中篇小说奖。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">小说以改革时期<a target=\"_blank\" href=\"https://baike.so.com/doc/6302003-6515527.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">陕北高原</a>的城乡生活为时空背景，描写了高中毕业生高加林回到土地又离开土地，再离开土地，再回到土地这样人生的变化过程构成了其故事构架。高加林同农村姑娘<a target=\"_blank\" href=\"https://baike.so.com/doc/7971671-8263373.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">刘巧珍</a>，城市姑娘黄亚萍之间的感情纠葛构成了故事发展的矛盾，也正是体现那种艰难选择的悲剧。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">回到土地</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">主人公是高加林，他高中毕业回到村里后当上了民办小学的教师，很满足这个既能体现他的才能而又对他充满希望的职业，但是好景不长，他就被有权有势的大队书记高明楼的儿子顶替了，他重新回到了土地。正当他失意无奈，甚至有些绝望的时候，善良美丽的农村姑娘刘巧珍闯进了他的生活，刘巧珍虽然没有文化，但是却真心真意地爱上了高加林这个&quot;文化人&quot;，她的爱质朴纯真，她以她的那种充满激情而又实际的作法表白了她的炽烈的爱。而实际上她所得到的爱从一开始就是不平等，高加林在她的眼中是完美的，而她对于高加林来说只是在他失意时找到了精神上的慰藉。当机遇再次降临到了高加林身上，他终于抓住了这次机会，重新回到了城市。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">离开土地</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">城市生活给了高加林大显身手的机会，又让他重新遇到了他的同学黄亚萍。与巧珍相比，黄亚萍无疑是位现代女性，她开朗活泼，却又任性专横，她对高加林的爱炽烈大胆又有一种征服欲。高加林的确与她有许多相似的地方，他们有相同的知识背景，又有许多感兴趣的话题，当他们俩口若悬河、侃侃而谈时，高加林已经进入了一种艰难的选择之中。当高加林隐隐地有了这种想法时，他的念头很快便被另一种感情压下去了，他想起了巧珍那亲切可爱的脸庞，想起了巧珍那种无私而温柔的爱。当巧珍带着狗皮褥子来看他时，巧珍去县城看了好几次加林，加林都有事下乡采访了，终于有一次他俩有机会见面了，加林看到日思夜想的巧珍，心情很是激动，巧珍看他的被褥那么单薄，就说下次去给他带去她自己铺的狗皮褥子，高加林一下子不高兴了，因为城里人没有人用狗皮褥子，而且那狗皮褥子跟他生活的环境一点都不相称，他怕被别人笑话，而当巧珍给他讲的都是些家长里短的小事的时候，他一下子觉得很失落，他跟黄亚萍谈论的都是时事政治、国家大事！那才是他想要的，他的远大抱负。这种反差让高加林很是纠结。他的那种难以言说的复杂的感情一下子表现了出来。在经过反复考虑后，他接受了黄亚萍的爱，可同时意味着这种选择会无情地伤害巧珍，当他委婉地对巧珍表达了他的这种选择后，巧珍含泪接受了，但她却并没有过多地责怪高加林，反而更担心高加林以后的生活，劝他到外地多操心。但是泪水却在她脸上刷刷地淌着。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">回到土地</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">但是好梦难圆，高加林通过关系得到城内工作这件事终于被人告发了，他要面对的是重新回到生他养他的那片土地，他所有的理想和抱负如同过眼云烟难以挽留了。难以承受的是这份打击更难以面对的是生他养他的那片土地，(他本以为村里人都等着看他的笑话呢！可他万万没想到，当他灰头土脸地出现在家乡人面前的时候，家乡人给他的是各种安慰的话语，他感动的不知说什么了，只是拿出他随身带着的烟散给乡亲们。而此时他也得知巧珍已嫁作他人妇，即便如此，她依然去求她姐姐的公公、村支书--高明楼，求他给高加林安排去教学，因为据说家乡的那所学校因为学生增多要新添一个老师。德顺爷爷感慨地说道：&quot;多好的娃娃啊！&quot;此时的高加林已经泣不成声，趴在热情的乡土上大声痛苦......)他褪去了骄傲，认清了现实，接受了德顺爷爷的一番话，而后懊悔的扑倒在了地上。<a class=\"reference_sup\" name=\"refer_5328767-5563939-15736916\" href=\"https://baike.so.com/doc/5328767-5563939.html#refff_5328767-5563939-1\" style=\"margin: 0px 0px 0px 2px; padding: 0px 2px; color: rgb(51, 102, 204); text-decoration: none; cursor: pointer; font-size: 12px; position: relative; top: -0.5em; vertical-align: baseline; white-space: nowrap;\">[1]</a></p><h2 style=\"margin: 35px 0px 15px -30px; padding: 0px; font-size: 22px; font-weight: 500; border-left: 10px solid rgb(55, 171, 47); clear: both; font-family: &quot;microsoft yahei&quot;; line-height: 22px; position: relative; text-indent: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"><a style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); position: absolute; top: -10px;\" name=\"5328767-5563939-2\"></a><a class=\"conArrow\" href=\"https://baike.so.com/doc/5328767-5563939.html#\" data-logid=\"h2-title\" style=\"margin: 0px; padding: 0px; text-decoration: none; background: url(&quot;https://p.ssl.qhmsg.com/t012b40d58f262241ac.png&quot;) 0px 0px no-repeat; display: inline; float: right; font-size: 0px; height: 20px; text-shadow: none; width: 20px;\">折叠</a><span class=\"opt js-edittext\" style=\"margin: 0px 6px 0px 0px; padding: 0px 7px 0px 0px; border-right: 1px solid rgb(217, 217, 217); float: right; font-size: 12px; font-family: simsun;\"><a class=\"edit\" href=\"https://baike.so.com/create/edit/?eid=5328767&sid=5563939&secid=2\" data-log=\"edit-title\" style=\"margin: 0px; padding: 0px; color: rgb(49, 152, 24); text-decoration: none;\"><em class=\"ico\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;https://p.ssl.qhmsg.com/t01c067b7271a91a2e3.png&quot;); background-repeat: no-repeat; display: inline-block; height: 16px; vertical-align: -5px; width: 16px; background-position: 0px -40px;\"></em>编辑本段</a></span><span class=\"title\" style=\"margin: 0px; padding: 0px; float: left; font-family: &quot;microsoft yahei&quot;, Arial, Helvetica, sans-serif; line-height: 24px; zoom: 1;\">创作背景</span></h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\"><a href=\"https://p1.ssl.qhmsg.com/t01fd61efc79233b0a8.jpg\" class=\"show-img layoutright\" data-type=\"gallery\" data-index=\"2\" style=\"margin: 5px 5px 5px 22px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; background: rgb(250, 250, 250); clear: both; display: inline-block; font-size: 12px; overflow: hidden; text-align: center; text-indent: 0px; float: right;\"><span class=\"show-img-hd\" style=\"margin: 0px; padding: 0px; border-top: 1px solid rgb(229, 229, 229); border-right: 1px solid rgb(229, 229, 229); border-left: 1px solid rgb(229, 229, 229); border-image: initial; border-bottom: none; display: block; width: 220px; height: 220px;\"><img id=\"img_18444879\" title=\"人生\" alt=\"人生\" data-img=\"mod_img\" src=\"https://p1.ssl.qhmsg.com/dr/220__/t01fd61efc79233b0a8.jpg\" style=\"margin: 0px; padding: 0px; border: none; vertical-align: middle; width: 220px; height: 220px; display: inline;\"/></span><span class=\"show-img-bd\" style=\"margin: 0px; padding: 0px 10px; border-right: 1px solid rgb(229, 229, 229); border-bottom: 1px solid rgb(229, 229, 229); border-left: 1px solid rgb(229, 229, 229); border-image: initial; border-top: none; display: block; line-height: 28px; max-width: 200px; overflow: hidden; text-align: left; width: 199.984px;\">人生</span></a>20世纪80年代的中国，商品经济的活跃打破了农村的僵持与保守，具有现代文明的城市开始对一直困守在土地的农民产生强烈的诱惑。特别是在青年心中引起巨大的骚动，他们开始对自己的生活及周围的世界产生怀疑与不满。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">20世纪80年代，中国户籍制度清晰地将公民分为农业户口和非农业户口，在这种固态格式化的身份制度下，中国社会形成了独特的社会地理景观：乡村景观和城市景观；与这两种景观相对应的是两种截然不同的经济制度和生存方式、文化特征、价值观念。由此导致了中国社会最重要的社会差异；城乡差别。同时，国家还通过各种举措在主观上强化这种差异。臂如在劳动分配制度上，城市工作的工人、教师、职员每月有固定的工资收入，有相对完善的医疗制度、退休制度，同时还可以享受国家各种福利待遇。而在乡村，农民不仅要按时按量向国家交纳粮食，在很长的时期内只能有限度地支配自己的劳动产品。并且，农民还要完成国家规定的各种税费。参与无偿的劳作(例如大规模强制性的农田水利建设)。而国家采取的各种政策将农民强制性地限制在土地上。这些政策的实施直接导致了农民在整个社会发展中长时间处于相对贫困的状态中。因此，可以说在这种基本的身份差异之下，城市和乡村作为两个基本对立的概念被凸显了出来。这是一个作为卑贱农民和一个高贵知识分子的对立，普通百姓和达官显贵的对立。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">《人生》就是在城市的场景中展开，似乎一切都处于城市的控制下，甚至乡下人天生就应该在城里人面前低人一等。这种强烈的等级观念、城乡差异在小说中被强化。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">当路遥年轻时不停地奔波在城市与乡村时，他最为熟悉的生活即是&quot;城市交叉地带&quot;，充满生气和机遇的城市生活对于像他那样的身处封闭而又贫困的农村知识青年构成了一种双重的刺激，不论在物质还是在精神上。路遥思考并理解了这一现象，在城市化的浪潮汹涌而来的种种冲击中，他提出了农村知识青年该如何做出选择。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">早在大学读书时，路遥阅读了大量的经典名著，并对新中国的文学成就进行了一翻巡视。他发现以前的小说带有某种脸谱化的倾向，正如儿童眼中将电影中的人物形象简单分为&quot;好人&quot;和&quot;坏蛋&quot;，而人的思想是复杂的、多变的，绝对不能将复杂的人性这样简单的划分，这种思考体现在《人生》的主人公高加林身上。</p><h2 style=\"margin: 35px 0px 15px -30px; padding: 0px; font-size: 22px; font-weight: 500; border-left: 10px solid rgb(55, 171, 47); clear: both; font-family: &quot;microsoft yahei&quot;; line-height: 22px; position: relative; text-indent: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"><a style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); position: absolute; top: -10px;\" name=\"5328767-5563939-3\"></a><a class=\"conArrow\" href=\"https://baike.so.com/doc/5328767-5563939.html#\" data-logid=\"h2-title\" style=\"margin: 0px; padding: 0px; text-decoration: none; background: url(&quot;https://p.ssl.qhmsg.com/t012b40d58f262241ac.png&quot;) 0px 0px no-repeat; display: inline; float: right; font-size: 0px; height: 20px; text-shadow: none; width: 20px;\">折叠</a><span class=\"opt js-edittext\" style=\"margin: 0px 6px 0px 0px; padding: 0px 7px 0px 0px; border-right: 1px solid rgb(217, 217, 217); float: right; font-size: 12px; font-family: simsun;\"><a class=\"edit\" href=\"https://baike.so.com/create/edit/?eid=5328767&sid=5563939&secid=3\" data-log=\"edit-title\" style=\"margin: 0px; padding: 0px; color: rgb(49, 152, 24); text-decoration: none;\"><em class=\"ico\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;https://p.ssl.qhmsg.com/t01c067b7271a91a2e3.png&quot;); background-repeat: no-repeat; display: inline-block; height: 16px; vertical-align: -5px; width: 16px; background-position: 0px -40px;\"></em>编辑本段</a></span><span class=\"title\" style=\"margin: 0px; padding: 0px; float: left; font-family: &quot;microsoft yahei&quot;, Arial, Helvetica, sans-serif; line-height: 24px; zoom: 1;\">人物介绍</span></h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">高加林</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">高加林是作者着力塑造的复杂的人物。他身上既体现了现代青年那种不断向命运挑战，自信坚毅的品质，又同时具有辛勤、朴实的<a target=\"_blank\" href=\"https://baike.so.com/doc/6334440-6548052.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">传统美德</a>。他热爱生活，心性极高，有着远大的理想和抱负。关心国际问题，爱好打篮球，并融入时代的潮流。他不像他的父亲那样忍气吞声、安守<a target=\"_blank\" href=\"https://baike.so.com/doc/23740332-24296244.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">本分</a>，而是有更高的精神追求，但是他的现实与他心中的理想总是相差极远，正是这样反差构成了他的复杂的性格特征。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">高加林渴望离开贫穷落后的农村，到更广阔的城市天地去生活。期盼从乡村走出去，走进城市，由简单的劳作走向层次较高的精神价值创造。实际上体现了一种平等、民主的生存观念。任何人不管其家庭出身、社会地位和人生起点如何，都应该同等地具有人生追求和实现自身价值的权力。他身上有一股强烈的力量，那就是富于理想，锐意进取，向往现代文明生活。当高加林从黄土高原上那个闭塞的村子里考进县城高中以后.新的现实、新的生活、新的知识诱惑着他，使他不满父辈们的那种为生活而生活的简单生活方式，他抛弃了农民固有的那种传统的狭隘观念，开始了对自身和社会的重新认知。在眼花缭乱的社会生活面前憧憬着自己无数美好的梦想。他积极进取，不断地探索与付出，也获得了些许成功。农村中像高加林这种类型的人物尽管有时带有好胜虚荣的个人动机，并不是一种完人，但他们却是特定时代对农村落后惰性的一种冲击力量，是能推动这个时代变革的一个因子。正是都市文明和乡村的落后、愚昧对立中产生的矛盾才造就了高加林这样的边缘人物。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">刘巧珍</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">巧珍美丽善良，爱情真诚。但她把自己置于高加林的附属地位，理想之光幻灭后，她以无爱的婚姻表示对命运的抗争，恰恰重陷传统道德观念的桎梏。</p><h2 style=\"margin: 35px 0px 15px -30px; padding: 0px; font-size: 22px; font-weight: 500; border-left: 10px solid rgb(55, 171, 47); clear: both; font-family: &quot;microsoft yahei&quot;; line-height: 22px; position: relative; text-indent: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"><a style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); position: absolute; top: -10px;\" name=\"5328767-5563939-4\"></a><a class=\"conArrow\" href=\"https://baike.so.com/doc/5328767-5563939.html#\" data-logid=\"h2-title\" style=\"margin: 0px; padding: 0px; text-decoration: none; background: url(&quot;https://p.ssl.qhmsg.com/t012b40d58f262241ac.png&quot;) 0px 0px no-repeat; display: inline; float: right; font-size: 0px; height: 20px; text-shadow: none; width: 20px;\">折叠</a><span class=\"opt js-edittext\" style=\"margin: 0px 6px 0px 0px; padding: 0px 7px 0px 0px; border-right: 1px solid rgb(217, 217, 217); float: right; font-size: 12px; font-family: simsun;\"><a class=\"edit\" href=\"https://baike.so.com/create/edit/?eid=5328767&sid=5563939&secid=4\" data-log=\"edit-title\" style=\"margin: 0px; padding: 0px; color: rgb(49, 152, 24); text-decoration: none;\"><em class=\"ico\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;https://p.ssl.qhmsg.com/t01c067b7271a91a2e3.png&quot;); background-repeat: no-repeat; display: inline-block; height: 16px; vertical-align: -5px; width: 16px; background-position: 0px -40px;\"></em>编辑本段</a></span><span class=\"title\" style=\"margin: 0px; padding: 0px; float: left; font-family: &quot;microsoft yahei&quot;, Arial, Helvetica, sans-serif; line-height: 24px; zoom: 1;\">作品鉴赏</span></h2><h3 style=\"margin: 20px 0px 12px; padding: 0px 0px 12px; font-size: 14px; font-weight: 500; border-bottom: 1px solid rgb(236, 236, 236); clear: both; cursor: pointer; font-family: &quot;microsoft yahei&quot;; line-height: 18px; overflow: hidden; position: relative;\"><a style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); position: absolute; top: -10px;\" name=\"5328767-5563939-4_1\"></a><a class=\"conArrow\" href=\"https://baike.so.com/doc/5328767-5563939.html#\" data-logid=\"h3-title\" style=\"margin: 0px; padding: 0px; text-decoration: none; background: url(&quot;https://p.ssl.qhmsg.com/t012b40d58f262241ac.png&quot;) 0px 0px no-repeat; display: inline; float: right; font-size: 0px; height: 20px; text-shadow: none; width: 20px;\">折叠</a><span class=\"title\" style=\"margin: 0px; padding: 0px; float: left; font-size: 18px; font-family: &quot;microsoft yahei&quot;, Arial, Helvetica, sans-serif;\">作品主题</span></h3><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">事实上，高加林对土地逃离与回归的人生历程，正揭示出路遥对乡土中国在现代化进程中个体生命的两难抉择。在守望土地、生命接近自然性存有野性美的同时，也要承受来自恶劣自然环境、封建陈规陋习和城市人高傲所带来的深重痛苦和屈辱。悲苦不仅来自物质层面，更主要来自个性压抑、理想受阻和精神苦闷。寄身城市，固然生活环境大为改善，为实现个人理想提供了广阔天地，但也根容易滋生克南妈式的小市民心理、黄亚萍式的极端利已主义、张克南式的人格萎缩，让人倍感精神家园的双重失落。当巧珍第一次到县城去见高加林，&quot;一进加林的办公室，巧珍就向加林的怀里扑来。加林赶忙把她推开，说：&#39;这不是在庄稼地里，我的领导就在隔壁……你先坐椅子上，我给你倒一杯水。&#39;他说着就去取水杯&quot;。这里所揭示的城市环境对个体生命的压抑扭曲，既是高加林的个人心理感受，也代表城市人作为群体，时时遭受生存环境和文明制度对个体生命的异化和弱化。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">真正优秀的现实主义作品必然是贯彻着作家的审美理想的。《人生》的审美理想并不在于为当代农村青年指出一条铺满鲜花的人生坦途，描绘一个令人神往的灿烂前景，或展示出人生荆棘丛生的坎坷之路。《人生》的审美理想主要表现在，作者通过高加林和刘巧珍的爱情悲剧，给人一种痛惜感，充送着一种对于变革现实的热烈的期待和深情呼唤--要避免像高加林和刘巧珍那样的生活悲剧重演，要在文明与愚昧的冲突中正视民族文化心理的衍变。高加林所具备的，正是刘巧珍所没有的：刘巧珍所有的，又正是高加林所不具备的。这是一个合理与不合理紧密交织在一起的矛盾，一个现在还无法解决但将来必然要解决的矛盾。这是一场极其复杂的令人思绪纷坛的人生悲剧，但在复杂的悲剧表象下却隐约地透出生活的某种确定性。悲剧所具有的审美属性，正是《人生》具有持久艺术魅力的原因之一。</p><h3 style=\"margin: 20px 0px 12px; padding: 0px 0px 12px; font-size: 14px; font-weight: 500; border-bottom: 1px solid rgb(236, 236, 236); clear: both; cursor: pointer; font-family: &quot;microsoft yahei&quot;; line-height: 18px; overflow: hidden; position: relative;\"><a style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); position: absolute; top: -10px;\" name=\"5328767-5563939-4_2\"></a><a class=\"conArrow\" href=\"https://baike.so.com/doc/5328767-5563939.html#\" data-logid=\"h3-title\" style=\"margin: 0px; padding: 0px; text-decoration: none; background: url(&quot;https://p.ssl.qhmsg.com/t012b40d58f262241ac.png&quot;) 0px 0px no-repeat; display: inline; float: right; font-size: 0px; height: 20px; text-shadow: none; width: 20px;\">折叠</a><span class=\"title\" style=\"margin: 0px; padding: 0px; float: left; font-size: 18px; font-family: &quot;microsoft yahei&quot;, Arial, Helvetica, sans-serif;\">艺术特色</span></h3><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">《人生》中饱含的浓郁情感和对传统美学的赞美也是其艺术魅力的另一所在。文学作品的神力不仅在于晓之以理的理智，而且动之以情，掀起人们心灵中的震撼和激情。路遥作品中对城乡交叉地带的细致描写使其作品洋溢着浓厚的黄土气息，作者对困苦中的情与爱的感受和表现完全遵循民族传统的道德观念，劳动人民的人格美、人物身上潜在的传统关系感人肺腑。使读者产生了&quot;情感上的深深共鸣，达到了动人心魄的艺术魅力。表面上，路遥似乎在带领我们观察一座座陕北农村的现实村落和客观生活，实际上是在引导我们去体验隐藏在这些善良的普通民众身上的伟大情感和优良品德，肯定了传统美德为行为准则而不断进取的追求意识和奋斗精神。<a class=\"reference_sup\" name=\"refer_5328767-5563939-16903087\" href=\"https://baike.so.com/doc/5328767-5563939.html#refff_5328767-5563939-4\" style=\"margin: 0px 0px 0px 2px; padding: 0px 2px; color: rgb(51, 102, 204); text-decoration: none; cursor: pointer; font-size: 12px; position: relative; top: -0.5em; vertical-align: baseline; white-space: nowrap;\">[4]</a></p><h2 style=\"margin: 35px 0px 15px -30px; padding: 0px; font-size: 22px; font-weight: 500; border-left: 10px solid rgb(55, 171, 47); clear: both; font-family: &quot;microsoft yahei&quot;; line-height: 22px; position: relative; text-indent: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"><a style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); position: absolute; top: -10px;\" name=\"5328767-5563939-5\"></a><a class=\"conArrow\" href=\"https://baike.so.com/doc/5328767-5563939.html#\" data-logid=\"h2-title\" style=\"margin: 0px; padding: 0px; text-decoration: none; background: url(&quot;https://p.ssl.qhmsg.com/t012b40d58f262241ac.png&quot;) 0px 0px no-repeat; display: inline; float: right; font-size: 0px; height: 20px; text-shadow: none; width: 20px;\">折叠</a><span class=\"opt js-edittext\" style=\"margin: 0px 6px 0px 0px; padding: 0px 7px 0px 0px; border-right: 1px solid rgb(217, 217, 217); float: right; font-size: 12px; font-family: simsun;\"><a class=\"edit\" href=\"https://baike.so.com/create/edit/?eid=5328767&sid=5563939&secid=5\" data-log=\"edit-title\" style=\"margin: 0px; padding: 0px; color: rgb(49, 152, 24); text-decoration: none;\"><em class=\"ico\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;https://p.ssl.qhmsg.com/t01c067b7271a91a2e3.png&quot;); background-repeat: no-repeat; display: inline-block; height: 16px; vertical-align: -5px; width: 16px; background-position: 0px -40px;\"></em>编辑本段</a></span><span class=\"title\" style=\"margin: 0px; padding: 0px; float: left; font-family: &quot;microsoft yahei&quot;, Arial, Helvetica, sans-serif; line-height: 24px; zoom: 1;\">作品影响</span></h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">《人生》是路遥创作的第一部经典长篇小说，它的发表标志着路遥的文学之路开始步入巅峰，也奠定了他在当代文学史的地位。这部作品一经发表，就引起了强烈的学术争议，不仅因为它是理想童话和现实悲剧的矛盾结合，它所描述的爱情悲剧也引发了人们对现实社会的思索。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">《人生》问世不久即轰动全国，反响热烈。后被导演吴天明拍摄为同名电影。</p><h2 style=\"margin: 35px 0px 15px -30px; padding: 0px; font-size: 22px; font-weight: 500; border-left: 10px solid rgb(55, 171, 47); clear: both; font-family: &quot;microsoft yahei&quot;; line-height: 22px; position: relative; text-indent: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"><a style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); position: absolute; top: -10px;\" name=\"5328767-5563939-6\"></a><a class=\"conArrow\" href=\"https://baike.so.com/doc/5328767-5563939.html#\" data-logid=\"h2-title\" style=\"margin: 0px; padding: 0px; text-decoration: none; background: url(&quot;https://p.ssl.qhmsg.com/t012b40d58f262241ac.png&quot;) 0px 0px no-repeat; display: inline; float: right; font-size: 0px; height: 20px; text-shadow: none; width: 20px;\">折叠</a><span class=\"opt js-edittext\" style=\"margin: 0px 6px 0px 0px; padding: 0px 7px 0px 0px; border-right: 1px solid rgb(217, 217, 217); float: right; font-size: 12px; font-family: simsun;\"><a class=\"edit\" href=\"https://baike.so.com/create/edit/?eid=5328767&sid=5563939&secid=6\" data-log=\"edit-title\" style=\"margin: 0px; padding: 0px; color: rgb(49, 152, 24); text-decoration: none;\"><em class=\"ico\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;https://p.ssl.qhmsg.com/t01c067b7271a91a2e3.png&quot;); background-repeat: no-repeat; display: inline-block; height: 16px; vertical-align: -5px; width: 16px; background-position: 0px -40px;\"></em>编辑本段</a></span><span class=\"title\" style=\"margin: 0px; padding: 0px; float: left; font-family: &quot;microsoft yahei&quot;, Arial, Helvetica, sans-serif; line-height: 24px; zoom: 1;\">作品评价</span></h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">企业家马云：18岁时，我是蹬三轮车的零工，是《人生》改变了我的人生。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">导演贾樟柯：读这本书的时候我还是个上中学的孩子。这么多年我看过很多作品，都对我的电影创作有很大的影响，但是对我影响最大的反而是这本《人生》，它让我开始对社会有了新的认识，开始思考我的人生。<a class=\"reference_sup\" name=\"refer_5328767-5563939-15736919\" href=\"https://baike.so.com/doc/5328767-5563939.html#refff_5328767-5563939-2\" style=\"margin: 0px 0px 0px 2px; padding: 0px 2px; color: rgb(51, 102, 204); text-decoration: none; cursor: pointer; font-size: 12px; position: relative; top: -0.5em; vertical-align: baseline; white-space: nowrap;\">[2]</a></p><h2 style=\"margin: 35px 0px 15px -30px; padding: 0px; font-size: 22px; font-weight: 500; border-left: 10px solid rgb(55, 171, 47); clear: both; font-family: &quot;microsoft yahei&quot;; line-height: 22px; position: relative; text-indent: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"><a style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); position: absolute; top: -10px;\" name=\"5328767-5563939-7\"></a><a class=\"conArrow\" href=\"https://baike.so.com/doc/5328767-5563939.html#\" data-logid=\"h2-title\" style=\"margin: 0px; padding: 0px; text-decoration: none; background: url(&quot;https://p.ssl.qhmsg.com/t012b40d58f262241ac.png&quot;) 0px 0px no-repeat; display: inline; float: right; font-size: 0px; height: 20px; text-shadow: none; width: 20px;\">折叠</a><span class=\"opt js-edittext\" style=\"margin: 0px 6px 0px 0px; padding: 0px 7px 0px 0px; border-right: 1px solid rgb(217, 217, 217); float: right; font-size: 12px; font-family: simsun;\"><a class=\"edit\" href=\"https://baike.so.com/create/edit/?eid=5328767&sid=5563939&secid=7\" data-log=\"edit-title\" style=\"margin: 0px; padding: 0px; color: rgb(49, 152, 24); text-decoration: none;\"><em class=\"ico\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;https://p.ssl.qhmsg.com/t01c067b7271a91a2e3.png&quot;); background-repeat: no-repeat; display: inline-block; height: 16px; vertical-align: -5px; width: 16px; background-position: 0px -40px;\"></em>编辑本段</a></span><span class=\"title\" style=\"margin: 0px; padding: 0px; float: left; font-family: &quot;microsoft yahei&quot;, Arial, Helvetica, sans-serif; line-height: 24px; zoom: 1;\">作者简介</span></h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">路遥(1949-1992)，原名王卫国，1949年12月3日生于<a href=\"https://p1.ssl.qhmsg.com/t012255286aabffc5d0.jpg\" class=\"show-img layoutright\" data-type=\"gallery\" data-index=\"3\" style=\"margin: 5px 5px 5px 22px; padding: 0px; color: rgb(0, 0, 0); text-decoration: none; background: rgb(250, 250, 250); clear: both; display: inline-block; font-size: 12px; overflow: hidden; text-align: center; text-indent: 0px; float: right;\"><span class=\"show-img-hd\" style=\"margin: 0px; padding: 0px; border-top: 1px solid rgb(229, 229, 229); border-right: 1px solid rgb(229, 229, 229); border-left: 1px solid rgb(229, 229, 229); border-image: initial; border-bottom: none; display: block; width: 220px;\"><img id=\"img_17486621\" title=\"路遥\" alt=\"路遥\" data-img=\"mod_img\" src=\"https://p1.ssl.qhmsg.com/dr/220__/t012255286aabffc5d0.jpg\" style=\"margin: 0px; padding: 0px; border: none; vertical-align: middle; width: 220px; display: inline;\"/></span><span class=\"show-img-bd\" style=\"margin: 0px; padding: 0px 10px; border-right: 1px solid rgb(229, 229, 229); border-bottom: 1px solid rgb(229, 229, 229); border-left: 1px solid rgb(229, 229, 229); border-image: initial; border-top: none; display: block; line-height: 28px; max-width: 200px; overflow: hidden; text-align: left; width: 199.984px;\">路遥</span></a>陕西榆林市清涧县一个贫困的农民家庭，因家贫7岁即过继给<a target=\"_blank\" href=\"https://baike.so.com/doc/4992872-5216764.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">延川县</a>农村的伯父。曾在延川县立中学学习，1969年回乡务农。其间做过许多临时性工作，并在农村一小学教书一年。1973年进入<a target=\"_blank\" href=\"https://baike.so.com/doc/2201314-2329203.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">延安大学</a>中文系学习，开始文学创作。大学毕业后，任《陕西文艺》(今为《延河》)编辑。1980年发表《<a target=\"_blank\" href=\"https://baike.so.com/doc/6818105-7035143.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">惊心动魄的一幕</a>》，获第一届全国优秀中篇小说奖。1982年发表中篇小说《人生》，获第二届全国优秀中篇小说奖。1988年完成百万字长篇巨著《平凡的世界》，于1991年获茅盾文学奖。路遥的小说多为农村题材，描写农村和城市之间发生的人和事。路遥和柳青、陈忠实同为黄土文学流派作家，作品有中篇小说《惊心动魄的一幕》(1980年，获第一届全国优秀中篇小说奖)、《人生》(第二届全国优秀中篇小奖)、小说《姐姐》、《风雪腊梅》等，以及长篇小说《平凡的世界》(1991年，获得第三届茅盾文学奖)。其全部作品收集在《<a target=\"_blank\" href=\"https://baike.so.com/doc/559732-592587.html\" style=\"margin: 0px; padding: 0px; color: rgb(19, 110, 194); text-decoration: none;\">路遥文集</a>》五卷。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; line-height: 24px; text-indent: 2em; zoom: 1;\">1992年11月17日上午8时20分，路遥因病医治无效在西安逝世，年仅42岁。</p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_7.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '18,23,21,19,22', '', '0.00', '0.00', '4', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1531274452', '1531274452', '1537336137', '1', '0', '0', '100', '', '', '', '0', '0', '0', '0', '1', '0.00', '本');
INSERT INTO `ns_goods` VALUES ('8', '111西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服-副本', '0', '4', '1', '2', '4', '1', '1', '0', '0', '1', '5000.00', '1200.00', '1200.00', '500.00', '2', '2', '0', '0', '0.00', '0', '100', '0', '14', '10', '11', '0', '0', '0', '10', '27', '297', '12', '伴郎新郎结婚礼服', '送免烫衬衫/领带共 7件套', '<p>品牌名称：<span class=\"J_EbrandLogo\" target=\"_blank\" href=\"//brand.tmall.com/brandInfo.htm?brandId=118307537&type=0&scm=1048.1.1.4\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">SAROUYA</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><a class=\"ui-more-nbg tm-MRswitchAttrs\" href=\"https://detail.tmall.com/item.htm?spm=a220m.1000858.1000725.29.1113289dR3H9T6&id=43628367238&skuId=3848211150312&areaId=330100&user_id=908053892&cat_id=50025174&is_b=1&rn=c09c0fe884a225e0e49c86b948e810b4#J_Attrs\" style=\"margin: 0px; padding: 0px 28px 0px 10px; text-decoration: none; color: rgb(153, 153, 153); outline: 0px; display: inline-block; position: relative; height: 20px; line-height: 22px; float: right;\">更多参数<em class=\"ui-more-nbg-arrow tm-MRswitchAttrs\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;//assets.alicdn.com/apps/tmall/mui/more/img/more.png&quot;); background-repeat: no-repeat; position: absolute; display: inline-block; top: 6px; right: 10px; height: 13px; line-height: 13px; width: 13px; overflow: hidden; background-position: 0px -26px;\"></em></a><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">产品参数：</span></p><ul id=\"J_AttrUL\" style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>上市年份季节:&nbsp;2018年春季</p></li><li><p>厚薄:&nbsp;常规</p></li><li><p>材质成分:&nbsp;聚酯纤维80% 粘胶纤维(粘纤)20%</p></li><li><p>货号:&nbsp;XF56</p></li><li><p>品牌:&nbsp;SAROUYA</p></li><li><p>基础风格:&nbsp;商务绅士</p></li></ul><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_8.png', '112121', '1', '0', '0', '0', '0', '0', '0', '0', '12', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '3', '1', '3', '0', '1', '1537336033', '1537336033', '0', '0', '0', '0', '0', '', '', '', '9', '0', '0', '0', '1', '0.00', '套');
INSERT INTO `ns_goods` VALUES ('9', '111西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服-副本', '0', '4', '1', '2', '4', '1', '1', '0', '0', '1', '5000.00', '1200.00', '1200.00', '500.00', '2', '2', '0', '0', '0.00', '0', '100', '0', '14', '10', '11', '0', '0', '0', '10', '27', '297', '12', '伴郎新郎结婚礼服', '送免烫衬衫/领带共 7件套', '<p>品牌名称：<span class=\"J_EbrandLogo\" target=\"_blank\" href=\"//brand.tmall.com/brandInfo.htm?brandId=118307537&type=0&scm=1048.1.1.4\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">SAROUYA</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><a class=\"ui-more-nbg tm-MRswitchAttrs\" href=\"https://detail.tmall.com/item.htm?spm=a220m.1000858.1000725.29.1113289dR3H9T6&id=43628367238&skuId=3848211150312&areaId=330100&user_id=908053892&cat_id=50025174&is_b=1&rn=c09c0fe884a225e0e49c86b948e810b4#J_Attrs\" style=\"margin: 0px; padding: 0px 28px 0px 10px; text-decoration: none; color: rgb(153, 153, 153); outline: 0px; display: inline-block; position: relative; height: 20px; line-height: 22px; float: right;\">更多参数<em class=\"ui-more-nbg-arrow tm-MRswitchAttrs\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;//assets.alicdn.com/apps/tmall/mui/more/img/more.png&quot;); background-repeat: no-repeat; position: absolute; display: inline-block; top: 6px; right: 10px; height: 13px; line-height: 13px; width: 13px; overflow: hidden; background-position: 0px -26px;\"></em></a><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">产品参数：</span></p><ul id=\"J_AttrUL\" style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>上市年份季节:&nbsp;2018年春季</p></li><li><p>厚薄:&nbsp;常规</p></li><li><p>材质成分:&nbsp;聚酯纤维80% 粘胶纤维(粘纤)20%</p></li><li><p>货号:&nbsp;XF56</p></li><li><p>品牌:&nbsp;SAROUYA</p></li><li><p>基础风格:&nbsp;商务绅士</p></li></ul><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_9.png', '112121', '1', '0', '0', '0', '0', '0', '0', '0', '12', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '3', '1', '3', '0', '1', '1537336058', '1537336058', '0', '0', '0', '0', '0', '', '', '', '9', '0', '0', '0', '1', '0.00', '套');

-- ----------------------------
-- Table structure for `ns_goods_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_attribute`;
CREATE TABLE `ns_goods_attribute` (
  `attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `attr_value_id` int(11) NOT NULL COMMENT '属性值id',
  `attr_value` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值名称',
  `attr_value_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值对应数据值',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`attr_id`),
  KEY `UK_ns_goods_attribute_attr_value_id` (`attr_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=315 COMMENT='商品属性表';

-- ----------------------------
-- Records of ns_goods_attribute
-- ----------------------------
INSERT INTO `ns_goods_attribute` VALUES ('4', '4', '0', '1', '短袖T恤2.0', '短袖T恤2.0', '0', '1530942482');

-- ----------------------------
-- Table structure for `ns_goods_attribute_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_attribute_deleted`;
CREATE TABLE `ns_goods_attribute_deleted` (
  `attr_id` int(10) NOT NULL,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `attr_value_id` int(11) NOT NULL COMMENT '属性值id',
  `attr_value` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值名称',
  `attr_value_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值对应数据值',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=315 COMMENT='商品属性回收站表';

-- ----------------------------
-- Records of ns_goods_attribute_deleted
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_attribute_value`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_attribute_value`;
CREATE TABLE `ns_goods_attribute_value` (
  `attr_value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性值ID',
  `attr_id` int(11) NOT NULL COMMENT '商品属性ID',
  `attr_value` varchar(255) NOT NULL DEFAULT '' COMMENT '值名称',
  `is_visible` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否可视',
  `sort` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`attr_value_id`),
  KEY `IDX_category_propvalues_c_pId` (`attr_id`),
  KEY `IDX_category_propvalues_orders` (`sort`),
  KEY `IDX_category_propvalues_value` (`attr_value`),
  KEY `UK_ns_goods_attribute_value_attr_value_id` (`attr_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='商品规格值模版表';

-- ----------------------------
-- Records of ns_goods_attribute_value
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_brand`;
CREATE TABLE `ns_goods_brand` (
  `brand_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名称',
  `brand_initial` varchar(1) NOT NULL COMMENT '品牌首字母',
  `brand_pic` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `brand_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐，0为否，1为是，默认为0',
  `sort` int(11) DEFAULT NULL,
  `brand_category_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类别名称',
  `category_id_array` varchar(1000) NOT NULL DEFAULT '' COMMENT '所属分类id组',
  `brand_ads` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌推荐广告',
  `category_name` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌所属分类名称',
  `category_id_1` int(11) NOT NULL DEFAULT '0' COMMENT '一级分类ID',
  `category_id_2` int(11) NOT NULL DEFAULT '0' COMMENT '二级分类ID',
  `category_id_3` int(11) NOT NULL DEFAULT '0' COMMENT '三级分类ID',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1024 COMMENT='品牌表';

-- ----------------------------
-- Records of ns_goods_brand
-- ----------------------------
INSERT INTO `ns_goods_brand` VALUES ('1', '0', '阿迪达斯', 'A', 'upload/goods_brand/1530781189.jpg', '1', '1', '', '', 'upload/goods_brand/1530781193.jpg', '', '0', '0', '0');
INSERT INTO `ns_goods_brand` VALUES ('2', '0', '梦比优斯', 'M', 'upload/goods_brand/1531273031.jpg', '1', '1', '', '', 'upload/goods_brand/1531273051.jpg', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `ns_goods_browse`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_browse`;
CREATE TABLE `ns_goods_browse` (
  `browse_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '浏览时间',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  PRIMARY KEY (`browse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='商品足迹表';

-- ----------------------------
-- Records of ns_goods_browse
-- ----------------------------
INSERT INTO `ns_goods_browse` VALUES ('3', '1', '3', '1530841831', '3');
INSERT INTO `ns_goods_browse` VALUES ('20', '3', '5', '1530863204', '3');
INSERT INTO `ns_goods_browse` VALUES ('21', '2', '5', '1530863232', '2');
INSERT INTO `ns_goods_browse` VALUES ('22', '2', '3', '1530934246', '2');
INSERT INTO `ns_goods_browse` VALUES ('25', '3', '3', '1530949433', '3');
INSERT INTO `ns_goods_browse` VALUES ('26', '5', '3', '1530949474', '4');
INSERT INTO `ns_goods_browse` VALUES ('27', '4', '3', '1530949498', '2');
INSERT INTO `ns_goods_browse` VALUES ('35', '3', '6', '1531278183', '3');
INSERT INTO `ns_goods_browse` VALUES ('37', '6', '6', '1531278457', '5');
INSERT INTO `ns_goods_browse` VALUES ('41', '7', '6', '1531279152', '5');
INSERT INTO `ns_goods_browse` VALUES ('42', '4', '6', '1531279517', '2');

-- ----------------------------
-- Table structure for `ns_goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_category`;
CREATE TABLE `ns_goods_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL DEFAULT '',
  `short_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品分类简称 ',
  `pid` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `is_visible` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示  1 显示 0 不显示',
  `attr_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联商品类型ID',
  `attr_name` varchar(255) NOT NULL DEFAULT '' COMMENT '关联类型名称',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '分类关键字用于seo',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述用于seo',
  `sort` int(11) DEFAULT NULL,
  `category_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分类图片',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品分类自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品分类自定义模板',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=244 COMMENT='商品分类表';

-- ----------------------------
-- Records of ns_goods_category
-- ----------------------------
INSERT INTO `ns_goods_category` VALUES ('1', '男装', '男装', '0', '1', '1', '0', '', '男装', '男装', '0', 'upload/goods_category/1530781150.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('2', '短袖T恤', '短T', '1', '2', '1', '1', '短袖T恤', '短袖T恤', '短袖T恤', '0', 'upload/goods_category/1530781816.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('3', '五分马裤', '五马', '1', '2', '1', '2', '五分马裤', '五分马裤', '五分马裤', '0', 'upload/goods_category/1530781868.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('4', '毛绒', '毛绒', '2', '3', '1', '1', '短袖T恤', '毛绒', '毛绒', '0', 'upload/goods_category/1530934409.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('5', '书籍', '学海无涯,时光匆匆,看书要看经典', '0', '1', '1', '3', '运动/休闲', '书中自有颜如玉', '书中自有黄金屋', '0', 'upload/goods_category/1531273527.jpg', '', '');

-- ----------------------------
-- Table structure for `ns_goods_category_block`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_category_block`;
CREATE TABLE `ns_goods_category_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例id',
  `category_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `category_alias` varchar(50) NOT NULL DEFAULT '' COMMENT '分类别名',
  `color` varchar(255) DEFAULT '#FFFFFF' COMMENT '颜色',
  `is_show` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示 1显示 0 不显示',
  `is_show_lower_category` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示下级分类',
  `is_show_brand` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示品牌',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `ad_picture` varchar(255) NOT NULL DEFAULT '' COMMENT '广告图  {["title":"","subtitle":"","picture":"","url":"","background":""]}',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `short_name` varchar(255) DEFAULT '' COMMENT '分类简称',
  `goods_sort_type` int(11) NOT NULL DEFAULT '0' COMMENT '楼层商品排序方式 0默认按时间和排序号倒叙 1按发布时间排序 2按销量排序 3按排序号排序 4按人气排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='商品分类楼层表';

-- ----------------------------
-- Records of ns_goods_category_block
-- ----------------------------
INSERT INTO `ns_goods_category_block` VALUES ('3', '0', '男装', '1', '男装', '#ff8080', '1', '0', '0', '0', '{\"title\":\"魁拔4最后的魁拔\",\"subtitle\":\"一个动画制作人最后的倔强，时间总会善待有实力有匠心的人\",\"picture\":\"upload/image_collection/1530839448.jpg\",\"background\":\"#000000\",\"url\":\"http://localhost/shopping9/index.php?s=/admin/system/goodscategoryblock\"}', '1530781158', '0', '男装', '0');
INSERT INTO `ns_goods_category_block` VALUES ('4', '0', '书籍', '5', '书籍', '#FFFFFF', '1', '0', '0', '0', '{\"title\":\"书会\",\"subtitle\":\"会书\",\"picture\":\"upload/image_collection/1531275459.jpg\",\"background\":\"#000000\",\"url\":\"http://localhost/shopping9/index.php?s=/admin/system/goodscategoryblock\"}', '1531273962', '0', '书籍', '0');

-- ----------------------------
-- Table structure for `ns_goods_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_comment`;
CREATE TABLE `ns_goods_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `create_time` int(11) DEFAULT '0' COMMENT '评论创建时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '评论状态 0未评论 1已评论',
  `number` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商品评论送积分记录表';

-- ----------------------------
-- Records of ns_goods_comment
-- ----------------------------
INSERT INTO `ns_goods_comment` VALUES ('1', '3', '0', '1', '1530841800', '1', '0.00');

-- ----------------------------
-- Table structure for `ns_goods_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_deleted`;
CREATE TABLE `ns_goods_deleted` (
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '商品id(SKU)',
  `goods_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '店铺id',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类id',
  `category_id_1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级分类id',
  `category_id_2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级分类id',
  `category_id_3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '三级分类id',
  `brand_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '品牌id',
  `group_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `promotion_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '促销类型 0无促销，1团购，2限时折扣',
  `promote_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销活动ID',
  `goods_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '实物或虚拟商品标志 1实物商品 0 虚拟商品 2 F码商品',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品原价格',
  `promotion_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品促销价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `point_exchange_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '积分兑换类型 0 非积分兑换 1 只能积分兑换 ',
  `point_exchange` int(11) NOT NULL DEFAULT '0' COMMENT '积分兑换',
  `give_point` int(11) NOT NULL DEFAULT '0' COMMENT '购买商品赠送积分',
  `is_member_discount` int(1) NOT NULL DEFAULT '0' COMMENT '参与会员折扣',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费 0为免运费',
  `shipping_fee_id` int(11) NOT NULL DEFAULT '0' COMMENT '售卖区域id 物流模板id  ns_order_shipping_fee 表id',
  `stock` int(10) NOT NULL DEFAULT '0' COMMENT '商品库存',
  `max_buy` int(11) NOT NULL DEFAULT '0' COMMENT '限购 0 不限购',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数量',
  `min_stock_alarm` int(11) NOT NULL DEFAULT '0' COMMENT '库存预警值',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
  `collects` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `star` tinyint(3) unsigned NOT NULL DEFAULT '5' COMMENT '好评星级',
  `evaluates` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价数',
  `shares` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级地区id',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级地区id',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品主图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '商品关键词',
  `introduction` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简介，促销语',
  `description` text NOT NULL COMMENT '商品详情',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '商家编号',
  `is_stock_visible` int(1) NOT NULL DEFAULT '0' COMMENT '页面不显示库存',
  `is_hot` int(1) NOT NULL DEFAULT '0' COMMENT '是否热销商品',
  `is_recommend` int(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `is_new` int(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_pre_sale` int(1) NOT NULL DEFAULT '0' COMMENT '是否预售',
  `is_bill` int(1) NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `state` tinyint(3) NOT NULL DEFAULT '1' COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `img_id_array` varchar(1000) DEFAULT NULL COMMENT '商品图片序列',
  `sku_img_array` varchar(1000) DEFAULT NULL COMMENT '商品sku应用图片列表  属性,属性值，图片ID',
  `match_point` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）',
  `match_ratio` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）百分比',
  `real_sales` int(10) NOT NULL DEFAULT '0' COMMENT '实际销量',
  `goods_attribute_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品类型',
  `goods_spec_format` text NOT NULL COMMENT '商品规格',
  `goods_weight` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品重量',
  `goods_volume` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品体积',
  `shipping_fee_type` int(11) NOT NULL DEFAULT '1' COMMENT '计价方式1.重量2.体积3.计件',
  `extend_category_id` varchar(255) DEFAULT NULL,
  `extend_category_id_1` varchar(255) DEFAULT NULL,
  `extend_category_id_2` varchar(255) DEFAULT NULL,
  `extend_category_id_3` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT '0' COMMENT '供货商id',
  `sale_date` int(11) DEFAULT '0' COMMENT '上下架时间',
  `create_time` int(11) DEFAULT '0' COMMENT '商品添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '商品编辑时间',
  `min_buy` int(11) NOT NULL DEFAULT '0' COMMENT '最少买几件',
  `virtual_goods_type_id` int(11) DEFAULT '0' COMMENT '虚拟商品类型id',
  `production_date` int(11) NOT NULL DEFAULT '0' COMMENT '生产日期',
  `shelf_life` varchar(50) NOT NULL DEFAULT '' COMMENT '保质期',
  `goods_video_address` varchar(455) NOT NULL DEFAULT '' COMMENT '商品视频地址，不为空时前台显示视频',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品自定义模板',
  `max_use_point` int(11) NOT NULL DEFAULT '0' COMMENT '积分抵现最大可用积分数 0为不可使用',
  `is_open_presell` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否支持预售',
  `presell_time` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货时间',
  `presell_day` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货天数',
  `presell_delivery_type` int(11) NOT NULL DEFAULT '1' COMMENT '预售发货方式1. 按照预售发货时间 2.按照预售发货天数',
  `presell_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售金额',
  `goods_unit` varchar(20) NOT NULL DEFAULT '件' COMMENT '商品单位'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商品回收站表';

-- ----------------------------
-- Records of ns_goods_deleted
-- ----------------------------
INSERT INTO `ns_goods_deleted` VALUES ('2', '111夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '0', '2', '1', '2', '0', '1', '1', '2', '1', '1', '200.00', '100.00', '99.90', '20.00', '0', '100', '1', '0', '0.00', '0', '8', '10', '23', '10', '13', '0', '0', '0', '10', '34', '345', '8', '夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '<p>品牌名称：<span class=\"J_EbrandLogo\" target=\"_blank\" href=\"//brand.tmall.com/brandInfo.htm?brandId=102503483&type=0&scm=1048.1.1.4\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">安杰库</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><a class=\"ui-more-nbg tm-MRswitchAttrs\" href=\"https://detail.tmall.com/item.htm?spm=a220m.1000858.1000725.333.23997dc22RzdmC&id=569586717873&skuId=3659990957107&areaId=330100&user_id=699324387&cat_id=53636001&is_b=1&rn=ab29b07c71677471d87f48846d095663#J_Attrs\" style=\"margin: 0px; padding: 0px 28px 0px 10px; text-decoration: none; color: rgb(153, 153, 153); outline: 0px; display: inline-block; position: relative; height: 20px; line-height: 22px; float: right;\">更多参数<em class=\"ui-more-nbg-arrow tm-MRswitchAttrs\" style=\"margin: 0px; padding: 0px; background-image: url(&quot;//assets.alicdn.com/apps/tmall/mui/more/img/more.png&quot;); background-repeat: no-repeat; position: absolute; display: inline-block; top: 6px; right: 10px; height: 13px; line-height: 13px; width: 13px; overflow: hidden; background-position: 0px -26px;\"></em></a><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">产品参数：</span></p><ul id=\"J_AttrUL\" style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>上市年份季节:&nbsp;2018年夏季</p></li><li><p>厚薄:&nbsp;薄</p></li><li><p>材质成分:&nbsp;棉93% 聚氨酯弹性纤维(氨纶)7%</p></li><li><p>货号:&nbsp;A527F1</p></li><li><p>品牌:&nbsp;安杰库</p></li><li><p>基础风格:&nbsp;青春流行</p></li></ul><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_2.png', '11212', '1', '0', '0', '0', '0', '0', '1', '0', '8', '', '0.00', '0.00', '2', '1', '[{\"spec_name\":\"100*100\",\"spec_id\":1,\"value\":[{\"spec_value_name\":\"100*100\",\"spec_name\":\"100*100\",\"spec_id\":1,\"spec_value_id\":1,\"spec_show_type\":\"1\",\"spec_value_data\":\"\"}]},{\"spec_name\":\"200*200\",\"spec_id\":2,\"value\":[{\"spec_value_name\":\"200\",\"spec_name\":\"200*200\",\"spec_id\":2,\"spec_value_id\":2,\"spec_show_type\":\"1\",\"spec_value_data\":\"\"}]}]', '0.00', '0.00', '3', '', '', '', '', '1', '1530782319', '1530782319', '1530934270', '1', '0', '1530547200', '10', '', '', '', '1000', '0', '0', '0', '1', '0.00', '件');

-- ----------------------------
-- Table structure for `ns_goods_evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_evaluate`;
CREATE TABLE `ns_goods_evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `order_no` bigint(20) unsigned NOT NULL COMMENT '订单编号',
  `order_goods_id` int(11) NOT NULL COMMENT '订单项ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_image` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `shop_name` varchar(100) NOT NULL COMMENT '店铺名称',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '评价内容',
  `image` varchar(1000) NOT NULL DEFAULT '' COMMENT '评价图片',
  `explain_first` varchar(255) NOT NULL DEFAULT '' COMMENT '解释内容',
  `member_name` varchar(100) NOT NULL DEFAULT '' COMMENT '评价人名称',
  `uid` int(11) NOT NULL COMMENT '评价人编号',
  `is_anonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示不是 1表示是匿名评价',
  `scores` tinyint(1) NOT NULL COMMENT '1-5分',
  `again_content` varchar(255) NOT NULL DEFAULT '' COMMENT '追加评价内容',
  `again_image` varchar(1000) NOT NULL DEFAULT '' COMMENT '追评评价图片',
  `again_explain` varchar(255) NOT NULL DEFAULT '' COMMENT '追加解释内容',
  `explain_type` int(11) DEFAULT '0' COMMENT '1好评2中评3差评',
  `is_show` int(1) DEFAULT '1' COMMENT '1显示 0隐藏',
  `addtime` int(11) DEFAULT '0' COMMENT '评价时间',
  `again_addtime` int(11) DEFAULT '0' COMMENT '追加评价时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='商品评价表';

-- ----------------------------
-- Records of ns_goods_evaluate
-- ----------------------------
INSERT INTO `ns_goods_evaluate` VALUES ('1', '1', '2147483647', '1', '4', '连帽衬衫青少年学生', '100.00', 'upload/goods/20180705/0283454ccaedf476abfbc877972628ad.jpg', '0', '默认', '不错，挺好', 'upload/common/1530841796.jpg', '谢谢', 'gygq', '3', '0', '3', '', '', '', '2', '1', '1530841800', '0');

-- ----------------------------
-- Table structure for `ns_goods_group`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_group`;
CREATE TABLE `ns_goods_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级id 最多2级',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '级别',
  `is_visible` int(1) NOT NULL DEFAULT '1' COMMENT '是否可视',
  `group_pic` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `sort` int(11) DEFAULT NULL,
  `group_dec` varchar(500) NOT NULL DEFAULT '' COMMENT '标签描述',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=160 COMMENT='商品本店分类';

-- ----------------------------
-- Records of ns_goods_group
-- ----------------------------
INSERT INTO `ns_goods_group` VALUES ('1', '0', '夏季热品', '0', '1', '1', 'upload/goods_group/1530781240.jpg', '0', '夏季热品');
INSERT INTO `ns_goods_group` VALUES ('2', '0', '春季新品', '0', '1', '1', 'upload/goods_group/1531272938.jpg', '0', '新年新气象');

-- ----------------------------
-- Table structure for `ns_goods_ladder_preferential`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_ladder_preferential`;
CREATE TABLE `ns_goods_ladder_preferential` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) NOT NULL COMMENT '商品关联id',
  `quantity` int(11) NOT NULL COMMENT '数量',
  `price` decimal(10,2) NOT NULL COMMENT '优惠价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品阶梯优惠';

-- ----------------------------
-- Records of ns_goods_ladder_preferential
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_sku`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_sku`;
CREATE TABLE `ns_goods_sku` (
  `sku_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表序号',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `sku_name` varchar(500) NOT NULL DEFAULT '' COMMENT 'SKU名称',
  `attr_value_items` varchar(255) NOT NULL DEFAULT '' COMMENT '属性和属性值 id串 attribute + attribute value 表ID分号分隔',
  `attr_value_items_format` varchar(500) NOT NULL DEFAULT '' COMMENT '属性和属性值id串组合json格式',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `promote_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '促销价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '如果是第一个sku编码, 可以加图片',
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT '商家编码',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `create_date` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_date` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=481 COMMENT='商品skui规格价格库存信息表';

-- ----------------------------
-- Records of ns_goods_sku
-- ----------------------------
INSERT INTO `ns_goods_sku` VALUES ('1', '1', '100*100 ', '1:1', '1:1', '120.00', '200.00', '200.00', '120.00', '5', '0', '88585', '', '1530782054', '1530837510');
INSERT INTO `ns_goods_sku` VALUES ('3', '3', '', '', '', '1.00', '1.00', '1.00', '1.00', '1', '0', '1', '', '1530783051', '0');
INSERT INTO `ns_goods_sku` VALUES ('4', '4', '100*100 ', '1:1', '1:1', '200.00', '100.00', '100.00', '50.00', '97', '0', '784478', '', '1530783240', '1530942482');
INSERT INTO `ns_goods_sku` VALUES ('6', '6', '', '', '', '50.00', '60.00', '60.00', '30.00', '97', '0', '11214', '', '1531274264', '1531276703');
INSERT INTO `ns_goods_sku` VALUES ('7', '7', '', '', '', '60.00', '50.00', '50.00', '40.00', '96', '0', '', '', '1531274452', '1537336137');
INSERT INTO `ns_goods_sku` VALUES ('8', '8', '', '', '', '5000.00', '1200.00', '1200.00', '500.00', '100', '0', '112121', '', '1537336033', '0');
INSERT INTO `ns_goods_sku` VALUES ('9', '9', '', '', '', '5000.00', '1200.00', '1200.00', '500.00', '100', '0', '112121', '', '1537336058', '0');

-- ----------------------------
-- Table structure for `ns_goods_sku_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_sku_deleted`;
CREATE TABLE `ns_goods_sku_deleted` (
  `sku_id` int(11) NOT NULL DEFAULT '0' COMMENT '表序号',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `sku_name` varchar(500) NOT NULL DEFAULT '' COMMENT 'SKU名称',
  `attr_value_items` varchar(255) NOT NULL DEFAULT '' COMMENT '属性和属性值 id串 attribute + attribute value 表ID分号分隔',
  `attr_value_items_format` varchar(500) NOT NULL DEFAULT '' COMMENT '属性和属性值id串组合json格式',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `promote_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '促销价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '如果是第一个sku编码, 可以加图片',
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT '商家编码',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `create_date` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_date` int(11) DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='商品skui规格价格库存信息回收站表';

-- ----------------------------
-- Records of ns_goods_sku_deleted
-- ----------------------------
INSERT INTO `ns_goods_sku_deleted` VALUES ('2', '2', '100*100 200 ', '1:1;2:2', '1:1;2:2', '200.00', '100.00', '99.90', '20.00', '8', '0', '', '', '1530782319', '1530934270');

-- ----------------------------
-- Table structure for `ns_goods_sku_picture`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_sku_picture`;
CREATE TABLE `ns_goods_sku_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `spec_id` int(11) NOT NULL DEFAULT '0' COMMENT '主规格id',
  `spec_value_id` int(11) NOT NULL DEFAULT '0' COMMENT '规格值id',
  `sku_img_array` varchar(1000) NOT NULL DEFAULT '' COMMENT '图片id 多个用逗号隔开',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品sku多图';

-- ----------------------------
-- Records of ns_goods_sku_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_sku_picture_delete`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_sku_picture_delete`;
CREATE TABLE `ns_goods_sku_picture_delete` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `spec_id` int(11) NOT NULL DEFAULT '0' COMMENT '主规格id',
  `spec_value_id` int(11) NOT NULL DEFAULT '0' COMMENT '规格值id',
  `sku_img_array` varchar(1000) NOT NULL DEFAULT '' COMMENT '图片id 多个用逗号隔开',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='商品sku多图';

-- ----------------------------
-- Records of ns_goods_sku_picture_delete
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_spec`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_spec`;
CREATE TABLE `ns_goods_spec` (
  `spec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `spec_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性名称',
  `is_visible` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可视',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `show_type` int(11) NOT NULL DEFAULT '1' COMMENT '展示方式 1 文字 2 颜色 3 图片',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `is_screen` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否参与筛选 0 不参与 1 参与',
  `spec_des` varchar(255) NOT NULL DEFAULT '' COMMENT '属性说明',
  PRIMARY KEY (`spec_id`),
  KEY `IDX_category_props_categoryId` (`shop_id`),
  KEY `IDX_category_props_orders` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276 COMMENT='商品属性（规格）表';

-- ----------------------------
-- Records of ns_goods_spec
-- ----------------------------
INSERT INTO `ns_goods_spec` VALUES ('1', '0', '100*100', '1', '0', '1', '1530781270', '1', '一行为一个规格项，多个规格项用换行输入');
INSERT INTO `ns_goods_spec` VALUES ('2', '0', '200*200', '1', '0', '1', '1530781287', '1', '一行为一个规格项，多个规格项用换行输入');
INSERT INTO `ns_goods_spec` VALUES ('4', '0', '552*784', '1', '0', '1', '1531272880', '1', '552*784');

-- ----------------------------
-- Table structure for `ns_goods_spec_value`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_spec_value`;
CREATE TABLE `ns_goods_spec_value` (
  `spec_value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性值ID',
  `spec_id` int(11) NOT NULL COMMENT '商品属性ID',
  `spec_value_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品属性值名称',
  `spec_value_data` varchar(255) NOT NULL DEFAULT '' COMMENT '商品属性值数据',
  `is_visible` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可视',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`spec_value_id`),
  KEY `IDX_category_propvalues_c_pId` (`spec_id`),
  KEY `IDX_category_propvalues_orders` (`sort`),
  KEY `IDX_category_propvalues_value` (`spec_value_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='商品规格值模版表';

-- ----------------------------
-- Records of ns_goods_spec_value
-- ----------------------------
INSERT INTO `ns_goods_spec_value` VALUES ('1', '1', '100*100', '', '1', '255', '1530781270');
INSERT INTO `ns_goods_spec_value` VALUES ('2', '2', '200', '', '1', '255', '1530781287');
INSERT INTO `ns_goods_spec_value` VALUES ('4', '4', '552*784', '', '1', '255', '1531272880');

-- ----------------------------
-- Table structure for `ns_member`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member`;
CREATE TABLE `ns_member` (
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `member_name` varchar(50) NOT NULL DEFAULT '' COMMENT '前台用户名',
  `member_level` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `memo` varchar(1000) DEFAULT NULL COMMENT '备注',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=147 COMMENT='前台用户表';

-- ----------------------------
-- Records of ns_member
-- ----------------------------
INSERT INTO `ns_member` VALUES ('1', 'admin', '47', '', '2018');
INSERT INTO `ns_member` VALUES ('2', 'admin', '47', '', '2018');
INSERT INTO `ns_member` VALUES ('3', 'gygq', '47', null, '1530783660');
INSERT INTO `ns_member` VALUES ('4', 'mamw', '47', null, '1530843646');
INSERT INTO `ns_member` VALUES ('5', 'cheshi123', '47', null, '1530857706');
INSERT INTO `ns_member` VALUES ('6', '路遥', '49', null, '1531274896');
INSERT INTO `ns_member` VALUES ('7', 'cz', '47', null, '1531276263');

-- ----------------------------
-- Table structure for `ns_member_account`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_account`;
CREATE TABLE `ns_member_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '会员uid',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `point` int(11) NOT NULL DEFAULT '0' COMMENT '会员积分',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '购物币',
  `member_cunsum` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '会员消费',
  `member_sum_point` int(11) NOT NULL DEFAULT '0' COMMENT '会员累计积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276 COMMENT='会员账户统计表';

-- ----------------------------
-- Records of ns_member_account
-- ----------------------------
INSERT INTO `ns_member_account` VALUES ('1', '3', '0', '1096', '990.00', '0', '649.90', '1096');
INSERT INTO `ns_member_account` VALUES ('2', '5', '0', '109', '0.00', '0', '99.90', '110');
INSERT INTO `ns_member_account` VALUES ('3', '6', '0', '998', '895.00', '0', '231.00', '1000');

-- ----------------------------
-- Table structure for `ns_member_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_account_records`;
CREATE TABLE `ns_member_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `account_type` int(11) NOT NULL DEFAULT '1' COMMENT '账户类型1.积分2.余额3.购物币',
  `sign` smallint(6) NOT NULL DEFAULT '1' COMMENT '正负号',
  `number` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '数量',
  `from_type` smallint(6) NOT NULL DEFAULT '0' COMMENT '产生方式1.商城订单2.订单退还3.兑换4.充值5.签到6.分享7.注册8.提现9提现退还',
  `data_id` int(11) NOT NULL DEFAULT '0' COMMENT '相关表的数据ID',
  `text` varchar(255) NOT NULL DEFAULT '' COMMENT '数据相关内容描述文本',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=108 COMMENT='会员流水账表';

-- ----------------------------
-- Records of ns_member_account_records
-- ----------------------------
INSERT INTO `ns_member_account_records` VALUES ('1', '3', '0', '1', '1', '1000.00', '10', '0', '此为潜力客户跟紧', '1530837733');
INSERT INTO `ns_member_account_records` VALUES ('2', '3', '0', '2', '1', '1000.00', '10', '0', '', '1530837747');
INSERT INTO `ns_member_account_records` VALUES ('3', '3', '0', '1', '0', '-1.00', '1', '1', '商城订单', '1530841255');
INSERT INTO `ns_member_account_records` VALUES ('4', '3', '0', '1', '0', '-2.00', '1', '2', '商城订单', '1530841355');
INSERT INTO `ns_member_account_records` VALUES ('5', '3', '0', '1', '1', '2.00', '2', '2', '订单关闭返还积分', '1530841577');
INSERT INTO `ns_member_account_records` VALUES ('6', '3', '0', '1', '1', '0.00', '20', '0', '评论赠送积分', '1530841800');
INSERT INTO `ns_member_account_records` VALUES ('7', '3', '0', '2', '0', '-10.00', '8', '1', '会员余额提现', '1530844611');
INSERT INTO `ns_member_account_records` VALUES ('8', '3', '0', '1', '0', '-1.00', '1', '3', '商城订单', '1530844965');
INSERT INTO `ns_member_account_records` VALUES ('9', '3', '0', '1', '0', '-1.00', '1', '4', '商城订单', '1530845028');
INSERT INTO `ns_member_account_records` VALUES ('10', '3', '0', '1', '1', '1.00', '2', '4', '订单关闭返还积分', '1530845184');
INSERT INTO `ns_member_account_records` VALUES ('11', '5', '0', '1', '1', '100.00', '7', '0', '注册会员赠送积分', '1530857706');
INSERT INTO `ns_member_account_records` VALUES ('12', '5', '0', '1', '1', '10.00', '5', '0', '签到赠送积分', '1530857809');
INSERT INTO `ns_member_account_records` VALUES ('13', '5', '0', '1', '0', '-1.00', '1', '5', '商城订单', '1530858093');
INSERT INTO `ns_member_account_records` VALUES ('14', '3', '0', '1', '0', '-1.00', '1', '7', '商城订单', '1530934344');
INSERT INTO `ns_member_account_records` VALUES ('15', '3', '0', '1', '0', '-9.00', '1', '8', '商城订单', '1530949486');
INSERT INTO `ns_member_account_records` VALUES ('16', '3', '0', '1', '0', '-1.00', '1', '9', '商城订单', '1530949511');
INSERT INTO `ns_member_account_records` VALUES ('17', '6', '0', '1', '1', '1000.00', '10', '0', '路遥(1949-1992)，原名王卫国，1949年12月3日生于\n路遥\n路遥\n陕西榆林市清涧县一个贫困的农民家庭，因家贫7岁即过继给延川县农村的伯父。曾在延川县立中学学习，1969年回乡务农。其间做过许多临时性工作，并在农村一小学教书一年。1973年进入延安大学中文系学习，开始文学创作。大学毕业后，任《陕西文艺》(今为《延河》)编辑。1980年发表《惊心动魄的一幕》，获第一届全国优秀中篇小说奖。1982年发表中篇小说《人生》，获第二届全国优秀中篇小说奖。1988年完成百万字长篇巨著《平凡的世界》，于199', '1531274925');
INSERT INTO `ns_member_account_records` VALUES ('18', '6', '0', '2', '1', '1000.00', '10', '0', '路遥(1949-1992)，原名王卫国，1949年12月3日生于\n路遥\n路遥\n陕西榆林市清涧县一个贫困的农民家庭，因家贫7岁即过继给延川县农村的伯父。曾在延川县立中学学习，1969年回乡务农。其间做过许多临时性工作，并在农村一小学教书一年。1973年进入延安大学中文系学习，开始文学创作。大学毕业后，任《陕西文艺》(今为《延河》)编辑。1980年发表《惊心动魄的一幕》，获第一届全国优秀中篇小说奖。1982年发表中篇小说《人生》，获第二届全国优秀中篇小说奖。1988年完成百万字长篇巨著《平凡的世界》，于199', '1531274934');
INSERT INTO `ns_member_account_records` VALUES ('19', '6', '0', '1', '0', '-1.00', '1', '10', '商城订单', '1531277030');
INSERT INTO `ns_member_account_records` VALUES ('20', '6', '0', '2', '0', '-35.00', '1', '11', '商城订单', '1531277125');
INSERT INTO `ns_member_account_records` VALUES ('21', '6', '0', '2', '0', '-100.00', '1', '12', '商城订单', '1531277396');
INSERT INTO `ns_member_account_records` VALUES ('22', '6', '0', '2', '0', '-70.00', '1', '13', '商城订单', '1531277519');
INSERT INTO `ns_member_account_records` VALUES ('23', '6', '0', '2', '1', '100.00', '2', '12', '商城订单关闭返还平台余额', '1531277558');
INSERT INTO `ns_member_account_records` VALUES ('24', '6', '0', '1', '0', '-1.00', '1', '14', '商城订单', '1531277612');
INSERT INTO `ns_member_account_records` VALUES ('25', '3', '0', '1', '1', '9.00', '2', '8', '订单关闭返还积分', '1537335765');
INSERT INTO `ns_member_account_records` VALUES ('26', '3', '0', '1', '1', '100.00', '1', '1', '订单满减送赠送积分', '1537335766');

-- ----------------------------
-- Table structure for `ns_member_balance_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_balance_withdraw`;
CREATE TABLE `ns_member_balance_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '店铺编号',
  `withdraw_no` varchar(255) NOT NULL DEFAULT '' COMMENT '提现流水号',
  `uid` int(11) NOT NULL COMMENT '会员id',
  `bank_name` varchar(50) NOT NULL COMMENT '提现银行名称',
  `account_number` varchar(50) NOT NULL COMMENT '提现银行账号',
  `realname` varchar(10) NOT NULL COMMENT '提现账户姓名',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `cash` decimal(10,2) NOT NULL COMMENT '提现金额',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前状态 0已申请(等待处理) 1已同意 -1 已拒绝',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ask_for_date` int(11) DEFAULT '0' COMMENT '提现日期',
  `payment_date` int(11) DEFAULT '0' COMMENT '到账日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  `transfer_type` int(11) NOT NULL DEFAULT '1' COMMENT '转账方式   1 线下转账  2线上转账',
  `transfer_name` varchar(50) NOT NULL DEFAULT '' COMMENT '转账银行名称',
  `transfer_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '转账金额',
  `transfer_status` int(11) DEFAULT '0' COMMENT '转账状态 0未转账 1已转账 -1转账失败',
  `transfer_remark` varchar(255) DEFAULT '' COMMENT '转账备注',
  `transfer_result` varchar(255) DEFAULT '' COMMENT '转账结果',
  `transfer_no` varchar(255) DEFAULT '' COMMENT '转账流水号',
  `transfer_account_no` varchar(255) DEFAULT '' COMMENT '转账银行账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='会员余额提现记录表';

-- ----------------------------
-- Records of ns_member_balance_withdraw
-- ----------------------------
INSERT INTO `ns_member_balance_withdraw` VALUES ('1', '0', '1530844611159', '3', '中国银行', '8985698547458', '高鹏程', '18356985456', '10.00', '1', '', '1530844611', '0', '1530844611', '1', '农业银行', '10.00', '1', '第一笔转账', '会员提现, 线下转账成功', '111', '112354569858');

-- ----------------------------
-- Table structure for `ns_member_bank_account`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_bank_account`;
CREATE TABLE `ns_member_bank_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '会员id',
  `branch_bank_name` varchar(50) DEFAULT NULL COMMENT '支行信息',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `account_number` varchar(50) NOT NULL DEFAULT '' COMMENT '银行账号',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '是否默认账号',
  `create_date` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  `account_type` int(11) DEFAULT '1' COMMENT '账户类型，1：银行卡，2：微信，3：支付宝',
  `account_type_name` varchar(30) DEFAULT '银行卡' COMMENT '账户类型名称：银行卡，微信，支付宝',
  PRIMARY KEY (`id`),
  KEY `IDX_member_bank_account_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='会员提现账号';

-- ----------------------------
-- Records of ns_member_bank_account
-- ----------------------------
INSERT INTO `ns_member_bank_account` VALUES ('1', '3', '中国银行', '高鹏程', '8985698547458', '18356985456', '1', '1530844604', '1530844604', '1', '银行卡');

-- ----------------------------
-- Table structure for `ns_member_express_address`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_express_address`;
CREATE TABLE `ns_member_express_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '会员基本资料表ID',
  `consigner` varchar(255) NOT NULL DEFAULT '' COMMENT '收件人',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '固定电话',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '市',
  `district` int(11) NOT NULL DEFAULT '0' COMMENT '区县',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `zip_code` varchar(6) NOT NULL DEFAULT '' COMMENT '邮编',
  `alias` varchar(50) NOT NULL DEFAULT '' COMMENT '地址别名',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '默认收货地址',
  PRIMARY KEY (`id`),
  KEY `IDX_member_express_address_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='会员收货地址管理';

-- ----------------------------
-- Records of ns_member_express_address
-- ----------------------------
INSERT INTO `ns_member_express_address` VALUES ('1', '3', '张国权', '18356985454', '887896', '24', '258', '2245', '东湖大道', '887896', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('2', '5', '李二狗', '13878945621', '889754', '21', '233', '1995', '里尚新街', '', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('3', '6', '路遥', '18888888888', '880707', '27', '295', '2599', '一个贫困的农民家庭', '220101', '', '0');
INSERT INTO `ns_member_express_address` VALUES ('4', '6', '太一元清', '14589874565', '8854', '21', '233', '1993', '玄清化境', '', '', '1');

-- ----------------------------
-- Table structure for `ns_member_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_favorites`;
CREATE TABLE `ns_member_favorites` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `fav_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品或店铺ID',
  `fav_type` varchar(20) NOT NULL DEFAULT 'goods' COMMENT '类型:goods为商品,shop为店铺,默认为商品',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `shop_name` varchar(20) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `shop_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺logo',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_image` varchar(300) DEFAULT NULL,
  `log_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品收藏时价格',
  `log_msg` varchar(1000) NOT NULL DEFAULT '' COMMENT '收藏备注',
  `fav_time` int(11) DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='收藏表';

-- ----------------------------
-- Records of ns_member_favorites
-- ----------------------------
INSERT INTO `ns_member_favorites` VALUES ('1', '6', '7', 'goods', '0', 'Niushop开源商城', 'public/static/images/default_img_url/logo.png', '人生', 'upload/goods/20180711/008412f9e548aaf1392774197b94a5eb3.jpg', '50.00', '人生', '1531278442');
INSERT INTO `ns_member_favorites` VALUES ('2', '6', '6', 'goods', '0', 'Niushop开源商城', 'public/static/images/default_img_url/logo.png', '平凡的世界', 'upload/goods/20180711/fe8d7d2943379bd76a7b03bdeea30a963.jpg', '60.00', '平凡的世界', '1531278459');

-- ----------------------------
-- Table structure for `ns_member_gift`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_gift`;
CREATE TABLE `ns_member_gift` (
  `gift_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `promotion_gift_id` int(11) NOT NULL COMMENT '赠品活动ID',
  `goods_id` int(11) NOT NULL COMMENT '赠品ID',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '赠品名称',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '赠品图片',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '赠品数量',
  `get_type` int(11) NOT NULL DEFAULT '1' COMMENT '获取方式',
  `get_type_id` int(11) NOT NULL COMMENT '获取方式对应ID',
  `desc` text NOT NULL COMMENT '说明',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`gift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员赠品表';

-- ----------------------------
-- Records of ns_member_gift
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_member_level`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_level`;
CREATE TABLE `ns_member_level` (
  `level_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '等级ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `level_name` varchar(50) NOT NULL DEFAULT '' COMMENT '等级名称',
  `min_integral` int(11) NOT NULL DEFAULT '0' COMMENT '累计积分',
  `goods_discount` decimal(3,2) NOT NULL DEFAULT '1.00' COMMENT '折扣率',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '等级描述',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '是否是默认',
  `quota` int(11) NOT NULL DEFAULT '0' COMMENT '消费额度',
  `upgrade` int(11) NOT NULL COMMENT '升级条件  1.累计积分 2.消费额度 3.同时满足',
  `relation` int(11) NOT NULL DEFAULT '1' COMMENT '1.或 2. 且',
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='会员等级';

-- ----------------------------
-- Records of ns_member_level
-- ----------------------------
INSERT INTO `ns_member_level` VALUES ('47', '0', '普通会员', '0', '1.00', '', '1', '0', '0', '2');
INSERT INTO `ns_member_level` VALUES ('48', '0', '高级会员', '10', '0.10', '高级会员', '0', '10', '3', '1');
INSERT INTO `ns_member_level` VALUES ('49', '0', '特级会员', '1000', '0.70', '对很多商品拥有优购买权', '0', '1000', '3', '1');
INSERT INTO `ns_member_level` VALUES ('50', '0', '至尊特享', '100', '0.10', '至尊特享', '0', '100', '3', '2');

-- ----------------------------
-- Table structure for `ns_member_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_recharge`;
CREATE TABLE `ns_member_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recharge_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `uid` varchar(255) NOT NULL COMMENT '用户uid',
  `out_trade_no` varchar(255) NOT NULL DEFAULT '' COMMENT '支付流水号',
  `create_time` varchar(255) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `is_pay` varchar(255) NOT NULL DEFAULT '0' COMMENT '是否支付',
  `status` varchar(255) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='会员充值余额记录';

-- ----------------------------
-- Records of ns_member_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_notice`
-- ----------------------------
DROP TABLE IF EXISTS `ns_notice`;
CREATE TABLE `ns_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `notice_title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `notice_content` text NOT NULL COMMENT '公告内容',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='店铺公告表';

-- ----------------------------
-- Records of ns_notice
-- ----------------------------
INSERT INTO `ns_notice` VALUES ('1', '为300元 老汉大年夜杀邻居挫骨扬灰', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">因为邻居张某欠300元没给，2015年大年三十夜里，65岁的李奇兴与张某发生争执，张某拿刀威胁李奇兴，于是李奇兴用VCD机将张某打死，然后将张某的尸体焚烧成骨灰后抛洒。最终，法院以故意杀人罪，判决李奇兴死刑，缓期两年执行，限制减刑。</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t01a70873c640e260b7.png?size=400x278\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">1530761207335519.png</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">法院宣判现场，受害人的家属抹眼泪（资料图）</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2018年7月5日，北京市高级人民法院公示了李奇兴减刑案，2018年6月27日，刑罚执行机关以罪犯李奇兴在死刑缓期两年执行期间没有故意犯罪为由，建议减为无期徒刑。公示期从2018年7月5日起至2018年7月9日止。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">为收欠款300元起争执 打死邻居</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2015年2月18日是农历甲午马年的最后一天，65岁的李奇兴开车来到昌平区十三陵镇果庄村找到张某要钱，张某答应晚上给钱。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">张某欠下的300元钱起因是2014年夏天，李奇兴以“干爹”张永秀的名义在果庄村买了一处平房院落后，邀请两位朋友来采摘。在半路上李奇兴碰到住在不远处的张某，张某便邀请李奇兴和朋友一起到他的院落里采摘，没想到张某家的狗，咬伤了李奇兴的朋友。后来，张某答应给李奇兴300元作为补偿，但李奇兴数次索要，张某均未给钱。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">眼看到了大年三十，李奇兴想着过年了，把钱要回来。于是，他在一名村民家吃过午饭后，拿着酒去找张某一起喝酒，喝着喝着，李奇兴提起索要300块钱的事情，结果被张某拒绝，两个人争吵起来。“我俩吵起来，他从厨房里拿出一把刀，骂我‘滚蛋’让我赶紧走，我当时不知道怎么想的，没走反而冲上去了。”李奇兴在庭审时供述说。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">争执当中，李奇兴将张某扑倒，顺手用张某家中的VCD机击打张某头部，将张某打死。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">为掩人耳目 将死者焚烧后挫骨扬灰</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">李奇兴为了掩人耳目，想到了要毁尸灭迹。根据他自己供述的说法，他本来想将张某的尸体拉回自己家烧了，但张某太沉了，他根本抬不动。于是，李奇兴将张某的尸体肢解，然后运回自己家中焚烧。又回到张某家清理了现场。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">李奇兴在庭审时说，“我知道张某离婚后跟家里人很少来往，想把他尸体处理掉，然后他家人找不到，就报个人口走失，把这件事情瞒过去。”</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">李奇兴说，他在家中焚烧张某尸体的时候，第二天早上家里还来了熟人拿东西，看见他在灶台烧东西，李奇兴跟那个熟人说，自己正在给狗做狗粮，那个熟人也没有怀疑就走了。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">将张某的遗体火化后，李奇兴把张某的骨灰抛洒到十三陵镇黄花峪隧道入口西北的路边。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">家人发现死者失联 警方比对血迹抓获凶手</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">一审开庭的时候，张某的女儿张女士告诉法制晚报·看法新闻记者，父母1994年离婚，父亲一个人居住，平时就是姑姑照顾父亲。案发前两天，母亲做完手术刚出院，父亲给母亲打了一个电话，但因为忙别的事，母亲没有接到电话，此后父亲没再联系她们。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">到了2015年2月28日，姑姑给她打来电话，说一直都联系不上她父亲张某。后来其姑姑到张某居住的地方查看，发现了现场的血迹。感觉张某“出事了”。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">张某家人报警后，警方对村里人进行了排查，要求村里人验血进行DNA比对，结果发现李奇兴与现场血迹吻合，随即对李奇兴进行审讯，李奇兴承认了杀人的行为。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在庭审时，李奇兴表示自己并非故意杀人，是失手，因为害怕被发现，才做了毁尸灭迹挫骨扬灰之事。李奇兴说，“我住的房子地势高，没有水，所以平时经常到张某家打水，再加上我喜欢养鸟，他也喜欢养鸟，所以我俩经常一起聊天，关系不错。”</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p2.ssl.cdn.btime.com/t0189a99c76da39e7e1.png?size=1070x723\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">1530761222293481.png</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">北京法院公示李奇兴减刑案</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">死者张某的女儿当庭要求判处李奇兴死刑立即执行，并附带民事赔偿200余万元。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">最终，法院一审以故意杀人罪，判决李奇兴死刑，缓期二年执行，同时，限制其减刑。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">此后，李奇兴在北京市延庆监狱服刑。2018年6月27日，刑罚执行机关以罪犯李奇兴在死刑缓期两年执行期间没有故意犯罪为由，建议减为无期徒刑。</p><p><br/></p>', '0', '0', '1530838433', '0');
INSERT INTO `ns_notice` VALUES ('2', '女租客内衣裤频频被盗 安装监控后拍下变态一幕', '<p class=\"content-img\" style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t01768311c5a615e842.jpg?size=600x339\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">晾晒在阳台上的内衣裤接二连三丢失，这种事摊在谁身上都不会好受!被偷的卢女士想想就来气，便在阳台上安装了监控，没想到还真拍下了变态男偷内衣的一幕。然而，当她看清偷衣男的样子，更是惊得目瞪口呆。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">7月7日，卢女士到台州玉环市公安局玉城派出所报警。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">卢女士说，从6月份中旬开始，自己晒在阳台上的内衣裤就开始莫名其妙丢失。一开始并没有放在心上，以为是风刮走了。听说同住一栋出租房里的好几位女租客也发生了同样的情况，才猜想是有人偷走了。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">到底是什么人，竟然干出这种龌龊事?7月初，卢女士就在阳台上安装了监控。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">7月6日，卢女士下班回家，发现自己晒在阳台上的内衣裤又不见了。她马上去查监控。只见，当天下午1点半左右，一名男子鬼鬼祟祟，悄悄将她挂在阳台上的内衣裤取下后迅速离开。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这个男子竟然就是自己的邻居李某!</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">很快，民警在李某的出租房内将其抓获。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">李某说，自己从今年6月中旬开始伸黑手。他先后从那里偷了7次女性内衣裤，所有衣物都已被扔在所住出租房附近的河里。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“为什么干这事?”民警询问李某偷窃的缘由。 “就是好奇，因为怕被别人发现，偷来的内衣裤我玩了以后就带出门，全都扔河里了。” 李某说。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">目前，李某因偷窃被玉环市公安局刑事拘留。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">对于有指祖儿买入两亿豪宅，张敬轩表示有听老板提过，坦言并不出奇:&quot;她自己有实力，妈咪又是理财高手，我每次见到伯母都是在银行。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">计划于2018年7月7日开始试运行，正式运行时间为7月14日至8月20日。个人暑期只能预约一次，年满16岁以上的人预约成功后可带两人入校，入校时要通过实名验证和人脸识别。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">法院悬赏寻找的两辆车，其中一辆是黑色的梅赛德斯奔驰小轿车，另一辆为黑色的别克小轿车。两辆车均属于同一被执行人。举报人只要提供有效线索，帮助涉案车辆扣押到位，就可以获得1万元奖金。悬赏截止时间为2019年6月7日。</p><p><br/></p>', '0', '0', '1531275327', '0');
INSERT INTO `ns_notice` VALUES ('3', '枕头不是用来枕头的！很多人都用错了', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">一个成年人，一天的睡眠时间，正常应该在7~9个小时。换句话说，人生有三分之一的时间，是在睡眠中度过的。而你的颈椎，有三分之一的时间，是要和枕头打交道的。</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t0128a2ed1bbb036a91.jpg?size=1080x720\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">那么，怎么样枕枕头才是正确的？</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">一个原则：</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">枕头不是用来枕头的，</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">而是用来枕脖子的。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">用错枕头，或者用错误的方式枕枕头</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">非常可怕!</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">1、颈椎病</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">如果我们在睡觉时使用过高的枕头，相当于整个睡眠过程中都被迫处于低头状态，长期下去会将颈椎生理曲度拉直，造成损害，容易引起颈椎病。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">2、脑萎缩</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">长时间枕高枕，会使头部长期处于供血供氧不足的情况下，会影响脑细胞新陈代谢，导致人的记忆力减退，中老年人提前出现脑痴呆、脑萎缩的病变。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">3、猝死</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">枕头不合理也是引发心脑血管疾病、脑溢血、脑中风等危险疾病的重要因素。不合理的枕头，会造成大脑缺血，引发脑损伤，同时血压升高、心率加快，使得心脏缺血、缺氧，并加重疾病甚至诱发死亡。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">4、影响呼吸</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">枕头过低会导致人体供血不均衡，容易造成鼻黏膜充血肿胀。而鼻黏膜很敏感，一肿胀便会影响呼吸。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">5、视力下降</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">很多人不知道，用错枕头还和人的视力有关系。当颈椎无法保持自然生理曲度时，就会压迫视觉神经。最终导致的后果就是：视力下降、怕光、流泪、眼胀痛等症状，严重时甚至会导致患者失明。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">6、高血压</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">有一种高血压叫“颈性高血压”，就是枕头不合适引起的。所谓颈性高血压，是由于颈椎压迫颈动脉，血液流速缓慢，导致压力增强。现在年轻人高血压的案例越来越多，除了和低头玩手机有关，也有用错枕头有关。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">7、肩膀僵硬</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">枕头太高，就会使得肌肉疲劳性损伤及韧带牵拉劳损，产生痉挛、炎症等，并出现颈肩酸痛、手麻、头昏等症状。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">8、失眠</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">研究显示，全球6亿左右的失眠者中，有1.5亿是因枕头不适造成，而不科学使用枕头也是引发各种睡眠障碍的首要因素。普通枕头因材质、枕型、软硬程度不科学，会造成大脑供血不足，并直接影响睡眠中枢神经调节，导致睡眠障碍，严重者会造成长期习惯性失眠。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">9、打鼾</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">有些人喜欢不垫枕头睡觉。人仰卧时过分后仰，易张口呼吸，进而产生口干、舌燥、咽喉疼痛和打呼噜现象。</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t0155af8f5465ffbb62.jpg?size=508x378\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">枕头的用处，在于维持颈椎自然的生理曲度。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">记住一个公式：一般枕头高以8～15cm为宜，或按公式计算：（肩宽-头宽）÷2。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">如果习惯仰卧，那么枕头的高度最好是8~13厘米，也就是你自己一个拳头的高度，同时，可以在膝盖下方再放一个枕头，以缓解脊椎压力。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">如果习惯侧卧，那么枕头的高度应该等于你肩膀的宽度，也就是13~16厘米，使得颈椎与腰椎在差不多同一条水平线上。</p><p><br/></p>', '0', '0', '1531275523', '0');

-- ----------------------------
-- Table structure for `ns_o2o_distribution_area`
-- ----------------------------
DROP TABLE IF EXISTS `ns_o2o_distribution_area`;
CREATE TABLE `ns_o2o_distribution_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '门店或者店铺id',
  `province_id` text COMMENT '省id',
  `city_id` text COMMENT '市id',
  `district_id` text COMMENT '区县id',
  `community_id` text COMMENT '社区乡镇id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配送区域管理';

-- ----------------------------
-- Records of ns_o2o_distribution_area
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_o2o_distribution_config`
-- ----------------------------
DROP TABLE IF EXISTS `ns_o2o_distribution_config`;
CREATE TABLE `ns_o2o_distribution_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '门店或者店铺id',
  `order_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `freight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费',
  `is_start` int(11) NOT NULL DEFAULT '0' COMMENT '是否是起步价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配送费用设置';

-- ----------------------------
-- Records of ns_o2o_distribution_config
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_o2o_distribution_user`
-- ----------------------------
DROP TABLE IF EXISTS `ns_o2o_distribution_user`;
CREATE TABLE `ns_o2o_distribution_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '配送人员姓名',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '配送人员电话',
  `remark` text COMMENT '配送人员备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配送人员管理';

-- ----------------------------
-- Records of ns_o2o_distribution_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_o2o_order_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `ns_o2o_order_delivery`;
CREATE TABLE `ns_o2o_order_delivery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `express_no` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `order_delivery_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '配送人员id',
  `order_delivery_user_name` varchar(255) NOT NULL DEFAULT '' COMMENT '配送人员姓名',
  `order_delivery_user_mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '配送人员电话',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='o2o订单配送';

-- ----------------------------
-- Records of ns_o2o_order_delivery
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_offpay_area`
-- ----------------------------
DROP TABLE IF EXISTS `ns_offpay_area`;
CREATE TABLE `ns_offpay_area` (
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺Id',
  `province_id` text COMMENT '省Id组合',
  `city_id` text COMMENT '市Id组合',
  `district_id` text COMMENT '县Id组合'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='货到付款支持地区表';

-- ----------------------------
-- Records of ns_offpay_area
-- ----------------------------
INSERT INTO `ns_offpay_area` VALUES ('0', '20,21,22,23', '218,219,220,221,222,223,224,225,226,227,228,229,230,231,233,232,234,243,235,236,237,238,239,240,241,242,244,255,254,246,247,248,249,250,251,252,253,245', '2195,2206,2207,2208,2209,2210,2211,2212,2213,2205,2204,2196,2197,2198,2199,2200,2201,2202,2203,2214,2215,2216,2217,2218,2219,2220,2154,2165,2166,2167,2168,2169,2170,2171,2172,2164,2163,2155,2156,2157,2158,2159,2160,2161,2162,2173,2174,2175,2186,2187,2188,2189,2190,2191,2192,2193,2185,2184,2176,2177,2178,2179,2180,2181,2182,2183,2194,2153,2029,2040,2041,2042,2043,2044,2045,2046,2047,2039,2038,2030,2031,2032,2033,2034,2035,2036,2037,2048,2049,2050,2061,2062,2063,2064,2065,2066,2067,2068,2060,2059,2051,2052,2053,2054,2055,2056,2057,2058,2069,1988,1999,2000,2001,2002,2003,2004,2005,2006,1998,1997,1989,1990,1991,1992,1993,1994,1995,1996,2007,2008,2009,2020,2021,2022,2023,2024,2025,2026,2027,2019,2018,2010,2011,2012,2013,2014,2015,2016,2017,2028,2070,2112,2123,2124,2125,2126,2127,2128,2129,2130,2122,2121,2113,2114,2115,2116,2117,2118,2119,2120,2131,2132,2133,2144,2145,2146,2147,2148,2149,2150,2151,2143,2142,2134,2135,2136,2137,2138,2139,2140,2141,2152,2071,2082,2083,2084,2085,2086,2087,2088,2089,2081,2080,2072,2073,2074,2075,2076,2077,2078,2079,2090,2091,2092,2103,2104,2105,2106,2107,2108,2109,2110,2102,2101,2093,2094,2095,2096,2097,2098,2099,2100,2111,1875,1876,1877,1878,1879,1880,1881,1882,1874,1873,1868,1869,1870,1871,1872,1883,1884,1885,1896,1897,1898,1899,1900,1901,1902,1903,1895,1894,1886,1887,1888,1889,1890,1891,1892,1893,1904,1905,1947,1958,1959,1960,1961,1962,1963,1964,1965,1957,1956,1948,1949,1950,1951,1952,1953,1954,1955,1966,1967,1968,1979,1980,1981,1982,1983,1984,1985,1986,1978,1977,1969,1970,1971,1972,1973,1974,1975,1976,1987,1906,1917,1918,1919,1920,1921,1922,1923,1924,1916,1915,1907,1908,1909,1910,1911,1912,1913,1914,1925,1926,1927,1938,1939,1940,1941,1942,1943,1944,1945,1937,1936,1928,1929,1930,1931,1932,1933,1934,1935,1946');

-- ----------------------------
-- Table structure for `ns_order`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order`;
CREATE TABLE `ns_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_no` varchar(255) DEFAULT '' COMMENT '订单编号',
  `out_trade_no` varchar(100) NOT NULL DEFAULT '0' COMMENT '外部交易号',
  `order_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '订单类型',
  `payment_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付类型。取值范围：\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWEIXIN (微信自有支付)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWEIXIN_DAIXIAO (微信代销支付)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nALIPAY (支付宝支付)',
  `shipping_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '订单配送方式',
  `order_from` varchar(255) NOT NULL DEFAULT '' COMMENT '订单来源',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '买家会员名称',
  `buyer_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '买家ip',
  `buyer_message` varchar(255) NOT NULL DEFAULT '' COMMENT '买家附言',
  `buyer_invoice` varchar(255) NOT NULL DEFAULT '' COMMENT '买家发票信息',
  `receiver_mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '收货人的手机号码',
  `receiver_province` int(11) NOT NULL COMMENT '收货人所在省',
  `receiver_city` int(11) NOT NULL COMMENT '收货人所在城市',
  `receiver_district` int(11) NOT NULL COMMENT '收货人所在街道',
  `receiver_address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `receiver_zip` varchar(6) NOT NULL DEFAULT '' COMMENT '收货人邮编',
  `receiver_name` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `shop_id` int(11) NOT NULL COMMENT '卖家店铺id',
  `shop_name` varchar(100) NOT NULL DEFAULT '' COMMENT '卖家店铺名称',
  `seller_star` tinyint(4) NOT NULL DEFAULT '0' COMMENT '卖家对订单的标注星标',
  `seller_memo` varchar(255) NOT NULL DEFAULT '' COMMENT '卖家对订单的备注',
  `consign_time_adjust` int(11) NOT NULL DEFAULT '0' COMMENT '卖家延迟发货时间',
  `goods_money` decimal(19,2) NOT NULL COMMENT '商品总价',
  `order_money` decimal(10,2) NOT NULL COMMENT '订单总价',
  `point` int(11) NOT NULL COMMENT '订单消耗积分',
  `point_money` decimal(10,2) NOT NULL COMMENT '订单消耗积分抵多少钱',
  `coupon_money` decimal(10,2) NOT NULL COMMENT '订单代金券支付金额',
  `coupon_id` int(11) NOT NULL COMMENT '订单代金券id',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单余额支付金额',
  `user_platform_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户平台余额支付',
  `promotion_money` decimal(10,2) NOT NULL COMMENT '订单优惠活动金额',
  `shipping_money` decimal(10,2) NOT NULL COMMENT '订单运费',
  `pay_money` decimal(10,2) NOT NULL COMMENT '订单实付金额',
  `refund_money` decimal(10,2) NOT NULL COMMENT '订单退款金额',
  `coin_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '购物币金额',
  `give_point` int(11) NOT NULL COMMENT '订单赠送积分',
  `give_coin` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单成功之后返购物币',
  `order_status` tinyint(4) NOT NULL COMMENT '订单状态',
  `pay_status` tinyint(4) NOT NULL COMMENT '订单付款状态',
  `shipping_status` tinyint(4) NOT NULL COMMENT '订单配送状态',
  `review_status` tinyint(4) NOT NULL COMMENT '订单评价状态',
  `feedback_status` tinyint(4) NOT NULL COMMENT '订单维权状态',
  `is_evaluate` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否评价 0为未评价 1为已评价 2为已追评',
  `tax_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_company_id` int(11) NOT NULL DEFAULT '0' COMMENT '配送物流公司ID',
  `give_point_type` int(11) NOT NULL DEFAULT '1' COMMENT '积分返还类型 1 订单完成  2 订单收货 3  支付订单',
  `pay_time` int(11) DEFAULT '0' COMMENT '订单付款时间',
  `shipping_time` int(11) DEFAULT '0' COMMENT '买家要求配送时间',
  `sign_time` int(11) DEFAULT '0' COMMENT '买家签收时间',
  `consign_time` int(11) DEFAULT '0' COMMENT '卖家发货时间',
  `create_time` int(11) DEFAULT '0' COMMENT '订单创建时间',
  `finish_time` int(11) DEFAULT '0' COMMENT '订单完成时间',
  `is_deleted` int(1) NOT NULL DEFAULT '0' COMMENT '订单是否已删除',
  `operator_type` int(1) NOT NULL DEFAULT '0' COMMENT '操作人类型  1店铺  2用户',
  `operator_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `refund_balance_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单退款余额',
  `fixed_telephone` varchar(50) NOT NULL DEFAULT '' COMMENT '固定电话',
  PRIMARY KEY (`order_id`),
  KEY `UK_ns_order_buyer_id` (`buyer_id`),
  KEY `UK_ns_order_order_no` (`order_no`),
  KEY `UK_ns_order_pay_status` (`pay_status`),
  KEY `UK_ns_order_status` (`order_status`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=440 COMMENT='订单表';

-- ----------------------------
-- Records of ns_order
-- ----------------------------
INSERT INTO `ns_order` VALUES ('1', '2018070609400001', '153084125487251000', '1', '1', '1', '3', '3', '还有一人', '1', '', '', '18356985454', '24', '258', '2245', '贵州省&nbsp;遵义市&nbsp;余庆县&nbsp;东湖大道', '887896', '张国权', '0', 'Niushop开源商城', '0', '', '0', '100.00', '90.00', '1', '100.00', '0.00', '0', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '4', '2', '2', '0', '0', '1', '0.00', '1', '2', '1530841255', '0', '1530841731', '1530841683', '1530841255', '1537335765', '0', '0', '0', '0.00', '887896');
INSERT INTO `ns_order` VALUES ('2', '2018070609420001', '153084135419251000', '1', '1', '1', '3', '3', '还有一人', '1', '', '', '18356985454', '24', '258', '2245', '贵州省&nbsp;遵义市&nbsp;余庆县&nbsp;东湖大道', '887896', '张国权', '0', 'Niushop开源商城', '0', '这小子多半有毛病', '0', '200.00', '190.00', '2', '200.00', '0.00', '0', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '5', '2', '0', '0', '0', '0', '0.00', '1', '2', '1530841355', '0', '0', '0', '1530841355', '0', '0', '0', '0', '0.00', '887896');
INSERT INTO `ns_order` VALUES ('3', '2018070610420001', '153084496598941000', '1', '1', '1', '2', '3', '还有一人', '1', '', '', '18356985454', '24', '258', '2245', '贵州省&nbsp;遵义市&nbsp;余庆县&nbsp;东湖大道', '887896', '张国权', '0', 'Niushop开源商城', '0', '', '0', '99.90', '99.90', '1', '100.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '1', '2', '1530844966', '0', '0', '0', '1530844965', '0', '0', '0', '0', '0.00', '887896');
INSERT INTO `ns_order` VALUES ('4', '2018070610430001', '153084502760021000', '1', '1', '1', '2', '3', '还有一人', '1', '', '', '18356985454', '24', '258', '2245', '贵州省&nbsp;遵义市&nbsp;余庆县&nbsp;东湖大道', '887896', '张国权', '0', 'Niushop开源商城', '0', '', '0', '100.00', '90.00', '1', '100.00', '0.00', '0', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '5', '2', '0', '0', '0', '0', '0.00', '1', '2', '1530845028', '0', '0', '0', '1530845028', '0', '0', '0', '0', '0.00', '887896');
INSERT INTO `ns_order` VALUES ('5', '2018070614210001', '153085809327651000', '1', '1', '1', '2', '5', 'cheshi123', '1', '', '', '13878945621', '21', '233', '1995', '海南省&nbsp;三亚市&nbsp;保亭黎族苗族自治县&nbsp;里尚新街', '', '李二狗', '0', 'Niushop开源商城', '0', '', '0', '99.90', '99.90', '1', '100.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '1', '2', '1530858094', '0', '0', '0', '1530858093', '0', '0', '0', '0', '0.00', '889754');
INSERT INTO `ns_order` VALUES ('6', '2018070615470001', '153086325120091000', '1', '0', '1', '2', '5', 'cheshi123', '1', '', '', '13878945621', '21', '233', '1995', '海南省&nbsp;三亚市&nbsp;保亭黎族苗族自治县&nbsp;里尚新街', '', '李二狗', '0', 'Niushop开源商城', '0', '', '0', '99.90', '99.90', '0', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '99.90', '0.00', '0.00', '1', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '1', '2', '0', '0', '0', '0', '1530863252', '0', '0', '0', '0', '0.00', '889754');
INSERT INTO `ns_order` VALUES ('7', '2018070711320001', '153093434463851000', '1', '1', '1', '3', '3', '还有一人', '1', '', '', '18356985454', '24', '258', '2245', '贵州省&nbsp;遵义市&nbsp;余庆县&nbsp;东湖大道', '887896', '张国权', '0', 'Niushop开源商城', '0', '', '0', '100.00', '90.00', '1', '100.00', '0.00', '0', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '3', '2', '2', '0', '0', '0', '0.00', '1', '2', '1530934345', '0', '1537335766', '1530942412', '1530934344', '0', '0', '0', '0', '0.00', '887896');
INSERT INTO `ns_order` VALUES ('8', '2018070715440001', '153094948619081000', '1', '0', '1', '3', '3', '还有一人', '1', '', '', '18356985454', '24', '258', '2245', '贵州省&nbsp;遵义市&nbsp;余庆县&nbsp;东湖大道', '887896', '张国权', '0', 'Niushop开源商城', '0', '', '0', '1200.00', '1190.00', '9', '900.00', '0.00', '0', '0.00', '0.00', '10.00', '0.00', '290.00', '0.00', '0.00', '0', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '1', '2', '0', '0', '0', '0', '1530949486', '0', '0', '0', '0', '0.00', '887896');
INSERT INTO `ns_order` VALUES ('9', '2018070715450001', '153094951189201000', '1', '1', '1', '3', '3', '还有一人', '1', '', '', '18356985454', '24', '258', '2245', '贵州省&nbsp;遵义市&nbsp;余庆县&nbsp;东湖大道', '887896', '张国权', '0', 'Niushop开源商城', '0', '', '0', '100.00', '90.00', '1', '100.00', '0.00', '0', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '1', '2', '1530949511', '0', '0', '0', '1530949511', '0', '0', '0', '0', '0.00', '887896');
INSERT INTO `ns_order` VALUES ('10', '2018071110430001', '153127703031721000', '1', '1', '2', '3', '6', '123456', '1', '', '', '18888888888', '27', '295', '2599', '陕西省&nbsp;榆林市&nbsp;清涧县&nbsp;一个贫困的农民家庭', '220101', '路遥', '0', 'Niushop开源商城', '0', '', '0', '42.00', '42.00', '1', '99.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '2', '1', '1531277031', '0', '0', '0', '1531277030', '0', '0', '0', '0', '0.00', '880707');
INSERT INTO `ns_order` VALUES ('11', '2018071110450001', '153127712513811000', '1', '5', '1', '3', '6', '123456', '1', '', '', '18888888888', '27', '295', '2599', '陕西省&nbsp;榆林市&nbsp;清涧县&nbsp;一个贫困的农民家庭', '220101', '路遥', '0', 'Niushop开源商城', '0', '', '0', '35.00', '35.00', '0', '0.00', '0.00', '0', '0.00', '35.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '1', '1', '1531277126', '0', '0', '0', '1531277125', '0', '0', '0', '0', '0.00', '880707');
INSERT INTO `ns_order` VALUES ('12', '2018071110490001', '153127741853671000', '1', '0', '1', '3', '6', '123456', '1', '', '', '18888888888', '27', '295', '2599', '陕西省&nbsp;榆林市&nbsp;清涧县&nbsp;一个贫困的农民家庭', '220101', '路遥', '0', 'Niushop开源商城', '0', '', '0', '168.00', '158.00', '0', '0.00', '0.00', '0', '0.00', '100.00', '10.00', '0.00', '58.00', '0.00', '0.00', '0', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '1', '1', '0', '0', '0', '0', '1531277396', '0', '0', '0', '0', '0.00', '880707');
INSERT INTO `ns_order` VALUES ('13', '2018071110510001', '153127751997381000', '1', '5', '1', '3', '6', '123456', '1', '', '', '18888888888', '27', '295', '2599', '陕西省&nbsp;榆林市&nbsp;清涧县&nbsp;一个贫困的农民家庭', '220101', '路遥', '0', 'Niushop开源商城', '0', '', '0', '70.00', '70.00', '0', '0.00', '0.00', '0', '0.00', '70.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '3', '2', '2', '0', '0', '0', '0.00', '2', '1', '1531277519', '0', '1537335766', '1531278673', '1531277519', '0', '0', '0', '0', '0.00', '880707');
INSERT INTO `ns_order` VALUES ('14', '2018071110530001', '153127761267771000', '1', '1', '1', '3', '6', '123456', '1', '', '', '18888888888', '27', '295', '2599', '陕西省&nbsp;榆林市&nbsp;清涧县&nbsp;一个贫困的农民家庭', '220101', '路遥', '0', 'Niushop开源商城', '0', '', '0', '84.00', '84.00', '1', '99.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '1', '1', '1531277612', '0', '0', '0', '1531277612', '0', '0', '0', '0', '0.00', '880707');
INSERT INTO `ns_order` VALUES ('15', '2018071111140001', '153127888373611000', '1', '1', '1', '2', '6', '123456', '1', '快快快', '', '14589874565', '21', '233', '1993', '海南省&nbsp;三亚市&nbsp;乐东黎族自治县&nbsp;玄清化境', '', '太一元清', '0', 'Niushop开源商城', '0', '', '0', '35.00', '0.00', '0', '0.00', '100.00', '1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '1', '1', '1531278884', '0', '0', '0', '1531278884', '0', '0', '0', '0', '0.00', '8854');

-- ----------------------------
-- Table structure for `ns_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_action`;
CREATE TABLE `ns_order_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '动作id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '动作内容',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `order_status` int(11) NOT NULL COMMENT '订单大状态',
  `order_status_text` varchar(255) NOT NULL DEFAULT '' COMMENT '订单状态名称',
  `action_time` int(11) DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`action_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1706 COMMENT='订单操作表';

-- ----------------------------
-- Records of ns_order_action
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_customer_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_customer_account_records`;
CREATE TABLE `ns_order_customer_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_goods_id` int(11) NOT NULL COMMENT '订单项id',
  `refund_trade_no` varchar(55) NOT NULL COMMENT '退款交易号',
  `refund_money` decimal(10,2) NOT NULL COMMENT '退款金额',
  `refund_way` int(11) NOT NULL COMMENT '退款方式（1：微信，2：支付宝，10：线下）',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `refund_time` int(11) NOT NULL COMMENT '退款时间',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单售后账户记录';

-- ----------------------------
-- Records of ns_order_customer_account_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_goods`;
CREATE TABLE `ns_order_goods` (
  `order_goods_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单项ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `sku_id` int(11) NOT NULL COMMENT 'skuID',
  `sku_name` varchar(50) NOT NULL COMMENT 'sku名称',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品成本价',
  `num` varchar(255) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `adjust_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '调整金额',
  `goods_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品图片',
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买人ID',
  `point_exchange_type` int(11) NOT NULL DEFAULT '0' COMMENT '积分兑换类型0.非积分兑换1.积分兑换',
  `goods_type` varchar(255) NOT NULL DEFAULT '1' COMMENT '商品类型',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销ID',
  `promotion_type_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销类型',
  `order_type` int(11) NOT NULL DEFAULT '1' COMMENT '订单类型',
  `order_status` int(11) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `give_point` int(11) NOT NULL DEFAULT '0' COMMENT '积分数量',
  `shipping_status` int(11) NOT NULL DEFAULT '0' COMMENT '物流状态',
  `refund_type` int(11) NOT NULL DEFAULT '1' COMMENT '退款方式',
  `refund_require_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `refund_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '退款原因',
  `refund_shipping_code` varchar(255) NOT NULL DEFAULT '' COMMENT '退款物流单号',
  `refund_shipping_company` varchar(255) NOT NULL DEFAULT '0' COMMENT '退款物流公司名称',
  `refund_real_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际退款金额',
  `refund_status` int(1) NOT NULL DEFAULT '0' COMMENT '退款状态',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `is_evaluate` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否评价 0为未评价 1为已评价 2为已追评',
  `refund_time` int(11) DEFAULT '0' COMMENT '退款时间',
  `refund_balance_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单退款余额',
  `tmp_express_company` varchar(255) NOT NULL DEFAULT '' COMMENT '批量打印时添加的临时物流公司',
  `tmp_express_company_id` int(11) NOT NULL DEFAULT '0' COMMENT '批量打印时添加的临时物流公司id',
  `tmp_express_no` varchar(50) NOT NULL DEFAULT '' COMMENT '批量打印时添加的临时订单编号',
  `gift_flag` int(11) DEFAULT '0' COMMENT '赠品标识，0:不是赠品，大于0：赠品id',
  PRIMARY KEY (`order_goods_id`),
  KEY `UK_ns_order_goods_buyer_id` (`buyer_id`),
  KEY `UK_ns_order_goods_goods_id` (`goods_id`),
  KEY `UK_ns_order_goods_order_id` (`order_id`),
  KEY `UK_ns_order_goods_promotion_id` (`promotion_id`),
  KEY `UK_ns_order_goods_sku_id` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=289 COMMENT='订单商品表';

-- ----------------------------
-- Records of ns_order_goods
-- ----------------------------
INSERT INTO `ns_order_goods` VALUES ('1', '1', '4', '连帽衬衫青少年学生', '4', '100*100 ', '100.00', '50.00', '1', '0.00', '100.00', '11', '0', '3', '0', '1', '0', '0', '1', '0', '0', '1', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('2', '2', '1', '夏季中国风棉麻休闲短裤男加肥加大码透气中裤韩版裤子潮流五分裤', '1', '100*100 ', '200.00', '120.00', '1', '0.00', '200.00', '7', '0', '3', '0', '1', '0', '0', '1', '0', '1', '0', '1', '0.00', '商品质量问题', '', '0', '0.00', '5', '', '0', '1530841432', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('3', '3', '2', '夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '2', '100*100 200 ', '99.90', '20.00', '1', '0.00', '99.90', '8', '0', '3', '0', '1', '1', '2', '1', '0', '1', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('4', '4', '4', '连帽衬衫青少年学生', '4', '100*100 ', '100.00', '50.00', '1', '0.00', '100.00', '11', '0', '3', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '商品质量问题', '', '0', '0.00', '5', '', '0', '1530845048', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('5', '5', '2', '夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '2', '100*100 200 ', '99.90', '20.00', '1', '0.00', '99.90', '8', '0', '5', '0', '1', '1', '2', '1', '0', '1', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('6', '6', '2', '夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '2', '100*100 200 ', '99.90', '20.00', '1', '0.00', '99.90', '8', '0', '5', '0', '1', '1', '2', '1', '0', '1', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('7', '7', '4', '连帽衬衫青少年学生', '4', '100*100 ', '100.00', '50.00', '1', '0.00', '100.00', '11', '0', '3', '0', '1', '0', '0', '1', '0', '0', '1', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('8', '8', '5', '111西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服', '5', '', '1200.00', '500.00', '1', '0.00', '1200.00', '12', '0', '3', '2', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('9', '9', '4', '连帽衬衫青少年学生', '4', '100*100 ', '100.00', '50.00', '1', '0.00', '100.00', '11', '0', '3', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('10', '10', '6', '平凡的世界', '6', '', '42.00', '30.00', '1', '0.00', '42.00', '15', '0', '6', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('11', '11', '7', '人生', '7', '', '35.00', '40.00', '1', '0.00', '35.00', '18', '0', '6', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('12', '12', '6', '平凡的世界', '6', '', '42.00', '30.00', '4', '0.00', '168.00', '15', '0', '6', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('13', '13', '7', '人生', '7', '', '35.00', '40.00', '2', '0.00', '70.00', '18', '0', '6', '0', '1', '0', '0', '1', '0', '0', '1', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('14', '14', '6', '平凡的世界', '6', '', '42.00', '30.00', '2', '0.00', '84.00', '15', '0', '6', '0', '1', '0', '0', '1', '0', '0', '0', '2', '0.00', '在', '', '0', '0.00', '-1', '', '0', '1531277811', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('15', '15', '7', '人生', '7', '', '35.00', '40.00', '1', '0.00', '35.00', '18', '0', '6', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');

-- ----------------------------
-- Table structure for `ns_order_goods_express`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_goods_express`;
CREATE TABLE `ns_order_goods_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_goods_id_array` varchar(255) NOT NULL COMMENT '订单项商品组合列表',
  `express_name` varchar(50) NOT NULL DEFAULT '' COMMENT '包裹名称  （包裹- 1 包裹 - 2）',
  `shipping_type` tinyint(4) NOT NULL COMMENT '发货方式1 需要物流 0无需物流',
  `express_company_id` int(11) NOT NULL COMMENT '快递公司id',
  `express_company` varchar(255) NOT NULL DEFAULT '' COMMENT '物流公司名称',
  `express_no` varchar(50) NOT NULL COMMENT '运单编号',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `shipping_time` int(11) DEFAULT '0' COMMENT '发货时间',
  PRIMARY KEY (`id`),
  KEY `UK_ns_order_goods_express_order_goods_id_array` (`order_goods_id_array`),
  KEY `UK_ns_order_goods_express_order_id` (`order_id`),
  KEY `UK_ns_order_goods_express_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=606 COMMENT='商品订单物流信息表（多次发货）';

-- ----------------------------
-- Records of ns_order_goods_express
-- ----------------------------
INSERT INTO `ns_order_goods_express` VALUES ('1', '1', '1', '东方快截', '1', '1', '东方快截', '8858545', '2', 'admin', '', '1530841683');
INSERT INTO `ns_order_goods_express` VALUES ('2', '7', '7', '东方快截', '1', '1', '东方快截', '885658569', '2', 'admin', '', '1530942412');

-- ----------------------------
-- Table structure for `ns_order_goods_promotion_details`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_goods_promotion_details`;
CREATE TABLE `ns_order_goods_promotion_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `sku_id` int(11) NOT NULL COMMENT '商品skuid',
  `promotion_type` varbinary(255) NOT NULL COMMENT '优惠类型规则ID（满减对应规则）',
  `promotion_id` int(11) NOT NULL COMMENT '优惠ID',
  `discount_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠的金额，单位：元，精确到小数点后两位',
  `used_time` int(11) DEFAULT '0' COMMENT '使用时间',
  PRIMARY KEY (`id`),
  KEY `IDX_ns_order_goods_promotion_d_order_id` (`order_id`),
  KEY `IDX_ns_order_goods_promotion_d_promotion_id` (`promotion_id`),
  KEY `IDX_ns_order_goods_promotion_d_promotion_type` (`promotion_type`),
  KEY `IDX_ns_order_goods_promotion_d_sku_id` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='订单商品优惠详情';

-- ----------------------------
-- Records of ns_order_goods_promotion_details
-- ----------------------------
INSERT INTO `ns_order_goods_promotion_details` VALUES ('1', '1', '4', 0x4D414E4A49414E, '1', '10.00', '1530841255');
INSERT INTO `ns_order_goods_promotion_details` VALUES ('2', '2', '1', 0x4D414E4A49414E, '1', '10.00', '1530841355');
INSERT INTO `ns_order_goods_promotion_details` VALUES ('3', '4', '4', 0x4D414E4A49414E, '1', '10.00', '1530845028');
INSERT INTO `ns_order_goods_promotion_details` VALUES ('4', '7', '4', 0x4D414E4A49414E, '1', '10.00', '1530934344');
INSERT INTO `ns_order_goods_promotion_details` VALUES ('5', '8', '5', 0x4D414E4A49414E, '1', '10.00', '1530949486');
INSERT INTO `ns_order_goods_promotion_details` VALUES ('6', '9', '4', 0x4D414E4A49414E, '1', '10.00', '1530949511');
INSERT INTO `ns_order_goods_promotion_details` VALUES ('7', '12', '6', 0x4D414E4A49414E, '1', '10.00', '1531277396');
INSERT INTO `ns_order_goods_promotion_details` VALUES ('8', '15', '7', 0x434F55504F4E, '1', '100.00', '1531278884');

-- ----------------------------
-- Table structure for `ns_order_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_payment`;
CREATE TABLE `ns_order_payment` (
  `out_trade_no` varchar(30) NOT NULL COMMENT '支付单编号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '执行支付的相关店铺ID（0平台）',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '订单类型1.商城订单2.交易商支付',
  `type_alis_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单类型关联ID',
  `pay_body` varchar(255) NOT NULL DEFAULT '' COMMENT '订单支付简介',
  `pay_detail` varchar(1000) NOT NULL DEFAULT '' COMMENT '订单支付详情',
  `pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `pay_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_type` int(11) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `pay_time` int(11) DEFAULT '0' COMMENT '支付时间',
  `trade_no` varchar(30) NOT NULL DEFAULT '' COMMENT '交易号，支付宝退款用，微信传入空',
  KEY `IDX_ns_order_payment_out_trade_no` (`out_trade_no`),
  KEY `IDX_ns_order_payment_pay_status` (`pay_status`),
  KEY `IDX_ns_order_payment_pay_type` (`pay_type`),
  KEY `IDX_ns_order_payment_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=963 COMMENT='订单支付表';

-- ----------------------------
-- Records of ns_order_payment
-- ----------------------------
INSERT INTO `ns_order_payment` VALUES ('153084125487251000', '0', '1', '1', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1530841255', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153084135419251000', '0', '1', '2', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1530841355', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153084496598941000', '0', '1', '3', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1530844965', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153084502760021000', '0', '1', '4', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1530845028', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153085809327651000', '0', '1', '5', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1530858093', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153086325120091000', '0', '1', '6', 'Niushop开源商城订单', 'Niushop开源商城订单', '99.90', '0', '1', '1530863252', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153093434463851000', '0', '1', '7', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1530934344', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153094948619081000', '0', '1', '8', 'Niushop开源商城订单', 'Niushop开源商城订单', '290.00', '0', '1', '1530949486', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153094951189201000', '0', '1', '9', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1530949511', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153127703031721000', '0', '1', '10', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1531277030', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153127712513811000', '0', '1', '11', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1531277125', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153127741853671000', '0', '1', '12', 'Niushop开源商城订单', 'Niushop开源商城订单', '58.00', '0', '1', '1531277396', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153127751997381000', '0', '1', '13', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1531277519', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153127761267771000', '0', '1', '14', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1531277612', '0', '');
INSERT INTO `ns_order_payment` VALUES ('153127888373611000', '0', '1', '15', 'Niushop开源商城订单', 'Niushop开源商城订单', '0.00', '1', '1', '1531278884', '0', '');

-- ----------------------------
-- Table structure for `ns_order_pickup`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_pickup`;
CREATE TABLE `ns_order_pickup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `name` varchar(255) NOT NULL COMMENT '自提点名称',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '自提点地址',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '联系电话',
  `city_id` int(11) NOT NULL COMMENT '市ID',
  `province_id` int(11) NOT NULL COMMENT '省ID',
  `district_id` int(11) NOT NULL COMMENT '区县ID',
  `supplier_id` int(11) NOT NULL DEFAULT '0' COMMENT '供应门店ID',
  `longitude` varchar(255) NOT NULL DEFAULT '' COMMENT '经度',
  `latitude` varchar(255) NOT NULL DEFAULT '' COMMENT '维度',
  `buyer_name` varchar(50) NOT NULL DEFAULT '' COMMENT '提货人姓名',
  `buyer_mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '提货人电话',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '提货备注信息',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='订单自提点管理';

-- ----------------------------
-- Records of ns_order_pickup
-- ----------------------------
INSERT INTO `ns_order_pickup` VALUES ('1', '10', '菜鸟驿站208', '菜鸟驿站', '菜鸟驿站', '880718', '233', '21', '1997', '0', '', '', '', '', '', '1531277030');

-- ----------------------------
-- Table structure for `ns_order_presell`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_presell`;
CREATE TABLE `ns_order_presell` (
  `presell_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `out_trade_no` varchar(100) NOT NULL DEFAULT '0' COMMENT '外部交易号',
  `payment_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付类型',
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态 0创建 1尾款待支付 2开始结尾款 ',
  `pay_time` int(11) NOT NULL DEFAULT '0' COMMENT '订单付款时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '订单创建时间',
  `operator_type` int(1) NOT NULL DEFAULT '0' COMMENT '操作人类型  1店铺  2用户',
  `operator_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `relate_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联id',
  `presell_time` int(11) NOT NULL DEFAULT '0' COMMENT '预售结束时间',
  `presell_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售金额',
  `presell_pay` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售支付金额',
  `platform_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台余额',
  `point` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单消耗积分',
  `point_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单消耗积分抵多少钱',
  `presell_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售金单价',
  `presell_delivery_type` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货形式 1指定时间 2支付后天数',
  `presell_delivery_value` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货时间 按形式 ',
  `presell_delivery_time` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货具体时间（实则为结尾款时间）',
  `is_full_payment` int(11) NOT NULL DEFAULT '0' COMMENT '是否全款预定',
  PRIMARY KEY (`presell_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预售订单表';

-- ----------------------------
-- Records of ns_order_presell
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_promotion_details`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_promotion_details`;
CREATE TABLE `ns_order_promotion_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `promotion_type_id` int(11) NOT NULL COMMENT '优惠类型规则ID（满减对应规则）',
  `promotion_id` int(11) NOT NULL COMMENT '优惠ID',
  `promotion_type` varchar(255) NOT NULL COMMENT '优惠类型',
  `promotion_name` varchar(50) NOT NULL COMMENT '该优惠活动的名称',
  `promotion_condition` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠使用条件说明',
  `discount_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠的金额，单位：元，精确到小数点后两位',
  `used_time` int(11) DEFAULT '0' COMMENT '使用时间',
  PRIMARY KEY (`id`),
  KEY `UK_ns_order_promotion_details_order_id` (`order_id`),
  KEY `UK_ns_order_promotion_details_promotion_id` (`promotion_id`),
  KEY `UK_ns_order_promotion_details_promotion_type` (`promotion_type`),
  KEY `UK_ns_order_promotion_details_promotion_type_id` (`promotion_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=364 COMMENT='订单优惠详情';

-- ----------------------------
-- Records of ns_order_promotion_details
-- ----------------------------
INSERT INTO `ns_order_promotion_details` VALUES ('1', '1', '1', '1', 'MANJIAN', '满减送活动', '满100.00元，减10.00', '10.00', '1530841255');
INSERT INTO `ns_order_promotion_details` VALUES ('2', '2', '1', '1', 'MANJIAN', '满减送活动', '满100.00元，减10.00', '10.00', '1530841355');
INSERT INTO `ns_order_promotion_details` VALUES ('3', '4', '1', '1', 'MANJIAN', '满减送活动', '满100.00元，减10.00', '10.00', '1530845028');
INSERT INTO `ns_order_promotion_details` VALUES ('4', '7', '1', '1', 'MANJIAN', '满减送活动', '满100.00元，减10.00', '10.00', '1530934344');
INSERT INTO `ns_order_promotion_details` VALUES ('5', '8', '1', '1', 'MANJIAN', '满减送活动', '满100.00元，减10.00', '10.00', '1530949486');
INSERT INTO `ns_order_promotion_details` VALUES ('6', '9', '1', '1', 'MANJIAN', '满减送活动', '满100.00元，减10.00', '10.00', '1530949511');
INSERT INTO `ns_order_promotion_details` VALUES ('7', '12', '1', '1', 'MANJIAN', '满减送活动', '满100.00元，减10.00', '10.00', '1531277396');

-- ----------------------------
-- Table structure for `ns_order_refund`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_refund`;
CREATE TABLE `ns_order_refund` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_goods_id` int(11) NOT NULL COMMENT '订单商品表id',
  `refund_status` varchar(255) NOT NULL COMMENT '操作状态\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n流程状态(refund_status)	状态名称(refund_status_name)	操作时间\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1	买家申请	发起了退款申请,等待卖家处理\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n2	等待买家退货	卖家已同意退款申请,等待买家退货\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n3	等待卖家确认收货	买家已退货,等待卖家确认收货\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n4	等待卖家确认退款	卖家同意退款\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n0	退款已成功	卖家退款给买家，本次维权结束\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-1	退款已拒绝	卖家拒绝本次退款，本次维权结束\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-2	退款已关闭	主动撤销退款，退款关闭\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-3	退款申请不通过	拒绝了本次退款申请,等待买家修改\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n',
  `action` varchar(255) NOT NULL COMMENT '退款操作内容描述',
  `action_way` tinyint(4) NOT NULL DEFAULT '0' COMMENT '操作方 1 买家 2 卖家',
  `action_userid` varchar(255) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `action_username` varchar(255) NOT NULL DEFAULT '' COMMENT '操作人姓名',
  `action_time` int(11) DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=108 COMMENT='订单商品退货退款操作表';

-- ----------------------------
-- Records of ns_order_refund
-- ----------------------------
INSERT INTO `ns_order_refund` VALUES ('1', '2', '1', '买家申请退款', '1', '3', 'gygq', '1530841432');
INSERT INTO `ns_order_refund` VALUES ('2', '2', '4', '等待卖家确认退款', '2', '2', 'admin', '1530841524');
INSERT INTO `ns_order_refund` VALUES ('3', '2', '5', '退款已成功', '2', '2', 'admin', '1530841577');
INSERT INTO `ns_order_refund` VALUES ('4', '4', '1', '买家申请退款', '1', '3', 'gygq', '1530845048');
INSERT INTO `ns_order_refund` VALUES ('5', '4', '4', '等待卖家确认退款', '2', '2', 'admin', '1530845084');
INSERT INTO `ns_order_refund` VALUES ('6', '4', '5', '退款已成功', '2', '2', 'admin', '1530845184');
INSERT INTO `ns_order_refund` VALUES ('7', '14', '1', '买家申请退款', '1', '6', '路遥', '1531277652');
INSERT INTO `ns_order_refund` VALUES ('8', '14', '-3', '退款申请不通过', '2', '2', 'admin', '1531277757');
INSERT INTO `ns_order_refund` VALUES ('9', '14', '1', '买家申请退款', '1', '6', '路遥', '1531277811');
INSERT INTO `ns_order_refund` VALUES ('10', '14', '-1', '退款已拒绝', '2', '2', 'admin', '1531277840');

-- ----------------------------
-- Table structure for `ns_order_refund_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_refund_account_records`;
CREATE TABLE `ns_order_refund_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_goods_id` int(11) NOT NULL COMMENT '订单项id',
  `refund_trade_no` varchar(55) NOT NULL COMMENT '退款交易号',
  `refund_money` decimal(10,2) NOT NULL COMMENT '退款金额',
  `refund_way` int(11) NOT NULL COMMENT '退款方式（1：微信，2：支付宝，10：线下）',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `refund_time` int(11) NOT NULL COMMENT '退款时间',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单退款账户记录';

-- ----------------------------
-- Records of ns_order_refund_account_records
-- ----------------------------
INSERT INTO `ns_order_refund_account_records` VALUES ('1', '2', '20180706094617471640', '0.00', '10', '3', '1530841577', '订单编号:2018070609420001，退款方式为:[线下支付]，退款金额:0.00元，退款余额：0元');
INSERT INTO `ns_order_refund_account_records` VALUES ('2', '4', '20180706104623645443', '0.00', '10', '3', '1530845184', '订单编号:2018070610430001，退款方式为:[线下支付]，退款金额:0.00元，退款余额：0元');

-- ----------------------------
-- Table structure for `ns_order_shipping_fee`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_shipping_fee`;
CREATE TABLE `ns_order_shipping_fee` (
  `shipping_fee_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '运费模板ID',
  `shipping_fee_name` varchar(30) NOT NULL DEFAULT '' COMMENT '运费模板名称',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '是否是默认模板',
  `co_id` int(11) NOT NULL DEFAULT '0' COMMENT '物流公司ID',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `province_id_array` text NOT NULL COMMENT '省ID组',
  `city_id_array` text NOT NULL COMMENT '市ID组',
  `weight_is_use` int(11) NOT NULL DEFAULT '1' COMMENT '是否启用重量运费',
  `weight_snum` decimal(8,2) NOT NULL DEFAULT '1.00' COMMENT '首重',
  `weight_sprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '首重运费',
  `weight_xnum` decimal(8,2) NOT NULL DEFAULT '1.00' COMMENT '续重',
  `weight_xprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '续重运费',
  `volume_is_use` int(11) NOT NULL DEFAULT '1' COMMENT '是否启用体积计算运费',
  `volume_snum` decimal(8,2) NOT NULL DEFAULT '1.00' COMMENT '首体积量',
  `volume_sprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '首体积运费',
  `volume_xnum` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '续体积量',
  `volume_xprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '续体积运费',
  `bynum_is_use` int(11) NOT NULL DEFAULT '1' COMMENT '是否启用计件方式运费',
  `bynum_snum` int(11) NOT NULL DEFAULT '0' COMMENT '首件',
  `bynum_sprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '首件运费',
  `bynum_xnum` int(11) NOT NULL DEFAULT '1' COMMENT '续件',
  `bynum_xprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '续件运费',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `update_time` int(11) DEFAULT '0' COMMENT '最后更新时间',
  `district_id_array` text COMMENT '区县ID组',
  PRIMARY KEY (`shipping_fee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='运费模板';

-- ----------------------------
-- Records of ns_order_shipping_fee
-- ----------------------------
INSERT INTO `ns_order_shipping_fee` VALUES ('1', '小裁载运', '1', '1', '0', '', '', '1', '2.00', '2.00', '3.00', '3.00', '1', '1.00', '1.00', '3.00', '3.00', '1', '1', '1.00', '2', '2.00', '1530841201', '0', '');
INSERT INTO `ns_order_shipping_fee` VALUES ('2', '运费模板', '1', '2', '0', '', '', '1', '10.00', '10.00', '20.00', '20.00', '1', '10.00', '10.00', '20.00', '20.00', '1', '10', '10.00', '20', '20.00', '1531276984', '0', '');

-- ----------------------------
-- Table structure for `ns_order_shop_return`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_shop_return`;
CREATE TABLE `ns_order_shop_return` (
  `shop_id` int(11) NOT NULL,
  `shop_address` varchar(255) NOT NULL DEFAULT '' COMMENT '商家地址',
  `seller_name` varchar(50) NOT NULL DEFAULT '' COMMENT '收件人',
  `seller_mobile` varchar(30) NOT NULL DEFAULT '' COMMENT '收件人手机号',
  `seller_zipcode` varchar(20) NOT NULL DEFAULT '' COMMENT '邮编',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='店铺退货设置';

-- ----------------------------
-- Records of ns_order_shop_return
-- ----------------------------
INSERT INTO `ns_order_shop_return` VALUES ('0', '北美小村林', '东小平', '1835698454', '774585', '1530840639', '1531276179');

-- ----------------------------
-- Table structure for `ns_pickup_point`
-- ----------------------------
DROP TABLE IF EXISTS `ns_pickup_point`;
CREATE TABLE `ns_pickup_point` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `name` varchar(255) NOT NULL COMMENT '自提点名称',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '自提点地址',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '联系电话',
  `city_id` int(11) NOT NULL COMMENT '市ID',
  `province_id` int(11) NOT NULL COMMENT '省ID',
  `district_id` int(11) NOT NULL COMMENT '区县ID',
  `supplier_id` int(11) NOT NULL DEFAULT '0' COMMENT '供应门店ID',
  `longitude` varchar(255) NOT NULL DEFAULT '' COMMENT '经度',
  `latitude` varchar(255) NOT NULL DEFAULT '' COMMENT '维度',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='自提点管理';

-- ----------------------------
-- Records of ns_pickup_point
-- ----------------------------
INSERT INTO `ns_pickup_point` VALUES ('1', '0', '菜鸟驿站208', '菜鸟驿站', '小小鸟', '880718', '233', '21', '1997', '0', '', '', '1530841073');

-- ----------------------------
-- Table structure for `ns_platform_adv`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_adv`;
CREATE TABLE `ns_platform_adv` (
  `adv_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告自增标识编号',
  `ap_id` mediumint(8) unsigned NOT NULL COMMENT '广告位id',
  `adv_title` varchar(255) NOT NULL DEFAULT '' COMMENT '广告内容描述',
  `adv_url` text,
  `adv_image` varchar(1000) NOT NULL DEFAULT '' COMMENT '广告内容图片',
  `slide_sort` int(11) DEFAULT NULL,
  `click_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告点击率',
  `background` varchar(255) NOT NULL DEFAULT '#FFFFFF' COMMENT '背景色',
  `adv_code` text NOT NULL COMMENT '广告代码',
  PRIMARY KEY (`adv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='广告表';

-- ----------------------------
-- Records of ns_platform_adv
-- ----------------------------
INSERT INTO `ns_platform_adv` VALUES ('1', '6666', '贪玩蓝月', 'http://localhost/shopping9/index.php?s=/admin/system/addshopadv&amp;type=1', 'upload/image_collection/1530839634.jpeg', '0', '0', '#000000', '');
INSERT INTO `ns_platform_adv` VALUES ('2', '1105', '鲲之国度', 'http://localhost/shopping9/index.php?s=/admin/system/addshopadv&amp;type=2', 'upload/image_collection/1530839678.jpg', '0', '0', '#000000', '');
INSERT INTO `ns_platform_adv` VALUES ('3', '1053', '王者荣鸟', 'http://localhost/shopping9/index.php?s=/admin/system/addshopadv&amp;type=1', 'upload/image_collection/1531275614.png', '0', '0', '#000000', '');

-- ----------------------------
-- Table structure for `ns_platform_adv_position`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_adv_position`;
CREATE TABLE `ns_platform_adv_position` (
  `ap_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告位置id',
  `ap_name` varchar(100) NOT NULL COMMENT '广告位置名',
  `ap_intro` varchar(255) NOT NULL COMMENT '广告位简介',
  `ap_class` smallint(1) unsigned NOT NULL COMMENT '广告类别：0图片1文字2幻灯3Flash',
  `ap_display` smallint(1) unsigned NOT NULL COMMENT '广告展示方式：0幻灯片1多广告展示2单广告展示',
  `is_use` smallint(1) unsigned NOT NULL COMMENT '广告位是否启用：0不启用1启用',
  `ap_height` int(10) NOT NULL COMMENT '广告位高度',
  `ap_width` int(10) NOT NULL COMMENT '广告位宽度',
  `ap_price` int(10) NOT NULL DEFAULT '0' COMMENT '广告位单价',
  `adv_num` int(10) NOT NULL DEFAULT '0' COMMENT '拥有的广告数',
  `click_num` int(10) NOT NULL DEFAULT '0' COMMENT '广告位点击率',
  `default_content` varchar(300) DEFAULT NULL,
  `ap_background_color` varchar(50) NOT NULL DEFAULT '#FFFFFF' COMMENT '广告位背景色 默认白色',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '广告位所在位置类型   1 pc端  2 手机端',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `is_del` int(11) DEFAULT '0',
  `ap_keyword` varchar(100) NOT NULL DEFAULT '' COMMENT '广告位关键字',
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6674 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='广告位表';

-- ----------------------------
-- Records of ns_platform_adv_position
-- ----------------------------
INSERT INTO `ns_platform_adv_position` VALUES ('1051', '商城首页最顶部广告位', '商城首页最顶部广告位', '0', '2', '1', '1000', '1000', '0', '0', '0', '', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1052', '商城首页logo右侧小广告', '商城首页logo右侧小广告', '0', '2', '1', '90', '170', '0', '0', '0', 'public/static/images/default_img_url/shouyelogo.png', '#FFFFFF', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1053', '商城首页滚动图广告位', '商城首页滚动图广告位', '0', '2', '1', '443', '800', '0', '0', '0', '', '#FFFFFF', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1054', '商城首页中部推荐广告位', '商城首页中部推荐广告位（140*242）', '0', '2', '1', '140', '242', '0', '0', '0', '', '', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1056', '商城限时折扣轮播广告位', '商城限时折扣轮播广告位', '0', '2', '1', '443', '1903', '0', '0', '0', 'public/static/images/default_img_url/xianshizhekou.png', '#FFFFFF', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1075', '商城品牌专区轮播广告位', '商城品牌专区轮播广告位', '0', '0', '1', '443', '1210', '0', '0', '0', 'public/static/images/default_img_url/pinpaizhuanqu.png', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1076', '商城积分中心轮播广告位', '商城积分中心轮播广告位', '0', '2', '1', '320', '910', '0', '0', '0', 'public/static/images/default_img_url/jifenzhongxin.jpg', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1102', '商城积分中心中部广告位', '商城积分中心中部广告位', '0', '2', '1', '60', '1210', '0', '0', '0', 'public/static/images/default_img_url/jifenzhongxinzhongbu.jpg', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1103', '商城登录页面轮播广告位', '商城登录页面轮播广告位', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1105', '手机端首页轮播广告位', '手机端首页轮播广告位', '0', '1', '1', '175', '320', '0', '0', '0', 'public/static/images/default_img_url/waplunbo.png', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1152', '手机端会员中心广告位', '手机端会员中心广告位', '0', '2', '1', '100', '750', '0', '0', '0', 'public/static/images/default_img_url/waphuiyuanzhongxin.png', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1162', '手机端品牌专区广告位', '品牌专区广告', '0', '2', '1', '192', '720', '0', '0', '0', 'public/static/images/default_img_url/wappinpaizhuanqu.png', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1163', '手机端限时折扣专区广告位', '限时折扣专区广告位', '0', '2', '1', '130', '720', '0', '0', '0', 'public/static/images/default_img_url/wapxianshizhekou.png', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1164', '手机端首页商城热卖广告位', '手机端商城热卖', '0', '2', '1', '100', '100', '0', '0', '0', 'public/static/images/default_img_url/wapshangchengremai.png', '#000000', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1165', '手机端积分中心广告位', '积分中心广告位', '0', '2', '1', '100', '100', '0', '0', '0', 'public/static/images/default_img_url/wapjifenzhongxin.png', '#000000', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('6666', '商城促销专区轮播广告位', '促销专区广告位', '0', '0', '1', '443', '1210', '0', '0', '0', 'upload/image_collection/1513820257.png', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('6667', '手机端标签专区广告位', '手机端标签专区广告位', '0', '2', '1', '192', '720', '0', '0', '0', 'upload/image_collection/1519813844.png', '#000000', '2', '0', '1', 'goodsLabel');
INSERT INTO `ns_platform_adv_position` VALUES ('6668', '商城注册页面广告位', '商城注册页面广告位', '0', '2', '1', '220', '420', '0', '0', '0', 'upload/image_collection/1522752723.png', '#ffffff', '1', '0', '1', 'pcRegisterAdv');
INSERT INTO `ns_platform_adv_position` VALUES ('6669', '手机端登录注册广告位', '手机端登录注册广告位', '0', '2', '1', '100', '100', '0', '0', '0', 'upload/image_collection/1522752598.png', '#ffffff', '2', '0', '1', 'wapLogAndRegAdv');
INSERT INTO `ns_platform_adv_position` VALUES ('6670', '团购专区广告位', '团购专区广告位', '0', '0', '1', '443', '1210', '0', '0', '0', 'upload/image_collection/1522752990.png', '#000000', '2', '0', '1', 'groupBuyArea');
INSERT INTO `ns_platform_adv_position` VALUES ('6671', '专题活动广告位', '专题活动广告位', '0', '0', '1', '443', '1210', '0', '0', '0', 'upload/image_collection/1522752990.png', '#000000', '2', '0', '1', 'promotionTopic');
INSERT INTO `ns_platform_adv_position` VALUES ('6672', '手机端专题活动广告位', '手机端专题活动广告位', '0', '2', '1', '192', '720', '0', '0', '0', 'upload/image_collection/1519813844.png', '#000000', '2', '0', '1', 'wapPromotionTopic');
INSERT INTO `ns_platform_adv_position` VALUES ('6673', '抖音还能火多久', '你别皱眉，我走就是了。。。', '0', '0', '1', '200', '100', '0', '0', '0', 'upload/image_collection/1530839870.jpg', '#ff0080', '2', '0', '0', 'dy');

-- ----------------------------
-- Table structure for `ns_platform_block`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_block`;
CREATE TABLE `ns_platform_block` (
  `block_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_display` smallint(4) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `block_color` varchar(255) NOT NULL COMMENT '颜色风格',
  `sort` int(11) DEFAULT NULL,
  `block_name` varchar(50) NOT NULL DEFAULT '' COMMENT '板块名称',
  `block_short_name` varchar(50) DEFAULT NULL COMMENT '板块简称',
  `recommend_ad_image_name` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐单图广告位名称',
  `recommend_ad_image` int(11) NOT NULL DEFAULT '0' COMMENT '推荐单图广告位',
  `recommend_ad_slide_name` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐幻灯广告位名称',
  `recommend_ad_slide` int(11) NOT NULL COMMENT '推荐幻灯广告位',
  `recommend_ad_images_name` varchar(255) NOT NULL DEFAULT '0' COMMENT '推荐多图广告位名称',
  `recommend_ad_images` int(11) NOT NULL DEFAULT '0' COMMENT '推荐多图广告位',
  `recommend_brands` varchar(255) NOT NULL DEFAULT '' COMMENT '推荐品牌',
  `recommend_categorys` varchar(255) NOT NULL DEFAULT '' COMMENT '推荐商品分类',
  `recommend_goods_category_name_1` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐分类商品别名',
  `recommend_goods_category_1` int(11) NOT NULL DEFAULT '0' COMMENT '推荐显示商品分类',
  `recommend_goods_category_name_2` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐分类商品别名',
  `recommend_goods_category_2` int(11) NOT NULL DEFAULT '0' COMMENT '推荐显示商品分类',
  `recommend_goods_category_name_3` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐分类商品别名',
  `recommend_goods_category_3` int(11) NOT NULL DEFAULT '0' COMMENT '推荐显示商品分类',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `block_data` longtext COMMENT '板块数据',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='首页促销板块';

-- ----------------------------
-- Records of ns_platform_block
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_platform_goods_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_goods_recommend`;
CREATE TABLE `ns_platform_goods_recommend` (
  `recommend_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) NOT NULL COMMENT '推荐商品ID',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '推荐状态',
  `class_id` int(11) NOT NULL DEFAULT '1' COMMENT '推荐类型',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`recommend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=442 COMMENT='平台商品推荐';

-- ----------------------------
-- Records of ns_platform_goods_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_platform_goods_recommend_class`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_goods_recommend_class`;
CREATE TABLE `ns_platform_goods_recommend_class` (
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `class_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类型名称',
  `class_type` int(11) NOT NULL DEFAULT '1' COMMENT '推荐模块1.系统固有模块2.平台增加模块',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否使用',
  `sort` int(11) NOT NULL DEFAULT '255' COMMENT '排序号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `show_type` int(11) NOT NULL DEFAULT '0' COMMENT '展示类型  0电脑端  1手机端',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='店铺商品推荐类别';

-- ----------------------------
-- Records of ns_platform_goods_recommend_class
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_platform_help_class`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_help_class`;
CREATE TABLE `ns_platform_help_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1.帮助类别2.会员协议类别3.开店协议类别',
  `class_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类型名称',
  `parent_class_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='平台说明类型';

-- ----------------------------
-- Records of ns_platform_help_class
-- ----------------------------
INSERT INTO `ns_platform_help_class` VALUES ('1', '1', '新手上路', '0', '1');
INSERT INTO `ns_platform_help_class` VALUES ('2', '1', '配送与支付', '0', '2');
INSERT INTO `ns_platform_help_class` VALUES ('3', '1', '会员中心', '0', '3');
INSERT INTO `ns_platform_help_class` VALUES ('4', '1', '服务保证', '0', '4');
INSERT INTO `ns_platform_help_class` VALUES ('5', '1', '联系我们', '0', '5');

-- ----------------------------
-- Table structure for `ns_platform_help_document`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_help_document`;
CREATE TABLE `ns_platform_help_document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `uid` int(11) NOT NULL COMMENT '最后修改人ID',
  `class_id` int(11) NOT NULL COMMENT '所属说明类型ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '主题',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modufy_time` int(11) DEFAULT '0' COMMENT '修改时间',
  `is_visibility` int(11) DEFAULT '1' COMMENT '是否可见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='平台说明内容';

-- ----------------------------
-- Records of ns_platform_help_document
-- ----------------------------
INSERT INTO `ns_platform_help_document` VALUES ('1', '87', '1', '购物流程', '', '0', '', '', '0', '1498471779', '1');
INSERT INTO `ns_platform_help_document` VALUES ('2', '2', '2', '支付方式说明', '', '5', '<p>支付方式说明</p>', '', '0', '1493810155', '1');
INSERT INTO `ns_platform_help_document` VALUES ('3', '87', '3', '售后流程', '', '1', '', '', '0', '1499240296', '1');
INSERT INTO `ns_platform_help_document` VALUES ('5', '2', '3', '资金管理', '', '6', '<p>资金管理</p>', '', '0', '1493964639', '1');
INSERT INTO `ns_platform_help_document` VALUES ('6', '2', '3', '我的收藏', '', '7', '<p>我的收藏</p>', '', '0', '1493809215', '1');
INSERT INTO `ns_platform_help_document` VALUES ('7', '2', '2', '货到付款区域', '', '3', '<p>货到付款区域</p>', '', '1487559901', '1493810113', '1');
INSERT INTO `ns_platform_help_document` VALUES ('8', '2', '2', '配送支付智能查询', '', '4', '<p>配送支付智能查询</p>', '', '1487559942', '1493810133', '1');
INSERT INTO `ns_platform_help_document` VALUES ('9', '2', '4', '退换货原则', '', '9', '<p>退换货原则</p>', '', '1487560238', '1493809406', '1');
INSERT INTO `ns_platform_help_document` VALUES ('10', '2', '4', '售后服务保证', '', '9', '<p>售后服务保证</p>', '', '1487560263', '1493809427', '1');
INSERT INTO `ns_platform_help_document` VALUES ('11', '2', '4', '产品质量保证', '', '10', '<p>产品质量保证</p>', '', '1487560296', '1493809443', '1');
INSERT INTO `ns_platform_help_document` VALUES ('12', '2', '5', '网站故障报告', '', '11', '<p>网站故障报告</p>', '', '1487560338', '1493809546', '1');
INSERT INTO `ns_platform_help_document` VALUES ('13', '87', '13', '订购方式', '', '2', '', '', '1493206148', '1498469763', '1');
INSERT INTO `ns_platform_help_document` VALUES ('14', '1', '3', '我的订单', '', '8', '<p>我的订单</p>', '', '1493809066', '1497102958', '1');
INSERT INTO `ns_platform_help_document` VALUES ('15', '2', '5', '选机咨询', '', '12', '<p>选机咨询</p>', '', '1493809482', '1493809565', '1');
INSERT INTO `ns_platform_help_document` VALUES ('16', '2', '5', '投诉与建议', '', '13', '<p>投诉与建议</p>', '', '1493809511', '1493964721', '1');
INSERT INTO `ns_platform_help_document` VALUES ('17', '87', '6', '用户注册协议', '', '0', '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, &quot;Lucida Grande&quot;, Verdana, Lucida, Helvetica, Arial, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">牛酷商城用户注册协议本协议是您与牛酷商城网站（简称&quot;本站&quot;）所有者（以下简称为&quot;牛酷商城&quot;）之间就牛酷商城网站服务等相关事宜所订立的契约，请您仔细阅读本注册协议，您点击&quot;同意并继续&quot;按钮后，本协议即构成对双方有约束力的法律文件。第1条 本站服务条款的确认和接纳1.1本站的各项电子服务的所有权和运作权归牛酷商城所有。用户同意所有注册协议条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的契约，始终有效，法律另有强制性规定或双方另有特别约定的，依其规定。1.2用户点击同意本协议的，即视为用户确认自己具有享受本站服务、下单购物等相应的权利能力和行为能力，能够独立承担法律责任。1.3如果您在18周岁以下，您只能在父母或监护人的监护参与下才能使用本站。第2条 本站服务2.1牛酷商城通过互联网依法为用户提供互联网信息等服务，用户在完全同意本协议及本站规定的情况下，方有权使用本站的相关服务。2.2用户必须自行准备如下设备和承担如下开支：（1）上网设备，包括并不限于电脑或者其他上网终端、调制解调器及其他必备的上网装置；（2）上网开支，包括并不限于网络接入费、上网设备租用费、手机流量费等。第3条 用户信息3.1用户应自行诚信向本站提供注册资料，用户同意其提供的注册资料真实、准确、完整、合法有效，用户注册资料如有变动的，应及时更新其注册资料。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且牛酷商城保留终止用户使用牛酷商城各项服务的权利。3.2用户在本站进行浏览、下单购物等活动时，涉及用户真实姓名/名称、通信地址、联系电话、电子邮箱等隐私信息的，本站将予以严格保密，除非得到用户的授权或法律另有规定，本站不会向外界披露用户隐私信息。第4条 用户依法言行义务本协议依据国家相关法律法规规章制定，用户同意严格遵守以下义务：（1）不得传输或发表：煽动抗拒、破坏宪法和法律、行政法规实施的言论，煽动颠覆国家政权，推翻社会主义制度的言论，煽动分裂国家、破坏国家统一的的言论，煽动民族仇恨、民族歧视、破坏民族团结的言论；（2）从中国大陆向境外传输资料信息时必须符合中国有关法规；第5条 其他5.1牛酷商城网站所有者是指在政府部门依法许可或备案的牛酷商城网站经营主体。5.2您点击本协议下方的&quot;同意并继续&quot;按钮即视为您完全接受本协议，在点击之前请您再次确认已知悉并完全理解本协议的全部内容。</span></p>', '', '1499325553', '1499325616', '1');
INSERT INTO `ns_platform_help_document` VALUES ('18', '2', '5', '售后服务', '', '0', '<p>售后服务</p>', '', '1530840170', '1530840170', '1');
INSERT INTO `ns_platform_help_document` VALUES ('19', '2', '1', '我也不会用自己去查', '', '0', '<p>.........................................................</p>', '', '1531275968', '1531275968', '1');

-- ----------------------------
-- Table structure for `ns_platform_link`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_link`;
CREATE TABLE `ns_platform_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引id',
  `link_title` varchar(100) NOT NULL COMMENT '标题',
  `link_url` varchar(100) NOT NULL COMMENT '链接',
  `link_pic` varchar(100) NOT NULL COMMENT '图片',
  `link_sort` int(11) DEFAULT NULL,
  `is_blank` int(11) NOT NULL DEFAULT '1' COMMENT '是否新窗口打开 1.是 2.否',
  `is_show` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示 1.是 2.否',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=50 COMMENT='友情链接表';

-- ----------------------------
-- Records of ns_platform_link
-- ----------------------------
INSERT INTO `ns_platform_link` VALUES ('1', '百度', 'http://localhost/shopping9/index.php?s=/admin/config/addlink', 'upload/common/1530840217.jpg', '0', '0', '0');
INSERT INTO `ns_platform_link` VALUES ('2', '优酷', 'www.youku.com', 'upload/common/1531275998.jpg', '0', '0', '0');

-- ----------------------------
-- Table structure for `ns_point_config`
-- ----------------------------
DROP TABLE IF EXISTS `ns_point_config`;
CREATE TABLE `ns_point_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `is_open` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否启动',
  `convert_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '1积分对应金额',
  `desc` text NOT NULL COMMENT '积分说明',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='积分设置表';

-- ----------------------------
-- Records of ns_point_config
-- ----------------------------
INSERT INTO `ns_point_config` VALUES ('1', '0', '1', '99.00', '100积分抵0.9元', '1530783327', '1531274557');

-- ----------------------------
-- Table structure for `ns_promotion_bundling`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_bundling`;
CREATE TABLE `ns_promotion_bundling` (
  `bl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合ID',
  `bl_name` varchar(50) NOT NULL COMMENT '组合名称',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `shop_name` varchar(100) NOT NULL COMMENT '店铺名称',
  `bl_price` decimal(10,2) NOT NULL COMMENT '商品组合价格',
  `shipping_fee_type` tinyint(1) NOT NULL COMMENT '运费承担方式 1卖家承担运费 2买家承担运费',
  `shipping_fee` decimal(10,2) NOT NULL COMMENT '运费',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '组合状态 0-关闭/1-开启',
  PRIMARY KEY (`bl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组合销售活动表';

-- ----------------------------
-- Records of ns_promotion_bundling
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_bundling_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_bundling_goods`;
CREATE TABLE `ns_promotion_bundling_goods` (
  `bl_goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合商品id',
  `bl_id` int(11) NOT NULL COMMENT '组合id',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_picture` varchar(100) NOT NULL COMMENT '商品图片',
  `bl_goods_price` decimal(10,2) NOT NULL COMMENT '商品组合价格',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`bl_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组合销售活动商品表';

-- ----------------------------
-- Records of ns_promotion_bundling_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_discount`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_discount`;
CREATE TABLE `ns_promotion_discount` (
  `discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `shop_name` varchar(50) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `discount_name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '活动状态(0-未发布/1-正常/3-关闭/4-结束)',
  `remark` text NOT NULL COMMENT '备注',
  `start_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='限时折扣';

-- ----------------------------
-- Records of ns_promotion_discount
-- ----------------------------
INSERT INTO `ns_promotion_discount` VALUES ('1', '0', 'Niushop开源商城', '有种你就来', '4', '', '1530783490', '1532684292', '1530783500', '0');
INSERT INTO `ns_promotion_discount` VALUES ('2', '0', 'Niushop开源商城', '关爱老会员', '4', '', '1531274713', '1533953116', '1531274727', '0');

-- ----------------------------
-- Table structure for `ns_promotion_discount_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_discount_goods`;
CREATE TABLE `ns_promotion_discount_goods` (
  `discount_goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `discount_id` int(11) NOT NULL COMMENT '对应活动',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `discount` decimal(10,2) NOT NULL COMMENT '活动折扣或者减现信息',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_picture` int(11) NOT NULL COMMENT '商品图片',
  `start_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  PRIMARY KEY (`discount_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=712 COMMENT='限时折扣商品列表';

-- ----------------------------
-- Records of ns_promotion_discount_goods
-- ----------------------------
INSERT INTO `ns_promotion_discount_goods` VALUES ('1', '1', '3', '4', '9.99', '2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生', '10', '1530783490', '1532684292');
INSERT INTO `ns_promotion_discount_goods` VALUES ('2', '1', '2', '4', '9.99', '夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '8', '1530783490', '1532684292');
INSERT INTO `ns_promotion_discount_goods` VALUES ('3', '2', '7', '4', '9.99', '人生', '18', '1531274713', '1533953116');
INSERT INTO `ns_promotion_discount_goods` VALUES ('4', '2', '6', '4', '9.99', '平凡的世界', '15', '1531274713', '1533953116');
INSERT INTO `ns_promotion_discount_goods` VALUES ('5', '2', '5', '4', '9.99', '111西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服', '12', '1531274713', '1533953116');
INSERT INTO `ns_promotion_discount_goods` VALUES ('6', '2', '4', '4', '9.99', '连帽衬衫青少年学生', '11', '1531274713', '1533953116');
INSERT INTO `ns_promotion_discount_goods` VALUES ('7', '2', '3', '4', '9.99', '2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生', '10', '1531274713', '1533953116');
INSERT INTO `ns_promotion_discount_goods` VALUES ('8', '2', '1', '4', '9.99', '夏季中国风棉麻休闲短裤男加肥加大码透气中裤韩版裤子潮流五分裤', '7', '1531274713', '1533953116');

-- ----------------------------
-- Table structure for `ns_promotion_full_mail`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_full_mail`;
CREATE TABLE `ns_promotion_full_mail` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `is_open` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否开启 0未开启 1已开启',
  `full_mail_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '包邮所需订单金额',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '更新时间',
  `no_mail_province_id_array` text NOT NULL COMMENT '不包邮省id组',
  `no_mail_city_id_array` text NOT NULL COMMENT '不包邮市id组',
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='满额包邮';

-- ----------------------------
-- Records of ns_promotion_full_mail
-- ----------------------------
INSERT INTO `ns_promotion_full_mail` VALUES ('1', '0', '0', '99.00', '1530782415', '1531274800', '2,3,4,5,15,1,13,19,20,21', '2,3,12,11,10,9,8,7,6,5,4,13,14,23,22,21,20,19,18,17,16,15,24,25,35,34,33,32,31,30,29,28,27,26,36,135,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,151,1,115,116,117,118,119,120,121,122,123,197,208,210,211,212,213,214,215,216,207,206,198,199,200,201,202,203,204,205,217,209,218,230,229,228,227,226,225,224,223,222,221,220,219,231,232,233');

-- ----------------------------
-- Table structure for `ns_promotion_games`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_games`;
CREATE TABLE `ns_promotion_games` (
  `game_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '游戏id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '游戏活动名称',
  `game_type` int(11) NOT NULL DEFAULT '1' COMMENT '游戏类型',
  `member_level` varchar(255) NOT NULL DEFAULT '0' COMMENT '参与的会员等级0表示全部参与',
  `level_name` varchar(255) NOT NULL DEFAULT '' COMMENT '参与活动会员名称',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT '参与一次扣除积分',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动开始时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动结束时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '活动状态 0未开始 1已开始 -1已结束 -2已关闭',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '活动说明',
  `winning_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '中奖率',
  `no_winning_des` varchar(255) NOT NULL DEFAULT '' COMMENT '未中奖说明',
  `activity_images` varchar(255) DEFAULT '' COMMENT '活动图片，只有上传了活动图，才会在首页显示',
  `winning_list_display` int(11) NOT NULL DEFAULT '0' COMMENT '中奖名单是否显示 0不显示 1显示',
  `join_type` int(11) NOT NULL DEFAULT '0' COMMENT '参加类型 0 次/活动全过程 1 次/每天',
  `join_frequency` int(11) NOT NULL DEFAULT '1' COMMENT '根据类型计算参加次数',
  `winning_type` int(11) NOT NULL DEFAULT '0' COMMENT '中奖类型 0 次/活动全过程 1 次/每天',
  `winning_max` int(11) NOT NULL DEFAULT '1' COMMENT '根据类型计算中奖最大限制',
  PRIMARY KEY (`game_id`),
  KEY `IDX_ns_promotion_games_end_time` (`end_time`),
  KEY `IDX_ns_promotion_games_start_time` (`start_time`),
  KEY `IDX_ns_promotion_games_status` (`status`),
  KEY `IDX_ns_promotion_games_type` (`game_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='营销游戏（概率游戏）';

-- ----------------------------
-- Records of ns_promotion_games
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_games_winning_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_games_winning_records`;
CREATE TABLE `ns_promotion_games_winning_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL DEFAULT '0' COMMENT '会员id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `is_use` int(11) NOT NULL DEFAULT '0' COMMENT '是否使用',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `game_type` int(11) NOT NULL DEFAULT '1' COMMENT '游戏类型1.大转盘2.刮刮乐3.九宫格',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '奖励类型1.积分2.优惠券3.红包4.赠品...',
  `points` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '奖励积分',
  `hongbao` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '红包数（余额）',
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖励优惠券',
  `gift_id` int(11) NOT NULL DEFAULT '0' COMMENT '赠品id',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '说明',
  `is_winning` smallint(1) NOT NULL DEFAULT '0' COMMENT '该次是否中奖 0未中奖  1中奖',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '会员昵称',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `rule_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖项id',
  `associated_gift_record_id` int(11) DEFAULT '0' COMMENT '关联赠品记录id',
  PRIMARY KEY (`id`),
  KEY `IDX_ns_promotion_games_winning_records_coupon_id` (`coupon_id`),
  KEY `IDX_ns_promotion_games_winning_records_game_id` (`game_id`),
  KEY `IDX_ns_promotion_games_winning_records_gift_id` (`gift_id`),
  KEY `IDX_ns_promotion_games_winning_records_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='获奖记录';

-- ----------------------------
-- Records of ns_promotion_games_winning_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_game_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_game_rule`;
CREATE TABLE `ns_promotion_game_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `rule_num` int(11) NOT NULL DEFAULT '0' COMMENT '奖品数量',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '奖励类型1. 积分 2. 优惠券3.红包4.赠品...',
  `coupon_type_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券类型id',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT '奖励积分数',
  `hongbao` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '奖励红包数',
  `gift_id` int(11) NOT NULL DEFAULT '0' COMMENT '赠品id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '规则关键字',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `rule_name` varchar(50) NOT NULL DEFAULT '' COMMENT '奖励规则等级',
  `type_value` varchar(255) NOT NULL DEFAULT '' COMMENT '奖励的具体的对应信息名称',
  `remaining_number` int(11) DEFAULT '0' COMMENT '剩余奖品数量',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_ns_promotion_game_rule_coupon_type_id` (`coupon_type_id`),
  KEY `IDX_ns_promotion_game_rule_game_id` (`game_id`),
  KEY `IDX_ns_promotion_game_rule_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏活动规则';

-- ----------------------------
-- Records of ns_promotion_game_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_game_type`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_game_type`;
CREATE TABLE `ns_promotion_game_type` (
  `game_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类型名称',
  `type_image` varchar(255) NOT NULL DEFAULT '' COMMENT '活动类型默认背景图',
  `type_ico` varchar(255) NOT NULL DEFAULT '' COMMENT '活动小图标',
  `type_des` varchar(255) NOT NULL DEFAULT '' COMMENT '活动介绍',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_complete` int(11) NOT NULL DEFAULT '0' COMMENT '是否完成',
  `game_text` text NOT NULL,
  PRIMARY KEY (`game_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='营销游戏类型';

-- ----------------------------
-- Records of ns_promotion_game_type
-- ----------------------------
INSERT INTO `ns_promotion_game_type` VALUES ('1', '签到', 'games/promotion_game_guaguale.png', 'games/a9823df5d5cf4d748e1aa4ee47dee075.png', '每日签到领取积分或奖励', '0', '0', '<div class=\"app-preview\">\r\n			<div class=\"app-header\"></div>\r\n			<div class=\"app-entry\">\r\n				<div class=\"app-config\">\r\n					<div class=\"app-field\">\r\n\r\n						<h1>刮刮卡</h1>\r\n\r\n					</div>\r\n				</div>\r\n				<div class=\"snapshot-wrap\">\r\n					<div>\r\n						<div class=\"apps-cards-wrap\">\r\n							<div class=\"apps-cards\">\r\n								<div class=\"logo\"></div>\r\n\r\n								<div class=\"scratch-wrap\">\r\n									<div class=\"result-area\">\r\n										<div class=\"face-area\"></div>\r\n										<div class=\"result-content-wap\">\r\n											<p class=\"result-title\">真遗憾，未中奖！</p>\r\n											<p class=\"result-content\"></p>\r\n										</div>\r\n									</div>\r\n									<div class=\"scratch-area\">\r\n										<div\r\n											style=\"position: relative; width: 255px; height: 145px; cursor: default;\"></div>\r\n									</div>\r\n								</div>\r\n\r\n								<div class=\"info-area\">\r\n									<ul class=\"activity-info\">\r\n										<li>1.活动有效时间：\r\n											<div class=\"activity-info-content\">\r\n												<span data-name=\"start_time\">无</span> 至 <span\r\n													data-name=\"end_time\">无</span>\r\n											</div>\r\n										</li>\r\n\r\n										<li>2.发行方：\r\n											<div class=\"activity-info-content\" data-name=\"team_name\">大转盘</div>\r\n										</li>\r\n\r\n										<p class=\"activity-note\">\r\n											备注：中奖积分请到<span class=\"snapshot-user-center\">会员主页</span>查看<br>\r\n											<span style=\"width: 3em; display: inline-block\"></span>中奖奖品请到我的奖品查看\r\n										</p>\r\n									</ul>\r\n								</div>\r\n								<div class=\"bottom-button-area\">\r\n									<div class=\"bottom-button\">我的奖品</div>\r\n									<div class=\"bottom-button\">进店逛逛</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>');
INSERT INTO `ns_promotion_game_type` VALUES ('2', '投票调查', 'games/promotion_game_guaguale.png', 'games/32b16300c47fdea92d1efdc87189e640.png', '创建在线投票调查页面', '1', '0', '');
INSERT INTO `ns_promotion_game_type` VALUES ('3', '刮刮卡', 'games/promotion_game_guaguale.png', 'games/b4c30bad203a9ad37c92b7c52d5d422d.png', '通过刮开卡片进行抽奖的玩法', '2', '1', '<div class=\"app-preview\">\r\n			<div class=\"app-header\"></div>\r\n			<div class=\"app-entry\">\r\n				<div class=\"app-config\">\r\n					<div class=\"app-field\">\r\n\r\n						<h1>刮刮卡</h1>\r\n\r\n					</div>\r\n				</div>\r\n				<div class=\"snapshot-wrap\">\r\n					<div>\r\n						<div class=\"apps-cards-wrap\">\r\n							<div class=\"apps-cards\">\r\n								<div class=\"logo\"></div>\r\n\r\n								<div class=\"scratch-wrap\">\r\n									<div class=\"result-area\">\r\n										<div class=\"face-area\"></div>\r\n										<div class=\"result-content-wap\">\r\n											<p class=\"result-title\">真遗憾，未中奖！</p>\r\n											<p class=\"result-content\"></p>\r\n										</div>\r\n									</div>\r\n									<div class=\"scratch-area\">\r\n										<div\r\n											style=\"position: relative; width: 255px; height: 145px; cursor: default;\"></div>\r\n									</div>\r\n								</div>\r\n\r\n								<div class=\"info-area\">\r\n									<ul class=\"activity-info\">\r\n										<li>1.活动有效时间：\r\n											<div class=\"activity-info-content\">\r\n												<span data-name=\"start_time\">无</span> 至 <span\r\n													data-name=\"end_time\">无</span>\r\n											</div>\r\n										</li>\r\n\r\n										<li>2.发行方：\r\n											<div class=\"activity-info-content\" data-name=\"team_name\">大转盘</div>\r\n										</li>\r\n\r\n										<p class=\"activity-note\">\r\n											备注：中奖积分请到<span class=\"snapshot-user-center\">会员主页</span>查看<br>\r\n											<span style=\"width: 3em; display: inline-block\"></span>中奖奖品请到我的奖品查看\r\n										</p>\r\n									</ul>\r\n								</div>\r\n								<div class=\"bottom-button-area\">\r\n									<div class=\"bottom-button\">我的奖品</div>\r\n									<div class=\"bottom-button\">进店逛逛</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>');
INSERT INTO `ns_promotion_game_type` VALUES ('4', '疯狂猜', '', 'games/c974f8863a1d61b2425eea388444ce3c.png', '回答问题，按答题情况给奖励', '3', '0', '');
INSERT INTO `ns_promotion_game_type` VALUES ('5', '生肖翻翻看', '', 'games/4c799b9f1a51e9edf57fa49229c814b5.png', '通过翻卡片进行抽奖的玩法', '4', '0', '');
INSERT INTO `ns_promotion_game_type` VALUES ('6', '分场次即时抽奖', '', 'games/cb1c557a9cab0117999b370dc7eaa7e1.png', '多个场次，⽴即抽奖', '5', '0', '');
INSERT INTO `ns_promotion_game_type` VALUES ('7', '幸运砸蛋', 'games/promotion_game_zadan.png', 'games/03aa1ac9b94e2b9c47f47360e98c25c0.png', '好运砸出来', '6', '1', '');
INSERT INTO `ns_promotion_game_type` VALUES ('8', '幸运大抽奖', 'games/promotion_game_dazhuanpan.png', 'games/57ebd7f399284e9eb7f2a779bec77362.png', '常见的转盘式抽奖玩法', '7', '1', '<div class=\"app-preview\">\r\n			<div class=\"app-header\"></div>\r\n			<div class=\"app-entry\">\r\n				<div class=\"app-config\">\r\n					<div class=\"app-field\">\r\n\r\n						<h1>幸运大抽奖</h1>\r\n\r\n					</div>\r\n				</div>\r\n				<div class=\"snapshot-wrap\">\r\n					<div>\r\n						<div class=\"apps-wheel-wrap\">\r\n							<div class=\"apps-wheel\">\r\n								<div class=\"logo\"></div>\r\n								<div class=\"wheel-wrap\">\r\n									<ul class=\"wheel\">\r\n										<li class=\"wheel-row-wrap\">\r\n											<ul class=\"wheel-row\">\r\n												<li class=\"wheel-block prize4\" data-index=\"0\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n												<li class=\"wheel-block even prize-again\" data-index=\"1\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n												<li class=\"wheel-block prize2\" data-index=\"2\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n												<li class=\"wheel-block even prize3\" data-index=\"3\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n											</ul>\r\n										</li>\r\n										<li class=\"wheel-row-wrap\">\r\n											<ul class=\"wheel-row wheel-sep-row\">\r\n												<li class=\"wheel-block even prize-again\" data-index=\"11\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n												<li class=\"wheel-block prize-no\" data-index=\"4\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n											</ul>\r\n										</li>\r\n										<li class=\"wheel-row-wrap\">\r\n											<ul class=\"wheel-row wheel-sep-row\">\r\n												<li class=\"wheel-block prize3\" data-index=\"10\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n												<li class=\"wheel-block even prize1\" data-index=\"5\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n											</ul>\r\n										</li>\r\n										<li class=\"wheel-row-wrap\">\r\n											<ul class=\"wheel-row\">\r\n												<li class=\"wheel-block even prize-no\" data-index=\"9\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n												<li class=\"wheel-block prize2\" data-index=\"8\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n												<li class=\"wheel-block even prize-again\" data-index=\"7\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n												<li class=\"wheel-block prize4\" data-index=\"6\">\r\n													<div class=\"wheel-icon\"></div>\r\n												</li>\r\n											</ul>\r\n										</li>\r\n									</ul>\r\n									<div class=\"middle-button-area\">\r\n										<div class=\"middle-button js-start-btn\"></div>\r\n									</div>\r\n								</div>\r\n\r\n								<div class=\"info-area\">\r\n									<div class=\"view-prize\">查看奖品</div>\r\n									<ul class=\"activity-info\">\r\n										<li>1.活动有效时间：\r\n											<div class=\"activity-info-content\">\r\n												<span data-name=\"start_time\">2018-01-30 00:00:00</span> 至 <span\r\n													data-name=\"end_time\">2018-01-31 00:00:00</span>\r\n											</div>\r\n										</li>\r\n\r\n										<li>2.活动说明：\r\n											<div class=\"activity-info-content\" data-name=\"notice\">11</div>\r\n										</li>\r\n										<li>3.发行方：\r\n											<div class=\"activity-info-content\" data-name=\"team_name\">大转盘</div>\r\n										</li>\r\n\r\n									</ul>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>');
INSERT INTO `ns_promotion_game_type` VALUES ('9', '摇一摇', '', 'games/550ff65e15ef30d0d21db4dcad4ce49a.png', '让客户摇一摇，进行抽奖', '8', '0', '<div class=\"app-preview\">\r\n			<div class=\"app-header\"></div>\r\n			<div class=\"app-entry\">\r\n				<div class=\"app-config\">\r\n					<div class=\"app-field\">\r\n\r\n						<h1>摇一摇</h1>\r\n\r\n					</div>\r\n				</div>\r\n				<div class=\"snapshot-wrap\">\r\n					<div>\r\n						<div class=\"apps-shake-wrap\">\r\n							<div class=\"apps-shake\">\r\n								<div class=\"wheel-wrap\">\r\n									<div class=\"shake-box-container\">\r\n										<div class=\"shake-box disabled\">\r\n											<div class=\"cap cap-animate\"></div>\r\n											<div class=\"light\"></div>\r\n											<div class=\"btm\"></div>\r\n										</div>\r\n									</div>\r\n									<div class=\"desc-container\">\r\n										<div class=\"how-to-desc text-center\">摇动手机, 打开宝箱赢取奖品</div>\r\n									</div>\r\n								</div>\r\n\r\n								<div class=\"info-area\">\r\n									<ul class=\"activity-info\">\r\n										<li>1.活动有效时间：\r\n											<div class=\"activity-info-content\">\r\n												<span data-name=\"start_time\">未填</span> 至 <span\r\n													data-name=\"end_time\">未填</span>\r\n											</div>\r\n										</li>\r\n\r\n										<li>2.活动说明：\r\n											<div class=\"activity-info-content\" data-name=\"notice\">无</div>\r\n										</li>\r\n\r\n									</ul>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>');
INSERT INTO `ns_promotion_game_type` VALUES ('10', '水果机', '', 'games/e145b01457e0f0b5f77e18acee6acc05.png', '水果方格转盘抽奖', '9', '0', '');

-- ----------------------------
-- Table structure for `ns_promotion_gift`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_gift`;
CREATE TABLE `ns_promotion_gift` (
  `gift_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '赠品活动id ',
  `days` int(10) unsigned NOT NULL COMMENT '领取有效期(多少天)',
  `max_num` varchar(50) NOT NULL COMMENT '领取限制(次/人 (0表示不限领取次数))',
  `shop_id` varchar(100) NOT NULL COMMENT '店铺id',
  `gift_name` varchar(255) NOT NULL COMMENT '赠品活动名称',
  `start_time` int(11) DEFAULT '0' COMMENT '赠品有效期开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '赠品有效期结束时间',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`gift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='赠品活动表';

-- ----------------------------
-- Records of ns_promotion_gift
-- ----------------------------
INSERT INTO `ns_promotion_gift` VALUES ('1', '0', '0', '0', '罗汉果一个', '1530524193', '1530696996', '1530783410', '0');
INSERT INTO `ns_promotion_gift` VALUES ('2', '0', '0', '0', '送书', '1531274586', '1533952987', '1531274599', '0');

-- ----------------------------
-- Table structure for `ns_promotion_gift_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_gift_goods`;
CREATE TABLE `ns_promotion_gift_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id ',
  `gift_id` int(10) unsigned NOT NULL COMMENT '赠品id ',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_picture` varchar(100) NOT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='商品赠品表';

-- ----------------------------
-- Records of ns_promotion_gift_goods
-- ----------------------------
INSERT INTO `ns_promotion_gift_goods` VALUES ('1', '1', '2', '夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '8');
INSERT INTO `ns_promotion_gift_goods` VALUES ('2', '2', '6', '平凡的世界', '15');

-- ----------------------------
-- Table structure for `ns_promotion_gift_grant_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_gift_grant_records`;
CREATE TABLE `ns_promotion_gift_grant_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `uid` int(11) NOT NULL COMMENT '会员id',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '会员昵称',
  `gift_id` int(11) NOT NULL COMMENT '礼品id',
  `gift_name` varchar(255) NOT NULL DEFAULT '' COMMENT '礼品名称',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品图id',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '领取类型1.满减2.游戏...',
  `type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类型名称',
  `relate_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联id（订单id）',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='赠品发放记录';

-- ----------------------------
-- Records of ns_promotion_gift_grant_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_group_buy`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_group_buy`;
CREATE TABLE `ns_promotion_group_buy` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL COMMENT '活动名称',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动开始时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动结束时间',
  `max_num` int(11) NOT NULL DEFAULT '0' COMMENT '最大购买量',
  `min_num` int(11) NOT NULL DEFAULT '0' COMMENT '最小购买量',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '活动信息',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `modify_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购活动表';

-- ----------------------------
-- Records of ns_promotion_group_buy
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_group_buy_ladder`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_group_buy_ladder`;
CREATE TABLE `ns_promotion_group_buy_ladder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '团购id',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `group_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '团购价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购阶梯价';

-- ----------------------------
-- Records of ns_promotion_group_buy_ladder
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_mansong`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_mansong`;
CREATE TABLE `ns_promotion_mansong` (
  `mansong_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '满送活动编号',
  `mansong_name` varchar(50) NOT NULL COMMENT '活动名称',
  `shop_id` int(10) unsigned NOT NULL COMMENT '店铺编号',
  `shop_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '活动状态(0-未发布/1-正常/3-关闭/4-结束)',
  `remark` varchar(200) NOT NULL COMMENT '备注',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1.普通优惠  2.多级优惠',
  `range_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1全部商品 0部分商品',
  `start_time` int(11) DEFAULT '0' COMMENT '活动开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '活动结束时间',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`mansong_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='满就送活动表';

-- ----------------------------
-- Records of ns_promotion_mansong
-- ----------------------------
INSERT INTO `ns_promotion_mansong` VALUES ('1', '小心你后面', '0', 'Niushop开源商城', '4', '', '1', '1', '1530524233', '1532079436', '1530783468', '0');
INSERT INTO `ns_promotion_mansong` VALUES ('2', '暑期阅读会', '0', 'Niushop开源商城', '4', '', '1', '0', '1528423432', '1535767444', '1531274690', '0');
INSERT INTO `ns_promotion_mansong` VALUES ('3', '送书', '0', 'Niushop开源商城', '4', '', '1', '0', '1531191628', '1533956433', '1531278063', '0');
INSERT INTO `ns_promotion_mansong` VALUES ('4', '嵩友会', '0', 'Niushop开源商城', '4', '', '1', '0', '1530508617', '1531199823', '1531286259', '0');
INSERT INTO `ns_promotion_mansong` VALUES ('5', '歌友会', '0', 'Niushop开源商城', '4', '', '1', '1', '1530508787', '1532063991', '1531286409', '0');
INSERT INTO `ns_promotion_mansong` VALUES ('6', '纳思书院开业', '0', 'Niushop开源商城', '4', '', '1', '1', '1530595350', '1533014554', '1531286572', '0');

-- ----------------------------
-- Table structure for `ns_promotion_mansong_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_mansong_goods`;
CREATE TABLE `ns_promotion_mansong_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mansong_id` int(11) NOT NULL COMMENT '满减送ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_picture` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '活动状态',
  `start_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='满减送商品';

-- ----------------------------
-- Records of ns_promotion_mansong_goods
-- ----------------------------
INSERT INTO `ns_promotion_mansong_goods` VALUES ('1', '2', '4', '连帽衬衫青少年学生', '11', '4', '1528423432', '1535767444');
INSERT INTO `ns_promotion_mansong_goods` VALUES ('2', '2', '6', '平凡的世界', '15', '4', '1528423432', '1535767444');
INSERT INTO `ns_promotion_mansong_goods` VALUES ('3', '2', '7', '人生', '18', '4', '1528423432', '1535767444');
INSERT INTO `ns_promotion_mansong_goods` VALUES ('4', '3', '6', '平凡的世界', '15', '4', '1531191628', '1533956433');
INSERT INTO `ns_promotion_mansong_goods` VALUES ('5', '3', '7', '人生', '18', '4', '1531191628', '1533956433');
INSERT INTO `ns_promotion_mansong_goods` VALUES ('6', '4', '6', '平凡的世界', '15', '4', '1530508617', '1531199823');
INSERT INTO `ns_promotion_mansong_goods` VALUES ('7', '4', '7', '人生', '18', '4', '1530508617', '1531199823');

-- ----------------------------
-- Table structure for `ns_promotion_mansong_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_mansong_rule`;
CREATE TABLE `ns_promotion_mansong_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则编号',
  `mansong_id` int(10) unsigned NOT NULL COMMENT '活动编号',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '级别价格(满多少)',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '减现金优惠金额（减多少金额）',
  `free_shipping` tinyint(4) NOT NULL DEFAULT '0' COMMENT '免邮费',
  `give_point` int(11) NOT NULL DEFAULT '0' COMMENT '送积分数量（0表示不送）',
  `give_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '送优惠券的id（0表示不送）',
  `gift_id` int(11) NOT NULL COMMENT '礼品(赠品)id',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='满就送活动规则表';

-- ----------------------------
-- Records of ns_promotion_mansong_rule
-- ----------------------------
INSERT INTO `ns_promotion_mansong_rule` VALUES ('1', '1', '100.00', '10.00', '1', '100', '1', '0');
INSERT INTO `ns_promotion_mansong_rule` VALUES ('2', '2', '10.00', '10.00', '1', '10', '3', '2');
INSERT INTO `ns_promotion_mansong_rule` VALUES ('3', '3', '10.00', '10.00', '1', '10', '3', '2');
INSERT INTO `ns_promotion_mansong_rule` VALUES ('4', '4', '10.00', '10.00', '1', '10', '3', '2');
INSERT INTO `ns_promotion_mansong_rule` VALUES ('5', '5', '10.00', '10.00', '1', '10', '3', '0');
INSERT INTO `ns_promotion_mansong_rule` VALUES ('6', '6', '10.00', '0.00', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `ns_promotion_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_topic`;
CREATE TABLE `ns_promotion_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `shop_name` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `topic_name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `keyword` varchar(500) NOT NULL DEFAULT '' COMMENT '专题关键字',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '专题描述',
  `picture_img` varchar(255) NOT NULL DEFAULT '' COMMENT '图像地址',
  `scroll_img` varchar(255) NOT NULL DEFAULT '' COMMENT '条幅图片',
  `background_img` varchar(255) NOT NULL DEFAULT '' COMMENT '背景图',
  `background_color` varchar(255) NOT NULL DEFAULT '' COMMENT '背景色',
  `introduce` text NOT NULL COMMENT '专题介绍',
  `wap_topic_template` varchar(255) NOT NULL DEFAULT '' COMMENT '手机自定义模板',
  `pc_topic_template` varchar(255) NOT NULL DEFAULT '' COMMENT '电脑端模板',
  `is_head` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示头部0.不显示1.显示',
  `is_foot` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示底部',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-未发布/1-正常/3-关闭/4-结束',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题活动表';

-- ----------------------------
-- Records of ns_promotion_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_topic_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_topic_goods`;
CREATE TABLE `ns_promotion_topic_goods` (
  `topic_goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `topic_id` int(11) NOT NULL COMMENT '对应专题活动',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_picture` int(11) NOT NULL COMMENT '商品图片',
  PRIMARY KEY (`topic_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题活动商品表';

-- ----------------------------
-- Records of ns_promotion_topic_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_reward_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ns_reward_rule`;
CREATE TABLE `ns_reward_rule` (
  `shop_id` int(10) unsigned NOT NULL,
  `sign_point` int(11) NOT NULL DEFAULT '0' COMMENT '签到送积分',
  `share_point` int(11) NOT NULL DEFAULT '0' COMMENT '分享送积分',
  `reg_member_self_point` int(11) NOT NULL DEFAULT '0' COMMENT '注册会员 自己获得的积分',
  `reg_member_one_point` int(11) NOT NULL DEFAULT '0' COMMENT '注册会员 上级获得的积分',
  `reg_member_two_point` int(11) NOT NULL DEFAULT '0' COMMENT '注册会员 上上级获得的积分',
  `reg_member_three_point` int(11) NOT NULL DEFAULT '0' COMMENT '注册会员 上上上级获得的积分',
  `reg_promoter_self_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为推广员 自己获得的积分',
  `reg_promoter_one_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为推广员 上级获得的积分',
  `reg_promoter_two_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为推广员 上上级获得的积分',
  `reg_promoter_three_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为推广员 上上上级获得的积分',
  `reg_partner_self_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为股东 自己获得的积分',
  `reg_partner_one_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为股东 上级获得的积分',
  `reg_partner_two_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为股东 上上级获得的积分',
  `reg_partner_three_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为股东 上上上级获得的积分',
  `into_store_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '进店领用优惠券  存入优惠券id(coupon_id)',
  `share_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '分享领用优惠券  存入优惠券id(coupon_id)',
  `click_point` int(11) NOT NULL DEFAULT '0' COMMENT '点赞送积分',
  `comment_point` int(11) NOT NULL DEFAULT '0' COMMENT '评论送积分',
  `reg_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '注册送优惠券id',
  `click_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '点赞送优惠券id',
  `comment_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '评论送优惠券id',
  `sign_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '签到送优惠券id',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='奖励规则表';

-- ----------------------------
-- Records of ns_reward_rule
-- ----------------------------
INSERT INTO `ns_reward_rule` VALUES ('0', '1', '1', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3', '0');

-- ----------------------------
-- Table structure for `ns_shop`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop`;
CREATE TABLE `ns_shop` (
  `shop_id` int(11) NOT NULL COMMENT '店铺索引id',
  `shop_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `shop_type` int(11) NOT NULL COMMENT '店铺类型等级',
  `uid` int(11) NOT NULL COMMENT '会员id',
  `shop_group_id` int(11) NOT NULL COMMENT '店铺分类',
  `shop_company_name` varchar(50) DEFAULT NULL COMMENT '店铺公司名称',
  `province_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '店铺所在省份ID',
  `city_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '店铺所在市ID',
  `shop_address` varchar(100) NOT NULL DEFAULT '' COMMENT '详细地区',
  `shop_zip` varchar(10) NOT NULL DEFAULT '' COMMENT '邮政编码',
  `shop_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '店铺状态，0关闭，1开启，2审核中',
  `shop_close_info` varchar(255) DEFAULT NULL COMMENT '店铺关闭原因',
  `shop_sort` int(11) NOT NULL DEFAULT '0' COMMENT '店铺排序',
  `shop_logo` varchar(255) DEFAULT NULL COMMENT '店铺logo',
  `shop_banner` varchar(255) DEFAULT NULL COMMENT '店铺横幅',
  `shop_avatar` varchar(150) DEFAULT NULL COMMENT '店铺头像',
  `shop_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺seo关键字',
  `shop_description` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺seo描述',
  `shop_qq` varchar(50) DEFAULT NULL COMMENT 'QQ',
  `shop_ww` varchar(50) DEFAULT NULL COMMENT '阿里旺旺',
  `shop_phone` varchar(20) DEFAULT NULL COMMENT '商家电话',
  `shop_domain` varchar(50) DEFAULT NULL COMMENT '店铺二级域名',
  `shop_domain_times` tinyint(1) unsigned DEFAULT '0' COMMENT '二级域名修改次数',
  `shop_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐，0为否，1为是，默认为0',
  `shop_credit` int(10) NOT NULL DEFAULT '0' COMMENT '店铺信用',
  `shop_desccredit` float NOT NULL DEFAULT '0' COMMENT '描述相符度分数',
  `shop_servicecredit` float NOT NULL DEFAULT '0' COMMENT '服务态度分数',
  `shop_deliverycredit` float NOT NULL DEFAULT '0' COMMENT '发货速度分数',
  `shop_collect` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺收藏数量',
  `shop_stamp` varchar(200) DEFAULT NULL COMMENT '店铺印章',
  `shop_printdesc` varchar(500) DEFAULT NULL COMMENT '打印订单页面下方说明文字',
  `shop_sales` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺销售额（不计算退款）',
  `shop_account` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺账户余额',
  `shop_cash` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺可提现金额',
  `shop_workingtime` varchar(100) DEFAULT NULL COMMENT '工作时间',
  `live_store_name` varchar(255) DEFAULT NULL COMMENT '商铺名称',
  `live_store_address` varchar(255) DEFAULT NULL COMMENT '商家地址',
  `live_store_tel` varchar(255) DEFAULT NULL COMMENT '商铺电话',
  `live_store_bus` varchar(255) DEFAULT NULL COMMENT '公交线路',
  `shop_vrcode_prefix` char(3) DEFAULT NULL COMMENT '商家兑换码前缀',
  `store_qtian` tinyint(1) DEFAULT '0' COMMENT '7天退换',
  `shop_zhping` tinyint(1) DEFAULT '0' COMMENT '正品保障',
  `shop_erxiaoshi` tinyint(1) DEFAULT '0' COMMENT '两小时发货',
  `shop_tuihuo` tinyint(1) DEFAULT '0' COMMENT '退货承诺',
  `shop_shiyong` tinyint(1) DEFAULT '0' COMMENT '试用中心',
  `shop_shiti` tinyint(1) DEFAULT '0' COMMENT '实体验证',
  `shop_xiaoxie` tinyint(1) DEFAULT '0' COMMENT '消协保证',
  `shop_huodaofk` tinyint(1) DEFAULT '0' COMMENT '货到付款',
  `shop_free_time` varchar(10) DEFAULT NULL COMMENT '商家配送时间',
  `shop_region` varchar(50) DEFAULT NULL COMMENT '店铺默认配送区域',
  `recommend_uid` int(11) NOT NULL DEFAULT '0' COMMENT '推荐招商员用户id',
  `shop_qrcode` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺公众号',
  `shop_create_time` int(11) DEFAULT '0' COMMENT '店铺时间',
  `shop_end_time` int(11) DEFAULT '0' COMMENT '店铺关闭时间',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='店铺数据表';

-- ----------------------------
-- Records of ns_shop
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_ad`;
CREATE TABLE `ns_shop_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `ad_image` varchar(255) NOT NULL DEFAULT '' COMMENT '广告图片',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '类型 0 -- pc端  1-- 手机端 ',
  `background` varchar(255) NOT NULL DEFAULT '#FFFFFF' COMMENT '背景色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 COMMENT='店铺广告设置';

-- ----------------------------
-- Records of ns_shop_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_coin_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_coin_records`;
CREATE TABLE `ns_shop_coin_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `num` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '购物币数量',
  `account_type` int(11) NOT NULL DEFAULT '1' COMMENT '增加或减少类型',
  `type_alis_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联ID',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `text` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺购物币记录';

-- ----------------------------
-- Records of ns_shop_coin_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_express_address`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_express_address`;
CREATE TABLE `ns_shop_express_address` (
  `express_address_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物流地址id',
  `shop_id` int(11) NOT NULL COMMENT '商铺id',
  `contact` varchar(100) NOT NULL DEFAULT '' COMMENT '联系人',
  `mobile` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `phone` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `company_name` varchar(100) NOT NULL DEFAULT '' COMMENT '公司名称',
  `province` smallint(6) NOT NULL DEFAULT '0' COMMENT '所在地省',
  `city` smallint(6) NOT NULL DEFAULT '0' COMMENT '所在地市',
  `district` smallint(6) NOT NULL DEFAULT '0' COMMENT '所在地区县',
  `zipcode` varchar(6) NOT NULL DEFAULT '' COMMENT '邮编',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '详细地址',
  `is_consigner` tinyint(2) NOT NULL DEFAULT '0' COMMENT '发货地址标记',
  `is_receiver` tinyint(2) NOT NULL DEFAULT '0' COMMENT '收货地址标记',
  `create_date` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`express_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='物流地址';

-- ----------------------------
-- Records of ns_shop_express_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_group`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_group`;
CREATE TABLE `ns_shop_group` (
  `shop_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分组ID',
  `group_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分组名称',
  `group_sort` int(11) NOT NULL DEFAULT '1' COMMENT '分组排序号',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`shop_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2730 COMMENT='店铺分组表';

-- ----------------------------
-- Records of ns_shop_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_navigation`;
CREATE TABLE `ns_shop_navigation` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `nav_title` varchar(255) NOT NULL DEFAULT '' COMMENT '导航名称',
  `nav_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '1pc端  2手机端',
  `sort` int(11) NOT NULL COMMENT '排序号',
  `align` int(11) NOT NULL DEFAULT '1' COMMENT '横向所在位置1 左  2  右',
  `nav_type` int(11) DEFAULT '1',
  `is_blank` int(11) DEFAULT '0',
  `template_name` varchar(255) DEFAULT '',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  `nav_icon` text NOT NULL COMMENT '导航图标',
  `is_show` smallint(1) NOT NULL DEFAULT '1' COMMENT '是否显示 1显示 0不显示',
  PRIMARY KEY (`nav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='店铺导航管理';

-- ----------------------------
-- Records of ns_shop_navigation
-- ----------------------------
INSERT INTO `ns_shop_navigation` VALUES ('1', '0', '领券中心', '/goods/couponlist', '1', '0', '0', '0', '0', '领券中心', '1517565408', '1530842349', '', '1');
INSERT INTO `ns_shop_navigation` VALUES ('2', '0', '首页', '/index', '2', '0', '0', '0', '0', '首页', '1522756926', '0', 'upload/common/1522638497.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('3', '0', '商品分类', '/goods/goodsClassificationList', '2', '1', '0', '0', '0', '商品分类', '1522756926', '0', 'upload/common/1522639301.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('4', '0', '限时折扣', '/index/discount', '2', '2', '0', '0', '0', '限时折扣', '1522756926', '0', 'upload/common/1522639420.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('5', '0', '品牌专区', '/goods/brandlist', '2', '3', '0', '0', '0', '品牌专区', '1522756926', '0', 'upload/common/1522639938.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('6', '0', '标签专区', '/goods/promotionzone', '2', '4', '0', '0', '0', '标签专区', '1522756926', '0', 'upload/common/1522639973.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('7', '0', '会员中心', '/member/index', '2', '5', '0', '0', '0', '会员中心', '1522756926', '0', 'upload/common/1522640129.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('8', '0', '专题活动', '/goods/promotionTopic', '2', '7', '0', '0', '0', '专题活动', '1522756926', '0', 'upload/common/1522640297.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('9', '0', '团购专区', '/goods/groupBuyingArea', '2', '8', '0', '0', '0', '团购专区', '1522756926', '0', 'upload/common/1522640360.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('10', '0', '购物车', '/goods/cart', '2', '9', '0', '0', '0', '购物车', '1522756926', '0', 'upload/common/1522640412.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('11', '0', '清仓甩卖', '/goods/couponlist', '1', '0', '0', '0', '0', '领券中心', '1530838538', '1530843219', 'upload/common/1530838537.jpg', '1');
INSERT INTO `ns_shop_navigation` VALUES ('12', '0', '电影票团购', 'goods/promotionTopic', '1', '0', '0', '0', '0', '专题活动', '1530838608', '1531279922', 'upload/common/1530838607.jpg', '1');
INSERT INTO `ns_shop_navigation` VALUES ('13', '0', '电影票团购', '/index/discount', '2', '0', '0', '0', '0', '限时折扣', '1530838666', '1530844790', 'upload/common/1530838665.jpeg', '1');
INSERT INTO `ns_shop_navigation` VALUES ('14', '0', '季节活动', '/index', '1', '0', '0', '0', '0', '首页', '1531275422', '1531275422', 'upload/common/1531275409.jpeg', '1');

-- ----------------------------
-- Table structure for `ns_shop_navigation_template`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_navigation_template`;
CREATE TABLE `ns_shop_navigation_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模板名称',
  `template_url` varchar(255) NOT NULL DEFAULT '' COMMENT '访问路径',
  `is_use` int(11) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `use_type` int(11) NOT NULL COMMENT '1 shop端 2wap端',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 COMMENT='导航 的 系统默认模板';

-- ----------------------------
-- Records of ns_shop_navigation_template
-- ----------------------------
INSERT INTO `ns_shop_navigation_template` VALUES ('1', '首页', '/index', '1', '1', '1497706628');
INSERT INTO `ns_shop_navigation_template` VALUES ('2', '限时折扣', '/index/discount', '1', '1', '1497706628');
INSERT INTO `ns_shop_navigation_template` VALUES ('3', '品牌列表', '/goods/brandlist', '1', '1', '1497706628');
INSERT INTO `ns_shop_navigation_template` VALUES ('4', '积分中心', '/goods/integralcenter', '1', '1', '1500717235');
INSERT INTO `ns_shop_navigation_template` VALUES ('5', '标签专区', '/goods/promotionZone', '1', '1', '1500717235');
INSERT INTO `ns_shop_navigation_template` VALUES ('6', '领券中心', '/goods/couponlist', '1', '1', '1517565408');
INSERT INTO `ns_shop_navigation_template` VALUES ('7', '团购专区', 'goods/groupBuyingArea', '1', '1', '1522756914');
INSERT INTO `ns_shop_navigation_template` VALUES ('8', '专题活动', 'goods/promotionTopic', '1', '1', '1522756914');
INSERT INTO `ns_shop_navigation_template` VALUES ('9', '首页', '/index', '1', '2', '1522756925');
INSERT INTO `ns_shop_navigation_template` VALUES ('10', '商品分类', '/goods/goodsClassificationList', '1', '2', '1522756925');
INSERT INTO `ns_shop_navigation_template` VALUES ('11', '限时折扣', '/index/discount', '1', '2', '1522756925');
INSERT INTO `ns_shop_navigation_template` VALUES ('12', '品牌专区', '/goods/brandlist', '1', '2', '1522756925');
INSERT INTO `ns_shop_navigation_template` VALUES ('13', '标签专区', '/goods/promotionzone', '1', '2', '1522756925');
INSERT INTO `ns_shop_navigation_template` VALUES ('14', '会员中心', '/member/index', '1', '2', '1522756925');
INSERT INTO `ns_shop_navigation_template` VALUES ('15', '专题活动', '/goods/promotionTopic', '1', '2', '1522756925');
INSERT INTO `ns_shop_navigation_template` VALUES ('16', '团购专区', '/goods/groupBuyingArea', '1', '2', '1522756925');
INSERT INTO `ns_shop_navigation_template` VALUES ('17', '购物车', '/goods/cart', '1', '2', '1522756925');

-- ----------------------------
-- Table structure for `ns_shop_order_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_order_account_records`;
CREATE TABLE `ns_shop_order_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `order_no` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_goods_id` int(11) NOT NULL COMMENT '订单项ID',
  `goods_pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单项实际支付金额',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品平台佣金比率',
  `shop_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺获取金额',
  `platform_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台获取金额',
  `is_refund` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否产生退款',
  `refund_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际退款金额',
  `shop_refund_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺扣减余额',
  `platform_refund_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台扣减余额',
  `is_issue` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已经结算',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=655 COMMENT='店铺针对订单的金额分配';

-- ----------------------------
-- Records of ns_shop_order_account_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_weixin_share`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_weixin_share`;
CREATE TABLE `ns_shop_weixin_share` (
  `shop_id` int(11) NOT NULL,
  `goods_param_1` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分享价格标示',
  `goods_param_2` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分享内容',
  `shop_param_1` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分享标题',
  `shop_param_2` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分享主题',
  `shop_param_3` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分享内容',
  `qrcode_param_1` varchar(255) NOT NULL DEFAULT '' COMMENT '二维码分享主题',
  `qrcode_param_2` varchar(255) NOT NULL DEFAULT '' COMMENT '二维码分享内容',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='店铺分享内容设置';

-- ----------------------------
-- Records of ns_shop_weixin_share
-- ----------------------------
INSERT INTO `ns_shop_weixin_share` VALUES ('0', '清仓大甩卖', '好吧我没钱', '', '', '', '等等', '等等');

-- ----------------------------
-- Table structure for `ns_supplier`
-- ----------------------------
DROP TABLE IF EXISTS `ns_supplier`;
CREATE TABLE `ns_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `supplier_name` varchar(50) NOT NULL DEFAULT '' COMMENT '供货商名称',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '供货商描述',
  `linkman_tel` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人电话',
  `linkman_name` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人姓名',
  `linkman_address` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人地址',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='供货商表';

-- ----------------------------
-- Records of ns_supplier
-- ----------------------------
INSERT INTO `ns_supplier` VALUES ('1', '0', '风华正冒', '诚信第一', '18356985474', '孙德鑫', '东仁小学');
INSERT INTO `ns_supplier` VALUES ('2', '0', '理销登顺', '不好,啰里啰嗦', '18356985412', '张小图', '地狺十界');

-- ----------------------------
-- Table structure for `ns_verification_person`
-- ----------------------------
DROP TABLE IF EXISTS `ns_verification_person`;
CREATE TABLE `ns_verification_person` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='核销人员表';

-- ----------------------------
-- Records of ns_verification_person
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_virtual_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_virtual_goods`;
CREATE TABLE `ns_virtual_goods` (
  `virtual_goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `virtual_code` varbinary(255) NOT NULL COMMENT '虚拟码',
  `virtual_goods_name` varchar(255) NOT NULL COMMENT '虚拟商品名称',
  `money` decimal(10,2) NOT NULL COMMENT '虚拟商品金额',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `buyer_nickname` varchar(255) NOT NULL COMMENT '买家名称',
  `order_goods_id` int(11) NOT NULL COMMENT '关联订单项id',
  `order_no` varchar(255) NOT NULL COMMENT '订单编号',
  `validity_period` int(11) NOT NULL COMMENT '有效期/天(0表示不限制)',
  `start_time` int(11) NOT NULL COMMENT '有效期开始时间',
  `end_time` int(11) NOT NULL COMMENT '有效期结束时间',
  `use_number` int(11) NOT NULL COMMENT '使用次数',
  `confine_use_number` int(11) NOT NULL COMMENT '限制使用次数',
  `use_status` tinyint(1) NOT NULL COMMENT '使用状态(-1:已过期,0:未使用,1:已使用)',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  PRIMARY KEY (`virtual_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟商品列表(用户下单支成功后存放)';

-- ----------------------------
-- Records of ns_virtual_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_virtual_goods_group`
-- ----------------------------
DROP TABLE IF EXISTS `ns_virtual_goods_group`;
CREATE TABLE `ns_virtual_goods_group` (
  `virtual_goods_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '虚拟商品分组id',
  `virtual_goods_group_name` varchar(255) NOT NULL DEFAULT '' COMMENT '虚拟商品分组名称',
  `interfaces` varchar(1000) DEFAULT '' COMMENT '接口调用地址（JSON）',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`virtual_goods_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='虚拟商品分组表';

-- ----------------------------
-- Records of ns_virtual_goods_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_virtual_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `ns_virtual_goods_type`;
CREATE TABLE `ns_virtual_goods_type` (
  `virtual_goods_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '虚拟商品类型id',
  `virtual_goods_group_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联虚拟商品分组id',
  `validity_period` int(11) NOT NULL DEFAULT '0' COMMENT '有效期/天(0表示不限制)',
  `confine_use_number` int(11) NOT NULL DEFAULT '0' COMMENT '限制使用次数',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `relate_goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联商品id',
  `value_info` varchar(1000) NOT NULL DEFAULT '' COMMENT '值详情',
  PRIMARY KEY (`virtual_goods_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ns_virtual_goods_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_virtual_goods_verification`
-- ----------------------------
DROP TABLE IF EXISTS `ns_virtual_goods_verification`;
CREATE TABLE `ns_virtual_goods_verification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '核销人员id',
  `virtual_goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户虚拟商品id',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '动作内容',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '用户虚拟商品使用状态',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '核销次数',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `verification_name` varchar(50) NOT NULL DEFAULT '' COMMENT '核销员',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '虚拟商品所有者',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '虚拟商品名称',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品所有人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟商品核销记录表';

-- ----------------------------
-- Records of ns_virtual_goods_verification
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_addons`
-- ----------------------------
DROP TABLE IF EXISTS `sys_addons`;
CREATE TABLE `sys_addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '插件名或标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `config` text COMMENT '配置',
  `author` varchar(40) DEFAULT '' COMMENT '作者',
  `version` varchar(20) DEFAULT '' COMMENT '版本号',
  `has_adminlist` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台列表',
  `has_addonslist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有插件列表',
  `content` text NOT NULL COMMENT '详情',
  `config_hook` varchar(255) NOT NULL DEFAULT '' COMMENT '自定义配置文件钩子',
  `create_time` int(11) DEFAULT '0' COMMENT '安装时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of sys_addons
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_album_class`
-- ----------------------------
DROP TABLE IF EXISTS `sys_album_class`;
CREATE TABLE `sys_album_class` (
  `album_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册id',
  `shop_id` int(10) NOT NULL DEFAULT '1' COMMENT '店铺id',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级相册ID',
  `album_name` varchar(100) NOT NULL COMMENT '相册名称',
  `album_cover` varchar(255) NOT NULL DEFAULT '' COMMENT '相册封面',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为默认相册,1代表默认',
  `sort` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='相册表';

-- ----------------------------
-- Records of sys_album_class
-- ----------------------------
INSERT INTO `sys_album_class` VALUES ('30', '0', '0', '默认相册', '6', '1', '1', '1497064831');
INSERT INTO `sys_album_class` VALUES ('31', '0', '0', '短袖T恤', '3', '0', '2', '1530781566');
INSERT INTO `sys_album_class` VALUES ('32', '0', '0', '五分马裤', '2', '0', '3', '1530781583');

-- ----------------------------
-- Table structure for `sys_album_picture`
-- ----------------------------
DROP TABLE IF EXISTS `sys_album_picture`;
CREATE TABLE `sys_album_picture` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册图片表id',
  `shop_id` int(10) unsigned DEFAULT '1' COMMENT '所属实例id',
  `album_id` int(10) unsigned NOT NULL COMMENT '相册id',
  `is_wide` int(11) NOT NULL DEFAULT '0' COMMENT '是否宽屏',
  `pic_name` varchar(100) NOT NULL COMMENT '图片名称',
  `pic_tag` varchar(255) NOT NULL DEFAULT '' COMMENT '图片标签',
  `pic_cover` varchar(255) NOT NULL COMMENT '原图图片路径',
  `pic_size` varchar(255) NOT NULL COMMENT '原图大小',
  `pic_spec` varchar(100) NOT NULL COMMENT '原图规格',
  `pic_cover_big` varchar(255) NOT NULL DEFAULT '' COMMENT '大图路径',
  `pic_size_big` varchar(255) NOT NULL DEFAULT '0' COMMENT '大图大小',
  `pic_spec_big` varchar(100) NOT NULL DEFAULT '' COMMENT '大图规格',
  `pic_cover_mid` varchar(255) NOT NULL DEFAULT '' COMMENT '中图路径',
  `pic_size_mid` varchar(255) NOT NULL DEFAULT '0' COMMENT '中图大小',
  `pic_spec_mid` varchar(100) NOT NULL DEFAULT '' COMMENT '中图规格',
  `pic_cover_small` varchar(255) NOT NULL DEFAULT '' COMMENT '小图路径',
  `pic_size_small` varchar(255) NOT NULL DEFAULT '0' COMMENT '小图大小',
  `pic_spec_small` varchar(255) NOT NULL DEFAULT '' COMMENT '小图规格',
  `pic_cover_micro` varchar(255) NOT NULL DEFAULT '' COMMENT '微图路径',
  `pic_size_micro` varchar(255) NOT NULL DEFAULT '0' COMMENT '微图大小',
  `pic_spec_micro` varchar(255) NOT NULL DEFAULT '' COMMENT '微图规格',
  `upload_time` int(11) DEFAULT '0' COMMENT '图片上传时间',
  `upload_type` int(11) DEFAULT '1' COMMENT '图片外链',
  `domain` varchar(255) DEFAULT '' COMMENT '图片外链',
  `bucket` varchar(255) DEFAULT '' COMMENT '存储空间名称',
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=204 COMMENT='相册图片表';

-- ----------------------------
-- Records of sys_album_picture
-- ----------------------------
INSERT INTO `sys_album_picture` VALUES ('1', '0', '32', '0', 'TB20VGRxMaTBuNjSszfXXXgfpXa_!!2117067306', 'TB20VGRxMaTBuNjSszfXXXgfpXa_!!2117067306', 'upload/goods/20180705/05c4503d7fb790b864c0eb33ee13abde.jpg', '790,1197', '790,1197', 'upload/goods/20180705/80c7e2b24d05c70ca22b6f4198e96df01.jpg', '700,700', '700,700', 'upload/goods/20180705/80c7e2b24d05c70ca22b6f4198e96df02.jpg', '360,360', '360,360', 'upload/goods/20180705/80c7e2b24d05c70ca22b6f4198e96df03.jpg', '240,240', '240,240', 'upload/goods/20180705/80c7e2b24d05c70ca22b6f4198e96df04.jpg', '60,60', '60,60', '1530781668', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('2', '0', '32', '0', 'TB227RPyx9YBuNjy0FfXXXIsVXa_!!2606714824', 'TB227RPyx9YBuNjy0FfXXXIsVXa_!!2606714824', 'upload/goods/20180705/27d307f1faf54981a0499c9f3cd2a161.jpg', '750,1191', '750,1191', 'upload/goods/20180705/5a1404e6bb966f6fb76fff89b7385c8e1.jpg', '700,700', '700,700', 'upload/goods/20180705/5a1404e6bb966f6fb76fff89b7385c8e2.jpg', '360,360', '360,360', 'upload/goods/20180705/5a1404e6bb966f6fb76fff89b7385c8e3.jpg', '240,240', '240,240', 'upload/goods/20180705/5a1404e6bb966f6fb76fff89b7385c8e4.jpg', '60,60', '60,60', '1530781670', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('3', '0', '31', '0', 'TB2IFmQrh1YBuNjy1zcXXbNcXXa_!!699324387', 'TB2IFmQrh1YBuNjy1zcXXbNcXXa_!!699324387', 'upload/goods/20180705/7067d9a33b4285a60d83b41be3edceab.jpg', '758,1496', '758,1496', 'upload/goods/20180705/3020f84c031c43922e9d741d1db568ec1.jpg', '700,700', '700,700', 'upload/goods/20180705/3020f84c031c43922e9d741d1db568ec2.jpg', '360,360', '360,360', 'upload/goods/20180705/3020f84c031c43922e9d741d1db568ec3.jpg', '240,240', '240,240', 'upload/goods/20180705/3020f84c031c43922e9d741d1db568ec4.jpg', '60,60', '60,60', '1530781696', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('4', '0', '31', '0', 'TB2hf5brkKWBuNjy1zjXXcOypXa_!!699324387', 'TB2hf5brkKWBuNjy1zjXXcOypXa_!!699324387', 'upload/goods/20180705/02cd3195b98074b3276e66edd73d1091.jpg', '758,1495', '758,1495', 'upload/goods/20180705/790476b143caf26065cbe6d7f4ce5e511.jpg', '700,700', '700,700', 'upload/goods/20180705/790476b143caf26065cbe6d7f4ce5e512.jpg', '360,360', '360,360', 'upload/goods/20180705/790476b143caf26065cbe6d7f4ce5e513.jpg', '240,240', '240,240', 'upload/goods/20180705/790476b143caf26065cbe6d7f4ce5e514.jpg', '60,60', '60,60', '1530781698', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('5', '0', '30', '0', 'TB2aTbSxQCWBuNjy0FaXXXUlXXa_!!2117067306', 'TB2aTbSxQCWBuNjy0FaXXXUlXXa_!!2117067306', 'upload/goods/20180705/b826b2b646781977d94b6b4a9644dc81.jpg', '790,873', '790,873', 'upload/goods/20180705/8b20f2388c1465384b2fce1f2d9691171.jpg', '700,700', '700,700', 'upload/goods/20180705/8b20f2388c1465384b2fce1f2d9691172.jpg', '360,360', '360,360', 'upload/goods/20180705/8b20f2388c1465384b2fce1f2d9691173.jpg', '240,240', '240,240', 'upload/goods/20180705/8b20f2388c1465384b2fce1f2d9691174.jpg', '60,60', '60,60', '1530781727', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('6', '0', '30', '0', 'TB2c1FfApuWBuNjSszbXXcS7FXa_!!2973681982', 'TB2c1FfApuWBuNjSszbXXcS7FXa_!!2973681982', 'upload/goods/20180705/dd8e6d68a06536081b8fccd6ebea7b38.jpg', '750,1400', '750,1400', 'upload/goods/20180705/7658244b7127bb596a50085233f11cb81.jpg', '700,700', '700,700', 'upload/goods/20180705/7658244b7127bb596a50085233f11cb82.jpg', '360,360', '360,360', 'upload/goods/20180705/7658244b7127bb596a50085233f11cb83.jpg', '240,240', '240,240', 'upload/goods/20180705/7658244b7127bb596a50085233f11cb84.jpg', '60,60', '60,60', '1530781728', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('7', '0', '30', '0', 'TB227RPyx9YBuNjy0FfXXXIsVXa_!!2606714824', 'TB227RPyx9YBuNjy0FfXXXIsVXa_!!2606714824', 'upload/goods/20180705/b34c625255e18717abdddde356655c9f.jpg', '750,1191', '750,1191', 'upload/goods/20180705/7c1890ab5d315f66e349bc1a5188b9111.jpg', '700,700', '700,700', 'upload/goods/20180705/7c1890ab5d315f66e349bc1a5188b9112.jpg', '360,360', '360,360', 'upload/goods/20180705/7c1890ab5d315f66e349bc1a5188b9113.jpg', '240,240', '240,240', 'upload/goods/20180705/7c1890ab5d315f66e349bc1a5188b9114.jpg', '60,60', '60,60', '1530781993', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('8', '0', '30', '0', 'TB2IFmQrh1YBuNjy1zcXXbNcXXa_!!699324387', 'TB2IFmQrh1YBuNjy1zcXXbNcXXa_!!699324387', 'upload/goods/20180705/02248d7683e4bcb01553b595d47ac62b.jpg', '758,1496', '758,1496', 'upload/goods/20180705/cc2f0287750992d9dd994efe72adb7481.jpg', '700,700', '700,700', 'upload/goods/20180705/cc2f0287750992d9dd994efe72adb7482.jpg', '360,360', '360,360', 'upload/goods/20180705/cc2f0287750992d9dd994efe72adb7483.jpg', '240,240', '240,240', 'upload/goods/20180705/cc2f0287750992d9dd994efe72adb7484.jpg', '60,60', '60,60', '1530782196', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('9', '0', '30', '0', 'TB2oegVyf5TBuNjSspcXXbnGFXa_!!2606714824', 'TB2oegVyf5TBuNjSspcXXbnGFXa_!!2606714824', 'upload/goods/20180705/200f55a58b05e37685e92329a9a0f788.jpg', '750,1184', '750,1184', 'upload/goods/20180705/8ea0b39309128c9ce48c50db9790b9931.jpg', '700,700', '700,700', 'upload/goods/20180705/8ea0b39309128c9ce48c50db9790b9932.jpg', '360,360', '360,360', 'upload/goods/20180705/8ea0b39309128c9ce48c50db9790b9933.jpg', '240,240', '240,240', 'upload/goods/20180705/8ea0b39309128c9ce48c50db9790b9934.jpg', '60,60', '60,60', '1530782711', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('10', '0', '30', '0', 'TB2lCp.rbSYBuNjSspiXXXNzpXa_!!699324387', 'TB2lCp.rbSYBuNjSspiXXXNzpXa_!!699324387', 'upload/goods/20180705/e82a9a149e437bf95b80e99bced5ee1e.jpg', '758,1496', '758,1496', 'upload/goods/20180705/07257248e7d1ed4087da8382afcff3121.jpg', '700,700', '700,700', 'upload/goods/20180705/07257248e7d1ed4087da8382afcff3122.jpg', '360,360', '360,360', 'upload/goods/20180705/07257248e7d1ed4087da8382afcff3123.jpg', '240,240', '240,240', 'upload/goods/20180705/07257248e7d1ed4087da8382afcff3124.jpg', '60,60', '60,60', '1530783030', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('11', '0', '30', '0', 'TB2ecR.yCBYBeNjy0FeXXbnmFXa_!!2606714824 (1)', 'TB2ecR.yCBYBeNjy0FeXXbnmFXa_!!2606714824 (1)', 'upload/goods/20180705/0283454ccaedf476abfbc877972628ad.jpg', '750,1244', '750,1244', 'upload/goods/20180705/6cb9c888cd1f92d6b07cac9e00fcebcc1.jpg', '700,700', '700,700', 'upload/goods/20180705/6cb9c888cd1f92d6b07cac9e00fcebcc2.jpg', '360,360', '360,360', 'upload/goods/20180705/6cb9c888cd1f92d6b07cac9e00fcebcc3.jpg', '240,240', '240,240', 'upload/goods/20180705/6cb9c888cd1f92d6b07cac9e00fcebcc4.jpg', '60,60', '60,60', '1530783233', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('12', '0', '30', '0', 'TB2gX0mgXXXXXc3XpXXXXXXXXXX_!!908053892', 'TB2gX0mgXXXXXc3XpXXXXXXXXXX_!!908053892', 'upload/goods/20180707/e2e29dea7da3baf401ed024432b80b80.jpg', '790,824', '790,824', 'upload/goods/20180707/8bb9dccd4f582f8fc9a921a667dee4371.jpg', '700,700', '700,700', 'upload/goods/20180707/8bb9dccd4f582f8fc9a921a667dee4372.jpg', '360,360', '360,360', 'upload/goods/20180707/8bb9dccd4f582f8fc9a921a667dee4373.jpg', '240,240', '240,240', 'upload/goods/20180707/8bb9dccd4f582f8fc9a921a667dee4374.jpg', '60,60', '60,60', '1530940407', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('14', '0', '32', '0', '39da058723133938e7dd56ef4e11e6a0', '39da058723133938e7dd56ef4e11e6a0', 'upload/goods/20180711/5da28de4b09cc3f083df48d1a7b52457.jpg', '550,366', '550,366', 'upload/goods/20180711/2d9f22c24c6edb57c8b7440292088fe41.jpg', '700,700', '700,700', 'upload/goods/20180711/2d9f22c24c6edb57c8b7440292088fe42.jpg', '360,360', '360,360', 'upload/goods/20180711/2d9f22c24c6edb57c8b7440292088fe43.jpg', '240,240', '240,240', 'upload/goods/20180711/2d9f22c24c6edb57c8b7440292088fe44.jpg', '60,60', '60,60', '1531272499', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('15', '0', '30', '0', '3417eba4a659167a095c02', '3417eba4a659167a095c02', 'upload/goods/20180711/09a243a74eda9939e810a0b0ced3d19a.jpg', '400,273', '400,273', 'upload/goods/20180711/fe8d7d2943379bd76a7b03bdeea30a961.jpg', '700,700', '700,700', 'upload/goods/20180711/fe8d7d2943379bd76a7b03bdeea30a962.jpg', '360,360', '360,360', 'upload/goods/20180711/fe8d7d2943379bd76a7b03bdeea30a963.jpg', '240,240', '240,240', 'upload/goods/20180711/fe8d7d2943379bd76a7b03bdeea30a964.jpg', '60,60', '60,60', '1531274165', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('16', '0', '30', '0', '2014422155153160', '2014422155153160', 'upload/goods/20180711/8ab409b8533f8a3e7538a5eef82c1704.jpg', '506,356', '506,356', 'upload/goods/20180711/99773c54b7d52ba9338d1e4f915b31331.jpg', '700,700', '700,700', 'upload/goods/20180711/99773c54b7d52ba9338d1e4f915b31332.jpg', '360,360', '360,360', 'upload/goods/20180711/99773c54b7d52ba9338d1e4f915b31333.jpg', '240,240', '240,240', 'upload/goods/20180711/99773c54b7d52ba9338d1e4f915b31334.jpg', '60,60', '60,60', '1531274209', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('17', '0', '30', '0', 't01b3e56ca83a0c3e12', 't01b3e56ca83a0c3e12', 'upload/goods/20180711/05e78d7fb08cc8843473c698394fb7fe.jpg', '195,200', '195,200', 'upload/goods/20180711/6239c70999aeeae6267b415be65f4ef11.jpg', '700,700', '700,700', 'upload/goods/20180711/6239c70999aeeae6267b415be65f4ef12.jpg', '360,360', '360,360', 'upload/goods/20180711/6239c70999aeeae6267b415be65f4ef13.jpg', '240,240', '240,240', 'upload/goods/20180711/6239c70999aeeae6267b415be65f4ef14.jpg', '60,60', '60,60', '1531274211', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('18', '0', '30', '0', '884c64b24e1eef63911bdd30e3b6b20a', '884c64b24e1eef63911bdd30e3b6b20a', 'upload/goods/20180711/99a5e7b41804198a915d62df32f184ad.jpg', '303,221', '303,221', 'upload/goods/20180711/008412f9e548aaf1392774197b94a5eb1.jpg', '700,700', '700,700', 'upload/goods/20180711/008412f9e548aaf1392774197b94a5eb2.jpg', '360,360', '360,360', 'upload/goods/20180711/008412f9e548aaf1392774197b94a5eb3.jpg', '240,240', '240,240', 'upload/goods/20180711/008412f9e548aaf1392774197b94a5eb4.jpg', '60,60', '60,60', '1531274389', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('19', '0', '30', '0', 'e38a42f9jw1ej2arwfq6rj20no0hs0uz', 'e38a42f9jw1ej2arwfq6rj20no0hs0uz', 'upload/goods/20180711/e933dbc3cece27ffad0fceb770737857.jpg', '852,640', '852,640', 'upload/goods/20180711/fc85b7054d89d873b5a81fd59a150f661.jpg', '700,700', '700,700', 'upload/goods/20180711/fc85b7054d89d873b5a81fd59a150f662.jpg', '360,360', '360,360', 'upload/goods/20180711/fc85b7054d89d873b5a81fd59a150f663.jpg', '240,240', '240,240', 'upload/goods/20180711/fc85b7054d89d873b5a81fd59a150f664.jpg', '60,60', '60,60', '1531274392', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('20', '0', '30', '0', 'f9866ef84e8343aeaefab2f7c3805422', 'f9866ef84e8343aeaefab2f7c3805422', 'upload/goods/20180711/ab2931cff71bb55dbbd4a5ebd11535e4.png', '268,390', '268,390', 'upload/goods/20180711/505e00b650314b3dff72292a519ebb791.png', '700,700', '700,700', 'upload/goods/20180711/505e00b650314b3dff72292a519ebb792.png', '360,360', '360,360', 'upload/goods/20180711/505e00b650314b3dff72292a519ebb793.png', '240,240', '240,240', 'upload/goods/20180711/505e00b650314b3dff72292a519ebb794.png', '60,60', '60,60', '1531274394', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('21', '0', '30', '0', '201702200834429402', '201702200834429402', 'upload/goods/20180711/38b5a6f3d6c39c68724d267b8667f692.jpg', '550,353', '550,353', 'upload/goods/20180711/6147c74292f2c2276cd6fd1ac35c01471.jpg', '700,700', '700,700', 'upload/goods/20180711/6147c74292f2c2276cd6fd1ac35c01472.jpg', '360,360', '360,360', 'upload/goods/20180711/6147c74292f2c2276cd6fd1ac35c01473.jpg', '240,240', '240,240', 'upload/goods/20180711/6147c74292f2c2276cd6fd1ac35c01474.jpg', '60,60', '60,60', '1531274396', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('22', '0', '30', '0', 'F200711161829462554924272', 'F200711161829462554924272', 'upload/goods/20180711/301b91894813a7468b526ac937633168.jpg', '176,230', '176,230', 'upload/goods/20180711/a9d2c8419b560c1244c8549a0ba6acfa1.jpg', '700,700', '700,700', 'upload/goods/20180711/a9d2c8419b560c1244c8549a0ba6acfa2.jpg', '360,360', '360,360', 'upload/goods/20180711/a9d2c8419b560c1244c8549a0ba6acfa3.jpg', '240,240', '240,240', 'upload/goods/20180711/a9d2c8419b560c1244c8549a0ba6acfa4.jpg', '60,60', '60,60', '1531274398', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('23', '0', '30', '0', '3417eba4a659167a095c02', '3417eba4a659167a095c02', 'upload/goods/20180711/1013c31fcc0d61440208451e3e33a71b.jpg', '400,273', '400,273', 'upload/goods/20180711/eb776023a5f67d9f596106ed910a932c1.jpg', '700,700', '700,700', 'upload/goods/20180711/eb776023a5f67d9f596106ed910a932c2.jpg', '360,360', '360,360', 'upload/goods/20180711/eb776023a5f67d9f596106ed910a932c3.jpg', '240,240', '240,240', 'upload/goods/20180711/eb776023a5f67d9f596106ed910a932c4.jpg', '60,60', '60,60', '1531274400', '1', '', '');

-- ----------------------------
-- Table structure for `sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2048 COMMENT='全部区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '华东', '0');
INSERT INTO `sys_area` VALUES ('2', '华北', '0');
INSERT INTO `sys_area` VALUES ('3', '华南', '0');
INSERT INTO `sys_area` VALUES ('4', '华中', '0');
INSERT INTO `sys_area` VALUES ('5', '东北', '0');
INSERT INTO `sys_area` VALUES ('6', '西北', '0');
INSERT INTO `sys_area` VALUES ('7', '西南', '0');
INSERT INTO `sys_area` VALUES ('8', '港澳台', '0');

-- ----------------------------
-- Table structure for `sys_city`
-- ----------------------------
DROP TABLE IF EXISTS `sys_city`;
CREATE TABLE `sys_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL DEFAULT '0',
  `city_name` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(6) NOT NULL DEFAULT '',
  `sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_id`),
  KEY `IDX_g_city_CityName` (`city_name`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=135;

-- ----------------------------
-- Records of sys_city
-- ----------------------------
INSERT INTO `sys_city` VALUES ('1', '1', '北京市', '100000', '1');
INSERT INTO `sys_city` VALUES ('2', '2', '天津市', '100000', '0');
INSERT INTO `sys_city` VALUES ('3', '3', '石家庄市', '050000', '0');
INSERT INTO `sys_city` VALUES ('4', '3', '唐山市', '063000', '0');
INSERT INTO `sys_city` VALUES ('5', '3', '秦皇岛市', '066000', '0');
INSERT INTO `sys_city` VALUES ('6', '3', '邯郸市', '056000', '0');
INSERT INTO `sys_city` VALUES ('7', '3', '邢台市', '054000', '0');
INSERT INTO `sys_city` VALUES ('8', '3', '保定市', '071000', '0');
INSERT INTO `sys_city` VALUES ('9', '3', '张家口市', '075000', '0');
INSERT INTO `sys_city` VALUES ('10', '3', '承德市', '067000', '0');
INSERT INTO `sys_city` VALUES ('11', '3', '沧州市', '061000', '0');
INSERT INTO `sys_city` VALUES ('12', '3', '廊坊市', '065000', '0');
INSERT INTO `sys_city` VALUES ('13', '3', '衡水市', '053000', '0');
INSERT INTO `sys_city` VALUES ('14', '4', '太原市', '030000', '0');
INSERT INTO `sys_city` VALUES ('15', '4', '大同市', '037000', '0');
INSERT INTO `sys_city` VALUES ('16', '4', '阳泉市', '045000', '0');
INSERT INTO `sys_city` VALUES ('17', '4', '长治市', '046000', '0');
INSERT INTO `sys_city` VALUES ('18', '4', '晋城市', '048000', '0');
INSERT INTO `sys_city` VALUES ('19', '4', '朔州市', '036000', '0');
INSERT INTO `sys_city` VALUES ('20', '4', '晋中市', '030600', '0');
INSERT INTO `sys_city` VALUES ('21', '4', '运城市', '044000', '0');
INSERT INTO `sys_city` VALUES ('22', '4', '忻州市', '034000', '0');
INSERT INTO `sys_city` VALUES ('23', '4', '临汾市', '041000', '0');
INSERT INTO `sys_city` VALUES ('24', '4', '吕梁市', '030500', '0');
INSERT INTO `sys_city` VALUES ('25', '5', '呼和浩特市', '010000', '0');
INSERT INTO `sys_city` VALUES ('26', '5', '包头市', '014000', '0');
INSERT INTO `sys_city` VALUES ('27', '5', '乌海市', '016000', '0');
INSERT INTO `sys_city` VALUES ('28', '5', '赤峰市', '024000', '0');
INSERT INTO `sys_city` VALUES ('29', '5', '通辽市', '028000', '0');
INSERT INTO `sys_city` VALUES ('30', '5', '鄂尔多斯市', '010300', '0');
INSERT INTO `sys_city` VALUES ('31', '5', '呼伦贝尔市', '021000', '0');
INSERT INTO `sys_city` VALUES ('32', '5', '巴彦淖尔市', '014400', '0');
INSERT INTO `sys_city` VALUES ('33', '5', '乌兰察布市', '011800', '0');
INSERT INTO `sys_city` VALUES ('34', '5', '兴安盟', '137500', '0');
INSERT INTO `sys_city` VALUES ('35', '5', '锡林郭勒盟', '011100', '0');
INSERT INTO `sys_city` VALUES ('36', '5', '阿拉善盟', '016000', '0');
INSERT INTO `sys_city` VALUES ('37', '6', '沈阳市', '110000', '0');
INSERT INTO `sys_city` VALUES ('38', '6', '大连市', '116000', '0');
INSERT INTO `sys_city` VALUES ('39', '6', '鞍山市', '114000', '0');
INSERT INTO `sys_city` VALUES ('40', '6', '抚顺市', '113000', '0');
INSERT INTO `sys_city` VALUES ('41', '6', '本溪市', '117000', '0');
INSERT INTO `sys_city` VALUES ('42', '6', '丹东市', '118000', '0');
INSERT INTO `sys_city` VALUES ('43', '6', '锦州市', '121000', '0');
INSERT INTO `sys_city` VALUES ('44', '6', '营口市', '115000', '0');
INSERT INTO `sys_city` VALUES ('45', '6', '阜新市', '123000', '0');
INSERT INTO `sys_city` VALUES ('46', '6', '辽阳市', '111000', '0');
INSERT INTO `sys_city` VALUES ('47', '6', '盘锦市', '124000', '0');
INSERT INTO `sys_city` VALUES ('48', '6', '铁岭市', '112000', '0');
INSERT INTO `sys_city` VALUES ('49', '6', '朝阳市', '122000', '0');
INSERT INTO `sys_city` VALUES ('50', '6', '葫芦岛市', '125000', '0');
INSERT INTO `sys_city` VALUES ('51', '7', '长春市', '130000', '0');
INSERT INTO `sys_city` VALUES ('52', '7', '吉林市', '132000', '0');
INSERT INTO `sys_city` VALUES ('53', '7', '四平市', '136000', '0');
INSERT INTO `sys_city` VALUES ('54', '7', '辽源市', '136200', '0');
INSERT INTO `sys_city` VALUES ('55', '7', '通化市', '134000', '0');
INSERT INTO `sys_city` VALUES ('56', '7', '白山市', '134300', '0');
INSERT INTO `sys_city` VALUES ('57', '7', '松原市', '131100', '0');
INSERT INTO `sys_city` VALUES ('58', '7', '白城市', '137000', '0');
INSERT INTO `sys_city` VALUES ('59', '7', '延边朝鲜族自治州', '133000', '0');
INSERT INTO `sys_city` VALUES ('60', '8', '哈尔滨市', '150000', '0');
INSERT INTO `sys_city` VALUES ('61', '8', '齐齐哈尔市', '161000', '0');
INSERT INTO `sys_city` VALUES ('62', '8', '鸡西市', '158100', '0');
INSERT INTO `sys_city` VALUES ('63', '8', '鹤岗市', '154100', '0');
INSERT INTO `sys_city` VALUES ('64', '8', '双鸭山市', '155100', '0');
INSERT INTO `sys_city` VALUES ('65', '8', '大庆市', '163000', '0');
INSERT INTO `sys_city` VALUES ('66', '8', '伊春市', '152300', '0');
INSERT INTO `sys_city` VALUES ('67', '8', '佳木斯市', '154000', '0');
INSERT INTO `sys_city` VALUES ('68', '8', '七台河市', '154600', '0');
INSERT INTO `sys_city` VALUES ('69', '8', '牡丹江市', '157000', '0');
INSERT INTO `sys_city` VALUES ('70', '8', '黑河市', '164300', '0');
INSERT INTO `sys_city` VALUES ('71', '8', '绥化市', '152000', '0');
INSERT INTO `sys_city` VALUES ('72', '8', '大兴安岭地区', '165000', '0');
INSERT INTO `sys_city` VALUES ('73', '9', '上海市', '200000', '0');
INSERT INTO `sys_city` VALUES ('74', '10', '南京市', '210000', '0');
INSERT INTO `sys_city` VALUES ('75', '10', '无锡市', '214000', '0');
INSERT INTO `sys_city` VALUES ('76', '10', '徐州市', '221000', '0');
INSERT INTO `sys_city` VALUES ('77', '10', '常州市', '213000', '0');
INSERT INTO `sys_city` VALUES ('78', '10', '苏州市', '215000', '0');
INSERT INTO `sys_city` VALUES ('79', '10', '南通市', '226000', '0');
INSERT INTO `sys_city` VALUES ('80', '10', '连云港市', '222000', '0');
INSERT INTO `sys_city` VALUES ('81', '10', '淮安市', '223200', '0');
INSERT INTO `sys_city` VALUES ('82', '10', '盐城市', '224000', '0');
INSERT INTO `sys_city` VALUES ('83', '10', '扬州市', '225000', '0');
INSERT INTO `sys_city` VALUES ('84', '10', '镇江市', '212000', '0');
INSERT INTO `sys_city` VALUES ('85', '10', '泰州市', '225300', '0');
INSERT INTO `sys_city` VALUES ('86', '10', '宿迁市', '223800', '0');
INSERT INTO `sys_city` VALUES ('87', '11', '杭州市', '310000', '0');
INSERT INTO `sys_city` VALUES ('88', '11', '宁波市', '315000', '0');
INSERT INTO `sys_city` VALUES ('89', '11', '温州市', '325000', '0');
INSERT INTO `sys_city` VALUES ('90', '11', '嘉兴市', '314000', '0');
INSERT INTO `sys_city` VALUES ('91', '11', '湖州市', '313000', '0');
INSERT INTO `sys_city` VALUES ('92', '11', '绍兴市', '312000', '0');
INSERT INTO `sys_city` VALUES ('93', '11', '金华市', '321000', '0');
INSERT INTO `sys_city` VALUES ('94', '11', '衢州市', '324000', '0');
INSERT INTO `sys_city` VALUES ('95', '11', '舟山市', '316000', '0');
INSERT INTO `sys_city` VALUES ('96', '11', '台州市', '318000', '0');
INSERT INTO `sys_city` VALUES ('97', '11', '丽水市', '323000', '0');
INSERT INTO `sys_city` VALUES ('98', '12', '合肥市', '230000', '0');
INSERT INTO `sys_city` VALUES ('99', '12', '芜湖市', '241000', '0');
INSERT INTO `sys_city` VALUES ('100', '12', '蚌埠市', '233000', '0');
INSERT INTO `sys_city` VALUES ('101', '12', '淮南市', '232000', '0');
INSERT INTO `sys_city` VALUES ('102', '12', '马鞍山市', '243000', '0');
INSERT INTO `sys_city` VALUES ('103', '12', '淮北市', '235000', '0');
INSERT INTO `sys_city` VALUES ('104', '12', '铜陵市', '244000', '0');
INSERT INTO `sys_city` VALUES ('105', '12', '安庆市', '246000', '0');
INSERT INTO `sys_city` VALUES ('106', '12', '黄山市', '242700', '0');
INSERT INTO `sys_city` VALUES ('107', '12', '滁州市', '239000', '0');
INSERT INTO `sys_city` VALUES ('108', '12', '阜阳市', '236100', '0');
INSERT INTO `sys_city` VALUES ('109', '12', '宿州市', '234100', '0');
INSERT INTO `sys_city` VALUES ('110', '12', '巢湖市', '238000', '0');
INSERT INTO `sys_city` VALUES ('111', '12', '六安市', '237000', '0');
INSERT INTO `sys_city` VALUES ('112', '12', '亳州市', '236800', '0');
INSERT INTO `sys_city` VALUES ('113', '12', '池州市', '247100', '0');
INSERT INTO `sys_city` VALUES ('114', '12', '宣城市', '366000', '0');
INSERT INTO `sys_city` VALUES ('115', '13', '福州市', '350000', '0');
INSERT INTO `sys_city` VALUES ('116', '13', '厦门市', '361000', '0');
INSERT INTO `sys_city` VALUES ('117', '13', '莆田市', '351100', '0');
INSERT INTO `sys_city` VALUES ('118', '13', '三明市', '365000', '0');
INSERT INTO `sys_city` VALUES ('119', '13', '泉州市', '362000', '0');
INSERT INTO `sys_city` VALUES ('120', '13', '漳州市', '363000', '0');
INSERT INTO `sys_city` VALUES ('121', '13', '南平市', '353000', '0');
INSERT INTO `sys_city` VALUES ('122', '13', '龙岩市', '364000', '0');
INSERT INTO `sys_city` VALUES ('123', '13', '宁德市', '352100', '0');
INSERT INTO `sys_city` VALUES ('124', '14', '南昌市', '330000', '0');
INSERT INTO `sys_city` VALUES ('125', '14', '景德镇市', '333000', '0');
INSERT INTO `sys_city` VALUES ('126', '14', '萍乡市', '337000', '0');
INSERT INTO `sys_city` VALUES ('127', '14', '九江市', '332000', '0');
INSERT INTO `sys_city` VALUES ('128', '14', '新余市', '338000', '0');
INSERT INTO `sys_city` VALUES ('129', '14', '鹰潭市', '335000', '0');
INSERT INTO `sys_city` VALUES ('130', '14', '赣州市', '341000', '0');
INSERT INTO `sys_city` VALUES ('131', '14', '吉安市', '343000', '0');
INSERT INTO `sys_city` VALUES ('132', '14', '宜春市', '336000', '0');
INSERT INTO `sys_city` VALUES ('133', '14', '抚州市', '332900', '0');
INSERT INTO `sys_city` VALUES ('134', '14', '上饶市', '334000', '0');
INSERT INTO `sys_city` VALUES ('135', '15', '济南市', '250000', '0');
INSERT INTO `sys_city` VALUES ('136', '15', '青岛市', '266000', '0');
INSERT INTO `sys_city` VALUES ('137', '15', '淄博市', '255000', '0');
INSERT INTO `sys_city` VALUES ('138', '15', '枣庄市', '277100', '0');
INSERT INTO `sys_city` VALUES ('139', '15', '东营市', '257000', '0');
INSERT INTO `sys_city` VALUES ('140', '15', '烟台市', '264000', '0');
INSERT INTO `sys_city` VALUES ('141', '15', '潍坊市', '261000', '0');
INSERT INTO `sys_city` VALUES ('142', '15', '济宁市', '272100', '0');
INSERT INTO `sys_city` VALUES ('143', '15', '泰安市', '271000', '0');
INSERT INTO `sys_city` VALUES ('144', '15', '威海市', '265700', '0');
INSERT INTO `sys_city` VALUES ('145', '15', '日照市', '276800', '0');
INSERT INTO `sys_city` VALUES ('146', '15', '莱芜市', '271100', '0');
INSERT INTO `sys_city` VALUES ('147', '15', '临沂市', '276000', '0');
INSERT INTO `sys_city` VALUES ('148', '15', '德州市', '253000', '0');
INSERT INTO `sys_city` VALUES ('149', '15', '聊城市', '252000', '0');
INSERT INTO `sys_city` VALUES ('150', '15', '滨州市', '256600', '0');
INSERT INTO `sys_city` VALUES ('151', '15', '荷泽市', '255000', '0');
INSERT INTO `sys_city` VALUES ('152', '16', '郑州市', '450000', '0');
INSERT INTO `sys_city` VALUES ('153', '16', '开封市', '475000', '0');
INSERT INTO `sys_city` VALUES ('154', '16', '洛阳市', '471000', '0');
INSERT INTO `sys_city` VALUES ('155', '16', '平顶山市', '467000', '0');
INSERT INTO `sys_city` VALUES ('156', '16', '安阳市', '454900', '0');
INSERT INTO `sys_city` VALUES ('157', '16', '鹤壁市', '456600', '0');
INSERT INTO `sys_city` VALUES ('158', '16', '新乡市', '453000', '0');
INSERT INTO `sys_city` VALUES ('159', '16', '焦作市', '454100', '0');
INSERT INTO `sys_city` VALUES ('160', '16', '濮阳市', '457000', '0');
INSERT INTO `sys_city` VALUES ('161', '16', '许昌市', '461000', '0');
INSERT INTO `sys_city` VALUES ('162', '16', '漯河市', '462000', '0');
INSERT INTO `sys_city` VALUES ('163', '16', '三门峡市', '472000', '0');
INSERT INTO `sys_city` VALUES ('164', '16', '南阳市', '473000', '0');
INSERT INTO `sys_city` VALUES ('165', '16', '商丘市', '476000', '0');
INSERT INTO `sys_city` VALUES ('166', '16', '信阳市', '464000', '0');
INSERT INTO `sys_city` VALUES ('167', '16', '周口市', '466000', '0');
INSERT INTO `sys_city` VALUES ('168', '16', '驻马店市', '463000', '0');
INSERT INTO `sys_city` VALUES ('169', '17', '武汉市', '430000', '0');
INSERT INTO `sys_city` VALUES ('170', '17', '黄石市', '435000', '0');
INSERT INTO `sys_city` VALUES ('171', '17', '十堰市', '442000', '0');
INSERT INTO `sys_city` VALUES ('172', '17', '宜昌市', '443000', '0');
INSERT INTO `sys_city` VALUES ('173', '17', '襄樊市', '441000', '0');
INSERT INTO `sys_city` VALUES ('174', '17', '鄂州市', '436000', '0');
INSERT INTO `sys_city` VALUES ('175', '17', '荆门市', '448000', '0');
INSERT INTO `sys_city` VALUES ('176', '17', '孝感市', '432100', '0');
INSERT INTO `sys_city` VALUES ('177', '17', '荆州市', '434000', '0');
INSERT INTO `sys_city` VALUES ('178', '17', '黄冈市', '438000', '0');
INSERT INTO `sys_city` VALUES ('179', '17', '咸宁市', '437000', '0');
INSERT INTO `sys_city` VALUES ('180', '17', '随州市', '441300', '0');
INSERT INTO `sys_city` VALUES ('181', '17', '恩施土家族苗族自治州', '445000', '0');
INSERT INTO `sys_city` VALUES ('182', '17', '神农架', '442400', '0');
INSERT INTO `sys_city` VALUES ('183', '18', '长沙市', '410000', '0');
INSERT INTO `sys_city` VALUES ('184', '18', '株洲市', '412000', '0');
INSERT INTO `sys_city` VALUES ('185', '18', '湘潭市', '411100', '0');
INSERT INTO `sys_city` VALUES ('186', '18', '衡阳市', '421000', '0');
INSERT INTO `sys_city` VALUES ('187', '18', '邵阳市', '422000', '0');
INSERT INTO `sys_city` VALUES ('188', '18', '岳阳市', '414000', '0');
INSERT INTO `sys_city` VALUES ('189', '18', '常德市', '415000', '0');
INSERT INTO `sys_city` VALUES ('190', '18', '张家界市', '427000', '0');
INSERT INTO `sys_city` VALUES ('191', '18', '益阳市', '413000', '0');
INSERT INTO `sys_city` VALUES ('192', '18', '郴州市', '423000', '0');
INSERT INTO `sys_city` VALUES ('193', '18', '永州市', '425000', '0');
INSERT INTO `sys_city` VALUES ('194', '18', '怀化市', '418000', '0');
INSERT INTO `sys_city` VALUES ('195', '18', '娄底市', '417000', '0');
INSERT INTO `sys_city` VALUES ('196', '18', '湘西土家族苗族自治州', '416000', '0');
INSERT INTO `sys_city` VALUES ('197', '19', '广州市', '510000', '0');
INSERT INTO `sys_city` VALUES ('198', '19', '韶关市', '521000', '0');
INSERT INTO `sys_city` VALUES ('199', '19', '深圳市', '518000', '0');
INSERT INTO `sys_city` VALUES ('200', '19', '珠海市', '519000', '0');
INSERT INTO `sys_city` VALUES ('201', '19', '汕头市', '515000', '0');
INSERT INTO `sys_city` VALUES ('202', '19', '佛山市', '528000', '0');
INSERT INTO `sys_city` VALUES ('203', '19', '江门市', '529000', '0');
INSERT INTO `sys_city` VALUES ('204', '19', '湛江市', '524000', '0');
INSERT INTO `sys_city` VALUES ('205', '19', '茂名市', '525000', '0');
INSERT INTO `sys_city` VALUES ('206', '19', '肇庆市', '526000', '0');
INSERT INTO `sys_city` VALUES ('207', '19', '惠州市', '516000', '0');
INSERT INTO `sys_city` VALUES ('208', '19', '梅州市', '514000', '0');
INSERT INTO `sys_city` VALUES ('209', '19', '汕尾市', '516600', '1');
INSERT INTO `sys_city` VALUES ('210', '19', '河源市', '517000', '0');
INSERT INTO `sys_city` VALUES ('211', '19', '阳江市', '529500', '0');
INSERT INTO `sys_city` VALUES ('212', '19', '清远市', '511500', '0');
INSERT INTO `sys_city` VALUES ('213', '19', '东莞市', '511700', '0');
INSERT INTO `sys_city` VALUES ('214', '19', '中山市', '528400', '0');
INSERT INTO `sys_city` VALUES ('215', '19', '潮州市', '515600', '0');
INSERT INTO `sys_city` VALUES ('216', '19', '揭阳市', '522000', '0');
INSERT INTO `sys_city` VALUES ('217', '19', '云浮市', '527300', '0');
INSERT INTO `sys_city` VALUES ('218', '20', '南宁市', '530000', '0');
INSERT INTO `sys_city` VALUES ('219', '20', '柳州市', '545000', '0');
INSERT INTO `sys_city` VALUES ('220', '20', '桂林市', '541000', '0');
INSERT INTO `sys_city` VALUES ('221', '20', '梧州市', '543000', '0');
INSERT INTO `sys_city` VALUES ('222', '20', '北海市', '536000', '0');
INSERT INTO `sys_city` VALUES ('223', '20', '防城港市', '538000', '0');
INSERT INTO `sys_city` VALUES ('224', '20', '钦州市', '535000', '0');
INSERT INTO `sys_city` VALUES ('225', '20', '贵港市', '537100', '0');
INSERT INTO `sys_city` VALUES ('226', '20', '玉林市', '537000', '0');
INSERT INTO `sys_city` VALUES ('227', '20', '百色市', '533000', '0');
INSERT INTO `sys_city` VALUES ('228', '20', '贺州市', '542800', '0');
INSERT INTO `sys_city` VALUES ('229', '20', '河池市', '547000', '0');
INSERT INTO `sys_city` VALUES ('230', '20', '来宾市', '546100', '0');
INSERT INTO `sys_city` VALUES ('231', '20', '崇左市', '532200', '0');
INSERT INTO `sys_city` VALUES ('232', '21', '海口市', '570000', '0');
INSERT INTO `sys_city` VALUES ('233', '21', '三亚市', '572000', '0');
INSERT INTO `sys_city` VALUES ('234', '22', '重庆市', '400000', '0');
INSERT INTO `sys_city` VALUES ('235', '23', '成都市', '610000', '0');
INSERT INTO `sys_city` VALUES ('236', '23', '自贡市', '643000', '0');
INSERT INTO `sys_city` VALUES ('237', '23', '攀枝花市', '617000', '0');
INSERT INTO `sys_city` VALUES ('238', '23', '泸州市', '646100', '0');
INSERT INTO `sys_city` VALUES ('239', '23', '德阳市', '618000', '0');
INSERT INTO `sys_city` VALUES ('240', '23', '绵阳市', '621000', '0');
INSERT INTO `sys_city` VALUES ('241', '23', '广元市', '628000', '0');
INSERT INTO `sys_city` VALUES ('242', '23', '遂宁市', '629000', '0');
INSERT INTO `sys_city` VALUES ('243', '23', '内江市', '641000', '0');
INSERT INTO `sys_city` VALUES ('244', '23', '乐山市', '614000', '0');
INSERT INTO `sys_city` VALUES ('245', '23', '南充市', '637000', '0');
INSERT INTO `sys_city` VALUES ('246', '23', '眉山市', '612100', '0');
INSERT INTO `sys_city` VALUES ('247', '23', '宜宾市', '644000', '0');
INSERT INTO `sys_city` VALUES ('248', '23', '广安市', '638000', '0');
INSERT INTO `sys_city` VALUES ('249', '23', '达州市', '635000', '0');
INSERT INTO `sys_city` VALUES ('250', '23', '雅安市', '625000', '0');
INSERT INTO `sys_city` VALUES ('251', '23', '巴中市', '635500', '0');
INSERT INTO `sys_city` VALUES ('252', '23', '资阳市', '641300', '0');
INSERT INTO `sys_city` VALUES ('253', '23', '阿坝藏族羌族自治州', '624600', '0');
INSERT INTO `sys_city` VALUES ('254', '23', '甘孜藏族自治州', '626000', '0');
INSERT INTO `sys_city` VALUES ('255', '23', '凉山彝族自治州', '615000', '0');
INSERT INTO `sys_city` VALUES ('256', '24', '贵阳市', '55000', '0');
INSERT INTO `sys_city` VALUES ('257', '24', '六盘水市', '553000', '0');
INSERT INTO `sys_city` VALUES ('258', '24', '遵义市', '563000', '0');
INSERT INTO `sys_city` VALUES ('259', '24', '安顺市', '561000', '0');
INSERT INTO `sys_city` VALUES ('260', '24', '铜仁地区', '554300', '0');
INSERT INTO `sys_city` VALUES ('261', '24', '黔西南布依族苗族自治州', '551500', '0');
INSERT INTO `sys_city` VALUES ('262', '24', '毕节地区', '551700', '0');
INSERT INTO `sys_city` VALUES ('263', '24', '黔东南苗族侗族自治州', '551500', '0');
INSERT INTO `sys_city` VALUES ('264', '24', '黔南布依族苗族自治州', '550100', '0');
INSERT INTO `sys_city` VALUES ('265', '25', '昆明市', '650000', '0');
INSERT INTO `sys_city` VALUES ('266', '25', '曲靖市', '655000', '0');
INSERT INTO `sys_city` VALUES ('267', '25', '玉溪市', '653100', '0');
INSERT INTO `sys_city` VALUES ('268', '25', '保山市', '678000', '0');
INSERT INTO `sys_city` VALUES ('269', '25', '昭通市', '657000', '0');
INSERT INTO `sys_city` VALUES ('270', '25', '丽江市', '674100', '0');
INSERT INTO `sys_city` VALUES ('271', '25', '思茅市', '665000', '0');
INSERT INTO `sys_city` VALUES ('272', '25', '临沧市', '677000', '0');
INSERT INTO `sys_city` VALUES ('273', '25', '楚雄彝族自治州', '675000', '0');
INSERT INTO `sys_city` VALUES ('274', '25', '红河哈尼族彝族自治州', '654400', '0');
INSERT INTO `sys_city` VALUES ('275', '25', '文山壮族苗族自治州', '663000', '0');
INSERT INTO `sys_city` VALUES ('276', '25', '西双版纳傣族自治州', '666200', '0');
INSERT INTO `sys_city` VALUES ('277', '25', '大理白族自治州', '671000', '0');
INSERT INTO `sys_city` VALUES ('278', '25', '德宏傣族景颇族自治州', '678400', '0');
INSERT INTO `sys_city` VALUES ('279', '25', '怒江傈僳族自治州', '671400', '0');
INSERT INTO `sys_city` VALUES ('280', '25', '迪庆藏族自治州', '674400', '0');
INSERT INTO `sys_city` VALUES ('281', '26', '拉萨市', '850000', '0');
INSERT INTO `sys_city` VALUES ('282', '26', '昌都地区', '854000', '0');
INSERT INTO `sys_city` VALUES ('283', '26', '山南地区', '856000', '0');
INSERT INTO `sys_city` VALUES ('284', '26', '日喀则地区', '857000', '0');
INSERT INTO `sys_city` VALUES ('285', '26', '那曲地区', '852000', '0');
INSERT INTO `sys_city` VALUES ('286', '26', '阿里地区', '859100', '0');
INSERT INTO `sys_city` VALUES ('287', '26', '林芝地区', '860100', '0');
INSERT INTO `sys_city` VALUES ('288', '27', '西安市', '710000', '0');
INSERT INTO `sys_city` VALUES ('289', '27', '铜川市', '727000', '0');
INSERT INTO `sys_city` VALUES ('290', '27', '宝鸡市', '721000', '0');
INSERT INTO `sys_city` VALUES ('291', '27', '咸阳市', '712000', '0');
INSERT INTO `sys_city` VALUES ('292', '27', '渭南市', '714000', '0');
INSERT INTO `sys_city` VALUES ('293', '27', '延安市', '716000', '0');
INSERT INTO `sys_city` VALUES ('294', '27', '汉中市', '723000', '0');
INSERT INTO `sys_city` VALUES ('295', '27', '榆林市', '719000', '0');
INSERT INTO `sys_city` VALUES ('296', '27', '安康市', '725000', '0');
INSERT INTO `sys_city` VALUES ('297', '27', '商洛市', '711500', '0');
INSERT INTO `sys_city` VALUES ('298', '28', '兰州市', '730000', '0');
INSERT INTO `sys_city` VALUES ('299', '28', '嘉峪关市', '735100', '0');
INSERT INTO `sys_city` VALUES ('300', '28', '金昌市', '737100', '0');
INSERT INTO `sys_city` VALUES ('301', '28', '白银市', '730900', '0');
INSERT INTO `sys_city` VALUES ('302', '28', '天水市', '741000', '0');
INSERT INTO `sys_city` VALUES ('303', '28', '武威市', '733000', '0');
INSERT INTO `sys_city` VALUES ('304', '28', '张掖市', '734000', '0');
INSERT INTO `sys_city` VALUES ('305', '28', '平凉市', '744000', '0');
INSERT INTO `sys_city` VALUES ('306', '28', '酒泉市', '735000', '0');
INSERT INTO `sys_city` VALUES ('307', '28', '庆阳市', '744500', '0');
INSERT INTO `sys_city` VALUES ('308', '28', '定西市', '743000', '0');
INSERT INTO `sys_city` VALUES ('309', '28', '陇南市', '742100', '0');
INSERT INTO `sys_city` VALUES ('310', '28', '临夏回族自治州', '731100', '0');
INSERT INTO `sys_city` VALUES ('311', '28', '甘南藏族自治州', '747000', '0');
INSERT INTO `sys_city` VALUES ('312', '29', '西宁市', '810000', '0');
INSERT INTO `sys_city` VALUES ('313', '29', '海东地区', '810600', '0');
INSERT INTO `sys_city` VALUES ('314', '29', '海北藏族自治州', '810300', '0');
INSERT INTO `sys_city` VALUES ('315', '29', '黄南藏族自治州', '811300', '0');
INSERT INTO `sys_city` VALUES ('316', '29', '海南藏族自治州', '813000', '0');
INSERT INTO `sys_city` VALUES ('317', '29', '果洛藏族自治州', '814000', '0');
INSERT INTO `sys_city` VALUES ('318', '29', '玉树藏族自治州', '815000', '0');
INSERT INTO `sys_city` VALUES ('319', '29', '海西蒙古族藏族自治州', '817000', '0');
INSERT INTO `sys_city` VALUES ('320', '30', '银川市', '750000', '0');
INSERT INTO `sys_city` VALUES ('321', '30', '石嘴山市', '753000', '0');
INSERT INTO `sys_city` VALUES ('322', '30', '吴忠市', '751100', '0');
INSERT INTO `sys_city` VALUES ('323', '30', '固原市', '756000', '0');
INSERT INTO `sys_city` VALUES ('324', '30', '中卫市', '751700', '0');
INSERT INTO `sys_city` VALUES ('325', '31', '乌鲁木齐市', '830000', '0');
INSERT INTO `sys_city` VALUES ('326', '31', '克拉玛依市', '834000', '0');
INSERT INTO `sys_city` VALUES ('327', '31', '吐鲁番地区', '838000', '0');
INSERT INTO `sys_city` VALUES ('328', '31', '哈密地区', '839000', '0');
INSERT INTO `sys_city` VALUES ('329', '31', '昌吉回族自治州', '831100', '0');
INSERT INTO `sys_city` VALUES ('330', '31', '博尔塔拉蒙古自治州', '833400', '0');
INSERT INTO `sys_city` VALUES ('331', '31', '巴音郭楞蒙古自治州', '841000', '0');
INSERT INTO `sys_city` VALUES ('332', '31', '阿克苏地区', '843000', '0');
INSERT INTO `sys_city` VALUES ('333', '31', '克孜勒苏柯尔克孜自治州', '835600', '0');
INSERT INTO `sys_city` VALUES ('334', '31', '喀什地区', '844000', '0');
INSERT INTO `sys_city` VALUES ('335', '31', '和田地区', '848000', '0');
INSERT INTO `sys_city` VALUES ('336', '31', '伊犁哈萨克自治州', '833200', '0');
INSERT INTO `sys_city` VALUES ('337', '31', '塔城地区', '834700', '0');
INSERT INTO `sys_city` VALUES ('338', '31', '阿勒泰地区', '836500', '0');
INSERT INTO `sys_city` VALUES ('339', '31', '石河子市', '832000', '0');
INSERT INTO `sys_city` VALUES ('340', '31', '阿拉尔市', '843300', '0');
INSERT INTO `sys_city` VALUES ('341', '31', '图木舒克市', '843900', '0');
INSERT INTO `sys_city` VALUES ('342', '31', '五家渠市', '831300', '0');
INSERT INTO `sys_city` VALUES ('343', '32', '香港特别行政区', '000000', '0');
INSERT INTO `sys_city` VALUES ('344', '33', '澳门特别行政区', '000000', '0');
INSERT INTO `sys_city` VALUES ('345', '34', '台湾省', '000000', '0');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '1' COMMENT '实例ID',
  `key` varchar(255) NOT NULL DEFAULT '' COMMENT '配置项WCHAT,QQ,WPAY,ALIPAY...',
  `value` varchar(1000) NOT NULL DEFAULT '' COMMENT '配置值json',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  `is_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否启用 1启用 0不启用',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=963 COMMENT='第三方配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('12', '0', 'USERNOTICE', '', '', '1', '1487830081', '1497102938');
INSERT INTO `sys_config` VALUES ('13', '0', 'HOTKEY', '[\"T\\u6064\\uff0c\\u9a6c\\u88e4\\uff0c\\u6f6e\\u6d41\"]', '', '1', '1487831749', '1530839545');
INSERT INTO `sys_config` VALUES ('14', '0', 'DEFAULTKEY', '\"\\u65f6\\u5149\\u50ac\\u4eba\\u8001\"', '', '1', '1487831788', '1531280009');
INSERT INTO `sys_config` VALUES ('17', '0', 'QQLOGIN', '{\"APP_KEY\":\"\",\"APP_SECRET\":\"\",\"AUTHORIZE\":\"http:\\/\\/b2c1.01.niushop.com.cn\",\"CALLBACK\":\"http:\\/\\/b2c1.01.niushop.com.cn\\/wap\\/login\\/callback\"}', 'qq', '0', '1488350925', '1497105447');
INSERT INTO `sys_config` VALUES ('18', '0', 'WCHAT', '{\"APP_KEY\":\"\",\"APP_SECRET\":\"\",\"AUTHORIZE\":\"http:\\/\\/b2c1.01.niushop.com.cn\",\"CALLBACK\":\"http:\\/\\/b2c1.01.niushop.com.cn\\/wap\\/Login\\/callback\"}', '微信', '0', '1488350947', '1497105440');
INSERT INTO `sys_config` VALUES ('21', '0', 'ALIPAY', '{\"ali_partnerid\":\"\",\"ali_seller\":\"\",\"ali_key\":\"\"}', '', '0', '1488442697', '1497105409');
INSERT INTO `sys_config` VALUES ('22', '0', 'EMAILMESSAGE', '{\"email_host\":\"smtp.163.com\",\"email_port\":\"465\",\"email_addr\":\"\",\"email_id\":\"\",\"email_pass\":\"\"}', '', '0', '1488524450', '1498907460');
INSERT INTO `sys_config` VALUES ('27', '0', 'WXOPENPLATFORM', '', '', '1', '1490845979', '1496903672');
INSERT INTO `sys_config` VALUES ('28', '0', 'LOGINVERIFYCODE', '', '', '1', '1491014899', '1498736286');
INSERT INTO `sys_config` VALUES ('31', '0', 'COIN_CONFIG', '', '购物币现金转化关系', '1', '1492396593', '1496903672');
INSERT INTO `sys_config` VALUES ('38', '0', 'ORDER_BUY_CLOSE_TIME', '20', '订单自动关闭时间', '1', '1499391774', '1531276072');
INSERT INTO `sys_config` VALUES ('39', '0', 'ORDER_DELIVERY_COMPLETE_TIME', '3', '收货后多长时间自动完成', '1', '1499391779', '1531276072');
INSERT INTO `sys_config` VALUES ('40', '0', 'ORDER_AUTO_DELIVERY', '5', '订单多长时间自动完成', '1', '1499391781', '1531276072');
INSERT INTO `sys_config` VALUES ('41', '0', 'ORDER_BALANCE_PAY', '1', '是否开启余额支付', '1', '1499391784', '1531276072');
INSERT INTO `sys_config` VALUES ('42', '0', 'ORDER_INVOICE_TAX', '0', '发票税率', '1', '1499391786', '1531276072');
INSERT INTO `sys_config` VALUES ('43', '0', 'ORDER_INVOICE_CONTENT', '', '发票内容', '1', '1499391789', '1531276072');
INSERT INTO `sys_config` VALUES ('44', '0', 'ORDER_SHOW_BUY_RECORD', '1', '是否显示购买记录', '1', '1499391791', '1531276072');
INSERT INTO `sys_config` VALUES ('45', '0', 'SEO_TITLE', '', '标题附加字', '1', '1496751194', '1497090304');
INSERT INTO `sys_config` VALUES ('46', '0', 'SEO_META', '', '商城关键词', '1', '1496751194', '1497090304');
INSERT INTO `sys_config` VALUES ('47', '0', 'SEO_DESC', '', '关键词描述', '1', '1496751194', '1497090304');
INSERT INTO `sys_config` VALUES ('48', '0', 'SEO_OTHER', '', '其他页头信息', '1', '1496751194', '1497090304');
INSERT INTO `sys_config` VALUES ('107', '0', 'ORDER_DELIVERY_PAY', '1', '是否开启货到付款', '1', '1496825466', '1531276072');
INSERT INTO `sys_config` VALUES ('109', '0', 'REGISTER_INTEGRAL', '1', '注册送积分', '1', '1496981877', '1530783551');
INSERT INTO `sys_config` VALUES ('111', '0', 'SHARE_INTEGRAL', '1', '分享送积分', '1', '1496981877', '1530783551');
INSERT INTO `sys_config` VALUES ('112', '0', 'SIGN_INTEGRAL', '1', '签到送积分', '1', '1496983370', '1530783551');
INSERT INTO `sys_config` VALUES ('116', '0', 'LOGINVERIFYCODE', '', '', '1', '1497085371', '1498736286');
INSERT INTO `sys_config` VALUES ('122', '0', 'HOTKEY', '[\"T\\u6064\\uff0c\\u9a6c\\u88e4\\uff0c\\u6f6e\\u6d41\"]', '', '1', '1497087566', '1530839545');
INSERT INTO `sys_config` VALUES ('123', '0', 'DEFAULTKEY', '\"\\u65f6\\u5149\\u50ac\\u4eba\\u8001\"', '', '1', '1497087582', '1531280009');
INSERT INTO `sys_config` VALUES ('125', '0', 'WPAY', '{\"appid\":\"\",\"appkey\":\"\",\"mch_id\":\"\",\"mch_key\":\"\"}', '', '0', '1497087123', '1498882635');
INSERT INTO `sys_config` VALUES ('127', '0', 'SHOPWCHAT', '{\"appid\":\"\",\"appsecret\":\"\"}', '', '1', '1497088090', '1498736290');
INSERT INTO `sys_config` VALUES ('128', '0', 'BUYER_SELF_LIFTING', '1', '是否开启买家自提', '1', '1498730475', '1531276072');
INSERT INTO `sys_config` VALUES ('129', '0', 'ORDER_SELLER_DISPATCHING', '1', '是否开启商家配送', '1', '1498730475', '1531276072');
INSERT INTO `sys_config` VALUES ('130', '0', 'SHOPPING_BACK_POINTS', '1', '购物返积分设置', '1', '1498730475', '1531276072');
INSERT INTO `sys_config` VALUES ('136', '0', 'MOBILEMESSAGE', '', '', '0', '1498894954', '1498909195');
INSERT INTO `sys_config` VALUES ('137', '0', 'REGISTERANDVISIT', '{\"is_register\":\"1\",\"register_info\":\"plain\",\"name_keyword\":\"\",\"pwd_len\":\"5\",\"pwd_complexity\":\"\",\"terms_of_service\":\"\"}', '', '1', '1499310581', '1499391801');
INSERT INTO `sys_config` VALUES ('138', '0', 'DEFAULT_IMAGE', '{\"default_goods_img\":\"upload/web_common/3b22fee90512e91bfc1586e016a7d8ea_360_360.png\",\"default_headimg\":\"upload/web_common/419b57e5802bd1f3b8fdedb81fdb5fce_360_360.png\"}', '默认图片', '1', '0', '0');
INSERT INTO `sys_config` VALUES ('139', '0', 'UNIONPAY', '', '银联卡支付', '0', '1522756926', '0');
INSERT INTO `sys_config` VALUES ('140', '0', 'UPLOAD_TYPE', '1', '上传方式 1 本地  2 七牛', '1', '1530781150', '0');
INSERT INTO `sys_config` VALUES ('141', '0', 'IMG_THUMB', '{\"thumb_type\":\"2\",\"upload_size\":\"0\",\"upload_ext\":\"gif,jpg,jpeg,bmp,png\"}', 'thumb_type(缩略)  3 居中裁剪 2 缩放后填充 4 左上角裁剪 5 右下角裁剪 6 固定尺寸缩放', '1', '1530781150', '0');
INSERT INTO `sys_config` VALUES ('142', '0', 'WATER_CONFIG', '{\"watermark\":\"\",\"transparency\":\"100\",\"waterPosition\":\"9\",\"imgWatermark\":\"\"}', '图片水印参数配置', '1', '1530781150', '0');
INSERT INTO `sys_config` VALUES ('143', '0', 'SHARE_COUPON', '0', '分享送优惠券', '1', '1530783537', '1530783551');
INSERT INTO `sys_config` VALUES ('144', '0', 'SIGN_COUPON', '0', '签到送优惠券', '1', '1530783537', '1530783551');
INSERT INTO `sys_config` VALUES ('145', '0', 'REGISTER_COUPON', '1', '注册送优惠券', '1', '1530783537', '1530783551');
INSERT INTO `sys_config` VALUES ('146', '0', 'COMMENT_COUPON', '1', '评论送优惠券', '1', '1530783537', '1530783551');
INSERT INTO `sys_config` VALUES ('147', '0', 'CLICK_COUPON', '1', '点赞送优惠券', '1', '1530783537', '1530783552');
INSERT INTO `sys_config` VALUES ('148', '0', 'WITHDRAW_BALANCE', '{\"withdraw_cash_min\":\"1\",\"withdraw_multiple\":\"1\",\"withdraw_poundage\":\"0\",\"withdraw_message\":\"\\u63d0\\u73b0\\u63d0\\u793a\\u4fe1\\u606f\",\"withdraw_account\":[{\"id\":\"bank_card\",\"name\":\"\\u94f6\\u884c\\u5361\",\"value\":1,\"is_checked\":1},{\"id\":\"wechat\",\"name\":\"\\u5fae\\u4fe1\",\"value\":2,\"is_checked\":1},{\"id\":\"alipay\",\"name\":\"\\u652f\\u4ed8\\u5b9d\",\"value\":3,\"is_checked\":0}]}', '会员余额提现设置', '1', '1530783721', '1530844518');
INSERT INTO `sys_config` VALUES ('149', '0', 'USE_PC_TEMPLATE', 'blue', '当前使用的PC端模板文件夹', '1', '1530839468', '1530839468');
INSERT INTO `sys_config` VALUES ('150', '0', 'ORDER_IS_LOGISTICS', '1', '是否允许选择物流', '1', '1530840580', '1531276072');
INSERT INTO `sys_config` VALUES ('151', '0', 'IS_OPEN_VIRTUAL_GOODS', '1', '是否开启虚拟商品', '1', '1530840580', '1531276072');
INSERT INTO `sys_config` VALUES ('152', '0', 'IS_OPEN_ORDER_DESIGNATED_DELIVERY_TIME', '1', '是否开启订单指定配送时间', '1', '1530840580', '1531276073');
INSERT INTO `sys_config` VALUES ('153', '0', 'IS_OPEN_O2O', '0', '是否开启本地配送', '1', '1530840580', '1531276073');
INSERT INTO `sys_config` VALUES ('154', '0', 'COPYRIGHT_LOGO', '', '版权logo', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('155', '0', 'COPYRIGHT_META', '', '备案号', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('156', '0', 'COPYRIGHT_LINK', '', '版权链接', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('157', '0', 'COPYRIGHT_DESC', '', '版权信息', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('158', '0', 'COPYRIGHT_COMPANYNAME', '', '公司名称', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('159', '0', 'QINIU_CONFIG', '{\"Accesskey\":\"\",\"Secretkey\":\"\",\"Bucket\":\"\",\"QiniuUrl\":\"\"}', '七牛云存储参数配置', '1', '1530844028', '0');
INSERT INTO `sys_config` VALUES ('160', '0', 'MERCHANT_SERVICE', '[{\"id\":0,\"title\":\"帮叫外卖\",\"describe\":\"很实惠\",\"pic\":\"\"},{\"id\":1,\"title\":\"\",\"describe\":\"\",\"pic\":\"\"},{\"id\":2,\"title\":\"\",\"describe\":\"\",\"pic\":\"\"},{\"id\":3,\"title\":\"\",\"describe\":\"\",\"pic\":\"\"},{\"id\":4,\"title\":\"\",\"describe\":\"\",\"pic\":\"\"},{\"id\":5,\"title\":\"\",\"describe\":\"\",\"pic\":\"\"}]', '商家服务', '1', '0', '1530844103');
INSERT INTO `sys_config` VALUES ('161', '0', 'SERVICE_ADDR', '{\"meiqia_service_addr\":\"http:\\/\\/localhost\\/shopping9\\/index.php?s=\\/admin\\/config\\/customservice\",\"kf_service_addr\":\"http:\\/\\/localhost\\/shopping9\\/index.php?s=\\/wap\\/order\\/orderdetail&orderId=11\",\"qq_service_addr\":\"935617411\",\"checked_num\":\"3\"}', '客服链接地址', '0', '1531278324', '1531278340');

-- ----------------------------
-- Table structure for `sys_custom_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_custom_template`;
CREATE TABLE `sys_custom_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `template_name` varchar(250) DEFAULT NULL COMMENT '自定义模板名称（暂时预留）',
  `template_data` text NOT NULL COMMENT '模板数据（JSON格式）',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间戳',
  `modify_time` int(11) DEFAULT NULL COMMENT '修改时间戳',
  `is_enable` int(11) NOT NULL DEFAULT '0' COMMENT '是否启用 0 不启用 1 启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='手机端自定义模板';

-- ----------------------------
-- Records of sys_custom_template
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_district`
-- ----------------------------
DROP TABLE IF EXISTS `sys_district`;
CREATE TABLE `sys_district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) DEFAULT '0',
  `district_name` varchar(255) NOT NULL DEFAULT '',
  `sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`district_id`),
  KEY `IDX_g_district_DistrictName` (`district_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2870 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=50;

-- ----------------------------
-- Records of sys_district
-- ----------------------------
INSERT INTO `sys_district` VALUES ('1', '1', '东城区', '0');
INSERT INTO `sys_district` VALUES ('2', '1', '西城区', '0');
INSERT INTO `sys_district` VALUES ('3', '1', '崇文区', '0');
INSERT INTO `sys_district` VALUES ('4', '1', '宣武区', '0');
INSERT INTO `sys_district` VALUES ('5', '1', '朝阳区', '0');
INSERT INTO `sys_district` VALUES ('6', '1', '丰台区', '0');
INSERT INTO `sys_district` VALUES ('7', '1', '石景山区', '0');
INSERT INTO `sys_district` VALUES ('8', '1', '海淀区', '0');
INSERT INTO `sys_district` VALUES ('9', '1', '门头沟区', '0');
INSERT INTO `sys_district` VALUES ('10', '1', '房山区', '0');
INSERT INTO `sys_district` VALUES ('11', '1', '通州区', '0');
INSERT INTO `sys_district` VALUES ('12', '1', '顺义区', '0');
INSERT INTO `sys_district` VALUES ('13', '1', '昌平区', '0');
INSERT INTO `sys_district` VALUES ('14', '1', '大兴区', '0');
INSERT INTO `sys_district` VALUES ('15', '1', '怀柔区', '0');
INSERT INTO `sys_district` VALUES ('16', '1', '平谷区', '0');
INSERT INTO `sys_district` VALUES ('17', '1', '密云县', '0');
INSERT INTO `sys_district` VALUES ('18', '1', '延庆县', '0');
INSERT INTO `sys_district` VALUES ('19', '2', '和平区', '0');
INSERT INTO `sys_district` VALUES ('20', '2', '河东区', '0');
INSERT INTO `sys_district` VALUES ('21', '2', '河西区', '0');
INSERT INTO `sys_district` VALUES ('22', '2', '南开区', '0');
INSERT INTO `sys_district` VALUES ('23', '2', '河北区', '0');
INSERT INTO `sys_district` VALUES ('24', '2', '红桥区', '0');
INSERT INTO `sys_district` VALUES ('25', '2', '塘沽区', '0');
INSERT INTO `sys_district` VALUES ('26', '2', '汉沽区', '0');
INSERT INTO `sys_district` VALUES ('27', '2', '大港区', '0');
INSERT INTO `sys_district` VALUES ('28', '2', '东丽区', '0');
INSERT INTO `sys_district` VALUES ('29', '2', '西青区', '0');
INSERT INTO `sys_district` VALUES ('30', '2', '津南区', '0');
INSERT INTO `sys_district` VALUES ('31', '2', '北辰区', '0');
INSERT INTO `sys_district` VALUES ('32', '2', '武清区', '0');
INSERT INTO `sys_district` VALUES ('33', '2', '宝坻区', '0');
INSERT INTO `sys_district` VALUES ('34', '2', '宁河县', '0');
INSERT INTO `sys_district` VALUES ('35', '2', '静海县', '0');
INSERT INTO `sys_district` VALUES ('36', '2', '蓟县', '0');
INSERT INTO `sys_district` VALUES ('37', '3', '长安区', '0');
INSERT INTO `sys_district` VALUES ('38', '3', '桥东区', '0');
INSERT INTO `sys_district` VALUES ('39', '3', '桥西区', '0');
INSERT INTO `sys_district` VALUES ('40', '3', '新华区', '0');
INSERT INTO `sys_district` VALUES ('41', '3', '井陉矿区', '0');
INSERT INTO `sys_district` VALUES ('42', '3', '裕华区', '0');
INSERT INTO `sys_district` VALUES ('43', '3', '井陉县', '0');
INSERT INTO `sys_district` VALUES ('44', '3', '正定县', '0');
INSERT INTO `sys_district` VALUES ('45', '3', '栾城县', '0');
INSERT INTO `sys_district` VALUES ('46', '3', '行唐县', '0');
INSERT INTO `sys_district` VALUES ('47', '3', '灵寿县', '0');
INSERT INTO `sys_district` VALUES ('48', '3', '高邑县', '0');
INSERT INTO `sys_district` VALUES ('49', '3', '深泽县', '0');
INSERT INTO `sys_district` VALUES ('50', '3', '赞皇县', '0');
INSERT INTO `sys_district` VALUES ('51', '3', '无极县', '0');
INSERT INTO `sys_district` VALUES ('52', '3', '平山县', '0');
INSERT INTO `sys_district` VALUES ('53', '3', '元氏县', '0');
INSERT INTO `sys_district` VALUES ('54', '3', '赵县', '0');
INSERT INTO `sys_district` VALUES ('55', '3', '辛集市', '0');
INSERT INTO `sys_district` VALUES ('56', '3', '藁城市', '0');
INSERT INTO `sys_district` VALUES ('57', '3', '晋州市', '0');
INSERT INTO `sys_district` VALUES ('58', '3', '新乐市', '0');
INSERT INTO `sys_district` VALUES ('59', '3', '鹿泉市', '0');
INSERT INTO `sys_district` VALUES ('60', '4', '路南区', '0');
INSERT INTO `sys_district` VALUES ('61', '4', '路北区', '0');
INSERT INTO `sys_district` VALUES ('62', '4', '古冶区', '0');
INSERT INTO `sys_district` VALUES ('63', '4', '开平区', '0');
INSERT INTO `sys_district` VALUES ('64', '4', '丰南区', '0');
INSERT INTO `sys_district` VALUES ('65', '4', '丰润区', '0');
INSERT INTO `sys_district` VALUES ('66', '4', '滦县', '0');
INSERT INTO `sys_district` VALUES ('67', '4', '滦南县', '0');
INSERT INTO `sys_district` VALUES ('68', '4', '乐亭县', '0');
INSERT INTO `sys_district` VALUES ('69', '4', '迁西县', '0');
INSERT INTO `sys_district` VALUES ('70', '4', '玉田县', '0');
INSERT INTO `sys_district` VALUES ('71', '4', '唐海县', '0');
INSERT INTO `sys_district` VALUES ('72', '4', '遵化市', '0');
INSERT INTO `sys_district` VALUES ('73', '4', '迁安市', '0');
INSERT INTO `sys_district` VALUES ('74', '5', '海港区', '0');
INSERT INTO `sys_district` VALUES ('75', '5', '山海关区', '0');
INSERT INTO `sys_district` VALUES ('76', '5', '北戴河区', '0');
INSERT INTO `sys_district` VALUES ('77', '5', '青龙满族自治县', '0');
INSERT INTO `sys_district` VALUES ('78', '5', '昌黎县', '0');
INSERT INTO `sys_district` VALUES ('79', '5', '抚宁县', '0');
INSERT INTO `sys_district` VALUES ('80', '5', '卢龙县', '0');
INSERT INTO `sys_district` VALUES ('81', '6', '邯山区', '0');
INSERT INTO `sys_district` VALUES ('82', '6', '丛台区', '0');
INSERT INTO `sys_district` VALUES ('83', '6', '复兴区', '0');
INSERT INTO `sys_district` VALUES ('84', '6', '峰峰矿区', '0');
INSERT INTO `sys_district` VALUES ('85', '6', '邯郸县', '0');
INSERT INTO `sys_district` VALUES ('86', '6', '临漳县', '0');
INSERT INTO `sys_district` VALUES ('87', '6', '成安县', '0');
INSERT INTO `sys_district` VALUES ('88', '6', '大名县', '0');
INSERT INTO `sys_district` VALUES ('89', '6', '涉县', '0');
INSERT INTO `sys_district` VALUES ('90', '6', '磁县', '0');
INSERT INTO `sys_district` VALUES ('91', '6', '肥乡县', '0');
INSERT INTO `sys_district` VALUES ('92', '6', '永年县', '0');
INSERT INTO `sys_district` VALUES ('93', '6', '邱县', '0');
INSERT INTO `sys_district` VALUES ('94', '6', '鸡泽县', '0');
INSERT INTO `sys_district` VALUES ('95', '6', '广平县', '0');
INSERT INTO `sys_district` VALUES ('96', '6', '馆陶县', '0');
INSERT INTO `sys_district` VALUES ('97', '6', '魏县', '0');
INSERT INTO `sys_district` VALUES ('98', '6', '曲周县', '0');
INSERT INTO `sys_district` VALUES ('99', '6', '武安市', '0');
INSERT INTO `sys_district` VALUES ('100', '7', '桥东区', '0');
INSERT INTO `sys_district` VALUES ('101', '7', '桥西区', '0');
INSERT INTO `sys_district` VALUES ('102', '7', '邢台县', '0');
INSERT INTO `sys_district` VALUES ('103', '7', '临城县', '0');
INSERT INTO `sys_district` VALUES ('104', '7', '内丘县', '0');
INSERT INTO `sys_district` VALUES ('105', '7', '柏乡县', '0');
INSERT INTO `sys_district` VALUES ('106', '7', '隆尧县', '0');
INSERT INTO `sys_district` VALUES ('107', '7', '任县', '0');
INSERT INTO `sys_district` VALUES ('108', '7', '南和县', '0');
INSERT INTO `sys_district` VALUES ('109', '7', '宁晋县', '0');
INSERT INTO `sys_district` VALUES ('110', '7', '巨鹿县', '0');
INSERT INTO `sys_district` VALUES ('111', '7', '新河县', '0');
INSERT INTO `sys_district` VALUES ('112', '7', '广宗县', '0');
INSERT INTO `sys_district` VALUES ('113', '7', '平乡县', '0');
INSERT INTO `sys_district` VALUES ('114', '7', '威县', '0');
INSERT INTO `sys_district` VALUES ('115', '7', '清河县', '0');
INSERT INTO `sys_district` VALUES ('116', '7', '临西县', '0');
INSERT INTO `sys_district` VALUES ('117', '7', '南宫市', '0');
INSERT INTO `sys_district` VALUES ('118', '7', '沙河市', '0');
INSERT INTO `sys_district` VALUES ('119', '8', '新市区', '0');
INSERT INTO `sys_district` VALUES ('120', '8', '北市区', '0');
INSERT INTO `sys_district` VALUES ('121', '8', '南市区', '0');
INSERT INTO `sys_district` VALUES ('122', '8', '满城县', '0');
INSERT INTO `sys_district` VALUES ('123', '8', '清苑县', '0');
INSERT INTO `sys_district` VALUES ('124', '8', '涞水县', '0');
INSERT INTO `sys_district` VALUES ('125', '8', '阜平县', '0');
INSERT INTO `sys_district` VALUES ('126', '8', '徐水县', '0');
INSERT INTO `sys_district` VALUES ('127', '8', '定兴县', '0');
INSERT INTO `sys_district` VALUES ('128', '8', '唐县', '0');
INSERT INTO `sys_district` VALUES ('129', '8', '高阳县', '0');
INSERT INTO `sys_district` VALUES ('130', '8', '容城县', '0');
INSERT INTO `sys_district` VALUES ('131', '8', '涞源县', '0');
INSERT INTO `sys_district` VALUES ('132', '8', '望都县', '0');
INSERT INTO `sys_district` VALUES ('133', '8', '安新县', '0');
INSERT INTO `sys_district` VALUES ('134', '8', '易县', '0');
INSERT INTO `sys_district` VALUES ('135', '8', '曲阳县', '0');
INSERT INTO `sys_district` VALUES ('136', '8', '蠡县', '0');
INSERT INTO `sys_district` VALUES ('137', '8', '顺平县', '0');
INSERT INTO `sys_district` VALUES ('138', '8', '博野县', '0');
INSERT INTO `sys_district` VALUES ('139', '8', '雄县', '0');
INSERT INTO `sys_district` VALUES ('140', '8', '涿州市', '0');
INSERT INTO `sys_district` VALUES ('141', '8', '定州市', '0');
INSERT INTO `sys_district` VALUES ('142', '8', '安国市', '0');
INSERT INTO `sys_district` VALUES ('143', '8', '高碑店市', '0');
INSERT INTO `sys_district` VALUES ('144', '9', '桥东区', '0');
INSERT INTO `sys_district` VALUES ('145', '9', '桥西区', '0');
INSERT INTO `sys_district` VALUES ('146', '9', '宣化区', '0');
INSERT INTO `sys_district` VALUES ('147', '9', '下花园区', '0');
INSERT INTO `sys_district` VALUES ('148', '9', '宣化县', '0');
INSERT INTO `sys_district` VALUES ('149', '9', '张北县', '0');
INSERT INTO `sys_district` VALUES ('150', '9', '康保县', '0');
INSERT INTO `sys_district` VALUES ('151', '9', '沽源县', '0');
INSERT INTO `sys_district` VALUES ('152', '9', '尚义县', '0');
INSERT INTO `sys_district` VALUES ('153', '9', '蔚县', '0');
INSERT INTO `sys_district` VALUES ('154', '9', '阳原县', '0');
INSERT INTO `sys_district` VALUES ('155', '9', '怀安县', '0');
INSERT INTO `sys_district` VALUES ('156', '9', '万全县', '0');
INSERT INTO `sys_district` VALUES ('157', '9', '怀来县', '0');
INSERT INTO `sys_district` VALUES ('158', '9', '涿鹿县', '0');
INSERT INTO `sys_district` VALUES ('159', '9', '赤城县', '0');
INSERT INTO `sys_district` VALUES ('160', '9', '崇礼县', '0');
INSERT INTO `sys_district` VALUES ('161', '10', '双桥区', '0');
INSERT INTO `sys_district` VALUES ('162', '10', '双滦区', '0');
INSERT INTO `sys_district` VALUES ('163', '10', '鹰手营子矿区', '0');
INSERT INTO `sys_district` VALUES ('164', '10', '承德县', '0');
INSERT INTO `sys_district` VALUES ('165', '10', '兴隆县', '0');
INSERT INTO `sys_district` VALUES ('166', '10', '平泉县', '0');
INSERT INTO `sys_district` VALUES ('167', '10', '滦平县', '0');
INSERT INTO `sys_district` VALUES ('168', '10', '隆化县', '0');
INSERT INTO `sys_district` VALUES ('169', '10', '丰宁满族自治县', '0');
INSERT INTO `sys_district` VALUES ('170', '10', '宽城满族自治县', '0');
INSERT INTO `sys_district` VALUES ('171', '10', '围场满族蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('172', '11', '新华区', '0');
INSERT INTO `sys_district` VALUES ('173', '11', '运河区', '0');
INSERT INTO `sys_district` VALUES ('174', '11', '沧县', '0');
INSERT INTO `sys_district` VALUES ('175', '11', '青县', '0');
INSERT INTO `sys_district` VALUES ('176', '11', '东光县', '0');
INSERT INTO `sys_district` VALUES ('177', '11', '海兴县', '0');
INSERT INTO `sys_district` VALUES ('178', '11', '盐山县', '0');
INSERT INTO `sys_district` VALUES ('179', '11', '肃宁县', '0');
INSERT INTO `sys_district` VALUES ('180', '11', '南皮县', '0');
INSERT INTO `sys_district` VALUES ('181', '11', '吴桥县', '0');
INSERT INTO `sys_district` VALUES ('182', '11', '献县', '0');
INSERT INTO `sys_district` VALUES ('183', '11', '孟村回族自治县', '0');
INSERT INTO `sys_district` VALUES ('184', '11', '泊头市', '0');
INSERT INTO `sys_district` VALUES ('185', '11', '任丘市', '0');
INSERT INTO `sys_district` VALUES ('186', '11', '黄骅市', '0');
INSERT INTO `sys_district` VALUES ('187', '11', '河间市', '0');
INSERT INTO `sys_district` VALUES ('188', '12', '安次区', '0');
INSERT INTO `sys_district` VALUES ('189', '12', '广阳区', '0');
INSERT INTO `sys_district` VALUES ('190', '12', '固安县', '0');
INSERT INTO `sys_district` VALUES ('191', '12', '永清县', '0');
INSERT INTO `sys_district` VALUES ('192', '12', '香河县', '0');
INSERT INTO `sys_district` VALUES ('193', '12', '大城县', '0');
INSERT INTO `sys_district` VALUES ('194', '12', '文安县', '0');
INSERT INTO `sys_district` VALUES ('195', '12', '大厂回族自治县', '0');
INSERT INTO `sys_district` VALUES ('196', '12', '霸州市', '0');
INSERT INTO `sys_district` VALUES ('197', '12', '三河市', '0');
INSERT INTO `sys_district` VALUES ('198', '13', '桃城区', '0');
INSERT INTO `sys_district` VALUES ('199', '13', '枣强县', '0');
INSERT INTO `sys_district` VALUES ('200', '13', '武邑县', '0');
INSERT INTO `sys_district` VALUES ('201', '13', '武强县', '0');
INSERT INTO `sys_district` VALUES ('202', '13', '饶阳县', '0');
INSERT INTO `sys_district` VALUES ('203', '13', '安平县', '0');
INSERT INTO `sys_district` VALUES ('204', '13', '故城县', '0');
INSERT INTO `sys_district` VALUES ('205', '13', '景县', '0');
INSERT INTO `sys_district` VALUES ('206', '13', '阜城县', '0');
INSERT INTO `sys_district` VALUES ('207', '13', '冀州市', '0');
INSERT INTO `sys_district` VALUES ('208', '13', '深州市', '0');
INSERT INTO `sys_district` VALUES ('209', '14', '小店区', '0');
INSERT INTO `sys_district` VALUES ('210', '14', '迎泽区', '0');
INSERT INTO `sys_district` VALUES ('211', '14', '杏花岭区', '0');
INSERT INTO `sys_district` VALUES ('212', '14', '尖草坪区', '0');
INSERT INTO `sys_district` VALUES ('213', '14', '万柏林区', '0');
INSERT INTO `sys_district` VALUES ('214', '14', '晋源区', '0');
INSERT INTO `sys_district` VALUES ('215', '14', '清徐县', '0');
INSERT INTO `sys_district` VALUES ('216', '14', '阳曲县', '0');
INSERT INTO `sys_district` VALUES ('217', '14', '娄烦县', '0');
INSERT INTO `sys_district` VALUES ('218', '14', '古交市', '0');
INSERT INTO `sys_district` VALUES ('219', '15', '城区', '0');
INSERT INTO `sys_district` VALUES ('220', '15', '矿区', '0');
INSERT INTO `sys_district` VALUES ('221', '15', '南郊区', '0');
INSERT INTO `sys_district` VALUES ('222', '15', '新荣区', '0');
INSERT INTO `sys_district` VALUES ('223', '15', '阳高县', '0');
INSERT INTO `sys_district` VALUES ('224', '15', '天镇县', '0');
INSERT INTO `sys_district` VALUES ('225', '15', '广灵县', '0');
INSERT INTO `sys_district` VALUES ('226', '15', '灵丘县', '0');
INSERT INTO `sys_district` VALUES ('227', '15', '浑源县', '0');
INSERT INTO `sys_district` VALUES ('228', '15', '左云县', '0');
INSERT INTO `sys_district` VALUES ('229', '15', '大同县', '0');
INSERT INTO `sys_district` VALUES ('230', '16', '城区', '0');
INSERT INTO `sys_district` VALUES ('231', '16', '矿区', '0');
INSERT INTO `sys_district` VALUES ('232', '16', '郊区', '0');
INSERT INTO `sys_district` VALUES ('233', '16', '平定县', '0');
INSERT INTO `sys_district` VALUES ('234', '16', '盂县', '0');
INSERT INTO `sys_district` VALUES ('235', '17', '城区', '0');
INSERT INTO `sys_district` VALUES ('236', '17', '郊区', '0');
INSERT INTO `sys_district` VALUES ('237', '17', '长治县', '0');
INSERT INTO `sys_district` VALUES ('238', '17', '襄垣县', '0');
INSERT INTO `sys_district` VALUES ('239', '17', '屯留县', '0');
INSERT INTO `sys_district` VALUES ('240', '17', '平顺县', '0');
INSERT INTO `sys_district` VALUES ('241', '17', '黎城县', '0');
INSERT INTO `sys_district` VALUES ('242', '17', '壶关县', '0');
INSERT INTO `sys_district` VALUES ('243', '17', '长子县', '0');
INSERT INTO `sys_district` VALUES ('244', '17', '武乡县', '0');
INSERT INTO `sys_district` VALUES ('245', '17', '沁县', '0');
INSERT INTO `sys_district` VALUES ('246', '17', '沁源县', '0');
INSERT INTO `sys_district` VALUES ('247', '17', '潞城市', '0');
INSERT INTO `sys_district` VALUES ('248', '18', '城区', '0');
INSERT INTO `sys_district` VALUES ('249', '18', '沁水县', '0');
INSERT INTO `sys_district` VALUES ('250', '18', '阳城县', '0');
INSERT INTO `sys_district` VALUES ('251', '18', '陵川县', '0');
INSERT INTO `sys_district` VALUES ('252', '18', '泽州县', '0');
INSERT INTO `sys_district` VALUES ('253', '18', '高平市', '0');
INSERT INTO `sys_district` VALUES ('254', '19', '朔城区', '0');
INSERT INTO `sys_district` VALUES ('255', '19', '平鲁区', '0');
INSERT INTO `sys_district` VALUES ('256', '19', '山阴县', '0');
INSERT INTO `sys_district` VALUES ('257', '19', '应县', '0');
INSERT INTO `sys_district` VALUES ('258', '19', '右玉县', '0');
INSERT INTO `sys_district` VALUES ('259', '19', '怀仁县', '0');
INSERT INTO `sys_district` VALUES ('260', '20', '榆次区', '0');
INSERT INTO `sys_district` VALUES ('261', '20', '榆社县', '0');
INSERT INTO `sys_district` VALUES ('262', '20', '左权县', '0');
INSERT INTO `sys_district` VALUES ('263', '20', '和顺县', '0');
INSERT INTO `sys_district` VALUES ('264', '20', '昔阳县', '0');
INSERT INTO `sys_district` VALUES ('265', '20', '寿阳县', '0');
INSERT INTO `sys_district` VALUES ('266', '20', '太谷县', '0');
INSERT INTO `sys_district` VALUES ('267', '20', '祁县', '0');
INSERT INTO `sys_district` VALUES ('268', '20', '平遥县', '0');
INSERT INTO `sys_district` VALUES ('269', '20', '灵石县', '0');
INSERT INTO `sys_district` VALUES ('270', '20', '介休市', '0');
INSERT INTO `sys_district` VALUES ('271', '21', '盐湖区', '0');
INSERT INTO `sys_district` VALUES ('272', '21', '临猗县', '0');
INSERT INTO `sys_district` VALUES ('273', '21', '万荣县', '0');
INSERT INTO `sys_district` VALUES ('274', '21', '闻喜县', '0');
INSERT INTO `sys_district` VALUES ('275', '21', '稷山县', '0');
INSERT INTO `sys_district` VALUES ('276', '21', '新绛县', '0');
INSERT INTO `sys_district` VALUES ('277', '21', '绛县', '0');
INSERT INTO `sys_district` VALUES ('278', '21', '垣曲县', '0');
INSERT INTO `sys_district` VALUES ('279', '21', '夏县', '0');
INSERT INTO `sys_district` VALUES ('280', '21', '平陆县', '0');
INSERT INTO `sys_district` VALUES ('281', '21', '芮城县', '0');
INSERT INTO `sys_district` VALUES ('282', '21', '永济市', '0');
INSERT INTO `sys_district` VALUES ('283', '21', '河津市', '0');
INSERT INTO `sys_district` VALUES ('284', '22', '忻府区', '0');
INSERT INTO `sys_district` VALUES ('285', '22', '定襄县', '0');
INSERT INTO `sys_district` VALUES ('286', '22', '五台县', '0');
INSERT INTO `sys_district` VALUES ('287', '22', '代县', '0');
INSERT INTO `sys_district` VALUES ('288', '22', '繁峙县', '0');
INSERT INTO `sys_district` VALUES ('289', '22', '宁武县', '0');
INSERT INTO `sys_district` VALUES ('290', '22', '静乐县', '0');
INSERT INTO `sys_district` VALUES ('291', '22', '神池县', '0');
INSERT INTO `sys_district` VALUES ('292', '22', '五寨县', '0');
INSERT INTO `sys_district` VALUES ('293', '22', '岢岚县', '0');
INSERT INTO `sys_district` VALUES ('294', '22', '河曲县', '0');
INSERT INTO `sys_district` VALUES ('295', '22', '保德县', '0');
INSERT INTO `sys_district` VALUES ('296', '22', '偏关县', '0');
INSERT INTO `sys_district` VALUES ('297', '22', '原平市', '0');
INSERT INTO `sys_district` VALUES ('298', '23', '尧都区', '0');
INSERT INTO `sys_district` VALUES ('299', '23', '曲沃县', '0');
INSERT INTO `sys_district` VALUES ('300', '23', '翼城县', '0');
INSERT INTO `sys_district` VALUES ('301', '23', '襄汾县', '0');
INSERT INTO `sys_district` VALUES ('302', '23', '洪洞县', '0');
INSERT INTO `sys_district` VALUES ('303', '23', '古县', '0');
INSERT INTO `sys_district` VALUES ('304', '23', '安泽县', '0');
INSERT INTO `sys_district` VALUES ('305', '23', '浮山县', '0');
INSERT INTO `sys_district` VALUES ('306', '23', '吉县', '0');
INSERT INTO `sys_district` VALUES ('307', '23', '乡宁县', '0');
INSERT INTO `sys_district` VALUES ('308', '23', '大宁县', '0');
INSERT INTO `sys_district` VALUES ('309', '23', '隰县', '0');
INSERT INTO `sys_district` VALUES ('310', '23', '永和县', '0');
INSERT INTO `sys_district` VALUES ('311', '23', '蒲县', '0');
INSERT INTO `sys_district` VALUES ('312', '23', '汾西县', '0');
INSERT INTO `sys_district` VALUES ('313', '23', '侯马市', '0');
INSERT INTO `sys_district` VALUES ('314', '23', '霍州市', '0');
INSERT INTO `sys_district` VALUES ('315', '24', '离石区', '0');
INSERT INTO `sys_district` VALUES ('316', '24', '文水县', '0');
INSERT INTO `sys_district` VALUES ('317', '24', '交城县', '0');
INSERT INTO `sys_district` VALUES ('318', '24', '兴县', '0');
INSERT INTO `sys_district` VALUES ('319', '24', '临县', '0');
INSERT INTO `sys_district` VALUES ('320', '24', '柳林县', '0');
INSERT INTO `sys_district` VALUES ('321', '24', '石楼县', '0');
INSERT INTO `sys_district` VALUES ('322', '24', '岚县', '0');
INSERT INTO `sys_district` VALUES ('323', '24', '方山县', '0');
INSERT INTO `sys_district` VALUES ('324', '24', '中阳县', '0');
INSERT INTO `sys_district` VALUES ('325', '24', '交口县', '0');
INSERT INTO `sys_district` VALUES ('326', '24', '孝义市', '0');
INSERT INTO `sys_district` VALUES ('327', '24', '汾阳市', '0');
INSERT INTO `sys_district` VALUES ('328', '25', '新城区', '0');
INSERT INTO `sys_district` VALUES ('329', '25', '回民区', '0');
INSERT INTO `sys_district` VALUES ('330', '25', '玉泉区', '0');
INSERT INTO `sys_district` VALUES ('331', '25', '赛罕区', '0');
INSERT INTO `sys_district` VALUES ('332', '25', '土默特左旗', '0');
INSERT INTO `sys_district` VALUES ('333', '25', '托克托县', '0');
INSERT INTO `sys_district` VALUES ('334', '25', '和林格尔县', '0');
INSERT INTO `sys_district` VALUES ('335', '25', '清水河县', '0');
INSERT INTO `sys_district` VALUES ('336', '25', '武川县', '0');
INSERT INTO `sys_district` VALUES ('337', '26', '东河区', '0');
INSERT INTO `sys_district` VALUES ('338', '26', '昆都仑区', '0');
INSERT INTO `sys_district` VALUES ('339', '26', '青山区', '0');
INSERT INTO `sys_district` VALUES ('340', '26', '石拐区', '0');
INSERT INTO `sys_district` VALUES ('341', '26', '白云矿区', '0');
INSERT INTO `sys_district` VALUES ('342', '26', '九原区', '0');
INSERT INTO `sys_district` VALUES ('343', '26', '土默特右旗', '0');
INSERT INTO `sys_district` VALUES ('344', '26', '固阳县', '0');
INSERT INTO `sys_district` VALUES ('345', '26', '达尔罕茂明安联合旗', '0');
INSERT INTO `sys_district` VALUES ('346', '27', '海勃湾区', '0');
INSERT INTO `sys_district` VALUES ('347', '27', '海南区', '0');
INSERT INTO `sys_district` VALUES ('348', '27', '乌达区', '0');
INSERT INTO `sys_district` VALUES ('349', '28', '红山区', '0');
INSERT INTO `sys_district` VALUES ('350', '28', '元宝山区', '0');
INSERT INTO `sys_district` VALUES ('351', '28', '松山区', '0');
INSERT INTO `sys_district` VALUES ('352', '28', '阿鲁科尔沁旗', '0');
INSERT INTO `sys_district` VALUES ('353', '28', '巴林左旗', '0');
INSERT INTO `sys_district` VALUES ('354', '28', '巴林右旗', '0');
INSERT INTO `sys_district` VALUES ('355', '28', '林西县', '0');
INSERT INTO `sys_district` VALUES ('356', '28', '克什克腾旗', '0');
INSERT INTO `sys_district` VALUES ('357', '28', '翁牛特旗', '0');
INSERT INTO `sys_district` VALUES ('358', '28', '喀喇沁旗', '0');
INSERT INTO `sys_district` VALUES ('359', '28', '宁城县', '0');
INSERT INTO `sys_district` VALUES ('360', '28', '敖汉旗', '0');
INSERT INTO `sys_district` VALUES ('361', '29', '科尔沁区', '0');
INSERT INTO `sys_district` VALUES ('362', '29', '科尔沁左翼中旗', '0');
INSERT INTO `sys_district` VALUES ('363', '29', '科尔沁左翼后旗', '0');
INSERT INTO `sys_district` VALUES ('364', '29', '开鲁县', '0');
INSERT INTO `sys_district` VALUES ('365', '29', '库伦旗', '0');
INSERT INTO `sys_district` VALUES ('366', '29', '奈曼旗', '0');
INSERT INTO `sys_district` VALUES ('367', '29', '扎鲁特旗', '0');
INSERT INTO `sys_district` VALUES ('368', '29', '霍林郭勒市', '0');
INSERT INTO `sys_district` VALUES ('369', '30', '东胜区', '0');
INSERT INTO `sys_district` VALUES ('370', '30', '达拉特旗', '0');
INSERT INTO `sys_district` VALUES ('371', '30', '准格尔旗', '0');
INSERT INTO `sys_district` VALUES ('372', '30', '鄂托克前旗', '0');
INSERT INTO `sys_district` VALUES ('373', '30', '鄂托克旗', '0');
INSERT INTO `sys_district` VALUES ('374', '30', '杭锦旗', '0');
INSERT INTO `sys_district` VALUES ('375', '30', '乌审旗', '0');
INSERT INTO `sys_district` VALUES ('376', '30', '伊金霍洛旗', '0');
INSERT INTO `sys_district` VALUES ('377', '31', '海拉尔区', '0');
INSERT INTO `sys_district` VALUES ('378', '31', '阿荣旗', '0');
INSERT INTO `sys_district` VALUES ('379', '31', '莫力达瓦达斡尔族自治旗', '0');
INSERT INTO `sys_district` VALUES ('380', '31', '鄂伦春自治旗', '0');
INSERT INTO `sys_district` VALUES ('381', '31', '鄂温克族自治旗', '0');
INSERT INTO `sys_district` VALUES ('382', '31', '陈巴尔虎旗', '0');
INSERT INTO `sys_district` VALUES ('383', '31', '新巴尔虎左旗', '0');
INSERT INTO `sys_district` VALUES ('384', '31', '新巴尔虎右旗', '0');
INSERT INTO `sys_district` VALUES ('385', '31', '满洲里市', '0');
INSERT INTO `sys_district` VALUES ('386', '31', '牙克石市', '0');
INSERT INTO `sys_district` VALUES ('387', '31', '扎兰屯市', '0');
INSERT INTO `sys_district` VALUES ('388', '31', '额尔古纳市', '0');
INSERT INTO `sys_district` VALUES ('389', '31', '根河市', '0');
INSERT INTO `sys_district` VALUES ('390', '32', '临河区', '0');
INSERT INTO `sys_district` VALUES ('391', '32', '五原县', '0');
INSERT INTO `sys_district` VALUES ('392', '32', '磴口县', '0');
INSERT INTO `sys_district` VALUES ('393', '32', '乌拉特前旗', '0');
INSERT INTO `sys_district` VALUES ('394', '32', '乌拉特中旗', '0');
INSERT INTO `sys_district` VALUES ('395', '32', '乌拉特后旗', '0');
INSERT INTO `sys_district` VALUES ('396', '32', '杭锦后旗', '0');
INSERT INTO `sys_district` VALUES ('397', '33', '集宁区', '0');
INSERT INTO `sys_district` VALUES ('398', '33', '卓资县', '0');
INSERT INTO `sys_district` VALUES ('399', '33', '化德县', '0');
INSERT INTO `sys_district` VALUES ('400', '33', '商都县', '0');
INSERT INTO `sys_district` VALUES ('401', '33', '兴和县', '0');
INSERT INTO `sys_district` VALUES ('402', '33', '凉城县', '0');
INSERT INTO `sys_district` VALUES ('403', '33', '察哈尔右翼前旗', '0');
INSERT INTO `sys_district` VALUES ('404', '33', '察哈尔右翼中旗', '0');
INSERT INTO `sys_district` VALUES ('405', '33', '察哈尔右翼后旗', '0');
INSERT INTO `sys_district` VALUES ('406', '33', '四子王旗', '0');
INSERT INTO `sys_district` VALUES ('407', '33', '丰镇市', '0');
INSERT INTO `sys_district` VALUES ('408', '34', '乌兰浩特市', '0');
INSERT INTO `sys_district` VALUES ('409', '34', '阿尔山市', '0');
INSERT INTO `sys_district` VALUES ('410', '34', '科尔沁右翼前旗', '0');
INSERT INTO `sys_district` VALUES ('411', '34', '科尔沁右翼中旗', '0');
INSERT INTO `sys_district` VALUES ('412', '34', '扎赉特旗', '0');
INSERT INTO `sys_district` VALUES ('413', '34', '突泉县', '0');
INSERT INTO `sys_district` VALUES ('414', '35', '二连浩特市', '0');
INSERT INTO `sys_district` VALUES ('415', '35', '锡林浩特市', '0');
INSERT INTO `sys_district` VALUES ('416', '35', '阿巴嘎旗', '0');
INSERT INTO `sys_district` VALUES ('417', '35', '苏尼特左旗', '0');
INSERT INTO `sys_district` VALUES ('418', '35', '苏尼特右旗', '0');
INSERT INTO `sys_district` VALUES ('419', '35', '东乌珠穆沁旗', '0');
INSERT INTO `sys_district` VALUES ('420', '35', '西乌珠穆沁旗', '0');
INSERT INTO `sys_district` VALUES ('421', '35', '太仆寺旗', '0');
INSERT INTO `sys_district` VALUES ('422', '35', '镶黄旗', '0');
INSERT INTO `sys_district` VALUES ('423', '35', '正镶白旗', '0');
INSERT INTO `sys_district` VALUES ('424', '35', '正蓝旗', '0');
INSERT INTO `sys_district` VALUES ('425', '35', '多伦县', '0');
INSERT INTO `sys_district` VALUES ('426', '36', '阿拉善左旗', '0');
INSERT INTO `sys_district` VALUES ('427', '36', '阿拉善右旗', '0');
INSERT INTO `sys_district` VALUES ('428', '36', '额济纳旗', '0');
INSERT INTO `sys_district` VALUES ('429', '37', '和平区', '0');
INSERT INTO `sys_district` VALUES ('430', '37', '沈河区', '0');
INSERT INTO `sys_district` VALUES ('431', '37', '大东区', '0');
INSERT INTO `sys_district` VALUES ('432', '37', '皇姑区', '0');
INSERT INTO `sys_district` VALUES ('433', '37', '铁西区', '0');
INSERT INTO `sys_district` VALUES ('434', '37', '苏家屯区', '0');
INSERT INTO `sys_district` VALUES ('435', '37', '东陵区', '0');
INSERT INTO `sys_district` VALUES ('436', '37', '新城子区', '0');
INSERT INTO `sys_district` VALUES ('437', '37', '于洪区', '0');
INSERT INTO `sys_district` VALUES ('438', '37', '辽中县', '0');
INSERT INTO `sys_district` VALUES ('439', '37', '康平县', '0');
INSERT INTO `sys_district` VALUES ('440', '37', '法库县', '0');
INSERT INTO `sys_district` VALUES ('441', '37', '新民市', '0');
INSERT INTO `sys_district` VALUES ('442', '38', '中山区', '0');
INSERT INTO `sys_district` VALUES ('443', '38', '西岗区', '0');
INSERT INTO `sys_district` VALUES ('444', '38', '沙河口区', '0');
INSERT INTO `sys_district` VALUES ('445', '38', '甘井子区', '0');
INSERT INTO `sys_district` VALUES ('446', '38', '旅顺口区', '0');
INSERT INTO `sys_district` VALUES ('447', '38', '金州区', '0');
INSERT INTO `sys_district` VALUES ('448', '38', '长海县', '0');
INSERT INTO `sys_district` VALUES ('449', '38', '瓦房店市', '0');
INSERT INTO `sys_district` VALUES ('450', '38', '普兰店市', '0');
INSERT INTO `sys_district` VALUES ('451', '38', '庄河市', '0');
INSERT INTO `sys_district` VALUES ('452', '39', '铁东区', '0');
INSERT INTO `sys_district` VALUES ('453', '39', '铁西区', '0');
INSERT INTO `sys_district` VALUES ('454', '39', '立山区', '0');
INSERT INTO `sys_district` VALUES ('455', '39', '千山区', '0');
INSERT INTO `sys_district` VALUES ('456', '39', '台安县', '0');
INSERT INTO `sys_district` VALUES ('457', '39', '岫岩满族自治县', '0');
INSERT INTO `sys_district` VALUES ('458', '39', '海城市', '0');
INSERT INTO `sys_district` VALUES ('459', '40', '新抚区', '0');
INSERT INTO `sys_district` VALUES ('460', '40', '东洲区', '0');
INSERT INTO `sys_district` VALUES ('461', '40', '望花区', '0');
INSERT INTO `sys_district` VALUES ('462', '40', '顺城区', '0');
INSERT INTO `sys_district` VALUES ('463', '40', '抚顺县', '0');
INSERT INTO `sys_district` VALUES ('464', '40', '新宾满族自治县', '0');
INSERT INTO `sys_district` VALUES ('465', '40', '清原满族自治县', '0');
INSERT INTO `sys_district` VALUES ('466', '41', '平山区', '0');
INSERT INTO `sys_district` VALUES ('467', '41', '溪湖区', '0');
INSERT INTO `sys_district` VALUES ('468', '41', '明山区', '0');
INSERT INTO `sys_district` VALUES ('469', '41', '南芬区', '0');
INSERT INTO `sys_district` VALUES ('470', '41', '本溪满族自治县', '0');
INSERT INTO `sys_district` VALUES ('471', '41', '桓仁满族自治县', '0');
INSERT INTO `sys_district` VALUES ('472', '42', '元宝区', '0');
INSERT INTO `sys_district` VALUES ('473', '42', '振兴区', '0');
INSERT INTO `sys_district` VALUES ('474', '42', '振安区', '0');
INSERT INTO `sys_district` VALUES ('475', '42', '宽甸满族自治县', '0');
INSERT INTO `sys_district` VALUES ('476', '42', '东港市', '0');
INSERT INTO `sys_district` VALUES ('477', '42', '凤城市', '0');
INSERT INTO `sys_district` VALUES ('478', '43', '古塔区', '0');
INSERT INTO `sys_district` VALUES ('479', '43', '凌河区', '0');
INSERT INTO `sys_district` VALUES ('480', '43', '太和区', '0');
INSERT INTO `sys_district` VALUES ('481', '43', '黑山县', '0');
INSERT INTO `sys_district` VALUES ('482', '43', '义县', '0');
INSERT INTO `sys_district` VALUES ('483', '43', '凌海市', '0');
INSERT INTO `sys_district` VALUES ('484', '43', '北宁市', '0');
INSERT INTO `sys_district` VALUES ('485', '44', '站前区', '0');
INSERT INTO `sys_district` VALUES ('486', '44', '西市区', '0');
INSERT INTO `sys_district` VALUES ('487', '44', '鲅鱼圈区', '0');
INSERT INTO `sys_district` VALUES ('488', '44', '老边区', '0');
INSERT INTO `sys_district` VALUES ('489', '44', '盖州市', '0');
INSERT INTO `sys_district` VALUES ('490', '44', '大石桥市', '0');
INSERT INTO `sys_district` VALUES ('491', '45', '海州区', '0');
INSERT INTO `sys_district` VALUES ('492', '45', '新邱区', '0');
INSERT INTO `sys_district` VALUES ('493', '45', '太平区', '0');
INSERT INTO `sys_district` VALUES ('494', '45', '清河门区', '0');
INSERT INTO `sys_district` VALUES ('495', '45', '细河区', '0');
INSERT INTO `sys_district` VALUES ('496', '45', '阜新蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('497', '45', '彰武县', '0');
INSERT INTO `sys_district` VALUES ('498', '46', '白塔区', '0');
INSERT INTO `sys_district` VALUES ('499', '46', '文圣区', '0');
INSERT INTO `sys_district` VALUES ('500', '46', '宏伟区', '0');
INSERT INTO `sys_district` VALUES ('501', '46', '弓长岭区', '0');
INSERT INTO `sys_district` VALUES ('502', '46', '太子河区', '0');
INSERT INTO `sys_district` VALUES ('503', '46', '辽阳县', '0');
INSERT INTO `sys_district` VALUES ('504', '46', '灯塔市', '0');
INSERT INTO `sys_district` VALUES ('505', '47', '双台子区', '0');
INSERT INTO `sys_district` VALUES ('506', '47', '兴隆台区', '0');
INSERT INTO `sys_district` VALUES ('507', '47', '大洼县', '0');
INSERT INTO `sys_district` VALUES ('508', '47', '盘山县', '0');
INSERT INTO `sys_district` VALUES ('509', '48', '银州区', '0');
INSERT INTO `sys_district` VALUES ('510', '48', '清河区', '0');
INSERT INTO `sys_district` VALUES ('511', '48', '铁岭县', '0');
INSERT INTO `sys_district` VALUES ('512', '48', '西丰县', '0');
INSERT INTO `sys_district` VALUES ('513', '48', '昌图县', '0');
INSERT INTO `sys_district` VALUES ('514', '48', '调兵山市', '0');
INSERT INTO `sys_district` VALUES ('515', '48', '开原市', '0');
INSERT INTO `sys_district` VALUES ('516', '49', '双塔区', '0');
INSERT INTO `sys_district` VALUES ('517', '49', '龙城区', '0');
INSERT INTO `sys_district` VALUES ('518', '49', '朝阳县', '0');
INSERT INTO `sys_district` VALUES ('519', '49', '建平县', '0');
INSERT INTO `sys_district` VALUES ('520', '49', '喀喇沁左翼蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('521', '49', '北票市', '0');
INSERT INTO `sys_district` VALUES ('522', '49', '凌源市', '0');
INSERT INTO `sys_district` VALUES ('523', '50', '连山区', '0');
INSERT INTO `sys_district` VALUES ('524', '50', '龙港区', '0');
INSERT INTO `sys_district` VALUES ('525', '50', '南票区', '0');
INSERT INTO `sys_district` VALUES ('526', '50', '绥中县', '0');
INSERT INTO `sys_district` VALUES ('527', '50', '建昌县', '0');
INSERT INTO `sys_district` VALUES ('528', '50', '兴城市', '0');
INSERT INTO `sys_district` VALUES ('529', '51', '南关区', '0');
INSERT INTO `sys_district` VALUES ('530', '51', '宽城区', '0');
INSERT INTO `sys_district` VALUES ('531', '51', '朝阳区', '0');
INSERT INTO `sys_district` VALUES ('532', '51', '二道区', '0');
INSERT INTO `sys_district` VALUES ('533', '51', '绿园区', '0');
INSERT INTO `sys_district` VALUES ('534', '51', '双阳区', '0');
INSERT INTO `sys_district` VALUES ('535', '51', '农安县', '0');
INSERT INTO `sys_district` VALUES ('536', '51', '九台市', '0');
INSERT INTO `sys_district` VALUES ('537', '51', '榆树市', '0');
INSERT INTO `sys_district` VALUES ('538', '51', '德惠市', '0');
INSERT INTO `sys_district` VALUES ('539', '52', '昌邑区', '0');
INSERT INTO `sys_district` VALUES ('540', '52', '龙潭区', '0');
INSERT INTO `sys_district` VALUES ('541', '52', '船营区', '0');
INSERT INTO `sys_district` VALUES ('542', '52', '丰满区', '0');
INSERT INTO `sys_district` VALUES ('543', '52', '永吉县', '0');
INSERT INTO `sys_district` VALUES ('544', '52', '蛟河市', '0');
INSERT INTO `sys_district` VALUES ('545', '52', '桦甸市', '0');
INSERT INTO `sys_district` VALUES ('546', '52', '舒兰市', '0');
INSERT INTO `sys_district` VALUES ('547', '52', '磐石市', '0');
INSERT INTO `sys_district` VALUES ('548', '53', '铁西区', '0');
INSERT INTO `sys_district` VALUES ('549', '53', '铁东区', '0');
INSERT INTO `sys_district` VALUES ('550', '53', '梨树县', '0');
INSERT INTO `sys_district` VALUES ('551', '53', '伊通满族自治县', '0');
INSERT INTO `sys_district` VALUES ('552', '53', '公主岭市', '0');
INSERT INTO `sys_district` VALUES ('553', '53', '双辽市', '0');
INSERT INTO `sys_district` VALUES ('554', '54', '龙山区', '0');
INSERT INTO `sys_district` VALUES ('555', '54', '西安区', '0');
INSERT INTO `sys_district` VALUES ('556', '54', '东丰县', '0');
INSERT INTO `sys_district` VALUES ('557', '54', '东辽县', '0');
INSERT INTO `sys_district` VALUES ('558', '55', '东昌区', '0');
INSERT INTO `sys_district` VALUES ('559', '55', '二道江区', '0');
INSERT INTO `sys_district` VALUES ('560', '55', '通化县', '0');
INSERT INTO `sys_district` VALUES ('561', '55', '辉南县', '0');
INSERT INTO `sys_district` VALUES ('562', '55', '柳河县', '0');
INSERT INTO `sys_district` VALUES ('563', '55', '梅河口市', '0');
INSERT INTO `sys_district` VALUES ('564', '55', '集安市', '0');
INSERT INTO `sys_district` VALUES ('565', '56', '八道江区', '0');
INSERT INTO `sys_district` VALUES ('566', '56', '抚松县', '0');
INSERT INTO `sys_district` VALUES ('567', '56', '靖宇县', '0');
INSERT INTO `sys_district` VALUES ('568', '56', '长白朝鲜族自治县', '0');
INSERT INTO `sys_district` VALUES ('569', '56', '江源县', '0');
INSERT INTO `sys_district` VALUES ('570', '56', '临江市', '0');
INSERT INTO `sys_district` VALUES ('571', '57', '宁江区', '0');
INSERT INTO `sys_district` VALUES ('572', '57', '前郭尔罗斯蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('573', '57', '长岭县', '0');
INSERT INTO `sys_district` VALUES ('574', '57', '乾安县', '0');
INSERT INTO `sys_district` VALUES ('575', '57', '扶余县', '0');
INSERT INTO `sys_district` VALUES ('576', '58', '洮北区', '0');
INSERT INTO `sys_district` VALUES ('577', '58', '镇赉县', '0');
INSERT INTO `sys_district` VALUES ('578', '58', '通榆县', '0');
INSERT INTO `sys_district` VALUES ('579', '58', '洮南市', '0');
INSERT INTO `sys_district` VALUES ('580', '58', '大安市', '0');
INSERT INTO `sys_district` VALUES ('581', '59', '延吉市', '0');
INSERT INTO `sys_district` VALUES ('582', '59', '图们市', '0');
INSERT INTO `sys_district` VALUES ('583', '59', '敦化市', '0');
INSERT INTO `sys_district` VALUES ('584', '59', '珲春市', '0');
INSERT INTO `sys_district` VALUES ('585', '59', '龙井市', '0');
INSERT INTO `sys_district` VALUES ('586', '59', '和龙市', '0');
INSERT INTO `sys_district` VALUES ('587', '59', '汪清县', '0');
INSERT INTO `sys_district` VALUES ('588', '59', '安图县', '0');
INSERT INTO `sys_district` VALUES ('589', '60', '道里区', '0');
INSERT INTO `sys_district` VALUES ('590', '60', '南岗区', '0');
INSERT INTO `sys_district` VALUES ('591', '60', '道外区', '0');
INSERT INTO `sys_district` VALUES ('592', '60', '香坊区', '0');
INSERT INTO `sys_district` VALUES ('593', '60', '动力区', '0');
INSERT INTO `sys_district` VALUES ('594', '60', '平房区', '0');
INSERT INTO `sys_district` VALUES ('595', '60', '松北区', '0');
INSERT INTO `sys_district` VALUES ('596', '60', '呼兰区', '0');
INSERT INTO `sys_district` VALUES ('597', '60', '依兰县', '0');
INSERT INTO `sys_district` VALUES ('598', '60', '方正县', '0');
INSERT INTO `sys_district` VALUES ('599', '60', '宾县', '0');
INSERT INTO `sys_district` VALUES ('600', '60', '巴彦县', '0');
INSERT INTO `sys_district` VALUES ('601', '60', '木兰县', '0');
INSERT INTO `sys_district` VALUES ('602', '60', '通河县', '0');
INSERT INTO `sys_district` VALUES ('603', '60', '延寿县', '0');
INSERT INTO `sys_district` VALUES ('604', '60', '阿城市', '0');
INSERT INTO `sys_district` VALUES ('605', '60', '双城市', '0');
INSERT INTO `sys_district` VALUES ('606', '60', '尚志市', '0');
INSERT INTO `sys_district` VALUES ('607', '60', '五常市', '0');
INSERT INTO `sys_district` VALUES ('608', '61', '龙沙区', '0');
INSERT INTO `sys_district` VALUES ('609', '61', '建华区', '0');
INSERT INTO `sys_district` VALUES ('610', '61', '铁锋区', '0');
INSERT INTO `sys_district` VALUES ('611', '61', '昂昂溪区', '0');
INSERT INTO `sys_district` VALUES ('612', '61', '富拉尔基区', '0');
INSERT INTO `sys_district` VALUES ('613', '61', '碾子山区', '0');
INSERT INTO `sys_district` VALUES ('614', '61', '梅里斯达斡尔族区', '0');
INSERT INTO `sys_district` VALUES ('615', '61', '龙江县', '0');
INSERT INTO `sys_district` VALUES ('616', '61', '依安县', '0');
INSERT INTO `sys_district` VALUES ('617', '61', '泰来县', '0');
INSERT INTO `sys_district` VALUES ('618', '61', '甘南县', '0');
INSERT INTO `sys_district` VALUES ('619', '61', '富裕县', '0');
INSERT INTO `sys_district` VALUES ('620', '61', '克山县', '0');
INSERT INTO `sys_district` VALUES ('621', '61', '克东县', '0');
INSERT INTO `sys_district` VALUES ('622', '61', '拜泉县', '0');
INSERT INTO `sys_district` VALUES ('623', '61', '讷河市', '0');
INSERT INTO `sys_district` VALUES ('624', '62', '鸡冠区', '0');
INSERT INTO `sys_district` VALUES ('625', '62', '恒山区', '0');
INSERT INTO `sys_district` VALUES ('626', '62', '滴道区', '0');
INSERT INTO `sys_district` VALUES ('627', '62', '梨树区', '0');
INSERT INTO `sys_district` VALUES ('628', '62', '城子河区', '0');
INSERT INTO `sys_district` VALUES ('629', '62', '麻山区', '0');
INSERT INTO `sys_district` VALUES ('630', '62', '鸡东县', '0');
INSERT INTO `sys_district` VALUES ('631', '62', '虎林市', '0');
INSERT INTO `sys_district` VALUES ('632', '62', '密山市', '0');
INSERT INTO `sys_district` VALUES ('633', '63', '向阳区', '0');
INSERT INTO `sys_district` VALUES ('634', '63', '工农区', '0');
INSERT INTO `sys_district` VALUES ('635', '63', '南山区', '0');
INSERT INTO `sys_district` VALUES ('636', '63', '兴安区', '0');
INSERT INTO `sys_district` VALUES ('637', '63', '东山区', '0');
INSERT INTO `sys_district` VALUES ('638', '63', '兴山区', '0');
INSERT INTO `sys_district` VALUES ('639', '63', '萝北县', '0');
INSERT INTO `sys_district` VALUES ('640', '63', '绥滨县', '0');
INSERT INTO `sys_district` VALUES ('641', '64', '尖山区', '0');
INSERT INTO `sys_district` VALUES ('642', '64', '岭东区', '0');
INSERT INTO `sys_district` VALUES ('643', '64', '四方台区', '0');
INSERT INTO `sys_district` VALUES ('644', '64', '宝山区', '0');
INSERT INTO `sys_district` VALUES ('645', '64', '集贤县', '0');
INSERT INTO `sys_district` VALUES ('646', '64', '友谊县', '0');
INSERT INTO `sys_district` VALUES ('647', '64', '宝清县', '0');
INSERT INTO `sys_district` VALUES ('648', '64', '饶河县', '0');
INSERT INTO `sys_district` VALUES ('649', '65', '萨尔图区', '0');
INSERT INTO `sys_district` VALUES ('650', '65', '龙凤区', '0');
INSERT INTO `sys_district` VALUES ('651', '65', '让胡路区', '0');
INSERT INTO `sys_district` VALUES ('652', '65', '红岗区', '0');
INSERT INTO `sys_district` VALUES ('653', '65', '大同区', '0');
INSERT INTO `sys_district` VALUES ('654', '65', '肇州县', '0');
INSERT INTO `sys_district` VALUES ('655', '65', '肇源县', '0');
INSERT INTO `sys_district` VALUES ('656', '65', '林甸县', '0');
INSERT INTO `sys_district` VALUES ('657', '65', '杜尔伯特蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('658', '66', '伊春区', '0');
INSERT INTO `sys_district` VALUES ('659', '66', '南岔区', '0');
INSERT INTO `sys_district` VALUES ('660', '66', '友好区', '0');
INSERT INTO `sys_district` VALUES ('661', '66', '西林区', '0');
INSERT INTO `sys_district` VALUES ('662', '66', '翠峦区', '0');
INSERT INTO `sys_district` VALUES ('663', '66', '新青区', '0');
INSERT INTO `sys_district` VALUES ('664', '66', '美溪区', '0');
INSERT INTO `sys_district` VALUES ('665', '66', '金山屯区', '0');
INSERT INTO `sys_district` VALUES ('666', '66', '五营区', '0');
INSERT INTO `sys_district` VALUES ('667', '66', '乌马河区', '0');
INSERT INTO `sys_district` VALUES ('668', '66', '汤旺河区', '0');
INSERT INTO `sys_district` VALUES ('669', '66', '带岭区', '0');
INSERT INTO `sys_district` VALUES ('670', '66', '乌伊岭区', '0');
INSERT INTO `sys_district` VALUES ('671', '66', '红星区', '0');
INSERT INTO `sys_district` VALUES ('672', '66', '上甘岭区', '0');
INSERT INTO `sys_district` VALUES ('673', '66', '嘉荫县', '0');
INSERT INTO `sys_district` VALUES ('674', '66', '铁力市', '0');
INSERT INTO `sys_district` VALUES ('675', '67', '永红区', '0');
INSERT INTO `sys_district` VALUES ('676', '67', '向阳区', '0');
INSERT INTO `sys_district` VALUES ('677', '67', '前进区', '0');
INSERT INTO `sys_district` VALUES ('678', '67', '东风区', '0');
INSERT INTO `sys_district` VALUES ('679', '67', '郊区', '0');
INSERT INTO `sys_district` VALUES ('680', '67', '桦南县', '0');
INSERT INTO `sys_district` VALUES ('681', '67', '桦川县', '0');
INSERT INTO `sys_district` VALUES ('682', '67', '汤原县', '0');
INSERT INTO `sys_district` VALUES ('683', '67', '抚远县', '0');
INSERT INTO `sys_district` VALUES ('684', '67', '同江市', '0');
INSERT INTO `sys_district` VALUES ('685', '67', '富锦市', '0');
INSERT INTO `sys_district` VALUES ('686', '68', '新兴区', '0');
INSERT INTO `sys_district` VALUES ('687', '68', '桃山区', '0');
INSERT INTO `sys_district` VALUES ('688', '68', '茄子河区', '0');
INSERT INTO `sys_district` VALUES ('689', '68', '勃利县', '0');
INSERT INTO `sys_district` VALUES ('690', '69', '东安区', '0');
INSERT INTO `sys_district` VALUES ('691', '69', '阳明区', '0');
INSERT INTO `sys_district` VALUES ('692', '69', '爱民区', '0');
INSERT INTO `sys_district` VALUES ('693', '69', '西安区', '0');
INSERT INTO `sys_district` VALUES ('694', '69', '东宁县', '0');
INSERT INTO `sys_district` VALUES ('695', '69', '林口县', '0');
INSERT INTO `sys_district` VALUES ('696', '69', '绥芬河市', '0');
INSERT INTO `sys_district` VALUES ('697', '69', '海林市', '0');
INSERT INTO `sys_district` VALUES ('698', '69', '宁安市', '0');
INSERT INTO `sys_district` VALUES ('699', '69', '穆棱市', '0');
INSERT INTO `sys_district` VALUES ('700', '70', '爱辉区', '0');
INSERT INTO `sys_district` VALUES ('701', '70', '嫩江县', '0');
INSERT INTO `sys_district` VALUES ('702', '70', '逊克县', '0');
INSERT INTO `sys_district` VALUES ('703', '70', '孙吴县', '0');
INSERT INTO `sys_district` VALUES ('704', '70', '北安市', '0');
INSERT INTO `sys_district` VALUES ('705', '70', '五大连池市', '0');
INSERT INTO `sys_district` VALUES ('706', '71', '北林区', '0');
INSERT INTO `sys_district` VALUES ('707', '71', '望奎县', '0');
INSERT INTO `sys_district` VALUES ('708', '71', '兰西县', '0');
INSERT INTO `sys_district` VALUES ('709', '71', '青冈县', '0');
INSERT INTO `sys_district` VALUES ('710', '71', '庆安县', '0');
INSERT INTO `sys_district` VALUES ('711', '71', '明水县', '0');
INSERT INTO `sys_district` VALUES ('712', '71', '绥棱县', '0');
INSERT INTO `sys_district` VALUES ('713', '71', '安达市', '0');
INSERT INTO `sys_district` VALUES ('714', '71', '肇东市', '0');
INSERT INTO `sys_district` VALUES ('715', '71', '海伦市', '0');
INSERT INTO `sys_district` VALUES ('716', '72', '呼玛县', '0');
INSERT INTO `sys_district` VALUES ('717', '72', '塔河县', '0');
INSERT INTO `sys_district` VALUES ('718', '72', '漠河县', '0');
INSERT INTO `sys_district` VALUES ('719', '73', '黄浦区', '0');
INSERT INTO `sys_district` VALUES ('720', '73', '卢湾区', '0');
INSERT INTO `sys_district` VALUES ('721', '73', '徐汇区', '0');
INSERT INTO `sys_district` VALUES ('722', '73', '长宁区', '0');
INSERT INTO `sys_district` VALUES ('723', '73', '静安区', '0');
INSERT INTO `sys_district` VALUES ('724', '73', '普陀区', '0');
INSERT INTO `sys_district` VALUES ('725', '73', '闸北区', '0');
INSERT INTO `sys_district` VALUES ('726', '73', '虹口区', '0');
INSERT INTO `sys_district` VALUES ('727', '73', '杨浦区', '0');
INSERT INTO `sys_district` VALUES ('728', '73', '闵行区', '0');
INSERT INTO `sys_district` VALUES ('729', '73', '宝山区', '0');
INSERT INTO `sys_district` VALUES ('730', '73', '嘉定区', '0');
INSERT INTO `sys_district` VALUES ('731', '73', '浦东新区', '0');
INSERT INTO `sys_district` VALUES ('732', '73', '金山区', '0');
INSERT INTO `sys_district` VALUES ('733', '73', '松江区', '0');
INSERT INTO `sys_district` VALUES ('734', '73', '青浦区', '0');
INSERT INTO `sys_district` VALUES ('735', '73', '南汇区', '0');
INSERT INTO `sys_district` VALUES ('736', '73', '奉贤区', '0');
INSERT INTO `sys_district` VALUES ('737', '73', '崇明县', '0');
INSERT INTO `sys_district` VALUES ('738', '74', '玄武区', '0');
INSERT INTO `sys_district` VALUES ('739', '74', '白下区', '0');
INSERT INTO `sys_district` VALUES ('740', '74', '秦淮区', '0');
INSERT INTO `sys_district` VALUES ('741', '74', '建邺区', '0');
INSERT INTO `sys_district` VALUES ('742', '74', '鼓楼区', '0');
INSERT INTO `sys_district` VALUES ('743', '74', '下关区', '0');
INSERT INTO `sys_district` VALUES ('744', '74', '浦口区', '0');
INSERT INTO `sys_district` VALUES ('745', '74', '栖霞区', '0');
INSERT INTO `sys_district` VALUES ('746', '74', '雨花台区', '0');
INSERT INTO `sys_district` VALUES ('747', '74', '江宁区', '0');
INSERT INTO `sys_district` VALUES ('748', '74', '六合区', '0');
INSERT INTO `sys_district` VALUES ('749', '74', '溧水县', '0');
INSERT INTO `sys_district` VALUES ('750', '74', '高淳县', '0');
INSERT INTO `sys_district` VALUES ('751', '75', '崇安区', '0');
INSERT INTO `sys_district` VALUES ('752', '75', '南长区', '0');
INSERT INTO `sys_district` VALUES ('753', '75', '北塘区', '0');
INSERT INTO `sys_district` VALUES ('754', '75', '锡山区', '0');
INSERT INTO `sys_district` VALUES ('755', '75', '惠山区', '0');
INSERT INTO `sys_district` VALUES ('756', '75', '滨湖区', '0');
INSERT INTO `sys_district` VALUES ('757', '75', '江阴市', '0');
INSERT INTO `sys_district` VALUES ('758', '75', '宜兴市', '0');
INSERT INTO `sys_district` VALUES ('759', '76', '鼓楼区', '0');
INSERT INTO `sys_district` VALUES ('760', '76', '云龙区', '0');
INSERT INTO `sys_district` VALUES ('761', '76', '九里区', '0');
INSERT INTO `sys_district` VALUES ('762', '76', '贾汪区', '0');
INSERT INTO `sys_district` VALUES ('763', '76', '泉山区', '0');
INSERT INTO `sys_district` VALUES ('764', '76', '丰县', '0');
INSERT INTO `sys_district` VALUES ('765', '76', '沛县', '0');
INSERT INTO `sys_district` VALUES ('766', '76', '铜山县', '0');
INSERT INTO `sys_district` VALUES ('767', '76', '睢宁县', '0');
INSERT INTO `sys_district` VALUES ('768', '76', '新沂市', '0');
INSERT INTO `sys_district` VALUES ('769', '76', '邳州市', '0');
INSERT INTO `sys_district` VALUES ('770', '77', '天宁区', '0');
INSERT INTO `sys_district` VALUES ('771', '77', '钟楼区', '0');
INSERT INTO `sys_district` VALUES ('772', '77', '戚墅堰区', '0');
INSERT INTO `sys_district` VALUES ('773', '77', '新北区', '0');
INSERT INTO `sys_district` VALUES ('774', '77', '武进区', '0');
INSERT INTO `sys_district` VALUES ('775', '77', '溧阳市', '0');
INSERT INTO `sys_district` VALUES ('776', '77', '金坛市', '0');
INSERT INTO `sys_district` VALUES ('777', '78', '沧浪区', '0');
INSERT INTO `sys_district` VALUES ('778', '78', '平江区', '0');
INSERT INTO `sys_district` VALUES ('779', '78', '金阊区', '0');
INSERT INTO `sys_district` VALUES ('780', '78', '虎丘区', '0');
INSERT INTO `sys_district` VALUES ('781', '78', '吴中区', '0');
INSERT INTO `sys_district` VALUES ('782', '78', '相城区', '0');
INSERT INTO `sys_district` VALUES ('783', '78', '常熟市', '0');
INSERT INTO `sys_district` VALUES ('784', '78', '张家港市', '0');
INSERT INTO `sys_district` VALUES ('785', '78', '昆山市', '0');
INSERT INTO `sys_district` VALUES ('786', '78', '吴江市', '0');
INSERT INTO `sys_district` VALUES ('787', '78', '太仓市', '0');
INSERT INTO `sys_district` VALUES ('788', '79', '崇川区', '0');
INSERT INTO `sys_district` VALUES ('789', '79', '港闸区', '0');
INSERT INTO `sys_district` VALUES ('790', '79', '海安县', '0');
INSERT INTO `sys_district` VALUES ('791', '79', '如东县', '0');
INSERT INTO `sys_district` VALUES ('792', '79', '启东市', '0');
INSERT INTO `sys_district` VALUES ('793', '79', '如皋市', '0');
INSERT INTO `sys_district` VALUES ('794', '79', '通州市', '0');
INSERT INTO `sys_district` VALUES ('795', '79', '海门市', '0');
INSERT INTO `sys_district` VALUES ('796', '80', '连云区', '0');
INSERT INTO `sys_district` VALUES ('797', '80', '新浦区', '0');
INSERT INTO `sys_district` VALUES ('798', '80', '海州区', '0');
INSERT INTO `sys_district` VALUES ('799', '80', '赣榆县', '0');
INSERT INTO `sys_district` VALUES ('800', '80', '东海县', '0');
INSERT INTO `sys_district` VALUES ('801', '80', '灌云县', '0');
INSERT INTO `sys_district` VALUES ('802', '80', '灌南县', '0');
INSERT INTO `sys_district` VALUES ('803', '81', '清河区', '0');
INSERT INTO `sys_district` VALUES ('804', '81', '楚州区', '0');
INSERT INTO `sys_district` VALUES ('805', '81', '淮阴区', '0');
INSERT INTO `sys_district` VALUES ('806', '81', '清浦区', '0');
INSERT INTO `sys_district` VALUES ('807', '81', '涟水县', '0');
INSERT INTO `sys_district` VALUES ('808', '81', '洪泽县', '0');
INSERT INTO `sys_district` VALUES ('809', '81', '盱眙县', '0');
INSERT INTO `sys_district` VALUES ('810', '81', '金湖县', '0');
INSERT INTO `sys_district` VALUES ('811', '82', '亭湖区', '0');
INSERT INTO `sys_district` VALUES ('812', '82', '盐都区', '0');
INSERT INTO `sys_district` VALUES ('813', '82', '响水县', '0');
INSERT INTO `sys_district` VALUES ('814', '82', '滨海县', '0');
INSERT INTO `sys_district` VALUES ('815', '82', '阜宁县', '0');
INSERT INTO `sys_district` VALUES ('816', '82', '射阳县', '0');
INSERT INTO `sys_district` VALUES ('817', '82', '建湖县', '0');
INSERT INTO `sys_district` VALUES ('818', '82', '东台市', '0');
INSERT INTO `sys_district` VALUES ('819', '82', '大丰市', '0');
INSERT INTO `sys_district` VALUES ('820', '83', '广陵区', '0');
INSERT INTO `sys_district` VALUES ('821', '83', '邗江区', '0');
INSERT INTO `sys_district` VALUES ('822', '83', '维扬区', '0');
INSERT INTO `sys_district` VALUES ('823', '83', '宝应县', '0');
INSERT INTO `sys_district` VALUES ('824', '83', '仪征市', '0');
INSERT INTO `sys_district` VALUES ('825', '83', '高邮市', '0');
INSERT INTO `sys_district` VALUES ('826', '83', '江都市', '0');
INSERT INTO `sys_district` VALUES ('827', '84', '京口区', '0');
INSERT INTO `sys_district` VALUES ('828', '84', '润州区', '0');
INSERT INTO `sys_district` VALUES ('829', '84', '丹徒区', '0');
INSERT INTO `sys_district` VALUES ('830', '84', '丹阳市', '0');
INSERT INTO `sys_district` VALUES ('831', '84', '扬中市', '0');
INSERT INTO `sys_district` VALUES ('832', '84', '句容市', '0');
INSERT INTO `sys_district` VALUES ('833', '85', '海陵区', '0');
INSERT INTO `sys_district` VALUES ('834', '85', '高港区', '0');
INSERT INTO `sys_district` VALUES ('835', '85', '兴化市', '0');
INSERT INTO `sys_district` VALUES ('836', '85', '靖江市', '0');
INSERT INTO `sys_district` VALUES ('837', '85', '泰兴市', '0');
INSERT INTO `sys_district` VALUES ('838', '85', '姜堰市', '0');
INSERT INTO `sys_district` VALUES ('839', '86', '宿城区', '0');
INSERT INTO `sys_district` VALUES ('840', '86', '宿豫区', '0');
INSERT INTO `sys_district` VALUES ('841', '86', '沭阳县', '0');
INSERT INTO `sys_district` VALUES ('842', '86', '泗阳县', '0');
INSERT INTO `sys_district` VALUES ('843', '86', '泗洪县', '0');
INSERT INTO `sys_district` VALUES ('844', '87', '上城区', '0');
INSERT INTO `sys_district` VALUES ('845', '87', '下城区', '0');
INSERT INTO `sys_district` VALUES ('846', '87', '江干区', '0');
INSERT INTO `sys_district` VALUES ('847', '87', '拱墅区', '0');
INSERT INTO `sys_district` VALUES ('848', '87', '西湖区', '0');
INSERT INTO `sys_district` VALUES ('849', '87', '滨江区', '0');
INSERT INTO `sys_district` VALUES ('850', '87', '萧山区', '0');
INSERT INTO `sys_district` VALUES ('851', '87', '余杭区', '0');
INSERT INTO `sys_district` VALUES ('852', '87', '桐庐县', '0');
INSERT INTO `sys_district` VALUES ('853', '87', '淳安县', '0');
INSERT INTO `sys_district` VALUES ('854', '87', '建德市', '0');
INSERT INTO `sys_district` VALUES ('855', '87', '富阳市', '0');
INSERT INTO `sys_district` VALUES ('856', '87', '临安市', '0');
INSERT INTO `sys_district` VALUES ('857', '88', '海曙区', '0');
INSERT INTO `sys_district` VALUES ('858', '88', '江东区', '0');
INSERT INTO `sys_district` VALUES ('859', '88', '江北区', '0');
INSERT INTO `sys_district` VALUES ('860', '88', '北仑区', '0');
INSERT INTO `sys_district` VALUES ('861', '88', '镇海区', '0');
INSERT INTO `sys_district` VALUES ('862', '88', '鄞州区', '0');
INSERT INTO `sys_district` VALUES ('863', '88', '象山县', '0');
INSERT INTO `sys_district` VALUES ('864', '88', '宁海县', '0');
INSERT INTO `sys_district` VALUES ('865', '88', '余姚市', '0');
INSERT INTO `sys_district` VALUES ('866', '88', '慈溪市', '0');
INSERT INTO `sys_district` VALUES ('867', '88', '奉化市', '0');
INSERT INTO `sys_district` VALUES ('868', '89', '鹿城区', '0');
INSERT INTO `sys_district` VALUES ('869', '89', '龙湾区', '0');
INSERT INTO `sys_district` VALUES ('870', '89', '瓯海区', '0');
INSERT INTO `sys_district` VALUES ('871', '89', '洞头县', '0');
INSERT INTO `sys_district` VALUES ('872', '89', '永嘉县', '0');
INSERT INTO `sys_district` VALUES ('873', '89', '平阳县', '0');
INSERT INTO `sys_district` VALUES ('874', '89', '苍南县', '0');
INSERT INTO `sys_district` VALUES ('875', '89', '文成县', '0');
INSERT INTO `sys_district` VALUES ('876', '89', '泰顺县', '0');
INSERT INTO `sys_district` VALUES ('877', '89', '瑞安市', '0');
INSERT INTO `sys_district` VALUES ('878', '89', '乐清市', '0');
INSERT INTO `sys_district` VALUES ('879', '90', '秀城区', '0');
INSERT INTO `sys_district` VALUES ('880', '90', '秀洲区', '0');
INSERT INTO `sys_district` VALUES ('881', '90', '嘉善县', '0');
INSERT INTO `sys_district` VALUES ('882', '90', '海盐县', '0');
INSERT INTO `sys_district` VALUES ('883', '90', '海宁市', '0');
INSERT INTO `sys_district` VALUES ('884', '90', '平湖市', '0');
INSERT INTO `sys_district` VALUES ('885', '90', '桐乡市', '0');
INSERT INTO `sys_district` VALUES ('886', '91', '吴兴区', '0');
INSERT INTO `sys_district` VALUES ('887', '91', '南浔区', '0');
INSERT INTO `sys_district` VALUES ('888', '91', '德清县', '0');
INSERT INTO `sys_district` VALUES ('889', '91', '长兴县', '0');
INSERT INTO `sys_district` VALUES ('890', '91', '安吉县', '0');
INSERT INTO `sys_district` VALUES ('891', '92', '越城区', '0');
INSERT INTO `sys_district` VALUES ('892', '92', '绍兴县', '0');
INSERT INTO `sys_district` VALUES ('893', '92', '新昌县', '0');
INSERT INTO `sys_district` VALUES ('894', '92', '诸暨市', '0');
INSERT INTO `sys_district` VALUES ('895', '92', '上虞市', '0');
INSERT INTO `sys_district` VALUES ('896', '92', '嵊州市', '0');
INSERT INTO `sys_district` VALUES ('897', '93', '婺城区', '0');
INSERT INTO `sys_district` VALUES ('898', '93', '金东区', '0');
INSERT INTO `sys_district` VALUES ('899', '93', '武义县', '0');
INSERT INTO `sys_district` VALUES ('900', '93', '浦江县', '0');
INSERT INTO `sys_district` VALUES ('901', '93', '磐安县', '0');
INSERT INTO `sys_district` VALUES ('902', '93', '兰溪市', '0');
INSERT INTO `sys_district` VALUES ('903', '93', '义乌市', '0');
INSERT INTO `sys_district` VALUES ('904', '93', '东阳市', '0');
INSERT INTO `sys_district` VALUES ('905', '93', '永康市', '0');
INSERT INTO `sys_district` VALUES ('906', '94', '柯城区', '0');
INSERT INTO `sys_district` VALUES ('907', '94', '衢江区', '0');
INSERT INTO `sys_district` VALUES ('908', '94', '常山县', '0');
INSERT INTO `sys_district` VALUES ('909', '94', '开化县', '0');
INSERT INTO `sys_district` VALUES ('910', '94', '龙游县', '0');
INSERT INTO `sys_district` VALUES ('911', '94', '江山市', '0');
INSERT INTO `sys_district` VALUES ('912', '95', '定海区', '0');
INSERT INTO `sys_district` VALUES ('913', '95', '普陀区', '0');
INSERT INTO `sys_district` VALUES ('914', '95', '岱山县', '0');
INSERT INTO `sys_district` VALUES ('915', '95', '嵊泗县', '0');
INSERT INTO `sys_district` VALUES ('916', '96', '椒江区', '0');
INSERT INTO `sys_district` VALUES ('917', '96', '黄岩区', '0');
INSERT INTO `sys_district` VALUES ('918', '96', '路桥区', '0');
INSERT INTO `sys_district` VALUES ('919', '96', '玉环县', '0');
INSERT INTO `sys_district` VALUES ('920', '96', '三门县', '0');
INSERT INTO `sys_district` VALUES ('921', '96', '天台县', '0');
INSERT INTO `sys_district` VALUES ('922', '96', '仙居县', '0');
INSERT INTO `sys_district` VALUES ('923', '96', '温岭市', '0');
INSERT INTO `sys_district` VALUES ('924', '96', '临海市', '0');
INSERT INTO `sys_district` VALUES ('925', '97', '莲都区', '0');
INSERT INTO `sys_district` VALUES ('926', '97', '青田县', '0');
INSERT INTO `sys_district` VALUES ('927', '97', '缙云县', '0');
INSERT INTO `sys_district` VALUES ('928', '97', '遂昌县', '0');
INSERT INTO `sys_district` VALUES ('929', '97', '松阳县', '0');
INSERT INTO `sys_district` VALUES ('930', '97', '云和县', '0');
INSERT INTO `sys_district` VALUES ('931', '97', '庆元县', '0');
INSERT INTO `sys_district` VALUES ('932', '97', '景宁畲族自治县', '0');
INSERT INTO `sys_district` VALUES ('933', '97', '龙泉市', '0');
INSERT INTO `sys_district` VALUES ('934', '98', '瑶海区', '0');
INSERT INTO `sys_district` VALUES ('935', '98', '庐阳区', '0');
INSERT INTO `sys_district` VALUES ('936', '98', '蜀山区', '0');
INSERT INTO `sys_district` VALUES ('937', '98', '包河区', '0');
INSERT INTO `sys_district` VALUES ('938', '98', '长丰县', '0');
INSERT INTO `sys_district` VALUES ('939', '98', '肥东县', '0');
INSERT INTO `sys_district` VALUES ('940', '98', '肥西县', '0');
INSERT INTO `sys_district` VALUES ('941', '99', '镜湖区', '0');
INSERT INTO `sys_district` VALUES ('942', '99', '马塘区', '0');
INSERT INTO `sys_district` VALUES ('943', '99', '新芜区', '0');
INSERT INTO `sys_district` VALUES ('944', '99', '鸠江区', '0');
INSERT INTO `sys_district` VALUES ('945', '99', '芜湖县', '0');
INSERT INTO `sys_district` VALUES ('946', '99', '繁昌县', '0');
INSERT INTO `sys_district` VALUES ('947', '99', '南陵县', '0');
INSERT INTO `sys_district` VALUES ('948', '100', '龙子湖区', '0');
INSERT INTO `sys_district` VALUES ('949', '100', '蚌山区', '0');
INSERT INTO `sys_district` VALUES ('950', '100', '禹会区', '0');
INSERT INTO `sys_district` VALUES ('951', '100', '淮上区', '0');
INSERT INTO `sys_district` VALUES ('952', '100', '怀远县', '0');
INSERT INTO `sys_district` VALUES ('953', '100', '五河县', '0');
INSERT INTO `sys_district` VALUES ('954', '100', '固镇县', '0');
INSERT INTO `sys_district` VALUES ('955', '101', '大通区', '0');
INSERT INTO `sys_district` VALUES ('956', '101', '田家庵区', '0');
INSERT INTO `sys_district` VALUES ('957', '101', '谢家集区', '0');
INSERT INTO `sys_district` VALUES ('958', '101', '八公山区', '0');
INSERT INTO `sys_district` VALUES ('959', '101', '潘集区', '0');
INSERT INTO `sys_district` VALUES ('960', '101', '凤台县', '0');
INSERT INTO `sys_district` VALUES ('961', '102', '金家庄区', '0');
INSERT INTO `sys_district` VALUES ('962', '102', '花山区', '0');
INSERT INTO `sys_district` VALUES ('963', '102', '雨山区', '0');
INSERT INTO `sys_district` VALUES ('964', '102', '当涂县', '0');
INSERT INTO `sys_district` VALUES ('965', '103', '杜集区', '0');
INSERT INTO `sys_district` VALUES ('966', '103', '相山区', '0');
INSERT INTO `sys_district` VALUES ('967', '103', '烈山区', '0');
INSERT INTO `sys_district` VALUES ('968', '103', '濉溪县', '0');
INSERT INTO `sys_district` VALUES ('969', '104', '铜官山区', '0');
INSERT INTO `sys_district` VALUES ('970', '104', '狮子山区', '0');
INSERT INTO `sys_district` VALUES ('971', '104', '郊区', '0');
INSERT INTO `sys_district` VALUES ('972', '104', '铜陵县', '0');
INSERT INTO `sys_district` VALUES ('973', '105', '迎江区', '0');
INSERT INTO `sys_district` VALUES ('974', '105', '大观区', '0');
INSERT INTO `sys_district` VALUES ('975', '105', '郊区', '0');
INSERT INTO `sys_district` VALUES ('976', '105', '怀宁县', '0');
INSERT INTO `sys_district` VALUES ('977', '105', '枞阳县', '0');
INSERT INTO `sys_district` VALUES ('978', '105', '潜山县', '0');
INSERT INTO `sys_district` VALUES ('979', '105', '太湖县', '0');
INSERT INTO `sys_district` VALUES ('980', '105', '宿松县', '0');
INSERT INTO `sys_district` VALUES ('981', '105', '望江县', '0');
INSERT INTO `sys_district` VALUES ('982', '105', '岳西县', '0');
INSERT INTO `sys_district` VALUES ('983', '105', '桐城市', '0');
INSERT INTO `sys_district` VALUES ('984', '106', '屯溪区', '0');
INSERT INTO `sys_district` VALUES ('985', '106', '黄山区', '0');
INSERT INTO `sys_district` VALUES ('986', '106', '徽州区', '0');
INSERT INTO `sys_district` VALUES ('987', '106', '歙县', '0');
INSERT INTO `sys_district` VALUES ('988', '106', '休宁县', '0');
INSERT INTO `sys_district` VALUES ('989', '106', '黟县', '0');
INSERT INTO `sys_district` VALUES ('990', '106', '祁门县', '0');
INSERT INTO `sys_district` VALUES ('991', '107', '琅琊区', '0');
INSERT INTO `sys_district` VALUES ('992', '107', '南谯区', '0');
INSERT INTO `sys_district` VALUES ('993', '107', '来安县', '0');
INSERT INTO `sys_district` VALUES ('994', '107', '全椒县', '0');
INSERT INTO `sys_district` VALUES ('995', '107', '定远县', '0');
INSERT INTO `sys_district` VALUES ('996', '107', '凤阳县', '0');
INSERT INTO `sys_district` VALUES ('997', '107', '天长市', '0');
INSERT INTO `sys_district` VALUES ('998', '107', '明光市', '0');
INSERT INTO `sys_district` VALUES ('999', '108', '颍州区', '0');
INSERT INTO `sys_district` VALUES ('1000', '108', '颍东区', '0');
INSERT INTO `sys_district` VALUES ('1001', '108', '颍泉区', '0');
INSERT INTO `sys_district` VALUES ('1002', '108', '临泉县', '0');
INSERT INTO `sys_district` VALUES ('1003', '108', '太和县', '0');
INSERT INTO `sys_district` VALUES ('1004', '108', '阜南县', '0');
INSERT INTO `sys_district` VALUES ('1005', '108', '颍上县', '0');
INSERT INTO `sys_district` VALUES ('1006', '108', '界首市', '0');
INSERT INTO `sys_district` VALUES ('1007', '109', '埇桥区', '0');
INSERT INTO `sys_district` VALUES ('1008', '109', '砀山县', '0');
INSERT INTO `sys_district` VALUES ('1009', '109', '萧县', '0');
INSERT INTO `sys_district` VALUES ('1010', '109', '灵璧县', '0');
INSERT INTO `sys_district` VALUES ('1011', '109', '泗县', '0');
INSERT INTO `sys_district` VALUES ('1012', '110', '居巢区', '0');
INSERT INTO `sys_district` VALUES ('1013', '110', '庐江县', '0');
INSERT INTO `sys_district` VALUES ('1014', '110', '无为县', '0');
INSERT INTO `sys_district` VALUES ('1015', '110', '含山县', '0');
INSERT INTO `sys_district` VALUES ('1016', '110', '和县', '0');
INSERT INTO `sys_district` VALUES ('1017', '111', '金安区', '0');
INSERT INTO `sys_district` VALUES ('1018', '111', '裕安区', '0');
INSERT INTO `sys_district` VALUES ('1019', '111', '寿县', '0');
INSERT INTO `sys_district` VALUES ('1020', '111', '霍邱县', '0');
INSERT INTO `sys_district` VALUES ('1021', '111', '舒城县', '0');
INSERT INTO `sys_district` VALUES ('1022', '111', '金寨县', '0');
INSERT INTO `sys_district` VALUES ('1023', '111', '霍山县', '0');
INSERT INTO `sys_district` VALUES ('1024', '112', '谯城区', '0');
INSERT INTO `sys_district` VALUES ('1025', '112', '涡阳县', '0');
INSERT INTO `sys_district` VALUES ('1026', '112', '蒙城县', '0');
INSERT INTO `sys_district` VALUES ('1027', '112', '利辛县', '0');
INSERT INTO `sys_district` VALUES ('1028', '113', '贵池区', '0');
INSERT INTO `sys_district` VALUES ('1029', '113', '东至县', '0');
INSERT INTO `sys_district` VALUES ('1030', '113', '石台县', '0');
INSERT INTO `sys_district` VALUES ('1031', '113', '青阳县', '0');
INSERT INTO `sys_district` VALUES ('1032', '114', '宣州区', '0');
INSERT INTO `sys_district` VALUES ('1033', '114', '郎溪县', '0');
INSERT INTO `sys_district` VALUES ('1034', '114', '广德县', '0');
INSERT INTO `sys_district` VALUES ('1035', '114', '泾县', '0');
INSERT INTO `sys_district` VALUES ('1036', '114', '绩溪县', '0');
INSERT INTO `sys_district` VALUES ('1037', '114', '旌德县', '0');
INSERT INTO `sys_district` VALUES ('1038', '114', '宁国市', '0');
INSERT INTO `sys_district` VALUES ('1039', '115', '鼓楼区', '0');
INSERT INTO `sys_district` VALUES ('1040', '115', '台江区', '0');
INSERT INTO `sys_district` VALUES ('1041', '115', '仓山区', '0');
INSERT INTO `sys_district` VALUES ('1042', '115', '马尾区', '0');
INSERT INTO `sys_district` VALUES ('1043', '115', '晋安区', '0');
INSERT INTO `sys_district` VALUES ('1044', '115', '闽侯县', '0');
INSERT INTO `sys_district` VALUES ('1045', '115', '连江县', '0');
INSERT INTO `sys_district` VALUES ('1046', '115', '罗源县', '0');
INSERT INTO `sys_district` VALUES ('1047', '115', '闽清县', '0');
INSERT INTO `sys_district` VALUES ('1048', '115', '永泰县', '0');
INSERT INTO `sys_district` VALUES ('1049', '115', '平潭县', '0');
INSERT INTO `sys_district` VALUES ('1050', '115', '福清市', '0');
INSERT INTO `sys_district` VALUES ('1051', '115', '长乐市', '0');
INSERT INTO `sys_district` VALUES ('1052', '116', '思明区', '0');
INSERT INTO `sys_district` VALUES ('1053', '116', '海沧区', '0');
INSERT INTO `sys_district` VALUES ('1054', '116', '湖里区', '0');
INSERT INTO `sys_district` VALUES ('1055', '116', '集美区', '0');
INSERT INTO `sys_district` VALUES ('1056', '116', '同安区', '0');
INSERT INTO `sys_district` VALUES ('1057', '116', '翔安区', '0');
INSERT INTO `sys_district` VALUES ('1058', '117', '城厢区', '0');
INSERT INTO `sys_district` VALUES ('1059', '117', '涵江区', '0');
INSERT INTO `sys_district` VALUES ('1060', '117', '荔城区', '0');
INSERT INTO `sys_district` VALUES ('1061', '117', '秀屿区', '0');
INSERT INTO `sys_district` VALUES ('1062', '117', '仙游县', '0');
INSERT INTO `sys_district` VALUES ('1063', '118', '梅列区', '0');
INSERT INTO `sys_district` VALUES ('1064', '118', '三元区', '0');
INSERT INTO `sys_district` VALUES ('1065', '118', '明溪县', '0');
INSERT INTO `sys_district` VALUES ('1066', '118', '清流县', '0');
INSERT INTO `sys_district` VALUES ('1067', '118', '宁化县', '0');
INSERT INTO `sys_district` VALUES ('1068', '118', '大田县', '0');
INSERT INTO `sys_district` VALUES ('1069', '118', '尤溪县', '0');
INSERT INTO `sys_district` VALUES ('1070', '118', '沙县', '0');
INSERT INTO `sys_district` VALUES ('1071', '118', '将乐县', '0');
INSERT INTO `sys_district` VALUES ('1072', '118', '泰宁县', '0');
INSERT INTO `sys_district` VALUES ('1073', '118', '建宁县', '0');
INSERT INTO `sys_district` VALUES ('1074', '118', '永安市', '0');
INSERT INTO `sys_district` VALUES ('1075', '119', '鲤城区', '0');
INSERT INTO `sys_district` VALUES ('1076', '119', '丰泽区', '0');
INSERT INTO `sys_district` VALUES ('1077', '119', '洛江区', '0');
INSERT INTO `sys_district` VALUES ('1078', '119', '泉港区', '0');
INSERT INTO `sys_district` VALUES ('1079', '119', '惠安县', '0');
INSERT INTO `sys_district` VALUES ('1080', '119', '安溪县', '0');
INSERT INTO `sys_district` VALUES ('1081', '119', '永春县', '0');
INSERT INTO `sys_district` VALUES ('1082', '119', '德化县', '0');
INSERT INTO `sys_district` VALUES ('1083', '119', '金门县', '0');
INSERT INTO `sys_district` VALUES ('1084', '119', '石狮市', '0');
INSERT INTO `sys_district` VALUES ('1085', '119', '晋江市', '0');
INSERT INTO `sys_district` VALUES ('1086', '119', '南安市', '0');
INSERT INTO `sys_district` VALUES ('1087', '120', '芗城区', '0');
INSERT INTO `sys_district` VALUES ('1088', '120', '龙文区', '0');
INSERT INTO `sys_district` VALUES ('1089', '120', '云霄县', '0');
INSERT INTO `sys_district` VALUES ('1090', '120', '漳浦县', '0');
INSERT INTO `sys_district` VALUES ('1091', '120', '诏安县', '0');
INSERT INTO `sys_district` VALUES ('1092', '120', '长泰县', '0');
INSERT INTO `sys_district` VALUES ('1093', '120', '东山县', '0');
INSERT INTO `sys_district` VALUES ('1094', '120', '南靖县', '0');
INSERT INTO `sys_district` VALUES ('1095', '120', '平和县', '0');
INSERT INTO `sys_district` VALUES ('1096', '120', '华安县', '0');
INSERT INTO `sys_district` VALUES ('1097', '120', '龙海市', '0');
INSERT INTO `sys_district` VALUES ('1098', '121', '延平区', '0');
INSERT INTO `sys_district` VALUES ('1099', '121', '顺昌县', '0');
INSERT INTO `sys_district` VALUES ('1100', '121', '浦城县', '0');
INSERT INTO `sys_district` VALUES ('1101', '121', '光泽县', '0');
INSERT INTO `sys_district` VALUES ('1102', '121', '松溪县', '0');
INSERT INTO `sys_district` VALUES ('1103', '121', '政和县', '0');
INSERT INTO `sys_district` VALUES ('1104', '121', '邵武市', '0');
INSERT INTO `sys_district` VALUES ('1105', '121', '武夷山市', '0');
INSERT INTO `sys_district` VALUES ('1106', '121', '建瓯市', '0');
INSERT INTO `sys_district` VALUES ('1107', '121', '建阳市', '0');
INSERT INTO `sys_district` VALUES ('1108', '122', '新罗区', '0');
INSERT INTO `sys_district` VALUES ('1109', '122', '长汀县', '0');
INSERT INTO `sys_district` VALUES ('1110', '122', '永定县', '0');
INSERT INTO `sys_district` VALUES ('1111', '122', '上杭县', '0');
INSERT INTO `sys_district` VALUES ('1112', '122', '武平县', '0');
INSERT INTO `sys_district` VALUES ('1113', '122', '连城县', '0');
INSERT INTO `sys_district` VALUES ('1114', '122', '漳平市', '0');
INSERT INTO `sys_district` VALUES ('1115', '123', '蕉城区', '0');
INSERT INTO `sys_district` VALUES ('1116', '123', '霞浦县', '0');
INSERT INTO `sys_district` VALUES ('1117', '123', '古田县', '0');
INSERT INTO `sys_district` VALUES ('1118', '123', '屏南县', '0');
INSERT INTO `sys_district` VALUES ('1119', '123', '寿宁县', '0');
INSERT INTO `sys_district` VALUES ('1120', '123', '周宁县', '0');
INSERT INTO `sys_district` VALUES ('1121', '123', '柘荣县', '0');
INSERT INTO `sys_district` VALUES ('1122', '123', '福安市', '0');
INSERT INTO `sys_district` VALUES ('1123', '123', '福鼎市', '0');
INSERT INTO `sys_district` VALUES ('1124', '124', '东湖区', '0');
INSERT INTO `sys_district` VALUES ('1125', '124', '西湖区', '0');
INSERT INTO `sys_district` VALUES ('1126', '124', '青云谱区', '0');
INSERT INTO `sys_district` VALUES ('1127', '124', '湾里区', '0');
INSERT INTO `sys_district` VALUES ('1128', '124', '青山湖区', '0');
INSERT INTO `sys_district` VALUES ('1129', '124', '南昌县', '0');
INSERT INTO `sys_district` VALUES ('1130', '124', '新建县', '0');
INSERT INTO `sys_district` VALUES ('1131', '124', '安义县', '0');
INSERT INTO `sys_district` VALUES ('1132', '124', '进贤县', '0');
INSERT INTO `sys_district` VALUES ('1133', '125', '昌江区', '0');
INSERT INTO `sys_district` VALUES ('1134', '125', '珠山区', '0');
INSERT INTO `sys_district` VALUES ('1135', '125', '浮梁县', '0');
INSERT INTO `sys_district` VALUES ('1136', '125', '乐平市', '0');
INSERT INTO `sys_district` VALUES ('1137', '126', '安源区', '0');
INSERT INTO `sys_district` VALUES ('1138', '126', '湘东区', '0');
INSERT INTO `sys_district` VALUES ('1139', '126', '莲花县', '0');
INSERT INTO `sys_district` VALUES ('1140', '126', '上栗县', '0');
INSERT INTO `sys_district` VALUES ('1141', '126', '芦溪县', '0');
INSERT INTO `sys_district` VALUES ('1142', '127', '庐山区', '0');
INSERT INTO `sys_district` VALUES ('1143', '127', '浔阳区', '0');
INSERT INTO `sys_district` VALUES ('1144', '127', '九江县', '0');
INSERT INTO `sys_district` VALUES ('1145', '127', '武宁县', '0');
INSERT INTO `sys_district` VALUES ('1146', '127', '修水县', '0');
INSERT INTO `sys_district` VALUES ('1147', '127', '永修县', '0');
INSERT INTO `sys_district` VALUES ('1148', '127', '德安县', '0');
INSERT INTO `sys_district` VALUES ('1149', '127', '星子县', '0');
INSERT INTO `sys_district` VALUES ('1150', '127', '都昌县', '0');
INSERT INTO `sys_district` VALUES ('1151', '127', '湖口县', '0');
INSERT INTO `sys_district` VALUES ('1152', '127', '彭泽县', '0');
INSERT INTO `sys_district` VALUES ('1153', '127', '瑞昌市', '0');
INSERT INTO `sys_district` VALUES ('1154', '128', '渝水区', '0');
INSERT INTO `sys_district` VALUES ('1155', '128', '分宜县', '0');
INSERT INTO `sys_district` VALUES ('1156', '129', '月湖区', '0');
INSERT INTO `sys_district` VALUES ('1157', '129', '余江县', '0');
INSERT INTO `sys_district` VALUES ('1158', '129', '贵溪市', '0');
INSERT INTO `sys_district` VALUES ('1159', '130', '章贡区', '0');
INSERT INTO `sys_district` VALUES ('1160', '130', '赣县', '0');
INSERT INTO `sys_district` VALUES ('1161', '130', '信丰县', '0');
INSERT INTO `sys_district` VALUES ('1162', '130', '大余县', '0');
INSERT INTO `sys_district` VALUES ('1163', '130', '上犹县', '0');
INSERT INTO `sys_district` VALUES ('1164', '130', '崇义县', '0');
INSERT INTO `sys_district` VALUES ('1165', '130', '安远县', '0');
INSERT INTO `sys_district` VALUES ('1166', '130', '龙南县', '0');
INSERT INTO `sys_district` VALUES ('1167', '130', '定南县', '0');
INSERT INTO `sys_district` VALUES ('1168', '130', '全南县', '0');
INSERT INTO `sys_district` VALUES ('1169', '130', '宁都县', '0');
INSERT INTO `sys_district` VALUES ('1170', '130', '于都县', '0');
INSERT INTO `sys_district` VALUES ('1171', '130', '兴国县', '0');
INSERT INTO `sys_district` VALUES ('1172', '130', '会昌县', '0');
INSERT INTO `sys_district` VALUES ('1173', '130', '寻乌县', '0');
INSERT INTO `sys_district` VALUES ('1174', '130', '石城县', '0');
INSERT INTO `sys_district` VALUES ('1175', '130', '瑞金市', '0');
INSERT INTO `sys_district` VALUES ('1176', '130', '南康市', '0');
INSERT INTO `sys_district` VALUES ('1177', '131', '吉州区', '0');
INSERT INTO `sys_district` VALUES ('1178', '131', '青原区', '0');
INSERT INTO `sys_district` VALUES ('1179', '131', '吉安县', '0');
INSERT INTO `sys_district` VALUES ('1180', '131', '吉水县', '0');
INSERT INTO `sys_district` VALUES ('1181', '131', '峡江县', '0');
INSERT INTO `sys_district` VALUES ('1182', '131', '新干县', '0');
INSERT INTO `sys_district` VALUES ('1183', '131', '永丰县', '0');
INSERT INTO `sys_district` VALUES ('1184', '131', '泰和县', '0');
INSERT INTO `sys_district` VALUES ('1185', '131', '遂川县', '0');
INSERT INTO `sys_district` VALUES ('1186', '131', '万安县', '0');
INSERT INTO `sys_district` VALUES ('1187', '131', '安福县', '0');
INSERT INTO `sys_district` VALUES ('1188', '131', '永新县', '0');
INSERT INTO `sys_district` VALUES ('1189', '131', '井冈山市', '0');
INSERT INTO `sys_district` VALUES ('1190', '132', '袁州区', '0');
INSERT INTO `sys_district` VALUES ('1191', '132', '奉新县', '0');
INSERT INTO `sys_district` VALUES ('1192', '132', '万载县', '0');
INSERT INTO `sys_district` VALUES ('1193', '132', '上高县', '0');
INSERT INTO `sys_district` VALUES ('1194', '132', '宜丰县', '0');
INSERT INTO `sys_district` VALUES ('1195', '132', '靖安县', '0');
INSERT INTO `sys_district` VALUES ('1196', '132', '铜鼓县', '0');
INSERT INTO `sys_district` VALUES ('1197', '132', '丰城市', '0');
INSERT INTO `sys_district` VALUES ('1198', '132', '樟树市', '0');
INSERT INTO `sys_district` VALUES ('1199', '132', '高安市', '0');
INSERT INTO `sys_district` VALUES ('1200', '133', '临川区', '0');
INSERT INTO `sys_district` VALUES ('1201', '133', '南城县', '0');
INSERT INTO `sys_district` VALUES ('1202', '133', '黎川县', '0');
INSERT INTO `sys_district` VALUES ('1203', '133', '南丰县', '0');
INSERT INTO `sys_district` VALUES ('1204', '133', '崇仁县', '0');
INSERT INTO `sys_district` VALUES ('1205', '133', '乐安县', '0');
INSERT INTO `sys_district` VALUES ('1206', '133', '宜黄县', '0');
INSERT INTO `sys_district` VALUES ('1207', '133', '金溪县', '0');
INSERT INTO `sys_district` VALUES ('1208', '133', '资溪县', '0');
INSERT INTO `sys_district` VALUES ('1209', '133', '东乡县', '0');
INSERT INTO `sys_district` VALUES ('1210', '133', '广昌县', '0');
INSERT INTO `sys_district` VALUES ('1211', '134', '信州区', '0');
INSERT INTO `sys_district` VALUES ('1212', '134', '上饶县', '0');
INSERT INTO `sys_district` VALUES ('1213', '134', '广丰县', '0');
INSERT INTO `sys_district` VALUES ('1214', '134', '玉山县', '0');
INSERT INTO `sys_district` VALUES ('1215', '134', '铅山县', '0');
INSERT INTO `sys_district` VALUES ('1216', '134', '横峰县', '0');
INSERT INTO `sys_district` VALUES ('1217', '134', '弋阳县', '0');
INSERT INTO `sys_district` VALUES ('1218', '134', '余干县', '0');
INSERT INTO `sys_district` VALUES ('1219', '134', '鄱阳县', '0');
INSERT INTO `sys_district` VALUES ('1220', '134', '万年县', '0');
INSERT INTO `sys_district` VALUES ('1221', '134', '婺源县', '0');
INSERT INTO `sys_district` VALUES ('1222', '134', '德兴市', '0');
INSERT INTO `sys_district` VALUES ('1223', '135', '历下区', '0');
INSERT INTO `sys_district` VALUES ('1224', '135', '市中区', '0');
INSERT INTO `sys_district` VALUES ('1225', '135', '槐荫区', '0');
INSERT INTO `sys_district` VALUES ('1226', '135', '天桥区', '0');
INSERT INTO `sys_district` VALUES ('1227', '135', '历城区', '0');
INSERT INTO `sys_district` VALUES ('1228', '135', '长清区', '0');
INSERT INTO `sys_district` VALUES ('1229', '135', '平阴县', '0');
INSERT INTO `sys_district` VALUES ('1230', '135', '济阳县', '0');
INSERT INTO `sys_district` VALUES ('1231', '135', '商河县', '0');
INSERT INTO `sys_district` VALUES ('1232', '135', '章丘市', '0');
INSERT INTO `sys_district` VALUES ('1233', '136', '市南区', '0');
INSERT INTO `sys_district` VALUES ('1234', '136', '市北区', '0');
INSERT INTO `sys_district` VALUES ('1235', '136', '四方区', '0');
INSERT INTO `sys_district` VALUES ('1236', '136', '黄岛区', '0');
INSERT INTO `sys_district` VALUES ('1237', '136', '崂山区', '0');
INSERT INTO `sys_district` VALUES ('1238', '136', '李沧区', '0');
INSERT INTO `sys_district` VALUES ('1239', '136', '城阳区', '0');
INSERT INTO `sys_district` VALUES ('1240', '136', '胶州市', '0');
INSERT INTO `sys_district` VALUES ('1241', '136', '即墨市', '0');
INSERT INTO `sys_district` VALUES ('1242', '136', '平度市', '0');
INSERT INTO `sys_district` VALUES ('1243', '136', '胶南市', '0');
INSERT INTO `sys_district` VALUES ('1244', '136', '莱西市', '0');
INSERT INTO `sys_district` VALUES ('1245', '137', '淄川区', '0');
INSERT INTO `sys_district` VALUES ('1246', '137', '张店区', '0');
INSERT INTO `sys_district` VALUES ('1247', '137', '博山区', '0');
INSERT INTO `sys_district` VALUES ('1248', '137', '临淄区', '0');
INSERT INTO `sys_district` VALUES ('1249', '137', '周村区', '0');
INSERT INTO `sys_district` VALUES ('1250', '137', '桓台县', '0');
INSERT INTO `sys_district` VALUES ('1251', '137', '高青县', '0');
INSERT INTO `sys_district` VALUES ('1252', '137', '沂源县', '0');
INSERT INTO `sys_district` VALUES ('1253', '138', '市中区', '0');
INSERT INTO `sys_district` VALUES ('1254', '138', '薛城区', '0');
INSERT INTO `sys_district` VALUES ('1255', '138', '峄城区', '0');
INSERT INTO `sys_district` VALUES ('1256', '138', '台儿庄区', '0');
INSERT INTO `sys_district` VALUES ('1257', '138', '山亭区', '0');
INSERT INTO `sys_district` VALUES ('1258', '138', '滕州市', '0');
INSERT INTO `sys_district` VALUES ('1259', '139', '东营区', '0');
INSERT INTO `sys_district` VALUES ('1260', '139', '河口区', '0');
INSERT INTO `sys_district` VALUES ('1261', '139', '垦利县', '0');
INSERT INTO `sys_district` VALUES ('1262', '139', '利津县', '0');
INSERT INTO `sys_district` VALUES ('1263', '139', '广饶县', '0');
INSERT INTO `sys_district` VALUES ('1264', '140', '芝罘区', '0');
INSERT INTO `sys_district` VALUES ('1265', '140', '福山区', '0');
INSERT INTO `sys_district` VALUES ('1266', '140', '牟平区', '0');
INSERT INTO `sys_district` VALUES ('1267', '140', '莱山区', '0');
INSERT INTO `sys_district` VALUES ('1268', '140', '长岛县', '0');
INSERT INTO `sys_district` VALUES ('1269', '140', '龙口市', '0');
INSERT INTO `sys_district` VALUES ('1270', '140', '莱阳市', '0');
INSERT INTO `sys_district` VALUES ('1271', '140', '莱州市', '0');
INSERT INTO `sys_district` VALUES ('1272', '140', '蓬莱市', '0');
INSERT INTO `sys_district` VALUES ('1273', '140', '招远市', '0');
INSERT INTO `sys_district` VALUES ('1274', '140', '栖霞市', '0');
INSERT INTO `sys_district` VALUES ('1275', '140', '海阳市', '0');
INSERT INTO `sys_district` VALUES ('1276', '141', '潍城区', '0');
INSERT INTO `sys_district` VALUES ('1277', '141', '寒亭区', '0');
INSERT INTO `sys_district` VALUES ('1278', '141', '坊子区', '0');
INSERT INTO `sys_district` VALUES ('1279', '141', '奎文区', '0');
INSERT INTO `sys_district` VALUES ('1280', '141', '临朐县', '0');
INSERT INTO `sys_district` VALUES ('1281', '141', '昌乐县', '0');
INSERT INTO `sys_district` VALUES ('1282', '141', '青州市', '0');
INSERT INTO `sys_district` VALUES ('1283', '141', '诸城市', '0');
INSERT INTO `sys_district` VALUES ('1284', '141', '寿光市', '0');
INSERT INTO `sys_district` VALUES ('1285', '141', '安丘市', '0');
INSERT INTO `sys_district` VALUES ('1286', '141', '高密市', '0');
INSERT INTO `sys_district` VALUES ('1287', '141', '昌邑市', '0');
INSERT INTO `sys_district` VALUES ('1288', '142', '市中区', '0');
INSERT INTO `sys_district` VALUES ('1289', '142', '任城区', '0');
INSERT INTO `sys_district` VALUES ('1290', '142', '微山县', '0');
INSERT INTO `sys_district` VALUES ('1291', '142', '鱼台县', '0');
INSERT INTO `sys_district` VALUES ('1292', '142', '金乡县', '0');
INSERT INTO `sys_district` VALUES ('1293', '142', '嘉祥县', '0');
INSERT INTO `sys_district` VALUES ('1294', '142', '汶上县', '0');
INSERT INTO `sys_district` VALUES ('1295', '142', '泗水县', '0');
INSERT INTO `sys_district` VALUES ('1296', '142', '梁山县', '0');
INSERT INTO `sys_district` VALUES ('1297', '142', '曲阜市', '0');
INSERT INTO `sys_district` VALUES ('1298', '142', '兖州市', '0');
INSERT INTO `sys_district` VALUES ('1299', '142', '邹城市', '0');
INSERT INTO `sys_district` VALUES ('1300', '143', '泰山区', '0');
INSERT INTO `sys_district` VALUES ('1301', '143', '岱岳区', '0');
INSERT INTO `sys_district` VALUES ('1302', '143', '宁阳县', '0');
INSERT INTO `sys_district` VALUES ('1303', '143', '东平县', '0');
INSERT INTO `sys_district` VALUES ('1304', '143', '新泰市', '0');
INSERT INTO `sys_district` VALUES ('1305', '143', '肥城市', '0');
INSERT INTO `sys_district` VALUES ('1306', '144', '环翠区', '0');
INSERT INTO `sys_district` VALUES ('1307', '144', '文登市', '0');
INSERT INTO `sys_district` VALUES ('1308', '144', '荣成市', '0');
INSERT INTO `sys_district` VALUES ('1309', '144', '乳山市', '0');
INSERT INTO `sys_district` VALUES ('1310', '145', '东港区', '0');
INSERT INTO `sys_district` VALUES ('1311', '145', '岚山区', '0');
INSERT INTO `sys_district` VALUES ('1312', '145', '五莲县', '0');
INSERT INTO `sys_district` VALUES ('1313', '145', '莒县', '0');
INSERT INTO `sys_district` VALUES ('1314', '146', '莱城区', '0');
INSERT INTO `sys_district` VALUES ('1315', '146', '钢城区', '0');
INSERT INTO `sys_district` VALUES ('1316', '147', '兰山区', '0');
INSERT INTO `sys_district` VALUES ('1317', '147', '罗庄区', '0');
INSERT INTO `sys_district` VALUES ('1318', '147', '河东区', '0');
INSERT INTO `sys_district` VALUES ('1319', '147', '沂南县', '0');
INSERT INTO `sys_district` VALUES ('1320', '147', '郯城县', '0');
INSERT INTO `sys_district` VALUES ('1321', '147', '沂水县', '0');
INSERT INTO `sys_district` VALUES ('1322', '147', '苍山县', '0');
INSERT INTO `sys_district` VALUES ('1323', '147', '费县', '0');
INSERT INTO `sys_district` VALUES ('1324', '147', '平邑县', '0');
INSERT INTO `sys_district` VALUES ('1325', '147', '莒南县', '0');
INSERT INTO `sys_district` VALUES ('1326', '147', '蒙阴县', '0');
INSERT INTO `sys_district` VALUES ('1327', '147', '临沭县', '0');
INSERT INTO `sys_district` VALUES ('1328', '148', '德城区', '0');
INSERT INTO `sys_district` VALUES ('1329', '148', '陵县', '0');
INSERT INTO `sys_district` VALUES ('1330', '148', '宁津县', '0');
INSERT INTO `sys_district` VALUES ('1331', '148', '庆云县', '0');
INSERT INTO `sys_district` VALUES ('1332', '148', '临邑县', '0');
INSERT INTO `sys_district` VALUES ('1333', '148', '齐河县', '0');
INSERT INTO `sys_district` VALUES ('1334', '148', '平原县', '0');
INSERT INTO `sys_district` VALUES ('1335', '148', '夏津县', '0');
INSERT INTO `sys_district` VALUES ('1336', '148', '武城县', '0');
INSERT INTO `sys_district` VALUES ('1337', '148', '乐陵市', '0');
INSERT INTO `sys_district` VALUES ('1338', '148', '禹城市', '0');
INSERT INTO `sys_district` VALUES ('1339', '149', '东昌府区', '0');
INSERT INTO `sys_district` VALUES ('1340', '149', '阳谷县', '0');
INSERT INTO `sys_district` VALUES ('1341', '149', '莘县', '0');
INSERT INTO `sys_district` VALUES ('1342', '149', '茌平县', '0');
INSERT INTO `sys_district` VALUES ('1343', '149', '东阿县', '0');
INSERT INTO `sys_district` VALUES ('1344', '149', '冠县', '0');
INSERT INTO `sys_district` VALUES ('1345', '149', '高唐县', '0');
INSERT INTO `sys_district` VALUES ('1346', '149', '临清市', '0');
INSERT INTO `sys_district` VALUES ('1347', '150', '滨城区', '0');
INSERT INTO `sys_district` VALUES ('1348', '150', '惠民县', '0');
INSERT INTO `sys_district` VALUES ('1349', '150', '阳信县', '0');
INSERT INTO `sys_district` VALUES ('1350', '150', '无棣县', '0');
INSERT INTO `sys_district` VALUES ('1351', '150', '沾化县', '0');
INSERT INTO `sys_district` VALUES ('1352', '150', '博兴县', '0');
INSERT INTO `sys_district` VALUES ('1353', '150', '邹平县', '0');
INSERT INTO `sys_district` VALUES ('1354', '151', '牡丹区', '0');
INSERT INTO `sys_district` VALUES ('1355', '151', '曹县', '0');
INSERT INTO `sys_district` VALUES ('1356', '151', '单县', '0');
INSERT INTO `sys_district` VALUES ('1357', '151', '成武县', '0');
INSERT INTO `sys_district` VALUES ('1358', '151', '巨野县', '0');
INSERT INTO `sys_district` VALUES ('1359', '151', '郓城县', '0');
INSERT INTO `sys_district` VALUES ('1360', '151', '鄄城县', '0');
INSERT INTO `sys_district` VALUES ('1361', '151', '定陶县', '0');
INSERT INTO `sys_district` VALUES ('1362', '151', '东明县', '0');
INSERT INTO `sys_district` VALUES ('1363', '152', '中原区', '0');
INSERT INTO `sys_district` VALUES ('1364', '152', '二七区', '0');
INSERT INTO `sys_district` VALUES ('1365', '152', '管城回族区', '0');
INSERT INTO `sys_district` VALUES ('1366', '152', '金水区', '0');
INSERT INTO `sys_district` VALUES ('1367', '152', '上街区', '0');
INSERT INTO `sys_district` VALUES ('1368', '152', '惠济区', '0');
INSERT INTO `sys_district` VALUES ('1369', '152', '中牟县', '0');
INSERT INTO `sys_district` VALUES ('1370', '152', '巩义市', '0');
INSERT INTO `sys_district` VALUES ('1371', '152', '荥阳市', '0');
INSERT INTO `sys_district` VALUES ('1372', '152', '新密市', '0');
INSERT INTO `sys_district` VALUES ('1373', '152', '新郑市', '0');
INSERT INTO `sys_district` VALUES ('1374', '152', '登封市', '0');
INSERT INTO `sys_district` VALUES ('1375', '153', '龙亭区', '0');
INSERT INTO `sys_district` VALUES ('1376', '153', '顺河回族区', '0');
INSERT INTO `sys_district` VALUES ('1377', '153', '鼓楼区', '0');
INSERT INTO `sys_district` VALUES ('1378', '153', '南关区', '0');
INSERT INTO `sys_district` VALUES ('1379', '153', '郊区', '0');
INSERT INTO `sys_district` VALUES ('1380', '153', '杞县', '0');
INSERT INTO `sys_district` VALUES ('1381', '153', '通许县', '0');
INSERT INTO `sys_district` VALUES ('1382', '153', '尉氏县', '0');
INSERT INTO `sys_district` VALUES ('1383', '153', '开封县', '0');
INSERT INTO `sys_district` VALUES ('1384', '153', '兰考县', '0');
INSERT INTO `sys_district` VALUES ('1385', '154', '老城区', '0');
INSERT INTO `sys_district` VALUES ('1386', '154', '西工区', '0');
INSERT INTO `sys_district` VALUES ('1387', '154', '廛河回族区', '0');
INSERT INTO `sys_district` VALUES ('1388', '154', '涧西区', '0');
INSERT INTO `sys_district` VALUES ('1389', '154', '吉利区', '0');
INSERT INTO `sys_district` VALUES ('1390', '154', '洛龙区', '0');
INSERT INTO `sys_district` VALUES ('1391', '154', '孟津县', '0');
INSERT INTO `sys_district` VALUES ('1392', '154', '新安县', '0');
INSERT INTO `sys_district` VALUES ('1393', '154', '栾川县', '0');
INSERT INTO `sys_district` VALUES ('1394', '154', '嵩县', '0');
INSERT INTO `sys_district` VALUES ('1395', '154', '汝阳县', '0');
INSERT INTO `sys_district` VALUES ('1396', '154', '宜阳县', '0');
INSERT INTO `sys_district` VALUES ('1397', '154', '洛宁县', '0');
INSERT INTO `sys_district` VALUES ('1398', '154', '伊川县', '0');
INSERT INTO `sys_district` VALUES ('1399', '154', '偃师市', '0');
INSERT INTO `sys_district` VALUES ('1400', '155', '新华区', '0');
INSERT INTO `sys_district` VALUES ('1401', '155', '卫东区', '0');
INSERT INTO `sys_district` VALUES ('1402', '155', '石龙区', '0');
INSERT INTO `sys_district` VALUES ('1403', '155', '湛河区', '0');
INSERT INTO `sys_district` VALUES ('1404', '155', '宝丰县', '0');
INSERT INTO `sys_district` VALUES ('1405', '155', '叶县', '0');
INSERT INTO `sys_district` VALUES ('1406', '155', '鲁山县', '0');
INSERT INTO `sys_district` VALUES ('1407', '155', '郏县', '0');
INSERT INTO `sys_district` VALUES ('1408', '155', '舞钢市', '0');
INSERT INTO `sys_district` VALUES ('1409', '155', '汝州市', '0');
INSERT INTO `sys_district` VALUES ('1410', '156', '文峰区', '0');
INSERT INTO `sys_district` VALUES ('1411', '156', '北关区', '0');
INSERT INTO `sys_district` VALUES ('1412', '156', '殷都区', '0');
INSERT INTO `sys_district` VALUES ('1413', '156', '龙安区', '0');
INSERT INTO `sys_district` VALUES ('1414', '156', '安阳县', '0');
INSERT INTO `sys_district` VALUES ('1415', '156', '汤阴县', '0');
INSERT INTO `sys_district` VALUES ('1416', '156', '滑县', '0');
INSERT INTO `sys_district` VALUES ('1417', '156', '内黄县', '0');
INSERT INTO `sys_district` VALUES ('1418', '156', '林州市', '0');
INSERT INTO `sys_district` VALUES ('1419', '157', '鹤山区', '0');
INSERT INTO `sys_district` VALUES ('1420', '157', '山城区', '0');
INSERT INTO `sys_district` VALUES ('1421', '157', '淇滨区', '0');
INSERT INTO `sys_district` VALUES ('1422', '157', '浚县', '0');
INSERT INTO `sys_district` VALUES ('1423', '157', '淇县', '0');
INSERT INTO `sys_district` VALUES ('1424', '158', '红旗区', '0');
INSERT INTO `sys_district` VALUES ('1425', '158', '卫滨区', '0');
INSERT INTO `sys_district` VALUES ('1426', '158', '凤泉区', '0');
INSERT INTO `sys_district` VALUES ('1427', '158', '牧野区', '0');
INSERT INTO `sys_district` VALUES ('1428', '158', '新乡县', '0');
INSERT INTO `sys_district` VALUES ('1429', '158', '获嘉县', '0');
INSERT INTO `sys_district` VALUES ('1430', '158', '原阳县', '0');
INSERT INTO `sys_district` VALUES ('1431', '158', '延津县', '0');
INSERT INTO `sys_district` VALUES ('1432', '158', '封丘县', '0');
INSERT INTO `sys_district` VALUES ('1433', '158', '长垣县', '0');
INSERT INTO `sys_district` VALUES ('1434', '158', '卫辉市', '0');
INSERT INTO `sys_district` VALUES ('1435', '158', '辉县市', '0');
INSERT INTO `sys_district` VALUES ('1436', '159', '解放区', '0');
INSERT INTO `sys_district` VALUES ('1437', '159', '中站区', '0');
INSERT INTO `sys_district` VALUES ('1438', '159', '马村区', '0');
INSERT INTO `sys_district` VALUES ('1439', '159', '山阳区', '0');
INSERT INTO `sys_district` VALUES ('1440', '159', '修武县', '0');
INSERT INTO `sys_district` VALUES ('1441', '159', '博爱县', '0');
INSERT INTO `sys_district` VALUES ('1442', '159', '武陟县', '0');
INSERT INTO `sys_district` VALUES ('1443', '159', '温县', '0');
INSERT INTO `sys_district` VALUES ('1444', '159', '济源市', '0');
INSERT INTO `sys_district` VALUES ('1445', '159', '沁阳市', '0');
INSERT INTO `sys_district` VALUES ('1446', '159', '孟州市', '0');
INSERT INTO `sys_district` VALUES ('1447', '160', '华龙区', '0');
INSERT INTO `sys_district` VALUES ('1448', '160', '清丰县', '0');
INSERT INTO `sys_district` VALUES ('1449', '160', '南乐县', '0');
INSERT INTO `sys_district` VALUES ('1450', '160', '范县', '0');
INSERT INTO `sys_district` VALUES ('1451', '160', '台前县', '0');
INSERT INTO `sys_district` VALUES ('1452', '160', '濮阳县', '0');
INSERT INTO `sys_district` VALUES ('1453', '161', '魏都区', '0');
INSERT INTO `sys_district` VALUES ('1454', '161', '许昌县', '0');
INSERT INTO `sys_district` VALUES ('1455', '161', '鄢陵县', '0');
INSERT INTO `sys_district` VALUES ('1456', '161', '襄城县', '0');
INSERT INTO `sys_district` VALUES ('1457', '161', '禹州市', '0');
INSERT INTO `sys_district` VALUES ('1458', '161', '长葛市', '0');
INSERT INTO `sys_district` VALUES ('1459', '162', '源汇区', '0');
INSERT INTO `sys_district` VALUES ('1460', '162', '郾城区', '0');
INSERT INTO `sys_district` VALUES ('1461', '162', '召陵区', '0');
INSERT INTO `sys_district` VALUES ('1462', '162', '舞阳县', '0');
INSERT INTO `sys_district` VALUES ('1463', '162', '临颍县', '0');
INSERT INTO `sys_district` VALUES ('1464', '163', '市辖区', '0');
INSERT INTO `sys_district` VALUES ('1465', '163', '湖滨区', '0');
INSERT INTO `sys_district` VALUES ('1466', '163', '渑池县', '0');
INSERT INTO `sys_district` VALUES ('1467', '163', '陕县', '0');
INSERT INTO `sys_district` VALUES ('1468', '163', '卢氏县', '0');
INSERT INTO `sys_district` VALUES ('1469', '163', '义马市', '0');
INSERT INTO `sys_district` VALUES ('1470', '163', '灵宝市', '0');
INSERT INTO `sys_district` VALUES ('1471', '164', '宛城区', '0');
INSERT INTO `sys_district` VALUES ('1472', '164', '卧龙区', '0');
INSERT INTO `sys_district` VALUES ('1473', '164', '南召县', '0');
INSERT INTO `sys_district` VALUES ('1474', '164', '方城县', '0');
INSERT INTO `sys_district` VALUES ('1475', '164', '西峡县', '0');
INSERT INTO `sys_district` VALUES ('1476', '164', '镇平县', '0');
INSERT INTO `sys_district` VALUES ('1477', '164', '内乡县', '0');
INSERT INTO `sys_district` VALUES ('1478', '164', '淅川县', '0');
INSERT INTO `sys_district` VALUES ('1479', '164', '社旗县', '0');
INSERT INTO `sys_district` VALUES ('1480', '164', '唐河县', '0');
INSERT INTO `sys_district` VALUES ('1481', '164', '新野县', '0');
INSERT INTO `sys_district` VALUES ('1482', '164', '桐柏县', '0');
INSERT INTO `sys_district` VALUES ('1483', '164', '邓州市', '0');
INSERT INTO `sys_district` VALUES ('1484', '165', '梁园区', '0');
INSERT INTO `sys_district` VALUES ('1485', '165', '睢阳区', '0');
INSERT INTO `sys_district` VALUES ('1486', '165', '民权县', '0');
INSERT INTO `sys_district` VALUES ('1487', '165', '睢县', '0');
INSERT INTO `sys_district` VALUES ('1488', '165', '宁陵县', '0');
INSERT INTO `sys_district` VALUES ('1489', '165', '柘城县', '0');
INSERT INTO `sys_district` VALUES ('1490', '165', '虞城县', '0');
INSERT INTO `sys_district` VALUES ('1491', '165', '夏邑县', '0');
INSERT INTO `sys_district` VALUES ('1492', '165', '永城市', '0');
INSERT INTO `sys_district` VALUES ('1493', '166', '浉河区', '0');
INSERT INTO `sys_district` VALUES ('1494', '166', '平桥区', '0');
INSERT INTO `sys_district` VALUES ('1495', '166', '罗山县', '0');
INSERT INTO `sys_district` VALUES ('1496', '166', '光山县', '0');
INSERT INTO `sys_district` VALUES ('1497', '166', '新县', '0');
INSERT INTO `sys_district` VALUES ('1498', '166', '商城县', '0');
INSERT INTO `sys_district` VALUES ('1499', '166', '固始县', '0');
INSERT INTO `sys_district` VALUES ('1500', '166', '潢川县', '0');
INSERT INTO `sys_district` VALUES ('1501', '166', '淮滨县', '0');
INSERT INTO `sys_district` VALUES ('1502', '166', '息县', '0');
INSERT INTO `sys_district` VALUES ('1503', '167', '川汇区', '0');
INSERT INTO `sys_district` VALUES ('1504', '167', '扶沟县', '0');
INSERT INTO `sys_district` VALUES ('1505', '167', '西华县', '0');
INSERT INTO `sys_district` VALUES ('1506', '167', '商水县', '0');
INSERT INTO `sys_district` VALUES ('1507', '167', '沈丘县', '0');
INSERT INTO `sys_district` VALUES ('1508', '167', '郸城县', '0');
INSERT INTO `sys_district` VALUES ('1509', '167', '淮阳县', '0');
INSERT INTO `sys_district` VALUES ('1510', '167', '太康县', '0');
INSERT INTO `sys_district` VALUES ('1511', '167', '鹿邑县', '0');
INSERT INTO `sys_district` VALUES ('1512', '167', '项城市', '0');
INSERT INTO `sys_district` VALUES ('1513', '168', '驿城区', '0');
INSERT INTO `sys_district` VALUES ('1514', '168', '西平县', '0');
INSERT INTO `sys_district` VALUES ('1515', '168', '上蔡县', '0');
INSERT INTO `sys_district` VALUES ('1516', '168', '平舆县', '0');
INSERT INTO `sys_district` VALUES ('1517', '168', '正阳县', '0');
INSERT INTO `sys_district` VALUES ('1518', '168', '确山县', '0');
INSERT INTO `sys_district` VALUES ('1519', '168', '泌阳县', '0');
INSERT INTO `sys_district` VALUES ('1520', '168', '汝南县', '0');
INSERT INTO `sys_district` VALUES ('1521', '168', '遂平县', '0');
INSERT INTO `sys_district` VALUES ('1522', '168', '新蔡县', '0');
INSERT INTO `sys_district` VALUES ('1523', '169', '江岸区', '0');
INSERT INTO `sys_district` VALUES ('1524', '169', '江汉区', '0');
INSERT INTO `sys_district` VALUES ('1525', '169', '硚口区', '0');
INSERT INTO `sys_district` VALUES ('1526', '169', '汉阳区', '0');
INSERT INTO `sys_district` VALUES ('1527', '169', '武昌区', '0');
INSERT INTO `sys_district` VALUES ('1528', '169', '青山区', '0');
INSERT INTO `sys_district` VALUES ('1529', '169', '洪山区', '0');
INSERT INTO `sys_district` VALUES ('1530', '169', '东西湖区', '0');
INSERT INTO `sys_district` VALUES ('1531', '169', '汉南区', '0');
INSERT INTO `sys_district` VALUES ('1532', '169', '蔡甸区', '0');
INSERT INTO `sys_district` VALUES ('1533', '169', '江夏区', '0');
INSERT INTO `sys_district` VALUES ('1534', '169', '黄陂区', '0');
INSERT INTO `sys_district` VALUES ('1535', '169', '新洲区', '0');
INSERT INTO `sys_district` VALUES ('1536', '170', '黄石港区', '0');
INSERT INTO `sys_district` VALUES ('1537', '170', '西塞山区', '0');
INSERT INTO `sys_district` VALUES ('1538', '170', '下陆区', '0');
INSERT INTO `sys_district` VALUES ('1539', '170', '铁山区', '0');
INSERT INTO `sys_district` VALUES ('1540', '170', '阳新县', '0');
INSERT INTO `sys_district` VALUES ('1541', '170', '大冶市', '0');
INSERT INTO `sys_district` VALUES ('1542', '171', '茅箭区', '0');
INSERT INTO `sys_district` VALUES ('1543', '171', '张湾区', '0');
INSERT INTO `sys_district` VALUES ('1544', '171', '郧县', '0');
INSERT INTO `sys_district` VALUES ('1545', '171', '郧西县', '0');
INSERT INTO `sys_district` VALUES ('1546', '171', '竹山县', '0');
INSERT INTO `sys_district` VALUES ('1547', '171', '竹溪县', '0');
INSERT INTO `sys_district` VALUES ('1548', '171', '房县', '0');
INSERT INTO `sys_district` VALUES ('1549', '171', '丹江口市', '0');
INSERT INTO `sys_district` VALUES ('1550', '172', '西陵区', '0');
INSERT INTO `sys_district` VALUES ('1551', '172', '伍家岗区', '0');
INSERT INTO `sys_district` VALUES ('1552', '172', '点军区', '0');
INSERT INTO `sys_district` VALUES ('1553', '172', '猇亭区', '0');
INSERT INTO `sys_district` VALUES ('1554', '172', '夷陵区', '0');
INSERT INTO `sys_district` VALUES ('1555', '172', '远安县', '0');
INSERT INTO `sys_district` VALUES ('1556', '172', '兴山县', '0');
INSERT INTO `sys_district` VALUES ('1557', '172', '秭归县', '0');
INSERT INTO `sys_district` VALUES ('1558', '172', '长阳土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('1559', '172', '五峰土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('1560', '172', '宜都市', '0');
INSERT INTO `sys_district` VALUES ('1561', '172', '当阳市', '0');
INSERT INTO `sys_district` VALUES ('1562', '172', '枝江市', '0');
INSERT INTO `sys_district` VALUES ('1563', '173', '襄城区', '0');
INSERT INTO `sys_district` VALUES ('1564', '173', '樊城区', '0');
INSERT INTO `sys_district` VALUES ('1565', '173', '襄阳区', '0');
INSERT INTO `sys_district` VALUES ('1566', '173', '南漳县', '0');
INSERT INTO `sys_district` VALUES ('1567', '173', '谷城县', '0');
INSERT INTO `sys_district` VALUES ('1568', '173', '保康县', '0');
INSERT INTO `sys_district` VALUES ('1569', '173', '老河口市', '0');
INSERT INTO `sys_district` VALUES ('1570', '173', '枣阳市', '0');
INSERT INTO `sys_district` VALUES ('1571', '173', '宜城市', '0');
INSERT INTO `sys_district` VALUES ('1572', '174', '梁子湖区', '0');
INSERT INTO `sys_district` VALUES ('1573', '174', '华容区', '0');
INSERT INTO `sys_district` VALUES ('1574', '174', '鄂城区', '0');
INSERT INTO `sys_district` VALUES ('1575', '175', '东宝区', '0');
INSERT INTO `sys_district` VALUES ('1576', '175', '掇刀区', '0');
INSERT INTO `sys_district` VALUES ('1577', '175', '京山县', '0');
INSERT INTO `sys_district` VALUES ('1578', '175', '沙洋县', '0');
INSERT INTO `sys_district` VALUES ('1579', '175', '钟祥市', '0');
INSERT INTO `sys_district` VALUES ('1580', '176', '孝南区', '0');
INSERT INTO `sys_district` VALUES ('1581', '176', '孝昌县', '0');
INSERT INTO `sys_district` VALUES ('1582', '176', '大悟县', '0');
INSERT INTO `sys_district` VALUES ('1583', '176', '云梦县', '0');
INSERT INTO `sys_district` VALUES ('1584', '176', '应城市', '0');
INSERT INTO `sys_district` VALUES ('1585', '176', '安陆市', '0');
INSERT INTO `sys_district` VALUES ('1586', '176', '汉川市', '0');
INSERT INTO `sys_district` VALUES ('1587', '177', '沙市区', '0');
INSERT INTO `sys_district` VALUES ('1588', '177', '荆州区', '0');
INSERT INTO `sys_district` VALUES ('1589', '177', '公安县', '0');
INSERT INTO `sys_district` VALUES ('1590', '177', '监利县', '0');
INSERT INTO `sys_district` VALUES ('1591', '177', '江陵县', '0');
INSERT INTO `sys_district` VALUES ('1592', '177', '石首市', '0');
INSERT INTO `sys_district` VALUES ('1593', '177', '洪湖市', '0');
INSERT INTO `sys_district` VALUES ('1594', '177', '松滋市', '0');
INSERT INTO `sys_district` VALUES ('1595', '178', '黄州区', '0');
INSERT INTO `sys_district` VALUES ('1596', '178', '团风县', '0');
INSERT INTO `sys_district` VALUES ('1597', '178', '红安县', '0');
INSERT INTO `sys_district` VALUES ('1598', '178', '罗田县', '0');
INSERT INTO `sys_district` VALUES ('1599', '178', '英山县', '0');
INSERT INTO `sys_district` VALUES ('1600', '178', '浠水县', '0');
INSERT INTO `sys_district` VALUES ('1601', '178', '蕲春县', '0');
INSERT INTO `sys_district` VALUES ('1602', '178', '黄梅县', '0');
INSERT INTO `sys_district` VALUES ('1603', '178', '麻城市', '0');
INSERT INTO `sys_district` VALUES ('1604', '178', '武穴市', '0');
INSERT INTO `sys_district` VALUES ('1605', '179', '咸安区', '0');
INSERT INTO `sys_district` VALUES ('1606', '179', '嘉鱼县', '0');
INSERT INTO `sys_district` VALUES ('1607', '179', '通城县', '0');
INSERT INTO `sys_district` VALUES ('1608', '179', '崇阳县', '0');
INSERT INTO `sys_district` VALUES ('1609', '179', '通山县', '0');
INSERT INTO `sys_district` VALUES ('1610', '179', '赤壁市', '0');
INSERT INTO `sys_district` VALUES ('1611', '180', '曾都区', '0');
INSERT INTO `sys_district` VALUES ('1612', '180', '广水市', '0');
INSERT INTO `sys_district` VALUES ('1613', '181', '恩施市', '0');
INSERT INTO `sys_district` VALUES ('1614', '181', '利川市', '0');
INSERT INTO `sys_district` VALUES ('1615', '181', '建始县', '0');
INSERT INTO `sys_district` VALUES ('1616', '181', '巴东县', '0');
INSERT INTO `sys_district` VALUES ('1617', '181', '宣恩县', '0');
INSERT INTO `sys_district` VALUES ('1618', '181', '咸丰县', '0');
INSERT INTO `sys_district` VALUES ('1619', '181', '来凤县', '0');
INSERT INTO `sys_district` VALUES ('1620', '181', '鹤峰县', '0');
INSERT INTO `sys_district` VALUES ('1621', '182', '仙桃市', '0');
INSERT INTO `sys_district` VALUES ('1622', '182', '潜江市', '0');
INSERT INTO `sys_district` VALUES ('1623', '182', '天门市', '0');
INSERT INTO `sys_district` VALUES ('1624', '182', '神农架林区', '0');
INSERT INTO `sys_district` VALUES ('1625', '183', '芙蓉区', '0');
INSERT INTO `sys_district` VALUES ('1626', '183', '天心区', '0');
INSERT INTO `sys_district` VALUES ('1627', '183', '岳麓区', '0');
INSERT INTO `sys_district` VALUES ('1628', '183', '开福区', '0');
INSERT INTO `sys_district` VALUES ('1629', '183', '雨花区', '0');
INSERT INTO `sys_district` VALUES ('1630', '183', '长沙县', '0');
INSERT INTO `sys_district` VALUES ('1631', '183', '望城县', '0');
INSERT INTO `sys_district` VALUES ('1632', '183', '宁乡县', '0');
INSERT INTO `sys_district` VALUES ('1633', '183', '浏阳市', '0');
INSERT INTO `sys_district` VALUES ('1634', '184', '荷塘区', '0');
INSERT INTO `sys_district` VALUES ('1635', '184', '芦淞区', '0');
INSERT INTO `sys_district` VALUES ('1636', '184', '石峰区', '0');
INSERT INTO `sys_district` VALUES ('1637', '184', '天元区', '0');
INSERT INTO `sys_district` VALUES ('1638', '184', '株洲县', '0');
INSERT INTO `sys_district` VALUES ('1639', '184', '攸县', '0');
INSERT INTO `sys_district` VALUES ('1640', '184', '茶陵县', '0');
INSERT INTO `sys_district` VALUES ('1641', '184', '炎陵县', '0');
INSERT INTO `sys_district` VALUES ('1642', '184', '醴陵市', '0');
INSERT INTO `sys_district` VALUES ('1643', '185', '雨湖区', '0');
INSERT INTO `sys_district` VALUES ('1644', '185', '岳塘区', '0');
INSERT INTO `sys_district` VALUES ('1645', '185', '湘潭县', '0');
INSERT INTO `sys_district` VALUES ('1646', '185', '湘乡市', '0');
INSERT INTO `sys_district` VALUES ('1647', '185', '韶山市', '0');
INSERT INTO `sys_district` VALUES ('1648', '186', '珠晖区', '0');
INSERT INTO `sys_district` VALUES ('1649', '186', '雁峰区', '0');
INSERT INTO `sys_district` VALUES ('1650', '186', '石鼓区', '0');
INSERT INTO `sys_district` VALUES ('1651', '186', '蒸湘区', '0');
INSERT INTO `sys_district` VALUES ('1652', '186', '南岳区', '0');
INSERT INTO `sys_district` VALUES ('1653', '186', '衡阳县', '0');
INSERT INTO `sys_district` VALUES ('1654', '186', '衡南县', '0');
INSERT INTO `sys_district` VALUES ('1655', '186', '衡山县', '0');
INSERT INTO `sys_district` VALUES ('1656', '186', '衡东县', '0');
INSERT INTO `sys_district` VALUES ('1657', '186', '祁东县', '0');
INSERT INTO `sys_district` VALUES ('1658', '186', '耒阳市', '0');
INSERT INTO `sys_district` VALUES ('1659', '186', '常宁市', '0');
INSERT INTO `sys_district` VALUES ('1660', '187', '双清区', '0');
INSERT INTO `sys_district` VALUES ('1661', '187', '大祥区', '0');
INSERT INTO `sys_district` VALUES ('1662', '187', '北塔区', '0');
INSERT INTO `sys_district` VALUES ('1663', '187', '邵东县', '0');
INSERT INTO `sys_district` VALUES ('1664', '187', '新邵县', '0');
INSERT INTO `sys_district` VALUES ('1665', '187', '邵阳县', '0');
INSERT INTO `sys_district` VALUES ('1666', '187', '隆回县', '0');
INSERT INTO `sys_district` VALUES ('1667', '187', '洞口县', '0');
INSERT INTO `sys_district` VALUES ('1668', '187', '绥宁县', '0');
INSERT INTO `sys_district` VALUES ('1669', '187', '新宁县', '0');
INSERT INTO `sys_district` VALUES ('1670', '187', '城步苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1671', '187', '武冈市', '0');
INSERT INTO `sys_district` VALUES ('1672', '188', '岳阳楼区', '0');
INSERT INTO `sys_district` VALUES ('1673', '188', '云溪区', '0');
INSERT INTO `sys_district` VALUES ('1674', '188', '君山区', '0');
INSERT INTO `sys_district` VALUES ('1675', '188', '岳阳县', '0');
INSERT INTO `sys_district` VALUES ('1676', '188', '华容县', '0');
INSERT INTO `sys_district` VALUES ('1677', '188', '湘阴县', '0');
INSERT INTO `sys_district` VALUES ('1678', '188', '平江县', '0');
INSERT INTO `sys_district` VALUES ('1679', '188', '汨罗市', '0');
INSERT INTO `sys_district` VALUES ('1680', '188', '临湘市', '0');
INSERT INTO `sys_district` VALUES ('1681', '189', '武陵区', '0');
INSERT INTO `sys_district` VALUES ('1682', '189', '鼎城区', '0');
INSERT INTO `sys_district` VALUES ('1683', '189', '安乡县', '0');
INSERT INTO `sys_district` VALUES ('1684', '189', '汉寿县', '0');
INSERT INTO `sys_district` VALUES ('1685', '189', '澧县', '0');
INSERT INTO `sys_district` VALUES ('1686', '189', '临澧县', '0');
INSERT INTO `sys_district` VALUES ('1687', '189', '桃源县', '0');
INSERT INTO `sys_district` VALUES ('1688', '189', '石门县', '0');
INSERT INTO `sys_district` VALUES ('1689', '189', '津市市', '0');
INSERT INTO `sys_district` VALUES ('1690', '190', '永定区', '0');
INSERT INTO `sys_district` VALUES ('1691', '190', '武陵源区', '0');
INSERT INTO `sys_district` VALUES ('1692', '190', '慈利县', '0');
INSERT INTO `sys_district` VALUES ('1693', '190', '桑植县', '0');
INSERT INTO `sys_district` VALUES ('1694', '191', '资阳区', '0');
INSERT INTO `sys_district` VALUES ('1695', '191', '赫山区', '0');
INSERT INTO `sys_district` VALUES ('1696', '191', '南县', '0');
INSERT INTO `sys_district` VALUES ('1697', '191', '桃江县', '0');
INSERT INTO `sys_district` VALUES ('1698', '191', '安化县', '0');
INSERT INTO `sys_district` VALUES ('1699', '191', '沅江市', '0');
INSERT INTO `sys_district` VALUES ('1700', '192', '北湖区', '0');
INSERT INTO `sys_district` VALUES ('1701', '192', '苏仙区', '0');
INSERT INTO `sys_district` VALUES ('1702', '192', '桂阳县', '0');
INSERT INTO `sys_district` VALUES ('1703', '192', '宜章县', '0');
INSERT INTO `sys_district` VALUES ('1704', '192', '永兴县', '0');
INSERT INTO `sys_district` VALUES ('1705', '192', '嘉禾县', '0');
INSERT INTO `sys_district` VALUES ('1706', '192', '临武县', '0');
INSERT INTO `sys_district` VALUES ('1707', '192', '汝城县', '0');
INSERT INTO `sys_district` VALUES ('1708', '192', '桂东县', '0');
INSERT INTO `sys_district` VALUES ('1709', '192', '安仁县', '0');
INSERT INTO `sys_district` VALUES ('1710', '192', '资兴市', '0');
INSERT INTO `sys_district` VALUES ('1711', '193', '芝山区', '0');
INSERT INTO `sys_district` VALUES ('1712', '193', '冷水滩区', '0');
INSERT INTO `sys_district` VALUES ('1713', '193', '祁阳县', '0');
INSERT INTO `sys_district` VALUES ('1714', '193', '东安县', '0');
INSERT INTO `sys_district` VALUES ('1715', '193', '双牌县', '0');
INSERT INTO `sys_district` VALUES ('1716', '193', '道县', '0');
INSERT INTO `sys_district` VALUES ('1717', '193', '江永县', '0');
INSERT INTO `sys_district` VALUES ('1718', '193', '宁远县', '0');
INSERT INTO `sys_district` VALUES ('1719', '193', '蓝山县', '0');
INSERT INTO `sys_district` VALUES ('1720', '193', '新田县', '0');
INSERT INTO `sys_district` VALUES ('1721', '193', '江华瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1722', '194', '鹤城区', '0');
INSERT INTO `sys_district` VALUES ('1723', '194', '中方县', '0');
INSERT INTO `sys_district` VALUES ('1724', '194', '沅陵县', '0');
INSERT INTO `sys_district` VALUES ('1725', '194', '辰溪县', '0');
INSERT INTO `sys_district` VALUES ('1726', '194', '溆浦县', '0');
INSERT INTO `sys_district` VALUES ('1727', '194', '会同县', '0');
INSERT INTO `sys_district` VALUES ('1728', '194', '麻阳苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1729', '194', '新晃侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1730', '194', '芷江侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1731', '194', '靖州苗族侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1732', '194', '通道侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1733', '194', '洪江市', '0');
INSERT INTO `sys_district` VALUES ('1734', '195', '娄星区', '0');
INSERT INTO `sys_district` VALUES ('1735', '195', '双峰县', '0');
INSERT INTO `sys_district` VALUES ('1736', '195', '新化县', '0');
INSERT INTO `sys_district` VALUES ('1737', '195', '冷水江市', '0');
INSERT INTO `sys_district` VALUES ('1738', '195', '涟源市', '0');
INSERT INTO `sys_district` VALUES ('1739', '196', '吉首市', '0');
INSERT INTO `sys_district` VALUES ('1740', '196', '泸溪县', '0');
INSERT INTO `sys_district` VALUES ('1741', '196', '凤凰县', '0');
INSERT INTO `sys_district` VALUES ('1742', '196', '花垣县', '0');
INSERT INTO `sys_district` VALUES ('1743', '196', '保靖县', '0');
INSERT INTO `sys_district` VALUES ('1744', '196', '古丈县', '0');
INSERT INTO `sys_district` VALUES ('1745', '196', '永顺县', '0');
INSERT INTO `sys_district` VALUES ('1746', '196', '龙山县', '0');
INSERT INTO `sys_district` VALUES ('1747', '197', '东山区', '0');
INSERT INTO `sys_district` VALUES ('1748', '197', '荔湾区', '0');
INSERT INTO `sys_district` VALUES ('1749', '197', '越秀区', '0');
INSERT INTO `sys_district` VALUES ('1750', '197', '海珠区', '0');
INSERT INTO `sys_district` VALUES ('1751', '197', '天河区', '0');
INSERT INTO `sys_district` VALUES ('1752', '197', '芳村区', '0');
INSERT INTO `sys_district` VALUES ('1753', '197', '白云区', '0');
INSERT INTO `sys_district` VALUES ('1754', '197', '黄埔区', '0');
INSERT INTO `sys_district` VALUES ('1755', '197', '番禺区', '0');
INSERT INTO `sys_district` VALUES ('1756', '197', '花都区', '0');
INSERT INTO `sys_district` VALUES ('1757', '197', '增城市', '0');
INSERT INTO `sys_district` VALUES ('1759', '198', '武江区', '0');
INSERT INTO `sys_district` VALUES ('1760', '198', '浈江区', '0');
INSERT INTO `sys_district` VALUES ('1761', '198', '曲江区', '0');
INSERT INTO `sys_district` VALUES ('1762', '198', '始兴县', '0');
INSERT INTO `sys_district` VALUES ('1763', '198', '仁化县', '0');
INSERT INTO `sys_district` VALUES ('1764', '198', '翁源县', '0');
INSERT INTO `sys_district` VALUES ('1765', '198', '乳源瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1766', '198', '新丰县', '0');
INSERT INTO `sys_district` VALUES ('1767', '198', '乐昌市', '0');
INSERT INTO `sys_district` VALUES ('1768', '198', '南雄市', '0');
INSERT INTO `sys_district` VALUES ('1769', '199', '罗湖区', '0');
INSERT INTO `sys_district` VALUES ('1770', '199', '福田区', '0');
INSERT INTO `sys_district` VALUES ('1771', '199', '南山区', '0');
INSERT INTO `sys_district` VALUES ('1772', '199', '宝安区', '0');
INSERT INTO `sys_district` VALUES ('1773', '199', '龙岗区', '0');
INSERT INTO `sys_district` VALUES ('1774', '199', '盐田区', '0');
INSERT INTO `sys_district` VALUES ('1775', '200', '香洲区', '0');
INSERT INTO `sys_district` VALUES ('1776', '200', '斗门区', '0');
INSERT INTO `sys_district` VALUES ('1777', '200', '金湾区', '0');
INSERT INTO `sys_district` VALUES ('1778', '201', '龙湖区', '0');
INSERT INTO `sys_district` VALUES ('1779', '201', '金平区', '0');
INSERT INTO `sys_district` VALUES ('1780', '201', '濠江区', '0');
INSERT INTO `sys_district` VALUES ('1781', '201', '潮阳区', '0');
INSERT INTO `sys_district` VALUES ('1782', '201', '潮南区', '0');
INSERT INTO `sys_district` VALUES ('1783', '201', '澄海区', '0');
INSERT INTO `sys_district` VALUES ('1784', '201', '南澳县', '0');
INSERT INTO `sys_district` VALUES ('1785', '202', '禅城区', '0');
INSERT INTO `sys_district` VALUES ('1786', '202', '南海区', '0');
INSERT INTO `sys_district` VALUES ('1787', '202', '顺德区', '0');
INSERT INTO `sys_district` VALUES ('1788', '202', '三水区', '0');
INSERT INTO `sys_district` VALUES ('1789', '202', '高明区', '0');
INSERT INTO `sys_district` VALUES ('1790', '203', '蓬江区', '0');
INSERT INTO `sys_district` VALUES ('1791', '203', '江海区', '0');
INSERT INTO `sys_district` VALUES ('1792', '203', '新会区', '0');
INSERT INTO `sys_district` VALUES ('1793', '203', '台山市', '0');
INSERT INTO `sys_district` VALUES ('1794', '203', '开平市', '0');
INSERT INTO `sys_district` VALUES ('1795', '203', '鹤山市', '0');
INSERT INTO `sys_district` VALUES ('1796', '203', '恩平市', '0');
INSERT INTO `sys_district` VALUES ('1797', '204', '赤坎区', '0');
INSERT INTO `sys_district` VALUES ('1798', '204', '霞山区', '0');
INSERT INTO `sys_district` VALUES ('1799', '204', '坡头区', '0');
INSERT INTO `sys_district` VALUES ('1800', '204', '麻章区', '0');
INSERT INTO `sys_district` VALUES ('1801', '204', '遂溪县', '0');
INSERT INTO `sys_district` VALUES ('1802', '204', '徐闻县', '0');
INSERT INTO `sys_district` VALUES ('1803', '204', '廉江市', '0');
INSERT INTO `sys_district` VALUES ('1804', '204', '雷州市', '0');
INSERT INTO `sys_district` VALUES ('1805', '204', '吴川市', '0');
INSERT INTO `sys_district` VALUES ('1806', '205', '茂南区', '0');
INSERT INTO `sys_district` VALUES ('1807', '205', '茂港区', '0');
INSERT INTO `sys_district` VALUES ('1808', '205', '电白县', '0');
INSERT INTO `sys_district` VALUES ('1809', '205', '高州市', '0');
INSERT INTO `sys_district` VALUES ('1810', '205', '化州市', '0');
INSERT INTO `sys_district` VALUES ('1811', '205', '信宜市', '0');
INSERT INTO `sys_district` VALUES ('1812', '206', '端州区', '0');
INSERT INTO `sys_district` VALUES ('1813', '206', '鼎湖区', '0');
INSERT INTO `sys_district` VALUES ('1814', '206', '广宁县', '0');
INSERT INTO `sys_district` VALUES ('1815', '206', '怀集县', '0');
INSERT INTO `sys_district` VALUES ('1816', '206', '封开县', '0');
INSERT INTO `sys_district` VALUES ('1817', '206', '德庆县', '0');
INSERT INTO `sys_district` VALUES ('1818', '206', '高要市', '0');
INSERT INTO `sys_district` VALUES ('1819', '206', '四会市', '0');
INSERT INTO `sys_district` VALUES ('1820', '207', '惠城区', '0');
INSERT INTO `sys_district` VALUES ('1821', '207', '惠阳区', '0');
INSERT INTO `sys_district` VALUES ('1822', '207', '博罗县', '0');
INSERT INTO `sys_district` VALUES ('1823', '207', '惠东县', '0');
INSERT INTO `sys_district` VALUES ('1824', '207', '龙门县', '0');
INSERT INTO `sys_district` VALUES ('1825', '208', '梅江区', '0');
INSERT INTO `sys_district` VALUES ('1826', '208', '梅县', '0');
INSERT INTO `sys_district` VALUES ('1827', '208', '大埔县', '0');
INSERT INTO `sys_district` VALUES ('1828', '208', '丰顺县', '0');
INSERT INTO `sys_district` VALUES ('1829', '208', '五华县', '0');
INSERT INTO `sys_district` VALUES ('1830', '208', '平远县', '0');
INSERT INTO `sys_district` VALUES ('1831', '208', '蕉岭县', '0');
INSERT INTO `sys_district` VALUES ('1832', '208', '兴宁市', '0');
INSERT INTO `sys_district` VALUES ('1833', '209', '城区', '0');
INSERT INTO `sys_district` VALUES ('1834', '209', '海丰县', '0');
INSERT INTO `sys_district` VALUES ('1835', '209', '陆河县', '0');
INSERT INTO `sys_district` VALUES ('1836', '209', '陆丰市', '0');
INSERT INTO `sys_district` VALUES ('1837', '210', '源城区', '0');
INSERT INTO `sys_district` VALUES ('1838', '210', '紫金县', '0');
INSERT INTO `sys_district` VALUES ('1839', '210', '龙川县', '0');
INSERT INTO `sys_district` VALUES ('1840', '210', '连平县', '0');
INSERT INTO `sys_district` VALUES ('1841', '210', '和平县', '0');
INSERT INTO `sys_district` VALUES ('1842', '210', '东源县', '0');
INSERT INTO `sys_district` VALUES ('1843', '211', '江城区', '0');
INSERT INTO `sys_district` VALUES ('1844', '211', '阳西县', '0');
INSERT INTO `sys_district` VALUES ('1845', '211', '阳东县', '0');
INSERT INTO `sys_district` VALUES ('1846', '211', '阳春市', '0');
INSERT INTO `sys_district` VALUES ('1847', '212', '清城区', '0');
INSERT INTO `sys_district` VALUES ('1848', '212', '佛冈县', '0');
INSERT INTO `sys_district` VALUES ('1849', '212', '阳山县', '0');
INSERT INTO `sys_district` VALUES ('1850', '212', '连山壮族瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1851', '212', '连南瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1852', '212', '清新县', '0');
INSERT INTO `sys_district` VALUES ('1853', '212', '英德市', '0');
INSERT INTO `sys_district` VALUES ('1854', '212', '连州市', '0');
INSERT INTO `sys_district` VALUES ('1855', '215', '湘桥区', '0');
INSERT INTO `sys_district` VALUES ('1856', '215', '潮安县', '0');
INSERT INTO `sys_district` VALUES ('1857', '215', '饶平县', '0');
INSERT INTO `sys_district` VALUES ('1858', '216', '榕城区', '0');
INSERT INTO `sys_district` VALUES ('1859', '216', '揭东县', '0');
INSERT INTO `sys_district` VALUES ('1860', '216', '揭西县', '0');
INSERT INTO `sys_district` VALUES ('1861', '216', '惠来县', '0');
INSERT INTO `sys_district` VALUES ('1862', '216', '普宁市', '0');
INSERT INTO `sys_district` VALUES ('1863', '217', '云城区', '0');
INSERT INTO `sys_district` VALUES ('1864', '217', '新兴县', '0');
INSERT INTO `sys_district` VALUES ('1865', '217', '郁南县', '0');
INSERT INTO `sys_district` VALUES ('1866', '217', '云安县', '0');
INSERT INTO `sys_district` VALUES ('1867', '217', '罗定市', '0');
INSERT INTO `sys_district` VALUES ('1868', '218', '兴宁区', '0');
INSERT INTO `sys_district` VALUES ('1869', '218', '青秀区', '0');
INSERT INTO `sys_district` VALUES ('1870', '218', '江南区', '0');
INSERT INTO `sys_district` VALUES ('1871', '218', '西乡塘区', '0');
INSERT INTO `sys_district` VALUES ('1872', '218', '良庆区', '0');
INSERT INTO `sys_district` VALUES ('1873', '218', '邕宁区', '0');
INSERT INTO `sys_district` VALUES ('1874', '218', '武鸣县', '0');
INSERT INTO `sys_district` VALUES ('1875', '218', '隆安县', '0');
INSERT INTO `sys_district` VALUES ('1876', '218', '马山县', '0');
INSERT INTO `sys_district` VALUES ('1877', '218', '上林县', '0');
INSERT INTO `sys_district` VALUES ('1878', '218', '宾阳县', '0');
INSERT INTO `sys_district` VALUES ('1879', '218', '横县', '0');
INSERT INTO `sys_district` VALUES ('1880', '219', '城中区', '0');
INSERT INTO `sys_district` VALUES ('1881', '219', '鱼峰区', '0');
INSERT INTO `sys_district` VALUES ('1882', '219', '柳南区', '0');
INSERT INTO `sys_district` VALUES ('1883', '219', '柳北区', '0');
INSERT INTO `sys_district` VALUES ('1884', '219', '柳江县', '0');
INSERT INTO `sys_district` VALUES ('1885', '219', '柳城县', '0');
INSERT INTO `sys_district` VALUES ('1886', '219', '鹿寨县', '0');
INSERT INTO `sys_district` VALUES ('1887', '219', '融安县', '0');
INSERT INTO `sys_district` VALUES ('1888', '219', '融水苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1889', '219', '三江侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1890', '220', '秀峰区', '0');
INSERT INTO `sys_district` VALUES ('1891', '220', '叠彩区', '0');
INSERT INTO `sys_district` VALUES ('1892', '220', '象山区', '0');
INSERT INTO `sys_district` VALUES ('1893', '220', '七星区', '0');
INSERT INTO `sys_district` VALUES ('1894', '220', '雁山区', '0');
INSERT INTO `sys_district` VALUES ('1895', '220', '阳朔县', '0');
INSERT INTO `sys_district` VALUES ('1896', '220', '临桂县', '0');
INSERT INTO `sys_district` VALUES ('1897', '220', '灵川县', '0');
INSERT INTO `sys_district` VALUES ('1898', '220', '全州县', '0');
INSERT INTO `sys_district` VALUES ('1899', '220', '兴安县', '0');
INSERT INTO `sys_district` VALUES ('1900', '220', '永福县', '0');
INSERT INTO `sys_district` VALUES ('1901', '220', '灌阳县', '0');
INSERT INTO `sys_district` VALUES ('1902', '220', '龙胜各族自治县', '0');
INSERT INTO `sys_district` VALUES ('1903', '220', '资源县', '0');
INSERT INTO `sys_district` VALUES ('1904', '220', '平乐县', '0');
INSERT INTO `sys_district` VALUES ('1905', '220', '荔蒲县', '0');
INSERT INTO `sys_district` VALUES ('1906', '220', '恭城瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1907', '221', '万秀区', '0');
INSERT INTO `sys_district` VALUES ('1908', '221', '蝶山区', '0');
INSERT INTO `sys_district` VALUES ('1909', '221', '长洲区', '0');
INSERT INTO `sys_district` VALUES ('1910', '221', '苍梧县', '0');
INSERT INTO `sys_district` VALUES ('1911', '221', '藤县', '0');
INSERT INTO `sys_district` VALUES ('1912', '221', '蒙山县', '0');
INSERT INTO `sys_district` VALUES ('1913', '221', '岑溪市', '0');
INSERT INTO `sys_district` VALUES ('1914', '222', '海城区', '0');
INSERT INTO `sys_district` VALUES ('1915', '222', '银海区', '0');
INSERT INTO `sys_district` VALUES ('1916', '222', '铁山港区', '0');
INSERT INTO `sys_district` VALUES ('1917', '222', '合浦县', '0');
INSERT INTO `sys_district` VALUES ('1918', '223', '港口区', '0');
INSERT INTO `sys_district` VALUES ('1919', '223', '防城区', '0');
INSERT INTO `sys_district` VALUES ('1920', '223', '上思县', '0');
INSERT INTO `sys_district` VALUES ('1921', '223', '东兴市', '0');
INSERT INTO `sys_district` VALUES ('1922', '224', '钦南区', '0');
INSERT INTO `sys_district` VALUES ('1923', '224', '钦北区', '0');
INSERT INTO `sys_district` VALUES ('1924', '224', '灵山县', '0');
INSERT INTO `sys_district` VALUES ('1925', '224', '浦北县', '0');
INSERT INTO `sys_district` VALUES ('1926', '225', '港北区', '0');
INSERT INTO `sys_district` VALUES ('1927', '225', '港南区', '0');
INSERT INTO `sys_district` VALUES ('1928', '225', '覃塘区', '0');
INSERT INTO `sys_district` VALUES ('1929', '225', '平南县', '0');
INSERT INTO `sys_district` VALUES ('1930', '225', '桂平市', '0');
INSERT INTO `sys_district` VALUES ('1931', '226', '玉州区', '0');
INSERT INTO `sys_district` VALUES ('1932', '226', '容县', '0');
INSERT INTO `sys_district` VALUES ('1933', '226', '陆川县', '0');
INSERT INTO `sys_district` VALUES ('1934', '226', '博白县', '0');
INSERT INTO `sys_district` VALUES ('1935', '226', '兴业县', '0');
INSERT INTO `sys_district` VALUES ('1936', '226', '北流市', '0');
INSERT INTO `sys_district` VALUES ('1937', '227', '右江区', '0');
INSERT INTO `sys_district` VALUES ('1938', '227', '田阳县', '0');
INSERT INTO `sys_district` VALUES ('1939', '227', '田东县', '0');
INSERT INTO `sys_district` VALUES ('1940', '227', '平果县', '0');
INSERT INTO `sys_district` VALUES ('1941', '227', '德保县', '0');
INSERT INTO `sys_district` VALUES ('1942', '227', '靖西县', '0');
INSERT INTO `sys_district` VALUES ('1943', '227', '那坡县', '0');
INSERT INTO `sys_district` VALUES ('1944', '227', '凌云县', '0');
INSERT INTO `sys_district` VALUES ('1945', '227', '乐业县', '0');
INSERT INTO `sys_district` VALUES ('1946', '227', '田林县', '0');
INSERT INTO `sys_district` VALUES ('1947', '227', '西林县', '0');
INSERT INTO `sys_district` VALUES ('1948', '227', '隆林各族自治县', '0');
INSERT INTO `sys_district` VALUES ('1949', '228', '八步区', '0');
INSERT INTO `sys_district` VALUES ('1950', '228', '昭平县', '0');
INSERT INTO `sys_district` VALUES ('1951', '228', '钟山县', '0');
INSERT INTO `sys_district` VALUES ('1952', '228', '富川瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1953', '229', '金城江区', '0');
INSERT INTO `sys_district` VALUES ('1954', '229', '南丹县', '0');
INSERT INTO `sys_district` VALUES ('1955', '229', '天峨县', '0');
INSERT INTO `sys_district` VALUES ('1956', '229', '凤山县', '0');
INSERT INTO `sys_district` VALUES ('1957', '229', '东兰县', '0');
INSERT INTO `sys_district` VALUES ('1958', '229', '罗城仫佬族自治县', '0');
INSERT INTO `sys_district` VALUES ('1959', '229', '环江毛南族自治县', '0');
INSERT INTO `sys_district` VALUES ('1960', '229', '巴马瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1961', '229', '都安瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1962', '229', '大化瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1963', '229', '宜州市', '0');
INSERT INTO `sys_district` VALUES ('1964', '230', '兴宾区', '0');
INSERT INTO `sys_district` VALUES ('1965', '230', '忻城县', '0');
INSERT INTO `sys_district` VALUES ('1966', '230', '象州县', '0');
INSERT INTO `sys_district` VALUES ('1967', '230', '武宣县', '0');
INSERT INTO `sys_district` VALUES ('1968', '230', '金秀瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1969', '230', '合山市', '0');
INSERT INTO `sys_district` VALUES ('1970', '231', '江洲区', '0');
INSERT INTO `sys_district` VALUES ('1971', '231', '扶绥县', '0');
INSERT INTO `sys_district` VALUES ('1972', '231', '宁明县', '0');
INSERT INTO `sys_district` VALUES ('1973', '231', '龙州县', '0');
INSERT INTO `sys_district` VALUES ('1974', '231', '大新县', '0');
INSERT INTO `sys_district` VALUES ('1975', '231', '天等县', '0');
INSERT INTO `sys_district` VALUES ('1976', '231', '凭祥市', '0');
INSERT INTO `sys_district` VALUES ('1977', '232', '秀英区', '0');
INSERT INTO `sys_district` VALUES ('1978', '232', '龙华区', '0');
INSERT INTO `sys_district` VALUES ('1979', '232', '琼山区', '0');
INSERT INTO `sys_district` VALUES ('1980', '232', '美兰区', '0');
INSERT INTO `sys_district` VALUES ('1981', '233', '五指山市', '0');
INSERT INTO `sys_district` VALUES ('1982', '233', '琼海市', '0');
INSERT INTO `sys_district` VALUES ('1983', '233', '儋州市', '0');
INSERT INTO `sys_district` VALUES ('1984', '233', '文昌市', '0');
INSERT INTO `sys_district` VALUES ('1985', '233', '万宁市', '0');
INSERT INTO `sys_district` VALUES ('1986', '233', '东方市', '0');
INSERT INTO `sys_district` VALUES ('1987', '233', '定安县', '0');
INSERT INTO `sys_district` VALUES ('1988', '233', '屯昌县', '0');
INSERT INTO `sys_district` VALUES ('1989', '233', '澄迈县', '0');
INSERT INTO `sys_district` VALUES ('1990', '233', '临高县', '0');
INSERT INTO `sys_district` VALUES ('1991', '233', '白沙黎族自治县', '0');
INSERT INTO `sys_district` VALUES ('1992', '233', '昌江黎族自治县', '0');
INSERT INTO `sys_district` VALUES ('1993', '233', '乐东黎族自治县', '0');
INSERT INTO `sys_district` VALUES ('1994', '233', '陵水黎族自治县', '0');
INSERT INTO `sys_district` VALUES ('1995', '233', '保亭黎族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1996', '233', '琼中黎族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1997', '233', '西沙群岛', '0');
INSERT INTO `sys_district` VALUES ('1998', '233', '南沙群岛', '0');
INSERT INTO `sys_district` VALUES ('1999', '233', '中沙群岛的岛礁及其海域', '0');
INSERT INTO `sys_district` VALUES ('2000', '234', '万州区', '0');
INSERT INTO `sys_district` VALUES ('2001', '234', '涪陵区', '0');
INSERT INTO `sys_district` VALUES ('2002', '234', '渝中区', '0');
INSERT INTO `sys_district` VALUES ('2003', '234', '大渡口区', '0');
INSERT INTO `sys_district` VALUES ('2004', '234', '江北区', '0');
INSERT INTO `sys_district` VALUES ('2005', '234', '沙坪坝区', '0');
INSERT INTO `sys_district` VALUES ('2006', '234', '九龙坡区', '0');
INSERT INTO `sys_district` VALUES ('2007', '234', '南岸区', '0');
INSERT INTO `sys_district` VALUES ('2008', '234', '北碚区', '0');
INSERT INTO `sys_district` VALUES ('2009', '234', '万盛区', '0');
INSERT INTO `sys_district` VALUES ('2010', '234', '双桥区', '0');
INSERT INTO `sys_district` VALUES ('2011', '234', '渝北区', '0');
INSERT INTO `sys_district` VALUES ('2012', '234', '巴南区', '0');
INSERT INTO `sys_district` VALUES ('2013', '234', '黔江区', '0');
INSERT INTO `sys_district` VALUES ('2014', '234', '长寿区', '0');
INSERT INTO `sys_district` VALUES ('2015', '234', '綦江县', '0');
INSERT INTO `sys_district` VALUES ('2016', '234', '潼南县', '0');
INSERT INTO `sys_district` VALUES ('2017', '234', '铜梁县', '0');
INSERT INTO `sys_district` VALUES ('2018', '234', '大足县', '0');
INSERT INTO `sys_district` VALUES ('2019', '234', '荣昌县', '0');
INSERT INTO `sys_district` VALUES ('2020', '234', '璧山县', '0');
INSERT INTO `sys_district` VALUES ('2021', '234', '梁平县', '0');
INSERT INTO `sys_district` VALUES ('2022', '234', '城口县', '0');
INSERT INTO `sys_district` VALUES ('2023', '234', '丰都县', '0');
INSERT INTO `sys_district` VALUES ('2024', '234', '垫江县', '0');
INSERT INTO `sys_district` VALUES ('2025', '234', '武隆县', '0');
INSERT INTO `sys_district` VALUES ('2026', '234', '忠县', '0');
INSERT INTO `sys_district` VALUES ('2027', '234', '开县', '0');
INSERT INTO `sys_district` VALUES ('2028', '234', '云阳县', '0');
INSERT INTO `sys_district` VALUES ('2029', '234', '奉节县', '0');
INSERT INTO `sys_district` VALUES ('2030', '234', '巫山县', '0');
INSERT INTO `sys_district` VALUES ('2031', '234', '巫溪县', '0');
INSERT INTO `sys_district` VALUES ('2032', '234', '石柱土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('2033', '234', '秀山土家族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2034', '234', '酉阳土家族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2035', '234', '彭水苗族土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('2036', '234', '江津市', '0');
INSERT INTO `sys_district` VALUES ('2037', '234', '合川市', '0');
INSERT INTO `sys_district` VALUES ('2038', '234', '永川市', '0');
INSERT INTO `sys_district` VALUES ('2039', '234', '南川市', '0');
INSERT INTO `sys_district` VALUES ('2040', '235', '锦江区', '0');
INSERT INTO `sys_district` VALUES ('2041', '235', '青羊区', '0');
INSERT INTO `sys_district` VALUES ('2042', '235', '金牛区', '0');
INSERT INTO `sys_district` VALUES ('2043', '235', '武侯区', '0');
INSERT INTO `sys_district` VALUES ('2044', '235', '成华区', '0');
INSERT INTO `sys_district` VALUES ('2045', '235', '龙泉驿区', '0');
INSERT INTO `sys_district` VALUES ('2046', '235', '青白江区', '0');
INSERT INTO `sys_district` VALUES ('2047', '235', '新都区', '0');
INSERT INTO `sys_district` VALUES ('2048', '235', '温江区', '0');
INSERT INTO `sys_district` VALUES ('2049', '235', '金堂县', '0');
INSERT INTO `sys_district` VALUES ('2050', '235', '双流县', '0');
INSERT INTO `sys_district` VALUES ('2051', '235', '郫县', '0');
INSERT INTO `sys_district` VALUES ('2052', '235', '大邑县', '0');
INSERT INTO `sys_district` VALUES ('2053', '235', '蒲江县', '0');
INSERT INTO `sys_district` VALUES ('2054', '235', '新津县', '0');
INSERT INTO `sys_district` VALUES ('2055', '235', '都江堰市', '0');
INSERT INTO `sys_district` VALUES ('2056', '235', '彭州市', '0');
INSERT INTO `sys_district` VALUES ('2057', '235', '邛崃市', '0');
INSERT INTO `sys_district` VALUES ('2058', '235', '崇州市', '0');
INSERT INTO `sys_district` VALUES ('2059', '236', '自流井区', '0');
INSERT INTO `sys_district` VALUES ('2060', '236', '贡井区', '0');
INSERT INTO `sys_district` VALUES ('2061', '236', '大安区', '0');
INSERT INTO `sys_district` VALUES ('2062', '236', '沿滩区', '0');
INSERT INTO `sys_district` VALUES ('2063', '236', '荣县', '0');
INSERT INTO `sys_district` VALUES ('2064', '236', '富顺县', '0');
INSERT INTO `sys_district` VALUES ('2065', '237', '东区', '0');
INSERT INTO `sys_district` VALUES ('2066', '237', '西区', '0');
INSERT INTO `sys_district` VALUES ('2067', '237', '仁和区', '0');
INSERT INTO `sys_district` VALUES ('2068', '237', '米易县', '0');
INSERT INTO `sys_district` VALUES ('2069', '237', '盐边县', '0');
INSERT INTO `sys_district` VALUES ('2070', '238', '江阳区', '0');
INSERT INTO `sys_district` VALUES ('2071', '238', '纳溪区', '0');
INSERT INTO `sys_district` VALUES ('2072', '238', '龙马潭区', '0');
INSERT INTO `sys_district` VALUES ('2073', '238', '泸县', '0');
INSERT INTO `sys_district` VALUES ('2074', '238', '合江县', '0');
INSERT INTO `sys_district` VALUES ('2075', '238', '叙永县', '0');
INSERT INTO `sys_district` VALUES ('2076', '238', '古蔺县', '0');
INSERT INTO `sys_district` VALUES ('2077', '239', '旌阳区', '0');
INSERT INTO `sys_district` VALUES ('2078', '239', '中江县', '0');
INSERT INTO `sys_district` VALUES ('2079', '239', '罗江县', '0');
INSERT INTO `sys_district` VALUES ('2080', '239', '广汉市', '0');
INSERT INTO `sys_district` VALUES ('2081', '239', '什邡市', '0');
INSERT INTO `sys_district` VALUES ('2082', '239', '绵竹市', '0');
INSERT INTO `sys_district` VALUES ('2083', '240', '涪城区', '0');
INSERT INTO `sys_district` VALUES ('2084', '240', '游仙区', '0');
INSERT INTO `sys_district` VALUES ('2085', '240', '三台县', '0');
INSERT INTO `sys_district` VALUES ('2086', '240', '盐亭县', '0');
INSERT INTO `sys_district` VALUES ('2087', '240', '安县', '0');
INSERT INTO `sys_district` VALUES ('2088', '240', '梓潼县', '0');
INSERT INTO `sys_district` VALUES ('2089', '240', '北川羌族自治县', '0');
INSERT INTO `sys_district` VALUES ('2090', '240', '平武县', '0');
INSERT INTO `sys_district` VALUES ('2091', '240', '江油市', '0');
INSERT INTO `sys_district` VALUES ('2092', '241', '市中区', '0');
INSERT INTO `sys_district` VALUES ('2093', '241', '元坝区', '0');
INSERT INTO `sys_district` VALUES ('2094', '241', '朝天区', '0');
INSERT INTO `sys_district` VALUES ('2095', '241', '旺苍县', '0');
INSERT INTO `sys_district` VALUES ('2096', '241', '青川县', '0');
INSERT INTO `sys_district` VALUES ('2097', '241', '剑阁县', '0');
INSERT INTO `sys_district` VALUES ('2098', '241', '苍溪县', '0');
INSERT INTO `sys_district` VALUES ('2099', '242', '船山区', '0');
INSERT INTO `sys_district` VALUES ('2100', '242', '安居区', '0');
INSERT INTO `sys_district` VALUES ('2101', '242', '蓬溪县', '0');
INSERT INTO `sys_district` VALUES ('2102', '242', '射洪县', '0');
INSERT INTO `sys_district` VALUES ('2103', '242', '大英县', '0');
INSERT INTO `sys_district` VALUES ('2104', '243', '市中区', '0');
INSERT INTO `sys_district` VALUES ('2105', '243', '东兴区', '0');
INSERT INTO `sys_district` VALUES ('2106', '243', '威远县', '0');
INSERT INTO `sys_district` VALUES ('2107', '243', '资中县', '0');
INSERT INTO `sys_district` VALUES ('2108', '243', '隆昌县', '0');
INSERT INTO `sys_district` VALUES ('2109', '244', '市中区', '0');
INSERT INTO `sys_district` VALUES ('2110', '244', '沙湾区', '0');
INSERT INTO `sys_district` VALUES ('2111', '244', '五通桥区', '0');
INSERT INTO `sys_district` VALUES ('2112', '244', '金口河区', '0');
INSERT INTO `sys_district` VALUES ('2113', '244', '犍为县', '0');
INSERT INTO `sys_district` VALUES ('2114', '244', '井研县', '0');
INSERT INTO `sys_district` VALUES ('2115', '244', '夹江县', '0');
INSERT INTO `sys_district` VALUES ('2116', '244', '沐川县', '0');
INSERT INTO `sys_district` VALUES ('2117', '244', '峨边彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2118', '244', '马边彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2119', '244', '峨眉山市', '0');
INSERT INTO `sys_district` VALUES ('2120', '245', '顺庆区', '0');
INSERT INTO `sys_district` VALUES ('2121', '245', '高坪区', '0');
INSERT INTO `sys_district` VALUES ('2122', '245', '嘉陵区', '0');
INSERT INTO `sys_district` VALUES ('2123', '245', '南部县', '0');
INSERT INTO `sys_district` VALUES ('2124', '245', '营山县', '0');
INSERT INTO `sys_district` VALUES ('2125', '245', '蓬安县', '0');
INSERT INTO `sys_district` VALUES ('2126', '245', '仪陇县', '0');
INSERT INTO `sys_district` VALUES ('2127', '245', '西充县', '0');
INSERT INTO `sys_district` VALUES ('2128', '245', '阆中市', '0');
INSERT INTO `sys_district` VALUES ('2129', '246', '东坡区', '0');
INSERT INTO `sys_district` VALUES ('2130', '246', '仁寿县', '0');
INSERT INTO `sys_district` VALUES ('2131', '246', '彭山县', '0');
INSERT INTO `sys_district` VALUES ('2132', '246', '洪雅县', '0');
INSERT INTO `sys_district` VALUES ('2133', '246', '丹棱县', '0');
INSERT INTO `sys_district` VALUES ('2134', '246', '青神县', '0');
INSERT INTO `sys_district` VALUES ('2135', '247', '翠屏区', '0');
INSERT INTO `sys_district` VALUES ('2136', '247', '宜宾县', '0');
INSERT INTO `sys_district` VALUES ('2137', '247', '南溪县', '0');
INSERT INTO `sys_district` VALUES ('2138', '247', '江安县', '0');
INSERT INTO `sys_district` VALUES ('2139', '247', '长宁县', '0');
INSERT INTO `sys_district` VALUES ('2140', '247', '高县', '0');
INSERT INTO `sys_district` VALUES ('2141', '247', '珙县', '0');
INSERT INTO `sys_district` VALUES ('2142', '247', '筠连县', '0');
INSERT INTO `sys_district` VALUES ('2143', '247', '兴文县', '0');
INSERT INTO `sys_district` VALUES ('2144', '247', '屏山县', '0');
INSERT INTO `sys_district` VALUES ('2145', '248', '广安区', '0');
INSERT INTO `sys_district` VALUES ('2146', '248', '岳池县', '0');
INSERT INTO `sys_district` VALUES ('2147', '248', '武胜县', '0');
INSERT INTO `sys_district` VALUES ('2148', '248', '邻水县', '0');
INSERT INTO `sys_district` VALUES ('2149', '248', '华蓥市', '0');
INSERT INTO `sys_district` VALUES ('2150', '249', '通川区', '0');
INSERT INTO `sys_district` VALUES ('2151', '249', '达县', '0');
INSERT INTO `sys_district` VALUES ('2152', '249', '宣汉县', '0');
INSERT INTO `sys_district` VALUES ('2153', '249', '开江县', '0');
INSERT INTO `sys_district` VALUES ('2154', '249', '大竹县', '0');
INSERT INTO `sys_district` VALUES ('2155', '249', '渠县', '0');
INSERT INTO `sys_district` VALUES ('2156', '249', '万源市', '0');
INSERT INTO `sys_district` VALUES ('2157', '250', '雨城区', '0');
INSERT INTO `sys_district` VALUES ('2158', '250', '名山县', '0');
INSERT INTO `sys_district` VALUES ('2159', '250', '荥经县', '0');
INSERT INTO `sys_district` VALUES ('2160', '250', '汉源县', '0');
INSERT INTO `sys_district` VALUES ('2161', '250', '石棉县', '0');
INSERT INTO `sys_district` VALUES ('2162', '250', '天全县', '0');
INSERT INTO `sys_district` VALUES ('2163', '250', '芦山县', '0');
INSERT INTO `sys_district` VALUES ('2164', '250', '宝兴县', '0');
INSERT INTO `sys_district` VALUES ('2165', '251', '巴州区', '0');
INSERT INTO `sys_district` VALUES ('2166', '251', '通江县', '0');
INSERT INTO `sys_district` VALUES ('2167', '251', '南江县', '0');
INSERT INTO `sys_district` VALUES ('2168', '251', '平昌县', '0');
INSERT INTO `sys_district` VALUES ('2169', '252', '雁江区', '0');
INSERT INTO `sys_district` VALUES ('2170', '252', '安岳县', '0');
INSERT INTO `sys_district` VALUES ('2171', '252', '乐至县', '0');
INSERT INTO `sys_district` VALUES ('2172', '252', '简阳市', '0');
INSERT INTO `sys_district` VALUES ('2173', '253', '汶川县', '0');
INSERT INTO `sys_district` VALUES ('2174', '253', '理县', '0');
INSERT INTO `sys_district` VALUES ('2175', '253', '茂县', '0');
INSERT INTO `sys_district` VALUES ('2176', '253', '松潘县', '0');
INSERT INTO `sys_district` VALUES ('2177', '253', '九寨沟县', '0');
INSERT INTO `sys_district` VALUES ('2178', '253', '金川县', '0');
INSERT INTO `sys_district` VALUES ('2179', '253', '小金县', '0');
INSERT INTO `sys_district` VALUES ('2180', '253', '黑水县', '0');
INSERT INTO `sys_district` VALUES ('2181', '253', '马尔康县', '0');
INSERT INTO `sys_district` VALUES ('2182', '253', '壤塘县', '0');
INSERT INTO `sys_district` VALUES ('2183', '253', '阿坝县', '0');
INSERT INTO `sys_district` VALUES ('2184', '253', '若尔盖县', '0');
INSERT INTO `sys_district` VALUES ('2185', '253', '红原县', '0');
INSERT INTO `sys_district` VALUES ('2186', '254', '康定县', '0');
INSERT INTO `sys_district` VALUES ('2187', '254', '泸定县', '0');
INSERT INTO `sys_district` VALUES ('2188', '254', '丹巴县', '0');
INSERT INTO `sys_district` VALUES ('2189', '254', '九龙县', '0');
INSERT INTO `sys_district` VALUES ('2190', '254', '雅江县', '0');
INSERT INTO `sys_district` VALUES ('2191', '254', '道孚县', '0');
INSERT INTO `sys_district` VALUES ('2192', '254', '炉霍县', '0');
INSERT INTO `sys_district` VALUES ('2193', '254', '甘孜县', '0');
INSERT INTO `sys_district` VALUES ('2194', '254', '新龙县', '0');
INSERT INTO `sys_district` VALUES ('2195', '254', '德格县', '0');
INSERT INTO `sys_district` VALUES ('2196', '254', '白玉县', '0');
INSERT INTO `sys_district` VALUES ('2197', '254', '石渠县', '0');
INSERT INTO `sys_district` VALUES ('2198', '254', '色达县', '0');
INSERT INTO `sys_district` VALUES ('2199', '254', '理塘县', '0');
INSERT INTO `sys_district` VALUES ('2200', '254', '巴塘县', '0');
INSERT INTO `sys_district` VALUES ('2201', '254', '乡城县', '0');
INSERT INTO `sys_district` VALUES ('2202', '254', '稻城县', '0');
INSERT INTO `sys_district` VALUES ('2203', '254', '得荣县', '0');
INSERT INTO `sys_district` VALUES ('2204', '255', '西昌市', '0');
INSERT INTO `sys_district` VALUES ('2205', '255', '木里藏族自治县', '0');
INSERT INTO `sys_district` VALUES ('2206', '255', '盐源县', '0');
INSERT INTO `sys_district` VALUES ('2207', '255', '德昌县', '0');
INSERT INTO `sys_district` VALUES ('2208', '255', '会理县', '0');
INSERT INTO `sys_district` VALUES ('2209', '255', '会东县', '0');
INSERT INTO `sys_district` VALUES ('2210', '255', '宁南县', '0');
INSERT INTO `sys_district` VALUES ('2211', '255', '普格县', '0');
INSERT INTO `sys_district` VALUES ('2212', '255', '布拖县', '0');
INSERT INTO `sys_district` VALUES ('2213', '255', '金阳县', '0');
INSERT INTO `sys_district` VALUES ('2214', '255', '昭觉县', '0');
INSERT INTO `sys_district` VALUES ('2215', '255', '喜德县', '0');
INSERT INTO `sys_district` VALUES ('2216', '255', '冕宁县', '0');
INSERT INTO `sys_district` VALUES ('2217', '255', '越西县', '0');
INSERT INTO `sys_district` VALUES ('2218', '255', '甘洛县', '0');
INSERT INTO `sys_district` VALUES ('2219', '255', '美姑县', '0');
INSERT INTO `sys_district` VALUES ('2220', '255', '雷波县', '0');
INSERT INTO `sys_district` VALUES ('2221', '256', '南明区', '0');
INSERT INTO `sys_district` VALUES ('2222', '256', '云岩区', '0');
INSERT INTO `sys_district` VALUES ('2223', '256', '花溪区', '0');
INSERT INTO `sys_district` VALUES ('2224', '256', '乌当区', '0');
INSERT INTO `sys_district` VALUES ('2225', '256', '白云区', '0');
INSERT INTO `sys_district` VALUES ('2226', '256', '小河区', '0');
INSERT INTO `sys_district` VALUES ('2227', '256', '开阳县', '0');
INSERT INTO `sys_district` VALUES ('2228', '256', '息烽县', '0');
INSERT INTO `sys_district` VALUES ('2229', '256', '修文县', '0');
INSERT INTO `sys_district` VALUES ('2230', '256', '清镇市', '0');
INSERT INTO `sys_district` VALUES ('2231', '257', '钟山区', '0');
INSERT INTO `sys_district` VALUES ('2232', '257', '六枝特区', '0');
INSERT INTO `sys_district` VALUES ('2233', '257', '水城县', '0');
INSERT INTO `sys_district` VALUES ('2234', '257', '盘县', '0');
INSERT INTO `sys_district` VALUES ('2235', '258', '红花岗区', '0');
INSERT INTO `sys_district` VALUES ('2236', '258', '汇川区', '0');
INSERT INTO `sys_district` VALUES ('2237', '258', '遵义县', '0');
INSERT INTO `sys_district` VALUES ('2238', '258', '桐梓县', '0');
INSERT INTO `sys_district` VALUES ('2239', '258', '绥阳县', '0');
INSERT INTO `sys_district` VALUES ('2240', '258', '正安县', '0');
INSERT INTO `sys_district` VALUES ('2241', '258', '道真仡佬族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2242', '258', '务川仡佬族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2243', '258', '凤冈县', '0');
INSERT INTO `sys_district` VALUES ('2244', '258', '湄潭县', '0');
INSERT INTO `sys_district` VALUES ('2245', '258', '余庆县', '0');
INSERT INTO `sys_district` VALUES ('2246', '258', '习水县', '0');
INSERT INTO `sys_district` VALUES ('2247', '258', '赤水市', '0');
INSERT INTO `sys_district` VALUES ('2248', '258', '仁怀市', '0');
INSERT INTO `sys_district` VALUES ('2249', '259', '西秀区', '0');
INSERT INTO `sys_district` VALUES ('2250', '259', '平坝县', '0');
INSERT INTO `sys_district` VALUES ('2251', '259', '普定县', '0');
INSERT INTO `sys_district` VALUES ('2252', '259', '镇宁布依族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2253', '259', '关岭布依族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2254', '259', '紫云苗族布依族自治县', '0');
INSERT INTO `sys_district` VALUES ('2255', '260', '铜仁市', '0');
INSERT INTO `sys_district` VALUES ('2256', '260', '江口县', '0');
INSERT INTO `sys_district` VALUES ('2257', '260', '玉屏侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2258', '260', '石阡县', '0');
INSERT INTO `sys_district` VALUES ('2259', '260', '思南县', '0');
INSERT INTO `sys_district` VALUES ('2260', '260', '印江土家族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2261', '260', '德江县', '0');
INSERT INTO `sys_district` VALUES ('2262', '260', '沿河土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('2263', '260', '松桃苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2264', '260', '万山特区', '0');
INSERT INTO `sys_district` VALUES ('2265', '261', '兴义市', '0');
INSERT INTO `sys_district` VALUES ('2266', '261', '兴仁县', '0');
INSERT INTO `sys_district` VALUES ('2267', '261', '普安县', '0');
INSERT INTO `sys_district` VALUES ('2268', '261', '晴隆县', '0');
INSERT INTO `sys_district` VALUES ('2269', '261', '贞丰县', '0');
INSERT INTO `sys_district` VALUES ('2270', '261', '望谟县', '0');
INSERT INTO `sys_district` VALUES ('2271', '261', '册亨县', '0');
INSERT INTO `sys_district` VALUES ('2272', '261', '安龙县', '0');
INSERT INTO `sys_district` VALUES ('2273', '262', '毕节市', '0');
INSERT INTO `sys_district` VALUES ('2274', '262', '大方县', '0');
INSERT INTO `sys_district` VALUES ('2275', '262', '黔西县', '0');
INSERT INTO `sys_district` VALUES ('2276', '262', '金沙县', '0');
INSERT INTO `sys_district` VALUES ('2277', '262', '织金县', '0');
INSERT INTO `sys_district` VALUES ('2278', '262', '纳雍县', '0');
INSERT INTO `sys_district` VALUES ('2279', '262', '威宁彝族回族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2280', '262', '赫章县', '0');
INSERT INTO `sys_district` VALUES ('2281', '263', '凯里市', '0');
INSERT INTO `sys_district` VALUES ('2282', '263', '黄平县', '0');
INSERT INTO `sys_district` VALUES ('2283', '263', '施秉县', '0');
INSERT INTO `sys_district` VALUES ('2284', '263', '三穗县', '0');
INSERT INTO `sys_district` VALUES ('2285', '263', '镇远县', '0');
INSERT INTO `sys_district` VALUES ('2286', '263', '岑巩县', '0');
INSERT INTO `sys_district` VALUES ('2287', '263', '天柱县', '0');
INSERT INTO `sys_district` VALUES ('2288', '263', '锦屏县', '0');
INSERT INTO `sys_district` VALUES ('2289', '263', '剑河县', '0');
INSERT INTO `sys_district` VALUES ('2290', '263', '台江县', '0');
INSERT INTO `sys_district` VALUES ('2291', '263', '黎平县', '0');
INSERT INTO `sys_district` VALUES ('2292', '263', '榕江县', '0');
INSERT INTO `sys_district` VALUES ('2293', '263', '从江县', '0');
INSERT INTO `sys_district` VALUES ('2294', '263', '雷山县', '0');
INSERT INTO `sys_district` VALUES ('2295', '263', '麻江县', '0');
INSERT INTO `sys_district` VALUES ('2296', '263', '丹寨县', '0');
INSERT INTO `sys_district` VALUES ('2297', '264', '都匀市', '0');
INSERT INTO `sys_district` VALUES ('2298', '264', '福泉市', '0');
INSERT INTO `sys_district` VALUES ('2299', '264', '荔波县', '0');
INSERT INTO `sys_district` VALUES ('2300', '264', '贵定县', '0');
INSERT INTO `sys_district` VALUES ('2301', '264', '瓮安县', '0');
INSERT INTO `sys_district` VALUES ('2302', '264', '独山县', '0');
INSERT INTO `sys_district` VALUES ('2303', '264', '平塘县', '0');
INSERT INTO `sys_district` VALUES ('2304', '264', '罗甸县', '0');
INSERT INTO `sys_district` VALUES ('2305', '264', '长顺县', '0');
INSERT INTO `sys_district` VALUES ('2306', '264', '龙里县', '0');
INSERT INTO `sys_district` VALUES ('2307', '264', '惠水县', '0');
INSERT INTO `sys_district` VALUES ('2308', '264', '三都水族自治县', '0');
INSERT INTO `sys_district` VALUES ('2309', '265', '五华区', '0');
INSERT INTO `sys_district` VALUES ('2310', '265', '盘龙区', '0');
INSERT INTO `sys_district` VALUES ('2311', '265', '官渡区', '0');
INSERT INTO `sys_district` VALUES ('2312', '265', '西山区', '0');
INSERT INTO `sys_district` VALUES ('2313', '265', '东川区', '0');
INSERT INTO `sys_district` VALUES ('2314', '265', '呈贡县', '0');
INSERT INTO `sys_district` VALUES ('2315', '265', '晋宁县', '0');
INSERT INTO `sys_district` VALUES ('2316', '265', '富民县', '0');
INSERT INTO `sys_district` VALUES ('2317', '265', '宜良县', '0');
INSERT INTO `sys_district` VALUES ('2318', '265', '石林彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2319', '265', '嵩明县', '0');
INSERT INTO `sys_district` VALUES ('2320', '265', '禄劝彝族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2321', '265', '寻甸回族彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2322', '265', '安宁市', '0');
INSERT INTO `sys_district` VALUES ('2323', '266', '麒麟区', '0');
INSERT INTO `sys_district` VALUES ('2324', '266', '马龙县', '0');
INSERT INTO `sys_district` VALUES ('2325', '266', '陆良县', '0');
INSERT INTO `sys_district` VALUES ('2326', '266', '师宗县', '0');
INSERT INTO `sys_district` VALUES ('2327', '266', '罗平县', '0');
INSERT INTO `sys_district` VALUES ('2328', '266', '富源县', '0');
INSERT INTO `sys_district` VALUES ('2329', '266', '会泽县', '0');
INSERT INTO `sys_district` VALUES ('2330', '266', '沾益县', '0');
INSERT INTO `sys_district` VALUES ('2331', '266', '宣威市', '0');
INSERT INTO `sys_district` VALUES ('2332', '267', '红塔区', '0');
INSERT INTO `sys_district` VALUES ('2333', '267', '江川县', '0');
INSERT INTO `sys_district` VALUES ('2334', '267', '澄江县', '0');
INSERT INTO `sys_district` VALUES ('2335', '267', '通海县', '0');
INSERT INTO `sys_district` VALUES ('2336', '267', '华宁县', '0');
INSERT INTO `sys_district` VALUES ('2337', '267', '易门县', '0');
INSERT INTO `sys_district` VALUES ('2338', '267', '峨山彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2339', '267', '新平彝族傣族自治县', '0');
INSERT INTO `sys_district` VALUES ('2340', '267', '元江哈尼族彝族傣族自治县', '0');
INSERT INTO `sys_district` VALUES ('2341', '268', '隆阳区', '0');
INSERT INTO `sys_district` VALUES ('2342', '268', '施甸县', '0');
INSERT INTO `sys_district` VALUES ('2343', '268', '腾冲县', '0');
INSERT INTO `sys_district` VALUES ('2344', '268', '龙陵县', '0');
INSERT INTO `sys_district` VALUES ('2345', '268', '昌宁县', '0');
INSERT INTO `sys_district` VALUES ('2346', '269', '昭阳区', '0');
INSERT INTO `sys_district` VALUES ('2347', '269', '鲁甸县', '0');
INSERT INTO `sys_district` VALUES ('2348', '269', '巧家县', '0');
INSERT INTO `sys_district` VALUES ('2349', '269', '盐津县', '0');
INSERT INTO `sys_district` VALUES ('2350', '269', '大关县', '0');
INSERT INTO `sys_district` VALUES ('2351', '269', '永善县', '0');
INSERT INTO `sys_district` VALUES ('2352', '269', '绥江县', '0');
INSERT INTO `sys_district` VALUES ('2353', '269', '镇雄县', '0');
INSERT INTO `sys_district` VALUES ('2354', '269', '彝良县', '0');
INSERT INTO `sys_district` VALUES ('2355', '269', '威信县', '0');
INSERT INTO `sys_district` VALUES ('2356', '269', '水富县', '0');
INSERT INTO `sys_district` VALUES ('2357', '270', '古城区', '0');
INSERT INTO `sys_district` VALUES ('2358', '270', '玉龙纳西族自治县', '0');
INSERT INTO `sys_district` VALUES ('2359', '270', '永胜县', '0');
INSERT INTO `sys_district` VALUES ('2360', '270', '华坪县', '0');
INSERT INTO `sys_district` VALUES ('2361', '270', '宁蒗彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2362', '271', '翠云区', '0');
INSERT INTO `sys_district` VALUES ('2363', '271', '普洱哈尼族彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2364', '271', '墨江哈尼族自治县', '0');
INSERT INTO `sys_district` VALUES ('2365', '271', '景东彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2366', '271', '景谷傣族彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2367', '271', '镇沅彝族哈尼族拉祜族自治县', '0');
INSERT INTO `sys_district` VALUES ('2368', '271', '江城哈尼族彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2369', '271', '孟连傣族拉祜族佤族自治县', '0');
INSERT INTO `sys_district` VALUES ('2370', '271', '澜沧拉祜族自治县', '0');
INSERT INTO `sys_district` VALUES ('2371', '271', '西盟佤族自治县', '0');
INSERT INTO `sys_district` VALUES ('2372', '272', '临翔区', '0');
INSERT INTO `sys_district` VALUES ('2373', '272', '凤庆县', '0');
INSERT INTO `sys_district` VALUES ('2374', '272', '云县', '0');
INSERT INTO `sys_district` VALUES ('2375', '272', '永德县', '0');
INSERT INTO `sys_district` VALUES ('2376', '272', '镇康县', '0');
INSERT INTO `sys_district` VALUES ('2377', '272', '双江拉祜族佤族布朗族傣族自治县', '0');
INSERT INTO `sys_district` VALUES ('2378', '272', '耿马傣族佤族自治县', '0');
INSERT INTO `sys_district` VALUES ('2379', '272', '沧源佤族自治县', '0');
INSERT INTO `sys_district` VALUES ('2380', '273', '楚雄市', '0');
INSERT INTO `sys_district` VALUES ('2381', '273', '双柏县', '0');
INSERT INTO `sys_district` VALUES ('2382', '273', '牟定县', '0');
INSERT INTO `sys_district` VALUES ('2383', '273', '南华县', '0');
INSERT INTO `sys_district` VALUES ('2384', '273', '姚安县', '0');
INSERT INTO `sys_district` VALUES ('2385', '273', '大姚县', '0');
INSERT INTO `sys_district` VALUES ('2386', '273', '永仁县', '0');
INSERT INTO `sys_district` VALUES ('2387', '273', '元谋县', '0');
INSERT INTO `sys_district` VALUES ('2388', '273', '武定县', '0');
INSERT INTO `sys_district` VALUES ('2389', '273', '禄丰县', '0');
INSERT INTO `sys_district` VALUES ('2390', '274', '个旧市', '0');
INSERT INTO `sys_district` VALUES ('2391', '274', '开远市', '0');
INSERT INTO `sys_district` VALUES ('2392', '274', '蒙自县', '0');
INSERT INTO `sys_district` VALUES ('2393', '274', '屏边苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2394', '274', '建水县', '0');
INSERT INTO `sys_district` VALUES ('2395', '274', '石屏县', '0');
INSERT INTO `sys_district` VALUES ('2396', '274', '弥勒县', '0');
INSERT INTO `sys_district` VALUES ('2397', '274', '泸西县', '0');
INSERT INTO `sys_district` VALUES ('2398', '274', '元阳县', '0');
INSERT INTO `sys_district` VALUES ('2399', '274', '红河县', '0');
INSERT INTO `sys_district` VALUES ('2400', '274', '金平苗族瑶族傣族自治县', '0');
INSERT INTO `sys_district` VALUES ('2401', '274', '绿春县', '0');
INSERT INTO `sys_district` VALUES ('2402', '274', '河口瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('2403', '275', '文山县', '0');
INSERT INTO `sys_district` VALUES ('2404', '275', '砚山县', '0');
INSERT INTO `sys_district` VALUES ('2405', '275', '西畴县', '0');
INSERT INTO `sys_district` VALUES ('2406', '275', '麻栗坡县', '0');
INSERT INTO `sys_district` VALUES ('2407', '275', '马关县', '0');
INSERT INTO `sys_district` VALUES ('2408', '275', '丘北县', '0');
INSERT INTO `sys_district` VALUES ('2409', '275', '广南县', '0');
INSERT INTO `sys_district` VALUES ('2410', '275', '富宁县', '0');
INSERT INTO `sys_district` VALUES ('2411', '276', '景洪市', '0');
INSERT INTO `sys_district` VALUES ('2412', '276', '勐海县', '0');
INSERT INTO `sys_district` VALUES ('2413', '276', '勐腊县', '0');
INSERT INTO `sys_district` VALUES ('2414', '277', '大理市', '0');
INSERT INTO `sys_district` VALUES ('2415', '277', '漾濞彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2416', '277', '祥云县', '0');
INSERT INTO `sys_district` VALUES ('2417', '277', '宾川县', '0');
INSERT INTO `sys_district` VALUES ('2418', '277', '弥渡县', '0');
INSERT INTO `sys_district` VALUES ('2419', '277', '南涧彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2420', '277', '巍山彝族回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2421', '277', '永平县', '0');
INSERT INTO `sys_district` VALUES ('2422', '277', '云龙县', '0');
INSERT INTO `sys_district` VALUES ('2423', '277', '洱源县', '0');
INSERT INTO `sys_district` VALUES ('2424', '277', '剑川县', '0');
INSERT INTO `sys_district` VALUES ('2425', '277', '鹤庆县', '0');
INSERT INTO `sys_district` VALUES ('2426', '278', '瑞丽市', '0');
INSERT INTO `sys_district` VALUES ('2427', '278', '潞西市', '0');
INSERT INTO `sys_district` VALUES ('2428', '278', '梁河县', '0');
INSERT INTO `sys_district` VALUES ('2429', '278', '盈江县', '0');
INSERT INTO `sys_district` VALUES ('2430', '278', '陇川县', '0');
INSERT INTO `sys_district` VALUES ('2431', '279', '泸水县', '0');
INSERT INTO `sys_district` VALUES ('2432', '279', '福贡县', '0');
INSERT INTO `sys_district` VALUES ('2433', '279', '贡山独龙族怒族自治县', '0');
INSERT INTO `sys_district` VALUES ('2434', '279', '兰坪白族普米族自治县', '0');
INSERT INTO `sys_district` VALUES ('2435', '280', '香格里拉县', '0');
INSERT INTO `sys_district` VALUES ('2436', '280', '德钦县', '0');
INSERT INTO `sys_district` VALUES ('2437', '280', '维西傈僳族自治县', '0');
INSERT INTO `sys_district` VALUES ('2438', '281', '城关区', '0');
INSERT INTO `sys_district` VALUES ('2439', '281', '林周县', '0');
INSERT INTO `sys_district` VALUES ('2440', '281', '当雄县', '0');
INSERT INTO `sys_district` VALUES ('2441', '281', '尼木县', '0');
INSERT INTO `sys_district` VALUES ('2442', '281', '曲水县', '0');
INSERT INTO `sys_district` VALUES ('2443', '281', '堆龙德庆县', '0');
INSERT INTO `sys_district` VALUES ('2444', '281', '达孜县', '0');
INSERT INTO `sys_district` VALUES ('2445', '281', '墨竹工卡县', '0');
INSERT INTO `sys_district` VALUES ('2446', '282', '昌都县', '0');
INSERT INTO `sys_district` VALUES ('2447', '282', '江达县', '0');
INSERT INTO `sys_district` VALUES ('2448', '282', '贡觉县', '0');
INSERT INTO `sys_district` VALUES ('2449', '282', '类乌齐县', '0');
INSERT INTO `sys_district` VALUES ('2450', '282', '丁青县', '0');
INSERT INTO `sys_district` VALUES ('2451', '282', '察雅县', '0');
INSERT INTO `sys_district` VALUES ('2452', '282', '八宿县', '0');
INSERT INTO `sys_district` VALUES ('2453', '282', '左贡县', '0');
INSERT INTO `sys_district` VALUES ('2454', '282', '芒康县', '0');
INSERT INTO `sys_district` VALUES ('2455', '282', '洛隆县', '0');
INSERT INTO `sys_district` VALUES ('2456', '282', '边坝县', '0');
INSERT INTO `sys_district` VALUES ('2457', '283', '乃东县', '0');
INSERT INTO `sys_district` VALUES ('2458', '283', '扎囊县', '0');
INSERT INTO `sys_district` VALUES ('2459', '283', '贡嘎县', '0');
INSERT INTO `sys_district` VALUES ('2460', '283', '桑日县', '0');
INSERT INTO `sys_district` VALUES ('2461', '283', '琼结县', '0');
INSERT INTO `sys_district` VALUES ('2462', '283', '曲松县', '0');
INSERT INTO `sys_district` VALUES ('2463', '283', '措美县', '0');
INSERT INTO `sys_district` VALUES ('2464', '283', '洛扎县', '0');
INSERT INTO `sys_district` VALUES ('2465', '283', '加查县', '0');
INSERT INTO `sys_district` VALUES ('2466', '283', '隆子县', '0');
INSERT INTO `sys_district` VALUES ('2467', '283', '错那县', '0');
INSERT INTO `sys_district` VALUES ('2468', '283', '浪卡子县', '0');
INSERT INTO `sys_district` VALUES ('2469', '284', '日喀则市', '0');
INSERT INTO `sys_district` VALUES ('2470', '284', '南木林县', '0');
INSERT INTO `sys_district` VALUES ('2471', '284', '江孜县', '0');
INSERT INTO `sys_district` VALUES ('2472', '284', '定日县', '0');
INSERT INTO `sys_district` VALUES ('2473', '284', '萨迦县', '0');
INSERT INTO `sys_district` VALUES ('2474', '284', '拉孜县', '0');
INSERT INTO `sys_district` VALUES ('2475', '284', '昂仁县', '0');
INSERT INTO `sys_district` VALUES ('2476', '284', '谢通门县', '0');
INSERT INTO `sys_district` VALUES ('2477', '284', '白朗县', '0');
INSERT INTO `sys_district` VALUES ('2478', '284', '仁布县', '0');
INSERT INTO `sys_district` VALUES ('2479', '284', '康马县', '0');
INSERT INTO `sys_district` VALUES ('2480', '284', '定结县', '0');
INSERT INTO `sys_district` VALUES ('2481', '284', '仲巴县', '0');
INSERT INTO `sys_district` VALUES ('2482', '284', '亚东县', '0');
INSERT INTO `sys_district` VALUES ('2483', '284', '吉隆县', '0');
INSERT INTO `sys_district` VALUES ('2484', '284', '聂拉木县', '0');
INSERT INTO `sys_district` VALUES ('2485', '284', '萨嘎县', '0');
INSERT INTO `sys_district` VALUES ('2486', '284', '岗巴县', '0');
INSERT INTO `sys_district` VALUES ('2487', '285', '那曲县', '0');
INSERT INTO `sys_district` VALUES ('2488', '285', '嘉黎县', '0');
INSERT INTO `sys_district` VALUES ('2489', '285', '比如县', '0');
INSERT INTO `sys_district` VALUES ('2490', '285', '聂荣县', '0');
INSERT INTO `sys_district` VALUES ('2491', '285', '安多县', '0');
INSERT INTO `sys_district` VALUES ('2492', '285', '申扎县', '0');
INSERT INTO `sys_district` VALUES ('2493', '285', '索县', '0');
INSERT INTO `sys_district` VALUES ('2494', '285', '班戈县', '0');
INSERT INTO `sys_district` VALUES ('2495', '285', '巴青县', '0');
INSERT INTO `sys_district` VALUES ('2496', '285', '尼玛县', '0');
INSERT INTO `sys_district` VALUES ('2497', '286', '普兰县', '0');
INSERT INTO `sys_district` VALUES ('2498', '286', '札达县', '0');
INSERT INTO `sys_district` VALUES ('2499', '286', '噶尔县', '0');
INSERT INTO `sys_district` VALUES ('2500', '286', '日土县', '0');
INSERT INTO `sys_district` VALUES ('2501', '286', '革吉县', '0');
INSERT INTO `sys_district` VALUES ('2502', '286', '改则县', '0');
INSERT INTO `sys_district` VALUES ('2503', '286', '措勤县', '0');
INSERT INTO `sys_district` VALUES ('2504', '287', '林芝县', '0');
INSERT INTO `sys_district` VALUES ('2505', '287', '工布江达县', '0');
INSERT INTO `sys_district` VALUES ('2506', '287', '米林县', '0');
INSERT INTO `sys_district` VALUES ('2507', '287', '墨脱县', '0');
INSERT INTO `sys_district` VALUES ('2508', '287', '波密县', '0');
INSERT INTO `sys_district` VALUES ('2509', '287', '察隅县', '0');
INSERT INTO `sys_district` VALUES ('2510', '287', '朗县', '0');
INSERT INTO `sys_district` VALUES ('2511', '288', '新城区', '0');
INSERT INTO `sys_district` VALUES ('2512', '288', '碑林区', '0');
INSERT INTO `sys_district` VALUES ('2513', '288', '莲湖区', '0');
INSERT INTO `sys_district` VALUES ('2514', '288', '灞桥区', '0');
INSERT INTO `sys_district` VALUES ('2515', '288', '未央区', '0');
INSERT INTO `sys_district` VALUES ('2516', '288', '雁塔区', '0');
INSERT INTO `sys_district` VALUES ('2517', '288', '阎良区', '0');
INSERT INTO `sys_district` VALUES ('2518', '288', '临潼区', '0');
INSERT INTO `sys_district` VALUES ('2519', '288', '长安区', '0');
INSERT INTO `sys_district` VALUES ('2520', '288', '蓝田县', '0');
INSERT INTO `sys_district` VALUES ('2521', '288', '周至县', '0');
INSERT INTO `sys_district` VALUES ('2522', '288', '户县', '0');
INSERT INTO `sys_district` VALUES ('2523', '288', '高陵县', '0');
INSERT INTO `sys_district` VALUES ('2524', '289', '王益区', '0');
INSERT INTO `sys_district` VALUES ('2525', '289', '印台区', '0');
INSERT INTO `sys_district` VALUES ('2526', '289', '耀州区', '0');
INSERT INTO `sys_district` VALUES ('2527', '289', '宜君县', '0');
INSERT INTO `sys_district` VALUES ('2528', '290', '渭滨区', '0');
INSERT INTO `sys_district` VALUES ('2529', '290', '金台区', '0');
INSERT INTO `sys_district` VALUES ('2530', '290', '陈仓区', '0');
INSERT INTO `sys_district` VALUES ('2531', '290', '凤翔县', '0');
INSERT INTO `sys_district` VALUES ('2532', '290', '岐山县', '0');
INSERT INTO `sys_district` VALUES ('2533', '290', '扶风县', '0');
INSERT INTO `sys_district` VALUES ('2534', '290', '眉县', '0');
INSERT INTO `sys_district` VALUES ('2535', '290', '陇县', '0');
INSERT INTO `sys_district` VALUES ('2536', '290', '千阳县', '0');
INSERT INTO `sys_district` VALUES ('2537', '290', '麟游县', '0');
INSERT INTO `sys_district` VALUES ('2538', '290', '凤县', '0');
INSERT INTO `sys_district` VALUES ('2539', '290', '太白县', '0');
INSERT INTO `sys_district` VALUES ('2540', '291', '秦都区', '0');
INSERT INTO `sys_district` VALUES ('2541', '291', '杨凌区', '0');
INSERT INTO `sys_district` VALUES ('2542', '291', '渭城区', '0');
INSERT INTO `sys_district` VALUES ('2543', '291', '三原县', '0');
INSERT INTO `sys_district` VALUES ('2544', '291', '泾阳县', '0');
INSERT INTO `sys_district` VALUES ('2545', '291', '乾县', '0');
INSERT INTO `sys_district` VALUES ('2546', '291', '礼泉县', '0');
INSERT INTO `sys_district` VALUES ('2547', '291', '永寿县', '0');
INSERT INTO `sys_district` VALUES ('2548', '291', '彬县', '0');
INSERT INTO `sys_district` VALUES ('2549', '291', '长武县', '0');
INSERT INTO `sys_district` VALUES ('2550', '291', '旬邑县', '0');
INSERT INTO `sys_district` VALUES ('2551', '291', '淳化县', '0');
INSERT INTO `sys_district` VALUES ('2552', '291', '武功县', '0');
INSERT INTO `sys_district` VALUES ('2553', '291', '兴平市', '0');
INSERT INTO `sys_district` VALUES ('2554', '292', '临渭区', '0');
INSERT INTO `sys_district` VALUES ('2555', '292', '华县', '0');
INSERT INTO `sys_district` VALUES ('2556', '292', '潼关县', '0');
INSERT INTO `sys_district` VALUES ('2557', '292', '大荔县', '0');
INSERT INTO `sys_district` VALUES ('2558', '292', '合阳县', '0');
INSERT INTO `sys_district` VALUES ('2559', '292', '澄城县', '0');
INSERT INTO `sys_district` VALUES ('2560', '292', '蒲城县', '0');
INSERT INTO `sys_district` VALUES ('2561', '292', '白水县', '0');
INSERT INTO `sys_district` VALUES ('2562', '292', '富平县', '0');
INSERT INTO `sys_district` VALUES ('2563', '292', '韩城市', '0');
INSERT INTO `sys_district` VALUES ('2564', '292', '华阴市', '0');
INSERT INTO `sys_district` VALUES ('2565', '293', '宝塔区', '0');
INSERT INTO `sys_district` VALUES ('2566', '293', '延长县', '0');
INSERT INTO `sys_district` VALUES ('2567', '293', '延川县', '0');
INSERT INTO `sys_district` VALUES ('2568', '293', '子长县', '0');
INSERT INTO `sys_district` VALUES ('2569', '293', '安塞县', '0');
INSERT INTO `sys_district` VALUES ('2570', '293', '志丹县', '0');
INSERT INTO `sys_district` VALUES ('2571', '293', '吴旗县', '0');
INSERT INTO `sys_district` VALUES ('2572', '293', '甘泉县', '0');
INSERT INTO `sys_district` VALUES ('2573', '293', '富县', '0');
INSERT INTO `sys_district` VALUES ('2574', '293', '洛川县', '0');
INSERT INTO `sys_district` VALUES ('2575', '293', '宜川县', '0');
INSERT INTO `sys_district` VALUES ('2576', '293', '黄龙县', '0');
INSERT INTO `sys_district` VALUES ('2577', '293', '黄陵县', '0');
INSERT INTO `sys_district` VALUES ('2578', '294', '汉台区', '0');
INSERT INTO `sys_district` VALUES ('2579', '294', '南郑县', '0');
INSERT INTO `sys_district` VALUES ('2580', '294', '城固县', '0');
INSERT INTO `sys_district` VALUES ('2581', '294', '洋县', '0');
INSERT INTO `sys_district` VALUES ('2582', '294', '西乡县', '0');
INSERT INTO `sys_district` VALUES ('2583', '294', '勉县', '0');
INSERT INTO `sys_district` VALUES ('2584', '294', '宁强县', '0');
INSERT INTO `sys_district` VALUES ('2585', '294', '略阳县', '0');
INSERT INTO `sys_district` VALUES ('2586', '294', '镇巴县', '0');
INSERT INTO `sys_district` VALUES ('2587', '294', '留坝县', '0');
INSERT INTO `sys_district` VALUES ('2588', '294', '佛坪县', '0');
INSERT INTO `sys_district` VALUES ('2589', '295', '榆阳区', '0');
INSERT INTO `sys_district` VALUES ('2590', '295', '神木县', '0');
INSERT INTO `sys_district` VALUES ('2591', '295', '府谷县', '0');
INSERT INTO `sys_district` VALUES ('2592', '295', '横山县', '0');
INSERT INTO `sys_district` VALUES ('2593', '295', '靖边县', '0');
INSERT INTO `sys_district` VALUES ('2594', '295', '定边县', '0');
INSERT INTO `sys_district` VALUES ('2595', '295', '绥德县', '0');
INSERT INTO `sys_district` VALUES ('2596', '295', '米脂县', '0');
INSERT INTO `sys_district` VALUES ('2597', '295', '佳县', '0');
INSERT INTO `sys_district` VALUES ('2598', '295', '吴堡县', '0');
INSERT INTO `sys_district` VALUES ('2599', '295', '清涧县', '0');
INSERT INTO `sys_district` VALUES ('2600', '295', '子洲县', '0');
INSERT INTO `sys_district` VALUES ('2601', '296', '汉滨区', '0');
INSERT INTO `sys_district` VALUES ('2602', '296', '汉阴县', '0');
INSERT INTO `sys_district` VALUES ('2603', '296', '石泉县', '0');
INSERT INTO `sys_district` VALUES ('2604', '296', '宁陕县', '0');
INSERT INTO `sys_district` VALUES ('2605', '296', '紫阳县', '0');
INSERT INTO `sys_district` VALUES ('2606', '296', '岚皋县', '0');
INSERT INTO `sys_district` VALUES ('2607', '296', '平利县', '0');
INSERT INTO `sys_district` VALUES ('2608', '296', '镇坪县', '0');
INSERT INTO `sys_district` VALUES ('2609', '296', '旬阳县', '0');
INSERT INTO `sys_district` VALUES ('2610', '296', '白河县', '0');
INSERT INTO `sys_district` VALUES ('2611', '297', '商州区', '0');
INSERT INTO `sys_district` VALUES ('2612', '297', '洛南县', '0');
INSERT INTO `sys_district` VALUES ('2613', '297', '丹凤县', '0');
INSERT INTO `sys_district` VALUES ('2614', '297', '商南县', '0');
INSERT INTO `sys_district` VALUES ('2615', '297', '山阳县', '0');
INSERT INTO `sys_district` VALUES ('2616', '297', '镇安县', '0');
INSERT INTO `sys_district` VALUES ('2617', '297', '柞水县', '0');
INSERT INTO `sys_district` VALUES ('2618', '298', '城关区', '0');
INSERT INTO `sys_district` VALUES ('2619', '298', '七里河区', '0');
INSERT INTO `sys_district` VALUES ('2620', '298', '西固区', '0');
INSERT INTO `sys_district` VALUES ('2621', '298', '安宁区', '0');
INSERT INTO `sys_district` VALUES ('2622', '298', '红古区', '0');
INSERT INTO `sys_district` VALUES ('2623', '298', '永登县', '0');
INSERT INTO `sys_district` VALUES ('2624', '298', '皋兰县', '0');
INSERT INTO `sys_district` VALUES ('2625', '298', '榆中县', '0');
INSERT INTO `sys_district` VALUES ('2626', '300', '金川区', '0');
INSERT INTO `sys_district` VALUES ('2627', '300', '永昌县', '0');
INSERT INTO `sys_district` VALUES ('2628', '301', '白银区', '0');
INSERT INTO `sys_district` VALUES ('2629', '301', '平川区', '0');
INSERT INTO `sys_district` VALUES ('2630', '301', '靖远县', '0');
INSERT INTO `sys_district` VALUES ('2631', '301', '会宁县', '0');
INSERT INTO `sys_district` VALUES ('2632', '301', '景泰县', '0');
INSERT INTO `sys_district` VALUES ('2633', '302', '秦城区', '0');
INSERT INTO `sys_district` VALUES ('2634', '302', '北道区', '0');
INSERT INTO `sys_district` VALUES ('2635', '302', '清水县', '0');
INSERT INTO `sys_district` VALUES ('2636', '302', '秦安县', '0');
INSERT INTO `sys_district` VALUES ('2637', '302', '甘谷县', '0');
INSERT INTO `sys_district` VALUES ('2638', '302', '武山县', '0');
INSERT INTO `sys_district` VALUES ('2639', '302', '张家川回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2640', '303', '凉州区', '0');
INSERT INTO `sys_district` VALUES ('2641', '303', '民勤县', '0');
INSERT INTO `sys_district` VALUES ('2642', '303', '古浪县', '0');
INSERT INTO `sys_district` VALUES ('2643', '303', '天祝藏族自治县', '0');
INSERT INTO `sys_district` VALUES ('2644', '304', '甘州区', '0');
INSERT INTO `sys_district` VALUES ('2645', '304', '肃南裕固族自治县', '0');
INSERT INTO `sys_district` VALUES ('2646', '304', '民乐县', '0');
INSERT INTO `sys_district` VALUES ('2647', '304', '临泽县', '0');
INSERT INTO `sys_district` VALUES ('2648', '304', '高台县', '0');
INSERT INTO `sys_district` VALUES ('2649', '304', '山丹县', '0');
INSERT INTO `sys_district` VALUES ('2650', '305', '崆峒区', '0');
INSERT INTO `sys_district` VALUES ('2651', '305', '泾川县', '0');
INSERT INTO `sys_district` VALUES ('2652', '305', '灵台县', '0');
INSERT INTO `sys_district` VALUES ('2653', '305', '崇信县', '0');
INSERT INTO `sys_district` VALUES ('2654', '305', '华亭县', '0');
INSERT INTO `sys_district` VALUES ('2655', '305', '庄浪县', '0');
INSERT INTO `sys_district` VALUES ('2656', '305', '静宁县', '0');
INSERT INTO `sys_district` VALUES ('2657', '306', '肃州区', '0');
INSERT INTO `sys_district` VALUES ('2658', '306', '金塔县', '0');
INSERT INTO `sys_district` VALUES ('2659', '306', '安西县', '0');
INSERT INTO `sys_district` VALUES ('2660', '306', '肃北蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('2661', '306', '阿克塞哈萨克族自治县', '0');
INSERT INTO `sys_district` VALUES ('2662', '306', '玉门市', '0');
INSERT INTO `sys_district` VALUES ('2663', '306', '敦煌市', '0');
INSERT INTO `sys_district` VALUES ('2664', '307', '西峰区', '0');
INSERT INTO `sys_district` VALUES ('2665', '307', '庆城县', '0');
INSERT INTO `sys_district` VALUES ('2666', '307', '环县', '0');
INSERT INTO `sys_district` VALUES ('2667', '307', '华池县', '0');
INSERT INTO `sys_district` VALUES ('2668', '307', '合水县', '0');
INSERT INTO `sys_district` VALUES ('2669', '307', '正宁县', '0');
INSERT INTO `sys_district` VALUES ('2670', '307', '宁县', '0');
INSERT INTO `sys_district` VALUES ('2671', '307', '镇原县', '0');
INSERT INTO `sys_district` VALUES ('2672', '308', '安定区', '0');
INSERT INTO `sys_district` VALUES ('2673', '308', '通渭县', '0');
INSERT INTO `sys_district` VALUES ('2674', '308', '陇西县', '0');
INSERT INTO `sys_district` VALUES ('2675', '308', '渭源县', '0');
INSERT INTO `sys_district` VALUES ('2676', '308', '临洮县', '0');
INSERT INTO `sys_district` VALUES ('2677', '308', '漳县', '0');
INSERT INTO `sys_district` VALUES ('2678', '308', '岷县', '0');
INSERT INTO `sys_district` VALUES ('2679', '309', '武都区', '0');
INSERT INTO `sys_district` VALUES ('2680', '309', '成县', '0');
INSERT INTO `sys_district` VALUES ('2681', '309', '文县', '0');
INSERT INTO `sys_district` VALUES ('2682', '309', '宕昌县', '0');
INSERT INTO `sys_district` VALUES ('2683', '309', '康县', '0');
INSERT INTO `sys_district` VALUES ('2684', '309', '西和县', '0');
INSERT INTO `sys_district` VALUES ('2685', '309', '礼县', '0');
INSERT INTO `sys_district` VALUES ('2686', '309', '徽县', '0');
INSERT INTO `sys_district` VALUES ('2687', '309', '两当县', '0');
INSERT INTO `sys_district` VALUES ('2688', '310', '临夏市', '0');
INSERT INTO `sys_district` VALUES ('2689', '310', '临夏县', '0');
INSERT INTO `sys_district` VALUES ('2690', '310', '康乐县', '0');
INSERT INTO `sys_district` VALUES ('2691', '310', '永靖县', '0');
INSERT INTO `sys_district` VALUES ('2692', '310', '广河县', '0');
INSERT INTO `sys_district` VALUES ('2693', '310', '和政县', '0');
INSERT INTO `sys_district` VALUES ('2694', '310', '东乡族自治县', '0');
INSERT INTO `sys_district` VALUES ('2695', '310', '积石山保安族东乡族撒拉族自治县', '0');
INSERT INTO `sys_district` VALUES ('2696', '311', '合作市', '0');
INSERT INTO `sys_district` VALUES ('2697', '311', '临潭县', '0');
INSERT INTO `sys_district` VALUES ('2698', '311', '卓尼县', '0');
INSERT INTO `sys_district` VALUES ('2699', '311', '舟曲县', '0');
INSERT INTO `sys_district` VALUES ('2700', '311', '迭部县', '0');
INSERT INTO `sys_district` VALUES ('2701', '311', '玛曲县', '0');
INSERT INTO `sys_district` VALUES ('2702', '311', '碌曲县', '0');
INSERT INTO `sys_district` VALUES ('2703', '311', '夏河县', '0');
INSERT INTO `sys_district` VALUES ('2704', '312', '城东区', '0');
INSERT INTO `sys_district` VALUES ('2705', '312', '城中区', '0');
INSERT INTO `sys_district` VALUES ('2706', '312', '城西区', '0');
INSERT INTO `sys_district` VALUES ('2707', '312', '城北区', '0');
INSERT INTO `sys_district` VALUES ('2708', '312', '大通回族土族自治县', '0');
INSERT INTO `sys_district` VALUES ('2709', '312', '湟中县', '0');
INSERT INTO `sys_district` VALUES ('2710', '312', '湟源县', '0');
INSERT INTO `sys_district` VALUES ('2711', '313', '平安县', '0');
INSERT INTO `sys_district` VALUES ('2712', '313', '民和回族土族自治县', '0');
INSERT INTO `sys_district` VALUES ('2713', '313', '乐都县', '0');
INSERT INTO `sys_district` VALUES ('2714', '313', '互助土族自治县', '0');
INSERT INTO `sys_district` VALUES ('2715', '313', '化隆回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2716', '313', '循化撒拉族自治县', '0');
INSERT INTO `sys_district` VALUES ('2717', '314', '门源回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2718', '314', '祁连县', '0');
INSERT INTO `sys_district` VALUES ('2719', '314', '海晏县', '0');
INSERT INTO `sys_district` VALUES ('2720', '314', '刚察县', '0');
INSERT INTO `sys_district` VALUES ('2721', '315', '同仁县', '0');
INSERT INTO `sys_district` VALUES ('2722', '315', '尖扎县', '0');
INSERT INTO `sys_district` VALUES ('2723', '315', '泽库县', '0');
INSERT INTO `sys_district` VALUES ('2724', '315', '河南蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('2725', '316', '共和县', '0');
INSERT INTO `sys_district` VALUES ('2726', '316', '同德县', '0');
INSERT INTO `sys_district` VALUES ('2727', '316', '贵德县', '0');
INSERT INTO `sys_district` VALUES ('2728', '316', '兴海县', '0');
INSERT INTO `sys_district` VALUES ('2729', '316', '贵南县', '0');
INSERT INTO `sys_district` VALUES ('2730', '317', '玛沁县', '0');
INSERT INTO `sys_district` VALUES ('2731', '317', '班玛县', '0');
INSERT INTO `sys_district` VALUES ('2732', '317', '甘德县', '0');
INSERT INTO `sys_district` VALUES ('2733', '317', '达日县', '0');
INSERT INTO `sys_district` VALUES ('2734', '317', '久治县', '0');
INSERT INTO `sys_district` VALUES ('2735', '317', '玛多县', '0');
INSERT INTO `sys_district` VALUES ('2736', '318', '玉树县', '0');
INSERT INTO `sys_district` VALUES ('2737', '318', '杂多县', '0');
INSERT INTO `sys_district` VALUES ('2738', '318', '称多县', '0');
INSERT INTO `sys_district` VALUES ('2739', '318', '治多县', '0');
INSERT INTO `sys_district` VALUES ('2740', '318', '囊谦县', '0');
INSERT INTO `sys_district` VALUES ('2741', '318', '曲麻莱县', '0');
INSERT INTO `sys_district` VALUES ('2742', '319', '格尔木市', '0');
INSERT INTO `sys_district` VALUES ('2743', '319', '德令哈市', '0');
INSERT INTO `sys_district` VALUES ('2744', '319', '乌兰县', '0');
INSERT INTO `sys_district` VALUES ('2745', '319', '都兰县', '0');
INSERT INTO `sys_district` VALUES ('2746', '319', '天峻县', '0');
INSERT INTO `sys_district` VALUES ('2747', '320', '兴庆区', '0');
INSERT INTO `sys_district` VALUES ('2748', '320', '西夏区', '0');
INSERT INTO `sys_district` VALUES ('2749', '320', '金凤区', '0');
INSERT INTO `sys_district` VALUES ('2750', '320', '永宁县', '0');
INSERT INTO `sys_district` VALUES ('2751', '320', '贺兰县', '0');
INSERT INTO `sys_district` VALUES ('2752', '320', '灵武市', '0');
INSERT INTO `sys_district` VALUES ('2753', '321', '大武口区', '0');
INSERT INTO `sys_district` VALUES ('2754', '321', '惠农区', '0');
INSERT INTO `sys_district` VALUES ('2755', '321', '平罗县', '0');
INSERT INTO `sys_district` VALUES ('2756', '322', '利通区', '0');
INSERT INTO `sys_district` VALUES ('2757', '322', '盐池县', '0');
INSERT INTO `sys_district` VALUES ('2758', '322', '同心县', '0');
INSERT INTO `sys_district` VALUES ('2759', '322', '青铜峡市', '0');
INSERT INTO `sys_district` VALUES ('2760', '323', '原州区', '0');
INSERT INTO `sys_district` VALUES ('2761', '323', '西吉县', '0');
INSERT INTO `sys_district` VALUES ('2762', '323', '隆德县', '0');
INSERT INTO `sys_district` VALUES ('2763', '323', '泾源县', '0');
INSERT INTO `sys_district` VALUES ('2764', '323', '彭阳县', '0');
INSERT INTO `sys_district` VALUES ('2765', '324', '沙坡头区', '0');
INSERT INTO `sys_district` VALUES ('2766', '324', '中宁县', '0');
INSERT INTO `sys_district` VALUES ('2767', '324', '海原县', '0');
INSERT INTO `sys_district` VALUES ('2768', '325', '天山区', '0');
INSERT INTO `sys_district` VALUES ('2769', '325', '沙依巴克区', '0');
INSERT INTO `sys_district` VALUES ('2770', '325', '新市区', '0');
INSERT INTO `sys_district` VALUES ('2771', '325', '水磨沟区', '0');
INSERT INTO `sys_district` VALUES ('2772', '325', '头屯河区', '0');
INSERT INTO `sys_district` VALUES ('2773', '325', '达坂城区', '0');
INSERT INTO `sys_district` VALUES ('2774', '325', '东山区', '0');
INSERT INTO `sys_district` VALUES ('2775', '325', '乌鲁木齐县', '0');
INSERT INTO `sys_district` VALUES ('2776', '326', '独山子区', '0');
INSERT INTO `sys_district` VALUES ('2777', '326', '克拉玛依区', '0');
INSERT INTO `sys_district` VALUES ('2778', '326', '白碱滩区', '0');
INSERT INTO `sys_district` VALUES ('2779', '326', '乌尔禾区', '0');
INSERT INTO `sys_district` VALUES ('2780', '327', '吐鲁番市', '0');
INSERT INTO `sys_district` VALUES ('2781', '327', '鄯善县', '0');
INSERT INTO `sys_district` VALUES ('2782', '327', '托克逊县', '0');
INSERT INTO `sys_district` VALUES ('2783', '328', '哈密市', '0');
INSERT INTO `sys_district` VALUES ('2784', '328', '巴里坤哈萨克自治县', '0');
INSERT INTO `sys_district` VALUES ('2785', '328', '伊吾县', '0');
INSERT INTO `sys_district` VALUES ('2786', '329', '昌吉市', '0');
INSERT INTO `sys_district` VALUES ('2787', '329', '阜康市', '0');
INSERT INTO `sys_district` VALUES ('2788', '329', '米泉市', '0');
INSERT INTO `sys_district` VALUES ('2789', '329', '呼图壁县', '0');
INSERT INTO `sys_district` VALUES ('2790', '329', '玛纳斯县', '0');
INSERT INTO `sys_district` VALUES ('2791', '329', '奇台县', '0');
INSERT INTO `sys_district` VALUES ('2792', '329', '吉木萨尔县', '0');
INSERT INTO `sys_district` VALUES ('2793', '329', '木垒哈萨克自治县', '0');
INSERT INTO `sys_district` VALUES ('2794', '330', '博乐市', '0');
INSERT INTO `sys_district` VALUES ('2795', '330', '精河县', '0');
INSERT INTO `sys_district` VALUES ('2796', '330', '温泉县', '0');
INSERT INTO `sys_district` VALUES ('2797', '331', '库尔勒市', '0');
INSERT INTO `sys_district` VALUES ('2798', '331', '轮台县', '0');
INSERT INTO `sys_district` VALUES ('2799', '331', '尉犁县', '0');
INSERT INTO `sys_district` VALUES ('2800', '331', '若羌县', '0');
INSERT INTO `sys_district` VALUES ('2801', '331', '且末县', '0');
INSERT INTO `sys_district` VALUES ('2802', '331', '焉耆回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2803', '331', '和静县', '0');
INSERT INTO `sys_district` VALUES ('2804', '331', '和硕县', '0');
INSERT INTO `sys_district` VALUES ('2805', '331', '博湖县', '0');
INSERT INTO `sys_district` VALUES ('2806', '332', '阿克苏市', '0');
INSERT INTO `sys_district` VALUES ('2807', '332', '温宿县', '0');
INSERT INTO `sys_district` VALUES ('2808', '332', '库车县', '0');
INSERT INTO `sys_district` VALUES ('2809', '332', '沙雅县', '0');
INSERT INTO `sys_district` VALUES ('2810', '332', '新和县', '0');
INSERT INTO `sys_district` VALUES ('2811', '332', '拜城县', '0');
INSERT INTO `sys_district` VALUES ('2812', '332', '乌什县', '0');
INSERT INTO `sys_district` VALUES ('2813', '332', '阿瓦提县', '0');
INSERT INTO `sys_district` VALUES ('2814', '332', '柯坪县', '0');
INSERT INTO `sys_district` VALUES ('2815', '333', '阿图什市', '0');
INSERT INTO `sys_district` VALUES ('2816', '333', '阿克陶县', '0');
INSERT INTO `sys_district` VALUES ('2817', '333', '阿合奇县', '0');
INSERT INTO `sys_district` VALUES ('2818', '333', '乌恰县', '0');
INSERT INTO `sys_district` VALUES ('2819', '334', '喀什市', '0');
INSERT INTO `sys_district` VALUES ('2820', '334', '疏附县', '0');
INSERT INTO `sys_district` VALUES ('2821', '334', '疏勒县', '0');
INSERT INTO `sys_district` VALUES ('2822', '334', '英吉沙县', '0');
INSERT INTO `sys_district` VALUES ('2823', '334', '泽普县', '0');
INSERT INTO `sys_district` VALUES ('2824', '334', '莎车县', '0');
INSERT INTO `sys_district` VALUES ('2825', '334', '叶城县', '0');
INSERT INTO `sys_district` VALUES ('2826', '334', '麦盖提县', '0');
INSERT INTO `sys_district` VALUES ('2827', '334', '岳普湖县', '0');
INSERT INTO `sys_district` VALUES ('2828', '334', '伽师县', '0');
INSERT INTO `sys_district` VALUES ('2829', '334', '巴楚县', '0');
INSERT INTO `sys_district` VALUES ('2830', '334', '塔什库尔干塔吉克自治县', '0');
INSERT INTO `sys_district` VALUES ('2831', '335', '和田市', '0');
INSERT INTO `sys_district` VALUES ('2832', '335', '和田县', '0');
INSERT INTO `sys_district` VALUES ('2833', '335', '墨玉县', '0');
INSERT INTO `sys_district` VALUES ('2834', '335', '皮山县', '0');
INSERT INTO `sys_district` VALUES ('2835', '335', '洛浦县', '0');
INSERT INTO `sys_district` VALUES ('2836', '335', '策勒县', '0');
INSERT INTO `sys_district` VALUES ('2837', '335', '于田县', '0');
INSERT INTO `sys_district` VALUES ('2838', '335', '民丰县', '0');
INSERT INTO `sys_district` VALUES ('2839', '336', '伊宁市', '0');
INSERT INTO `sys_district` VALUES ('2840', '336', '奎屯市', '0');
INSERT INTO `sys_district` VALUES ('2841', '336', '伊宁县', '0');
INSERT INTO `sys_district` VALUES ('2842', '336', '察布查尔锡伯自治县', '0');
INSERT INTO `sys_district` VALUES ('2843', '336', '霍城县', '0');
INSERT INTO `sys_district` VALUES ('2844', '336', '巩留县', '0');
INSERT INTO `sys_district` VALUES ('2845', '336', '新源县', '0');
INSERT INTO `sys_district` VALUES ('2846', '336', '昭苏县', '0');
INSERT INTO `sys_district` VALUES ('2847', '336', '特克斯县', '0');
INSERT INTO `sys_district` VALUES ('2848', '336', '尼勒克县', '0');
INSERT INTO `sys_district` VALUES ('2849', '337', '塔城市', '0');
INSERT INTO `sys_district` VALUES ('2850', '337', '乌苏市', '0');
INSERT INTO `sys_district` VALUES ('2851', '337', '额敏县', '0');
INSERT INTO `sys_district` VALUES ('2852', '337', '沙湾县', '0');
INSERT INTO `sys_district` VALUES ('2853', '337', '托里县', '0');
INSERT INTO `sys_district` VALUES ('2854', '337', '裕民县', '0');
INSERT INTO `sys_district` VALUES ('2855', '337', '和布克赛尔蒙古自治县', '0');
INSERT INTO `sys_district` VALUES ('2856', '338', '阿勒泰市', '0');
INSERT INTO `sys_district` VALUES ('2857', '338', '布尔津县', '0');
INSERT INTO `sys_district` VALUES ('2858', '338', '富蕴县', '0');
INSERT INTO `sys_district` VALUES ('2859', '338', '福海县', '0');
INSERT INTO `sys_district` VALUES ('2860', '338', '哈巴河县', '0');
INSERT INTO `sys_district` VALUES ('2861', '338', '青河县', '0');
INSERT INTO `sys_district` VALUES ('2862', '338', '吉木乃县', '0');
INSERT INTO `sys_district` VALUES ('2867', '352', '宛平县', '1');
INSERT INTO `sys_district` VALUES ('2868', '352', '111111', '5');
INSERT INTO `sys_district` VALUES ('2869', '345', '台北', '2');

-- ----------------------------
-- Table structure for `sys_hooks`
-- ----------------------------
DROP TABLE IF EXISTS `sys_hooks`;
CREATE TABLE `sys_hooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` text NOT NULL COMMENT '描述',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型  1 视图 2 控制器',
  `addons` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件 ''，''分割',
  `status` tinyint(2) DEFAULT '1',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=65;

-- ----------------------------
-- Records of sys_hooks
-- ----------------------------
INSERT INTO `sys_hooks` VALUES ('23', 'login', '第三方登录', '1', 'Oauthlogin', '1', '1499327900');
INSERT INTO `sys_hooks` VALUES ('24', 'sms', '短信', '1', 'sms', '1', '1499487808');
INSERT INTO `sys_hooks` VALUES ('26', 'wxtemplatemsg', '微信模板消息设置', '1', 'wxtemplatemsg', '1', '1500013768');
INSERT INTO `sys_hooks` VALUES ('27', 'orderCreateSuccess', '订单创建成功', '2', 'wxtemplatemsg', '1', '1500025515');
INSERT INTO `sys_hooks` VALUES ('29', 'orderDeliverySuccess', '订单发货成功', '2', 'wxtemplatemsg', '1', '1500448695');
INSERT INTO `sys_hooks` VALUES ('30', 'orderPaySuccess', '订单付款成功', '2', 'wxtemplatemsg', '1', '1500448963');
INSERT INTO `sys_hooks` VALUES ('31', 'orderRefundApplyCreateSuccess', '订单申请退款创建成功', '2', 'wxtemplatemsg', '1', '1500449386');
INSERT INTO `sys_hooks` VALUES ('32', 'orderRefundSuccess', '订单退款成功', '2', 'wxtemplatemsg', '1', '1500450437');
INSERT INTO `sys_hooks` VALUES ('33', 'userWithdrawApplyCreateSuccess', '会员提现申请创建成功', '2', 'wxtemplatemsg', '1', '1500450601');
INSERT INTO `sys_hooks` VALUES ('34', 'userLoginSuccess', '用户登陆成功', '2', '', '1', '1500619318');
INSERT INTO `sys_hooks` VALUES ('35', 'userAddSuccess', '基础用户添加成功后', '2', '', '1', '1500619587');
INSERT INTO `sys_hooks` VALUES ('36', 'memberRegisterSuccess', '会员注册成功', '2', '', '1', '1500619688');
INSERT INTO `sys_hooks` VALUES ('37', 'memberLevelSaveSuccess', '会员等级保存成功', '2', '', '1', '1500620008');
INSERT INTO `sys_hooks` VALUES ('38', 'memberWithdrawApplyCreateSuccess', '会员提现申请创建成功', '2', '', '1', '1500620146');
INSERT INTO `sys_hooks` VALUES ('39', 'memberWithdrawAuditAgree', '会员提现审核通过', '2', '', '1', '1500620297');
INSERT INTO `sys_hooks` VALUES ('40', 'goodsSaveSuccess', '商品保存成功', '2', '', '1', '1500620784');
INSERT INTO `sys_hooks` VALUES ('41', 'goodsSaveBefore', '商品保存之前', '2', '', '1', '1500620803');
INSERT INTO `sys_hooks` VALUES ('42', 'goodsDeleteBefore', '商品删除之前', '2', '', '1', '1500621085');
INSERT INTO `sys_hooks` VALUES ('43', 'goodsDeleteSuccess', '商品删除成功', '2', '', '1', '1500621109');
INSERT INTO `sys_hooks` VALUES ('44', 'goodsOnlineSuccess', '商品上架成功', '2', '', '1', '1500621131');
INSERT INTO `sys_hooks` VALUES ('45', 'goodsOfflineSuccess', '商品下架成功', '2', '', '1', '1500621142');
INSERT INTO `sys_hooks` VALUES ('55', 'goodsCategorySaveSuccess', '商品分类保存成功', '2', '', '1', '1500621379');
INSERT INTO `sys_hooks` VALUES ('56', 'goodsCategoryDeleteSuccess', '商品分类删除成功', '2', '', '1', '1500621397');
INSERT INTO `sys_hooks` VALUES ('57', 'goodsBrandSaveSuccess', '商品品牌保存成功', '2', '', '1', '1500621414');
INSERT INTO `sys_hooks` VALUES ('58', 'goodsBrandDeleteSuccess', '商品品牌删除成功', '2', '', '1', '1500621428');
INSERT INTO `sys_hooks` VALUES ('59', 'goodsGroupSaveSuccess', '商品分组保存成功', '2', '', '1', '1500621441');
INSERT INTO `sys_hooks` VALUES ('60', 'goodsGroupDeleteSuccess', '商品分组删除成功', '2', '', '1', '1500621455');
INSERT INTO `sys_hooks` VALUES ('61', 'goodsSpecSaveSuccess', '商品规格保存成功', '2', '', '1', '1500621470');
INSERT INTO `sys_hooks` VALUES ('62', 'goodsSpecDeleteSuccess', '商品规格删除成功', '2', '', '1', '1500621483');
INSERT INTO `sys_hooks` VALUES ('63', 'goodsAttributeSaveSuccess', '商品类型保存成功', '2', '', '1', '1500621495');
INSERT INTO `sys_hooks` VALUES ('64', 'goodsAttributeDeleteSuccess', '商品类型删除成功', '2', '', '1', '1500621506');

-- ----------------------------
-- Table structure for `sys_instance`
-- ----------------------------
DROP TABLE IF EXISTS `sys_instance`;
CREATE TABLE `sys_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_name` varchar(50) NOT NULL DEFAULT '' COMMENT '实例名',
  `instance_typeid` int(11) NOT NULL DEFAULT '2' COMMENT '实例类型ID',
  `qrcode` varchar(255) NOT NULL DEFAULT '' COMMENT '实例二维码',
  `remark` text COMMENT '实例简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1365 COMMENT='系统实例表';

-- ----------------------------
-- Records of sys_instance
-- ----------------------------
INSERT INTO `sys_instance` VALUES ('19', 'Niushop开源商城', '1', '', '\'\'', '1477541018');

-- ----------------------------
-- Table structure for `sys_instance_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_instance_type`;
CREATE TABLE `sys_instance_type` (
  `instance_typeid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '实例类型ID',
  `type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '实例类型名称',
  `type_module_array` text NOT NULL COMMENT '实例类型权限',
  `type_desc` text NOT NULL COMMENT '实例类型说明',
  `type_sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序号',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`instance_typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='实例类型';

-- ----------------------------
-- Records of sys_instance_type
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `module_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模块ID',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块标题',
  `module` varchar(255) NOT NULL DEFAULT 'admin' COMMENT '项目名',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器名',
  `method` varchar(255) NOT NULL DEFAULT '' COMMENT '方法名',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '上级模块ID',
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '深度等级',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `is_menu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是菜单',
  `is_dev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `desc` text COMMENT '模块描述',
  `module_picture` varchar(255) NOT NULL DEFAULT '' COMMENT '模块图片',
  `icon_class` varchar(255) NOT NULL DEFAULT '' COMMENT '矢量图class',
  `is_control_auth` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否控制权限',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10136 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=606 COMMENT='系统模块表';

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('120', '系统', 'admin', 'upgrade', 'onlineupdate', '0', '1', 'upgrade/onlineupdate', '1', '0', '999', '\'\'', '', '', '1', '1477454152', '1477794717');
INSERT INTO `sys_module` VALUES ('121', '模块列表', 'admin', 'system', 'modulelist', '120', '2', 'system/modulelist', '1', '1', '5', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2352&highlight=%E6%A8%A1%E5%9D%97%E5%88%97%E8%A1%A8\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2352&highlight=%E6%A8%A1%E5%9D%97%E5%88%97%E8%A1%A8</a>', '', '', '1', '0', '0');
INSERT INTO `sys_module` VALUES ('122', '添加模块', 'admin', 'system', 'addmodule', '121', '3', 'system/addmodule', '0', '0', '1', '添加模块', '', '', '1', '0', '1479976597');
INSERT INTO `sys_module` VALUES ('123', '修改模块', 'admin', 'system', 'editmodule', '121', '3', 'system/editmodule', '0', '0', '2', '修改模块', '', '', '1', '0', '1479976646');
INSERT INTO `sys_module` VALUES ('126', '管理员列表', 'admin', 'auth', 'userlist', '218', '2', 'auth/userlist', '1', '0', '5', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2386&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2386&extra=page%3D1</a>', '', '', '1', '0', '1484650663');
INSERT INTO `sys_module` VALUES ('127', '用户列表', 'admin', 'auth', 'userlist', '126', '3', 'auth/userlist', '0', '0', '1', null, '', '', '1', '0', '0');
INSERT INTO `sys_module` VALUES ('128', '权限组', 'admin', 'auth', 'authgrouplist', '126', '3', 'auth/authgrouplist', '0', '0', '2', '用户组', '', '', '1', '0', '1479976919');
INSERT INTO `sys_module` VALUES ('129', '删除模块', 'admin', 'system', 'delmodule', '121', '3', 'system/delmodule', '0', '0', '0', '模块列表', '', '', '1', '1477618350', '1479976723');
INSERT INTO `sys_module` VALUES ('133', '添加用户组', 'admin', 'auth', 'addusergroup', '128', '3', 'auth/addusergroup', '0', '0', '2', '用户组', '', '', '1', '1477628544', '1479977008');
INSERT INTO `sys_module` VALUES ('137', '会员', 'admin', 'member', 'memberlist', '0', '1', 'member/memberlist', '1', '0', '4', '', '', '', '1', '1477994717', '1493206725');
INSERT INTO `sys_module` VALUES ('139', '相册管理', 'admin', 'system', 'albumlist', '149', '2', 'system/albumlist', '1', '0', '10', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2312&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2312&extra=page%3D2</a>', '', '', '1', '1478158094', '1496819610');
INSERT INTO `sys_module` VALUES ('144', '编辑用户', 'admin', 'auth', 'edituser', '127', '3', 'auth/edituser', '0', '0', '5', '用户', '', '', '1', '1478837447', '1479976963');
INSERT INTO `sys_module` VALUES ('145', '会员列表', 'admin', 'member', 'memberlist', '137', '2', 'member/memberlist', '1', '0', '1', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2321&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2321&extra=page%3D2</a>', '', '', '1', '1478846113', '1478846203');
INSERT INTO `sys_module` VALUES ('149', '商品', 'admin', 'goods', 'goodslist', '0', '1', 'goods/goodslist', '1', '0', '1', '商品模块', '', '', '1', '1479268148', '1493973167');
INSERT INTO `sys_module` VALUES ('150', '商品列表', 'admin', 'goods', 'goodslist', '149', '2', 'goods/goodslist', '1', '0', '1', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2301&extra=page%3D3\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2301&extra=page%3D3</a>', '', '', '0', '1479268236', '1491898725');
INSERT INTO `sys_module` VALUES ('151', '商品发布', 'admin', 'goods', 'addgoods', '149', '2', 'goods/addgoods', '1', '0', '2', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2302&extra=page%3D3\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2302&extra=page%3D3</a>', '', '', '1', '1479268307', '0');
INSERT INTO `sys_module` VALUES ('169', '图片管理', 'admin', 'system', 'albumpicturelist', '139', '3', 'system/albumpicturelist', '0', '0', '5', 'sfgsdf', '', '', '1', '1479464708', '1479976790');
INSERT INTO `sys_module` VALUES ('170', '添加运费模板', 'admin', 'express', 'transportationadd', '164', '3', 'express/transportationadd', '0', '0', '1', '添加运费模板', '', '', '1', '1479700610', '1484894376');
INSERT INTO `sys_module` VALUES ('171', '商品标签', 'admin', 'goods', 'goodsgrouplist', '149', '2', 'goods/goodsgrouplist', '1', '0', '3', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2307&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2307&extra=page%3D2</a>', '', '', '1', '1479873298', '1479960182');
INSERT INTO `sys_module` VALUES ('172', '添加商品标签', 'admin', 'goods', 'addgoodsgroup', '171', '3', 'goods/addgoodsgroup', '0', '0', '6', '添加商品分组', '', '', '1', '1479873424', '1479960243');
INSERT INTO `sys_module` VALUES ('176', '运费模板修改', 'admin', 'express', 'transportationedit', '164', '3', 'express/transportationedit', '0', '0', '6', 'sd', '', '', '1', '1480040625', '0');
INSERT INTO `sys_module` VALUES ('179', '营销', 'admin', 'promotion', 'coupontypelist', '0', '1', 'promotion/coupontypelist', '1', '0', '3', '优惠券类型列表', '', '', '1', '1480491652', '1480491725');
INSERT INTO `sys_module` VALUES ('180', '优惠券', 'admin', 'promotion', 'coupontypelist', '179', '2', 'promotion/coupontypelist', '1', '0', '1', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2315&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2315&extra=page%3D2</a>', '', '', '1', '1480491846', '0');
INSERT INTO `sys_module` VALUES ('184', '订单', 'admin', 'order', 'orderlist', '0', '1', 'order/orderlist', '1', '0', '2', '订单列表', '', '', '1', '1480563137', '0');
INSERT INTO `sys_module` VALUES ('185', '订单列表', 'admin', 'order', 'orderlist', '184', '2', 'order/orderlist', '1', '0', '1', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2314&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2314&extra=page%3D2</a>', '', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('186', '添加优惠券', 'admin', 'promotion', 'addcoupontype', '180', '3', 'promotion/addcoupontype', '1', '0', '2', '添加优惠券类型', '', '', '1', '1480573171', '0');
INSERT INTO `sys_module` VALUES ('187', '修改优惠券', 'admin', 'promotion', 'updatecoupontype', '180', '3', 'promotion/updatecoupontype', '1', '0', '3', '修改优惠券类型', '', '', '1', '1480904943', '0');
INSERT INTO `sys_module` VALUES ('189', '物流公司', 'admin', 'express', 'expresscompany', '529', '3', 'express/expresscompany', '0', '0', '60', '物流公司', '', '', '1', '1481254866', '1484894344');
INSERT INTO `sys_module` VALUES ('190', '订单详情', 'admin', 'order', 'orderdetail', '185', '3', 'order/orderdetail', '0', '0', '1', '订单详情', '', '', '1', '1481258173', '0');
INSERT INTO `sys_module` VALUES ('191', '添加物流公司', 'admin', 'express', 'addexpresscompany', '529', '3', 'express/addexpresscompany', '1', '0', '1', '添加物流公司', '', '', '1', '1481267828', '0');
INSERT INTO `sys_module` VALUES ('192', '物流公司修改', 'admin', 'express', 'updateexpresscompany', '529', '3', 'express/updateexpresscompany', '1', '0', '2', '物流公司修改排序', '', '', '1', '1481271808', '0');
INSERT INTO `sys_module` VALUES ('194', '退款详情', 'admin', 'order', 'orderrefunddetail', '185', '3', 'order/orderrefunddetail', '0', '0', '2', '退款详情', '', '', '1', '1481872074', '0');
INSERT INTO `sys_module` VALUES ('195', '赠品', 'admin', 'promotion', 'giftlist', '179', '2', 'promotion/giftlist', '1', '0', '3', '', '', '', '1', '1482113074', '1494215988');
INSERT INTO `sys_module` VALUES ('196', '添加赠品', 'admin', 'promotion', 'addgift', '195', '3', 'promotion/addgift', '1', '0', '0', '添加赠品', '', '', '1', '1482113664', '1482117539');
INSERT INTO `sys_module` VALUES ('197', '修改赠品', 'admin', 'promotion', 'updategift', '195', '3', 'promotion/updategift', '1', '0', '0', '修改赠品', '', '', '1', '1482113715', '1482117558');
INSERT INTO `sys_module` VALUES ('198', '满减送', 'admin', 'promotion', 'mansonglist', '179', '2', 'promotion/mansonglist', '1', '0', '4', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2317&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2317&extra=page%3D2</a>', '', '', '1', '1482138580', '1482138597');
INSERT INTO `sys_module` VALUES ('199', '添加满减满送', 'admin', 'promotion', 'addmansong', '198', '3', 'promotion/addmansong', '1', '0', '0', '满减送', '', '', '1', '1482140311', '0');
INSERT INTO `sys_module` VALUES ('200', '编辑满减送', 'admin', 'promotion', 'updatemansong', '198', '3', 'promotion/updatemansong', '1', '0', '1', '编辑满减送', '', '', '1', '1482907059', '0');
INSERT INTO `sys_module` VALUES ('201', '限时折扣', 'admin', 'promotion', 'getdiscountlist', '179', '2', 'promotion/getdiscountlist', '1', '0', '5', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2318&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2318&extra=page%3D2</a>', '', '', '1', '1483949283', '0');
INSERT INTO `sys_module` VALUES ('202', '添加限时折扣', 'admin', 'promotion', 'adddiscount', '201', '3', 'promotion/adddiscount', '1', '0', '0', '添加限时折扣', '', '', '1', '1483951104', '0');
INSERT INTO `sys_module` VALUES ('203', '修改限时折扣', 'admin', 'promotion', 'updatediscount', '201', '3', 'promotion/updatediscount', '1', '0', '1', '修改限时折扣', '', '', '1', '1483951151', '1483958451');
INSERT INTO `sys_module` VALUES ('210', '修改商品标签', 'admin', 'goods', 'updategoodsgroup', '171', '3', 'goods/updategoodsgroup', '0', '0', '2', '修改商品分组', '', '', '1', '1484120298', '1484125917');
INSERT INTO `sys_module` VALUES ('218', '设置', 'admin', 'config', 'webconfig', '0', '1', 'config/webconfig', '1', '0', '11', '店铺设置', '', '', '1', '1484617355', '1493348177');
INSERT INTO `sys_module` VALUES ('221', '支付配置', 'admin', 'config', 'paymentconfig', '10096', '3', 'config/paymentconfig', '0', '0', '2', '支付配置', '\'\'', '', '1', '1484623427', '1496820428');
INSERT INTO `sys_module` VALUES ('334', '咨询管理', 'admin', 'saleservice', 'consultlist', '149', '2', 'saleservice/consultlist', '1', '0', '8', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2310&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2310&extra=page%3D2</a>', '', '', '1', '1488875702', '1496392553');
INSERT INTO `sys_module` VALUES ('335', '微信', 'admin', 'wchat', 'config', '0', '1', 'wchat/config', '1', '0', '8', '微信', '', '', '1', '1488945338', '1493015492');
INSERT INTO `sys_module` VALUES ('336', '公众号管理', 'admin', 'wchat', 'config', '335', '2', 'wchat/config', '1', '0', '1', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2326&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2326&extra=page%3D2</a>', '', '', '1', '1488945416', '0');
INSERT INTO `sys_module` VALUES ('339', '微信菜单管理', 'admin', 'wchat', 'menu', '335', '2', 'wchat/menu', '1', '0', '2', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2327&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2327&extra=page%3D2</a>', '', '', '1', '1489046481', '0');
INSERT INTO `sys_module` VALUES ('340', '推广二维码管理', 'admin', 'wchat', 'weixinqrcodetemplate', '335', '2', 'wchat/weixinqrcodetemplate', '1', '0', '3', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2328&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2328&extra=page%3D2</a>', '', '', '1', '1489046596', '1490153341');
INSERT INTO `sys_module` VALUES ('341', '回复设置', 'admin', 'wchat', 'replayconfig', '335', '2', 'wchat/replayconfig', '1', '0', '4', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2329&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2329&extra=page%3D2</a>', '', '', '1', '1489046662', '0');
INSERT INTO `sys_module` VALUES ('342', '消息素材管理', 'admin', 'wchat', 'materialmessage', '335', '2', 'wchat/materialmessage', '1', '0', '6', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2330&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2330&extra=page%3D2</a>', '', '', '1', '1489046731', '0');
INSERT INTO `sys_module` VALUES ('343', '分享内容设置', 'admin', 'wchat', 'shareconfig', '335', '2', 'wchat/shareconfig', '1', '0', '7', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2332&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2332&extra=page%3D2</a>', '', '', '1', '1489046804', '0');
INSERT INTO `sys_module` VALUES ('358', '自定义推广二维码', 'admin', 'wchat', 'qrcode', '340', '3', 'wchat/qrcode', '0', '0', '1', '自定义二维码', '', '', '1', '1490153257', '1490153278');
INSERT INTO `sys_module` VALUES ('359', '添加回复', 'admin', 'wchat', 'addorupdatekeyreplay', '341', '3', 'wchat/addorupdatekeyreplay', '1', '0', '1', '', '', '', '1', '1490236498', '0');
INSERT INTO `sys_module` VALUES ('360', '添加用户', 'admin', 'auth', 'adduser', '127', '3', 'auth/adduser', '0', '0', '1', '添加用户', '', '', '1', '1490236731', '0');
INSERT INTO `sys_module` VALUES ('361', '一键关注设置', 'admin', 'wchat', 'onekeysubscribe', '335', '2', 'wchat/onekeysubscribe', '0', '0', '6', '一键关注设置', '', '', '1', '1490318979', '1496386363');
INSERT INTO `sys_module` VALUES ('381', '广告管理', 'admin', 'system', 'shopadvlist', '477', '2', 'system/shopadvlist', '1', '0', '6', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2375&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2375&extra=page%3D1</a>', '', '', '1', '1490774263', '1496320676');
INSERT INTO `sys_module` VALUES ('382', '广告管理', 'admin', 'system', 'shopadvlist', '381', '3', 'system/shopadvlist', '0', '0', '0', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2375&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2375&extra=page%3D1</a>', '', '', '1', '1490785255', '0');
INSERT INTO `sys_module` VALUES ('383', '添加广告位', 'admin', 'system', 'addshopadvposition', '381', '3', 'system/addshopadvposition', '0', '0', '0', '添加广告位', '', '', '1', '1490835009', '0');
INSERT INTO `sys_module` VALUES ('387', '广告位编辑', 'admin', 'system', 'updateshopadvposition', '381', '3', 'system/updateshopadvposition', '1', '0', '0', '广告位编辑', '', '', '1', '1490851266', '0');
INSERT INTO `sys_module` VALUES ('388', '添加广告', 'admin', 'system', 'addshopadv', '381', '3', 'system/addshopadv', '0', '0', '0', '添加广告', '', '', '1', '1490854140', '0');
INSERT INTO `sys_module` VALUES ('389', '广告编辑', 'admin', 'system', 'updateshopadv', '381', '3', 'system/updateshopadv', '0', '0', '0', '', '', '', '1', '1490857038', '0');
INSERT INTO `sys_module` VALUES ('390', '促销版块', 'admin', 'system', 'goodsrecommendclass', '10004', '3', 'system/goodsrecommendclass', '0', '0', '10', '促销版块管理', '', '', '1', '1490861814', '1496320694');
INSERT INTO `sys_module` VALUES ('392', '首页楼层', 'admin', 'system', 'blocklist', '10004', '3', 'system/blocklist', '0', '0', '11', '', '', '', '1', '1490947012', '1496320711');
INSERT INTO `sys_module` VALUES ('394', '添加楼层', 'admin', 'system', 'addblock', '10004', '3', 'system/addblock', '0', '0', '0', '', '', '', '1', '1490948318', '0');
INSERT INTO `sys_module` VALUES ('395', '楼层编辑', 'admin', 'system', 'updateblock', '10004', '3', 'system/updateblock', '0', '0', '0', '', '', '', '1', '1490948388', '1490952538');
INSERT INTO `sys_module` VALUES ('398', '个人资料', 'admin', 'auth', 'userdetail', '126', '2', 'auth/userdetail', '1', '0', '0', '个人资料', '', '', '0', '1491029995', '1494298490');
INSERT INTO `sys_module` VALUES ('403', '销售排行', 'admin', 'account', 'shopgoodssalesrank', '409', '2', 'account/shopgoodssalesrank', '1', '0', '9', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2390&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2390&extra=page%3D1</a>', '', '', '1', '1491040090', '1496819701');
INSERT INTO `sys_module` VALUES ('405', '商品销售统计', 'admin', 'account', 'shopgoodsaccountlist', '403', '3', 'account/shopgoodsaccountlist', '0', '0', '6', '商品销售统计', '', '', '1', '1491042742', '0');
INSERT INTO `sys_module` VALUES ('409', '数据', 'admin', 'account', 'shopsalesaccount', '0', '1', 'account/shopsalesaccount', '1', '0', '7', '资产', '', '', '1', '1493281488', '1493974412');
INSERT INTO `sys_module` VALUES ('418', '网站设置', 'admin', 'config', 'webconfig', '528', '3', 'config/webconfig', '0', '0', '2', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2342&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2342&extra=page%3D2</a>', '', '', '1', '1492755047', '0');
INSERT INTO `sys_module` VALUES ('419', '商品分类', 'admin', 'goods', 'goodscategorylist', '149', '2', 'goods/goodscategorylist', '1', '0', '2', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2303&extra=page%3D3\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2303&extra=page%3D3</a>', '', '', '1', '1492755701', '0');
INSERT INTO `sys_module` VALUES ('420', '添加商品分类', 'admin', 'goods', 'addgoodscategory', '419', '3', 'goods/addgoodscategory', '1', '0', '2', '添加商品分类', '', '', '1', '1492755811', '1492755828');
INSERT INTO `sys_module` VALUES ('421', '修改商品分类', 'admin', 'goods', 'updategoodscategory', '419', '3', 'goods/updategoodscategory', '1', '0', '1', '修改商品分类', '', '', '1', '1492755920', '0');
INSERT INTO `sys_module` VALUES ('422', '删除商品分类', 'admin', 'goods', 'deletegoodscategory', '419', '3', 'goods/deletegoodscategory', '1', '0', '2', '删除商品分类', '', '', '1', '1492755973', '0');
INSERT INTO `sys_module` VALUES ('423', '商品品牌', 'admin', 'goods', 'goodsbrandlist', '149', '2', 'goods/goodsbrandlist', '1', '0', '3', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2304&extra=page%3D3\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2304&extra=page%3D3</a>', '', '', '1', '1492756038', '0');
INSERT INTO `sys_module` VALUES ('424', '添加商品品牌', 'admin', 'goods', 'addgoodsbrand', '423', '3', 'goods/addgoodsbrand', '1', '0', '1', '添加商品品牌', '', '', '1', '1492756096', '0');
INSERT INTO `sys_module` VALUES ('425', '修改商品品牌', 'admin', 'goods', 'updategoodsbrand', '423', '3', 'goods/updategoodsbrand', '1', '0', '4', '修改商品品牌', '', '', '1', '1492756169', '0');
INSERT INTO `sys_module` VALUES ('427', '导航管理', 'admin', 'config', 'shopnavigationlist', '477', '2', 'config/shopnavigationlist', '1', '0', '2', '导航', '', '', '1', '1492761752', '1496320733');
INSERT INTO `sys_module` VALUES ('428', '添加导航', 'admin', 'config', 'addshopnavigation', '427', '3', 'config/addshopnavigation', '0', '0', '1', '添加导航', '', '', '0', '1492761909', '0');
INSERT INTO `sys_module` VALUES ('429', '修改导航', 'admin', 'config', 'updateshopnavigation', '427', '3', 'config/updateshopnavigation', '0', '0', '2', '修改导航', '', '', '0', '1492762515', '0');
INSERT INTO `sys_module` VALUES ('430', '友情链接', 'admin', 'config', 'linklist', '477', '2', 'config/linklist', '1', '0', '10', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2381&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2381&extra=page%3D1</a>', '', '', '1', '1492765269', '1496320750');
INSERT INTO `sys_module` VALUES ('431', '文章管理', 'admin', 'cms', 'articlelist', '477', '2', 'cms/articlelist', '1', '0', '7', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2378&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2378&extra=page%3D1</a>', '', '', '1', '1492782512', '1492782619');
INSERT INTO `sys_module` VALUES ('432', '文章列表', 'admin', 'cms', 'articlelist', '431', '3', 'cms/articlelist', '0', '0', '1', '文章列表', '', '', '1', '1492782808', '1492782837');
INSERT INTO `sys_module` VALUES ('433', '文章分类', 'admin', 'cms', 'articleclasslist', '431', '3', 'cms/articleclasslist', '0', '0', '2', '文章列表', '', '', '1', '1492782934', '1492782952');
INSERT INTO `sys_module` VALUES ('434', '评论列表', 'admin', 'cms', 'commentarticle', '431', '2', 'cms/commentarticle', '0', '0', '3', '评论列表', '', '', '1', '1492782991', '1497084797');
INSERT INTO `sys_module` VALUES ('436', '添加友情链接', 'admin', 'config', 'addlink', '430', '3', 'config/addlink', '0', '0', '1', '添加友情链接', '', '', '1', '1493190273', '1493190306');
INSERT INTO `sys_module` VALUES ('437', '编辑友情链接', 'admin', 'config', 'updatelink', '430', '3', 'config/updatelink', '0', '0', '2', '编辑友情链接', '', '', '1', '1493192018', '0');
INSERT INTO `sys_module` VALUES ('439', '通知系统', 'admin', 'config', 'notifyindex', '528', '3', 'config/notifyindex', '0', '0', '26', 'messageConfig', '', '', '1', '1493194795', '1496722814');
INSERT INTO `sys_module` VALUES ('440', '帮助类型', 'admin', 'config', 'helpclass', '530', '3', 'config/helpclass', '0', '0', '10', '帮助类型', '', '', '1', '1493199934', '1496320786');
INSERT INTO `sys_module` VALUES ('441', '帮助内容', 'admin', 'config', 'helpdocument', '530', '3', 'config/helpdocument', '0', '0', '18', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2380&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2380&extra=page%3D1</a>', '', '', '1', '1493201598', '1496320803');
INSERT INTO `sys_module` VALUES ('442', '添加帮助类型', 'admin', 'config', 'addhelpclass', '530', '3', 'config/addhelpclass', '0', '0', '1', '添加帮助类型', '', '', '1', '1493201673', '0');
INSERT INTO `sys_module` VALUES ('443', '修改帮助内容', 'admin', 'config', 'updatedocument', '530', '3', 'config/updatedocument', '0', '0', '2', 'updateDocument.html', '', '', '1', '1493203409', '0');
INSERT INTO `sys_module` VALUES ('444', '添加帮助内容', 'admin', 'config', 'adddocument', '530', '3', 'config/adddocument', '0', '0', '2', 'aaddDocument', '', '', '1', '1493205866', '0');
INSERT INTO `sys_module` VALUES ('445', '首页公告', 'admin', 'config', 'usernotice', '477', '2', 'config/usernotice', '1', '0', '1', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2370&page=1&extra=#pid6025\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2370&page=1&extra=#pid6025</a>', '', '', '1', '1493206256', '1496321121');
INSERT INTO `sys_module` VALUES ('446', '积分管理', 'admin', 'promotion', 'pointconfig', '179', '2', 'promotion/pointconfig', '1', '0', '1', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2316&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2316&extra=page%3D2</a>', '', '', '1', '1493206530', '1496894015');
INSERT INTO `sys_module` VALUES ('447', '粉丝列表', 'admin', 'member', 'weixinfanslist', '335', '2', 'member/weixinfanslist', '1', '0', '10', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2322&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2322&extra=page%3D2</a>', '', '', '1', '1493278702', '0');
INSERT INTO `sys_module` VALUES ('450', '修改消息素材', 'admin', 'wchat', 'updatemedia', '342', '3', 'wchat/updatemedia', '1', '0', '1', '', '', '', '1', '1493282078', '1493282297');
INSERT INTO `sys_module` VALUES ('451', '添加消息素材', 'admin', 'wchat', 'addmedia', '342', '3', 'wchat/addmedia', '1', '0', '1', '', '', '', '1', '1493282371', '0');
INSERT INTO `sys_module` VALUES ('452', '添加文章', 'admin', 'cms', 'addarticle', '431', '3', 'cms/addarticle', '0', '0', '4', '', '', '', '1', '1493287571', '1493289825');
INSERT INTO `sys_module` VALUES ('454', '销售统计', 'admin', 'account', 'orderaccountcount', '409', '2', 'account/orderaccountcount', '0', '0', '6', '', '', '', '1', '1493289961', '1493981704');
INSERT INTO `sys_module` VALUES ('455', '修改文章', 'admin', 'cms', 'updatearticle', '431', '3', 'cms/updatearticle', '0', '0', '2', '', '', '', '1', '1493343780', '0');
INSERT INTO `sys_module` VALUES ('456', '第三方登录', 'admin', 'config', 'partylogin', '528', '3', 'config/partylogin', '0', '0', '25', '', '', '', '1', '1493347646', '1496903436');
INSERT INTO `sys_module` VALUES ('457', '销售明细', 'admin', 'account', 'orderrecordslist', '454', '3', 'account/orderrecordslist', '0', '0', '2', '', '', '', '1', '1493705080', '1493705419');
INSERT INTO `sys_module` VALUES ('459', '销售概况', 'admin', 'account', 'shopsalesaccount', '409', '2', 'account/shopsalesaccount', '1', '0', '1', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2387&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2387&extra=page%3D1</a>', '', '', '1', '1493776001', '1493974321');
INSERT INTO `sys_module` VALUES ('460', '热卖商品', 'admin', 'account', 'bestsellergoods', '463', '3', 'account/bestsellergoods', '0', '0', '1', '', '', '', '1', '1493867120', '1493972190');
INSERT INTO `sys_module` VALUES ('461', '同行热卖', 'admin', 'account', 'shopgoodsgroupsalecount', '409', '2', 'account/shopgoodsgroupsalecount', '1', '0', '4', '', '', '', '1', '1493946658', '1493950999');
INSERT INTO `sys_module` VALUES ('462', '运营报告', 'admin', 'account', 'shopreport', '409', '2', 'account/shopreport', '1', '0', '5', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2389&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2389&extra=page%3D1</a>', '', '', '1', '1493947412', '0');
INSERT INTO `sys_module` VALUES ('463', '商品分析', 'admin', 'account', 'shopgoodssaleslist', '409', '2', 'account/shopgoodssaleslist', '1', '0', '2', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2325&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2325&extra=page%3D2</a>', '', '', '1', '1493949799', '0');
INSERT INTO `sys_module` VALUES ('467', '首页', 'admin', 'index', 'index', '0', '1', 'index/index', '1', '0', '0', '', '', '', '0', '1494485612', '1497071676');
INSERT INTO `sys_module` VALUES ('469', '满额包邮', 'admin', 'promotion', 'fullshipping', '179', '2', 'promotion/fullshipping', '1', '0', '6', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2320&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2320&extra=page%3D2</a>', '', '', '1', '1494928162', '0');
INSERT INTO `sys_module` VALUES ('471', '商家地址', 'admin', 'order', 'returnsetting', '529', '3', 'order/returnsetting', '0', '0', '70', '退货设置', '', '', '1', '1496215760', '1496216046');
INSERT INTO `sys_module` VALUES ('472', '添加或修改', 'admin', 'order', 'addreturn', '529', '3', 'order/addreturn', '1', '0', '1', '添加退货', '', '', '1', '1496215892', '1496216067');
INSERT INTO `sys_module` VALUES ('474', '首页公告', 'admin', 'config', 'updatenotice', '10005', '3', 'config/updatenotice', '0', '0', '15', '公告', '', '', '1', '1496291567', '1496320766');
INSERT INTO `sys_module` VALUES ('477', '网站', 'admin', 'config', 'shopnavigationlist', '0', '1', 'config/usernotice', '1', '0', '9', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2371&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2371&extra=page%3D1</a>', '', '', '1', '1496303515', '1496821512');
INSERT INTO `sys_module` VALUES ('478', '商品评价', 'admin', 'goods', 'goodscomment', '149', '2', 'goods/goodscomment', '1', '0', '8', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2311&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2311&extra=page%3D2</a>', '', '', '1', '1496310914', '0');
INSERT INTO `sys_module` VALUES ('479', '商品规格', 'admin', 'goods', 'goodsspeclist', '149', '2', 'goods/goodsspeclist', '1', '0', '6', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2306&extra=page%3D3\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2306&extra=page%3D3</a>', '', '', '1', '1496314078', '1496368479');
INSERT INTO `sys_module` VALUES ('480', '添加商品规格', 'admin', 'goods', 'addgoodsspec', '479', '3', 'goods/addgoodsspec', '0', '0', '1', '', '', '', '1', '1496368895', '0');
INSERT INTO `sys_module` VALUES ('481', '修改商品规格', 'admin', 'goods', 'updategoodsspec', '479', '3', 'goods/updategoodsspec', '0', '0', '0', '', '', '', '1', '1496386955', '0');
INSERT INTO `sys_module` VALUES ('482', '商品类型', 'admin', 'goods', 'attributelist', '149', '2', 'goods/attributelist', '1', '0', '7', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2309&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2309&extra=page%3D2</a>', '', '', '1', '1496392434', '1496392497');
INSERT INTO `sys_module` VALUES ('484', '添加商品类型', 'admin', 'goods', 'addattributeservice', '482', '3', 'goods/addattributeservice', '0', '0', '0', '', '', '', '1', '1496395497', '1496457873');
INSERT INTO `sys_module` VALUES ('485', '修改商品类型', 'admin', 'goods', 'updategoodsattribute', '482', '3', 'goods/updategoodsattribute', '0', '0', '0', '', '', '', '1', '1496396084', '0');
INSERT INTO `sys_module` VALUES ('486', '地区管理', 'admin', 'config', 'areamanagement', '529', '3', 'config/areamanagement', '0', '0', '50', '', '', '', '1', '1496452390', '0');
INSERT INTO `sys_module` VALUES ('487', '模板编辑', 'admin', 'express', 'expresstemplate', '529', '3', 'express/expresstemplate', '0', '0', '0', '', '', '', '1', '1496459993', '0');
INSERT INTO `sys_module` VALUES ('488', '会员等级', 'admin', 'member', 'memberlevellist', '137', '2', 'member/memberlevellist', '1', '0', '3', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2323&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2323&extra=page%3D2</a>', '', '', '1', '1496462360', '0');
INSERT INTO `sys_module` VALUES ('489', '添加等级', 'admin', 'member', 'addmemberlevel', '488', '3', 'member/addmemberlevel', '1', '0', '1', '添加等级', '', '', '1', '1496483895', '0');
INSERT INTO `sys_module` VALUES ('490', '修改等级', 'admin', 'member', 'updatememberlevel', '488', '3', 'member/updatememberlevel', '1', '0', '0', '修改等级', '', '', '1', '1496483933', '1496485692');
INSERT INTO `sys_module` VALUES ('491', '专题列表', 'admin', 'cms', 'topiclist', '477', '2', 'cms/topiclist', '1', '0', '8', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2379&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2379&extra=page%3D1</a>', '', '', '1', '1496630179', '1496632713');
INSERT INTO `sys_module` VALUES ('492', '添加专题', 'admin', 'cms', 'addtopic', '491', '3', 'cms/addtopic', '1', '0', '1', '添加专题', '', '', '1', '1496630640', '1496632753');
INSERT INTO `sys_module` VALUES ('493', '修改专题', 'admin', 'cms', 'updatetopic', '491', '3', 'cms/updatetopic', '1', '0', '2', '修改专题', '', '', '1', '1496630696', '1496632781');
INSERT INTO `sys_module` VALUES ('494', '购物设置', 'admin', 'config', 'shopset', '10096', '3', 'config/shopset', '0', '0', '1', '购物设置', '', '', '1', '1496716845', '1496717062');
INSERT INTO `sys_module` VALUES ('495', '邮件设置', 'admin', 'config', 'messageconfig', '439', '3', 'config/messageconfig', '0', '0', '0', '', '', '', '1', '1496731597', '0');
INSERT INTO `sys_module` VALUES ('496', '短信设置', 'admin', 'config', 'messageconfig', '439', '3', 'config/messageconfig', '0', '0', '0', '', '', '', '1', '1496731636', '0');
INSERT INTO `sys_module` VALUES ('497', '会员积分明细', 'admin', 'member', 'pointdetail', '145', '3', 'member/pointdetail', '0', '0', '0', '', '', '', '1', '1496739472', '0');
INSERT INTO `sys_module` VALUES ('498', '会员余额明细', 'admin', 'member', 'accountdetail', '145', '3', 'member/accountdetail', '0', '0', '0', '', '', '', '1', '1496744512', '0');
INSERT INTO `sys_module` VALUES ('499', 'seo设置', 'admin', 'config', 'seoconfig', '528', '3', 'config/seoconfig', '0', '0', '2', 'seo设置', '', '', '1', '1496750885', '1496751054');
INSERT INTO `sys_module` VALUES ('501', '微信支付', 'admin', 'config', 'payconfig', '221', '3', 'config/payconfig', '1', '0', '1', '微信支付', '', '', '1', '1496821450', '0');
INSERT INTO `sys_module` VALUES ('502', '支付宝支付', 'admin', 'config', 'payaliconfig', '221', '3', 'config/payaliconfig', '1', '0', '2', '支付宝支付', '', '', '1', '1496821780', '0');
INSERT INTO `sys_module` VALUES ('503', '会员提现设置', 'admin', 'config', 'memberwithdrawsetting', '504', '3', 'config/memberwithdrawsetting', '0', '0', '0', '会员提现设置', '', '', '1', '1496821934', '1496822222');
INSERT INTO `sys_module` VALUES ('504', '会员提现', 'admin', 'member', 'usercommissionwithdrawlist', '137', '2', 'member/usercommissionwithdrawlist', '1', '0', '4', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2324&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2324&extra=page%3D2</a>', '', '', '1', '1496822171', '1496822242');
INSERT INTO `sys_module` VALUES ('506', '模板管理', 'admin', 'config', 'notifytemplate', '439', '3', 'config/notifytemplate', '0', '0', '0', '', '', '', '1', '1496886539', '1496974268');
INSERT INTO `sys_module` VALUES ('509', '积分管理', 'admin', 'member', 'pointlist', '137', '2', 'member/pointlist', '1', '0', '5', '', '', '', '1', '1496906007', '1496906222');
INSERT INTO `sys_module` VALUES ('510', '余额管理', 'admin', 'member', 'accountlist', '137', '2', 'member/accountlist', '1', '0', '6', '', '', '', '1', '1496906142', '1496906242');
INSERT INTO `sys_module` VALUES ('512', '微信登录', 'admin', 'config', 'loginconfig', '456', '3', 'config/loginconfig', '1', '0', '2', '微信登录', '', '', '1', '1496907149', '1496907569');
INSERT INTO `sys_module` VALUES ('513', 'qq登录', 'admin', 'config', 'loginconfig', '456', '3', 'config/loginconfig', '1', '0', '1', 'qq登录', '', '', '1', '1496907238', '1496907552');
INSERT INTO `sys_module` VALUES ('515', '欢迎页', 'admin', 'index', 'index', '467', '2', 'index/index', '1', '0', '0', '欢迎页', '', '', '0', '1496979062', '0');
INSERT INTO `sys_module` VALUES ('518', '回收站列表', 'admin', 'goods', 'recyclelist', '150', '3', 'goods/recyclelist', '0', '0', '2', '', '', '', '1', '1497445996', '1497445996');
INSERT INTO `sys_module` VALUES ('519', '货到付款地区管理', 'admin', 'config', 'distributionareamanagement', '529', '3', 'config/distributionareamanagement', '0', '0', '24', '', '', '', '1', '1497706614', '1497706614');
INSERT INTO `sys_module` VALUES ('520', '自提点管理', 'admin', 'shop', 'pickuppointlist', '529', '3', 'shop/pickuppointlist', '0', '0', '80', '', '', '', '1', '1498135759', '1498135759');
INSERT INTO `sys_module` VALUES ('521', '添加自提点', 'admin', 'shop', 'addpickuppoint', '529', '3', 'shop/addpickuppoint', '0', '0', '0', '', '', '', '1', '1498135759', '1498135759');
INSERT INTO `sys_module` VALUES ('522', '修改自提点', 'admin', 'shop', 'updatepickuppoint', '529', '3', 'shop/updatepickuppoint', '0', '0', '0', '', '', '', '1', '1498135759', '1498135759');
INSERT INTO `sys_module` VALUES ('523', '物流跟踪设置', 'admin', 'config', 'expressmessage', '529', '3', 'config/expressmessage', '0', '0', '100', '', '', '', '1', '1498198990', '1498198990');
INSERT INTO `sys_module` VALUES ('524', '在线更新', 'admin', 'upgrade', 'onlineupdate', '120', '2', 'upgrade/onlineupdate', '1', '0', '1', '', '', '', '1', '1498733102', '1498733102');
INSERT INTO `sys_module` VALUES ('525', '运费模板列表', 'admin', 'express', 'freighttemplatelist', '529', '3', 'express/freighttemplatelist', '0', '0', '0', '', '', '', '1', '1498733102', '1498733102');
INSERT INTO `sys_module` VALUES ('526', '编辑运费模板', 'admin', 'express', 'freighttemplateedit', '529', '3', 'express/freighttemplateedit', '0', '0', '2', '', '', '', '1', '1498733102', '1498733102');
INSERT INTO `sys_module` VALUES ('527', '注册与访问', 'admin', 'config', 'registerAndVisit', '528', '3', 'config/registerandvisit', '0', '0', '20', '', '', '', '1', '1498874511', '1498874511');
INSERT INTO `sys_module` VALUES ('528', '基础设置', 'admin', 'config', 'webconfig', '218', '2', 'config/webconfig', '1', '0', '1', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2342&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2342&extra=page%3D2</a>', '', '', '1', '1499343015', '1499343015');
INSERT INTO `sys_module` VALUES ('529', '配送管理', 'admin', 'express', 'expresscompany', '218', '2', 'express/expresscompany', '1', '0', '3', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2350&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2350&extra=page%3D2</a>', '', '', '1', '1499343015', '1499343015');
INSERT INTO `sys_module` VALUES ('530', '站点帮助', 'admin', 'config', 'helpclass', '477', '2', 'config/helpdocument', '1', '0', '9', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2380&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2380&extra=page%3D1</a>', '', '', '1', '1499343015', '1499343015');
INSERT INTO `sys_module` VALUES ('10001', '供货商', 'admin', 'member', 'supplierlist', '149', '2', 'member/supplierlist', '1', '0', '7', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2308&extra=page%3D2\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2308&extra=page%3D2</a>', '', '', '1', '1499853120', '1499853120');
INSERT INTO `sys_module` VALUES ('10002', '添加供货商', 'admin', 'member', 'addsupplier', '10001', '3', 'member/addsupplier', '1', '0', '0', '', '', '', '1', '1499853120', '1499853120');
INSERT INTO `sys_module` VALUES ('10003', '修改供货商', 'admin', 'member', 'updatesupplier', '10001', '3', 'member/updatesupplier', '1', '0', '1', '', '', '', '1', '1499853120', '1499853120');
INSERT INTO `sys_module` VALUES ('10004', '店铺装修', 'admin', 'config', 'pctemplate', '477', '2', 'config/pctemplate', '1', '0', '4', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2373&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2373&extra=page%3D1</a>', '', '', '1', '1500608761', '1500608761');
INSERT INTO `sys_module` VALUES ('10005', '搜索', 'admin', 'config', 'searchconfig', '477', '2', 'config/searchconfig', '1', '0', '5', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2374&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2374&extra=page%3D1</a>', '', '', '1', '1500608765', '1500608765');
INSERT INTO `sys_module` VALUES ('10006', '促销版块', 'admin', 'system', 'goodsrecommendclassmobile', '10005', '3', 'system/goodsrecommendclassmobile', '0', '0', '20', '', '', '', '1', '1500608766', '1500608766');
INSERT INTO `sys_module` VALUES ('10007', '授权信息', 'admin', 'upgrade', 'devolutioninfo', '120', '2', 'upgrade/devolutioninfo', '1', '0', '2', '', '', '', '1', '1500608776', '1500608776');
INSERT INTO `sys_module` VALUES ('10009', '插件管理', 'admin', 'extend', 'addonslist', '120', '2', 'extend/addonslist', '1', '0', '3', '', '', '', '1', '1500633040', '0');
INSERT INTO `sys_module` VALUES ('10010', '钩子管理', 'admin', 'extend', 'hookslist', '120', '2', 'extend/hookslist', '1', '0', '4', '', '', '', '1', '1500633096', '0');
INSERT INTO `sys_module` VALUES ('10011', '插件列表', 'admin', 'extend', 'pluginlist', '10008', '2', 'extend/pluginlist', '0', '0', '3', '', '', '', '1', '1500633141', '0');
INSERT INTO `sys_module` VALUES ('10012', '添加钩子', 'admin', 'extend', 'addhooks', '10010', '3', 'extend/addhooks', '1', '0', '0', '', '', '', '1', '1500633268', '0');
INSERT INTO `sys_module` VALUES ('10013', '修改钩子', 'admin', 'extend', 'updatehooks', '10010', '3', 'extend/updatehooks', '1', '0', '0', '', '', '', '1', '1500633326', '0');
INSERT INTO `sys_module` VALUES ('10014', '插件配置', 'admin', 'extend', 'pluginconfig', '10008', '2', 'extend/pluginconfig', '0', '0', '4', '', '', '', '1', '1500633368', '0');
INSERT INTO `sys_module` VALUES ('10015', '插件配置', 'admin', 'extend', 'addonsconfig', '10008', '2', 'extend/addonsconfig', '0', '0', '5', '', '', '', '1', '1500633398', '0');
INSERT INTO `sys_module` VALUES ('10016', '自提点运费', 'admin', 'shop', 'pickuppointfreight', '529', '3', 'shop/pickuppointfreight', '1', '0', '4', '', '', '', '1', '1501809931', '1501809931');
INSERT INTO `sys_module` VALUES ('10017', '版权', 'admin', 'config', 'copyrightinfo', '528', '3', 'config/copyrightinfo', '0', '0', '8', '', '', '', '1', '1501810329', '1501810329');
INSERT INTO `sys_module` VALUES ('10018', '手机模板', 'admin', 'config', 'waptemplate', '10005', '3', 'config/waptemplate', '0', '0', '3', '', '', '', '1', '1501923272', '1501923272');
INSERT INTO `sys_module` VALUES ('10019', '客服', 'admin', 'config', 'customservice', '528', '3', 'config/customservice', '0', '0', '28', '', '', '', '1', '1502539867', '1502539867');
INSERT INTO `sys_module` VALUES ('10021', '手机端模板', 'admin', 'config', 'fixedtemplate', '10004', '3', 'config/fixedtemplate', '0', '0', '2', '', '', '', '1', '1502539867', '1502539867');
INSERT INTO `sys_module` VALUES ('10023', '商品楼层', 'admin', 'system', 'goodscategoryblock', '477', '2', 'system/goodscategoryblock', '1', '0', '3', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2372&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2372&extra=page%3D1</a>', '', '', '1', '0', '0');
INSERT INTO `sys_module` VALUES ('10024', '电脑端模板', 'admin', 'config', 'pctemplate', '10004', '3', 'config/pctemplate', '1', '0', '1', '', '', '', '1', '1504697788', '1504697788');
INSERT INTO `sys_module` VALUES ('10075', '商家通知', 'admin', 'config', 'businessnotifytemplate', '439', '3', 'config/businessnotifytemplate', '0', '0', '0', '', '', '', '1', '1505870490', '0');
INSERT INTO `sys_module` VALUES ('10077', '数据库管理', 'admin', 'dbdatabase', 'databaselist', '218', '2', 'dbdatabase/databaselist', '1', '0', '4', '相关教程：<a href=\"http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2385&extra=page%3D1\" target=\"_blank\">http://bbs.niushop.com.cn/forum.php?mod=viewthread&tid=2385&extra=page%3D1</a>', '', '', '1', '1506132536', '0');
INSERT INTO `sys_module` VALUES ('10078', '数据库恢复', 'admin', 'dbdatabase', 'importdatalist', '10077', '3', 'dbdatabase/importdatalist', '0', '0', '0', '', '', '', '1', '1506132758', '0');
INSERT INTO `sys_module` VALUES ('10079', 'SQL执行与导入', 'admin', 'dbdatabase', 'sqlfilequery', '10077', '3', 'dbdatabase/sqlfilequery', '0', '0', '0', '', '', '', '1', '1506132811', '0');
INSERT INTO `sys_module` VALUES ('10080', '添加首页公告', 'admin', 'config', 'addhomenotice', '445', '3', 'config/addhomenotice', '0', '0', '1', '', '', '', '1', '1508152805', '0');
INSERT INTO `sys_module` VALUES ('10081', '公告编辑', 'admin', 'config', 'updatehomenotice', '445', '3', 'config/updatehomenotice', '0', '0', '2', '', '', '', '1', '1508208576', '0');
INSERT INTO `sys_module` VALUES ('10082', '上传设置', 'admin', 'config', 'pictureuploadsetting', '528', '3', 'config/pictureuploadsetting', '0', '0', '21', '', '', '', '1', '1508152805', '0');
INSERT INTO `sys_module` VALUES ('10083', '系统更新', 'admin', 'upgrade', 'upgradePatch', '524', '3', 'upgrade/upgradepatch', '0', '0', '0', '', '', '', '1', '1508572839', '0');
INSERT INTO `sys_module` VALUES ('10084', '伪静态路由', 'admin', 'config', 'customPseudoStaticRule', '528', '3', 'config/customPseudoStaticRule', '0', '0', '24', '', '', '', '1', '1509941657', '0');
INSERT INTO `sys_module` VALUES ('10085', '编辑路由规则', 'admin', 'config', 'updateRoutingRule', '10084', '3', 'config/updateRoutingRule', '0', '0', '0', '', '', '', '1', '1509958647', '0');
INSERT INTO `sys_module` VALUES ('10086', '添加路由规则', 'admin', 'config', 'addRoutingRules', '10084', '3', 'config/addRoutingRules', '0', '0', '0', '', '', '', '1', '1509951666', '1509959648');
INSERT INTO `sys_module` VALUES ('10087', '广告位管理', 'admin', 'system', 'shopadvpositionlist', '381', '3', 'system/shopadvpositionlist', '0', '0', '0', '', '', '', '1', '1512180137', '0');
INSERT INTO `sys_module` VALUES ('10096', '交易设置', 'admin', 'config', 'shopset', '218', '2', 'config/shopset', '1', '0', '2', '相关教程：<a href=\"http://bbs.niushop.com.cn/thread-2384-1-1.html\" target=\"_blank\">http://bbs.niushop.com.cn/thread-2384-1-1.html</a>\"', '', '', '1', '1517565416', '0');
INSERT INTO `sys_module` VALUES ('10097', '运营', 'admin', 'config', 'visitConfig', '528', '3', 'config/visitconfig', '1', '0', '2', '访问设置', '', '', '1', '1517565417', '0');
INSERT INTO `sys_module` VALUES ('10101', '用户操作日志', 'admin', 'Member', 'userOperationLogList', '126', '2', 'Member/userOperationLogList', '1', '0', '10', '用户操作日志', '', '', '1', '1517565419', '0');
INSERT INTO `sys_module` VALUES ('10103', '奖励规则', 'admin', 'promotion', 'integral', '179', '2', 'promotion/integral', '1', '0', '10', '奖励规则', '', '', '1', '1517565419', '0');
INSERT INTO `sys_module` VALUES ('10104', '一键关注设置', 'admin', 'wchat', 'keyConcernConfig', '335', '2', 'wchat/keyConcernConfig', '1', '0', '12', '一键关注设置', '', '', '1', '1517565419', '0');
INSERT INTO `sys_module` VALUES ('10105', '商家服务', 'admin', 'config', 'merchantService', '528', '3', 'config/merchantService', '0', '0', '0', '商家服务', '', '', '1', '1517565419', '0');
INSERT INTO `sys_module` VALUES ('10106', '赠品发放记录', 'admin', 'promotion', 'giftGrantRecordsList', '195', '3', 'config/merchantService', '0', '0', '0', '赠品发放记录', '', '', '1', '1517565421', '0');
INSERT INTO `sys_module` VALUES ('10113', '会员足迹', 'admin', 'member', 'newpath', '145', '3', 'member/newpath', '0', '0', '0', '会员足迹', '', '', '1', '1522756901', '0');
INSERT INTO `sys_module` VALUES ('10119', '会员余额明细', 'admin', 'member', 'balancedetail', '145', '3', 'member/balancedetail', '1', '0', '0', '会员余额明细', '', '', '1', '1522756903', '0');
INSERT INTO `sys_module` VALUES ('10120', '通知记录', 'admin', 'config', 'notifylist', '528', '3', 'config/notifylist', '1', '0', '0', '', '', '', '1', '1522756903', '0');
INSERT INTO `sys_module` VALUES ('10121', '操作日志', 'admin', 'auth', 'authLog', '126', '3', 'auth/authLog', '0', '0', '5', '', '', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10122', '发票管理', 'admin', 'order', 'invoiceList', '184', '2', 'order/invoiceList', '1', '0', '15', '', '', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10123', '插件设置', 'admin', 'extend', 'addonsconfig', '10009', '3', 'extend/addonsconfig', '1', '0', '2', '', '', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10124', '客服管理', 'admin', 'Wchat', 'fansMessageManage', '335', '2', 'Wchat/fansMessageManage', '1', '0', '20', '', '', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10125', '粉丝留言', 'admin', 'wchat', 'fansMessageManage', '10156', '3', 'wchat/fansMessageManage', '1', '0', '1', '', '', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10126', '群发消息', 'admin', 'Wchat', 'sendGroupMessage', '10156', '3', 'Wchat/sendGroupMessage', '1', '0', '2', '', '', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10127', '售后服务', 'admin', 'Order', 'customerServiceList', '184', '2', 'Order/customerServiceList', '1', '0', '16', '售后服务', '', '', '1', '1522756923', '0');
INSERT INTO `sys_module` VALUES ('10128', '售后详情', 'admin', 'Order', 'orderCustomerDetail', '10127', '3', 'Order/orderCustomerDetail', '0', '0', '0', '售后详情', '', '', '1', '1522756923', '0');
INSERT INTO `sys_module` VALUES ('10129', '门店管理', 'admin', 'shop', 'pickuppointlist', '0', '3', 'shop/pickuppointlist', '0', '0', '0', '', '', '', '1', '1522756923', '0');
INSERT INTO `sys_module` VALUES ('10130', '优惠券发放记录', 'admin', 'promotion', 'couponGrantLog', '180', '3', 'promotion/couponGrantLog', '0', '0', '0', '', '', '', '1', '1522756923', '0');
INSERT INTO `sys_module` VALUES ('10135', '订单详情', 'admin', 'Orderpresell', 'orderDetail', '10131', '3', 'presellOrder/orderDetail', '1', '0', '0', '', '', '', '1', '1522756925', '0');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shopid` int(11) NOT NULL COMMENT '店铺ID（单店版为0）',
  `notice_message` varchar(255) DEFAULT '' COMMENT '公告内容',
  `is_enable` tinyint(1) DEFAULT '0' COMMENT '是否启用（0：隐藏，1：显示）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='网站公告';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('7', '0', '', '0');

-- ----------------------------
-- Table structure for `sys_notice_records`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_records`;
CREATE TABLE `sys_notice_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `send_type` int(11) NOT NULL DEFAULT '0' COMMENT '发送类型 1 短信发送  2邮箱发送',
  `send_account` varchar(255) NOT NULL DEFAULT '' COMMENT '发送账号',
  `send_config` text NOT NULL COMMENT '发送的配置信息',
  `records_type` int(11) NOT NULL DEFAULT '0' COMMENT '记录类型  1充值成功 2确认订单 3付款成功 4下单成功 5订单发货 6商家提醒退款订单 7 商家提醒订单提醒 8充值成功',
  `notice_title` varchar(255) NOT NULL DEFAULT '' COMMENT '通知标题',
  `notice_context` text NOT NULL COMMENT '通知内容',
  `is_send` varchar(255) NOT NULL DEFAULT '0' COMMENT '是否发送  0未发送   1发送成功  2发送失败',
  `send_message` varchar(255) NOT NULL DEFAULT '' COMMENT '发送返回结果',
  `create_date` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `send_date` int(11) NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知记录';

-- ----------------------------
-- Records of sys_notice_records
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_notice_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_template`;
CREATE TABLE `sys_notice_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `template_type` varchar(50) NOT NULL DEFAULT '' COMMENT '模板类型',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `template_code` varchar(50) NOT NULL DEFAULT '' COMMENT '模板编号',
  `template_title` varchar(50) NOT NULL DEFAULT '' COMMENT '模板编号',
  `template_content` text NOT NULL COMMENT '模板名称',
  `sign_name` varchar(50) NOT NULL DEFAULT '' COMMENT '签名',
  `is_enable` int(11) NOT NULL DEFAULT '0' COMMENT '是否开启',
  `modify_time` int(11) DEFAULT '0' COMMENT '更新时间',
  `notify_type` varchar(255) NOT NULL DEFAULT '' COMMENT '通知人类型',
  `notification_mode` text NOT NULL COMMENT '通知方式',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='通知模版设置';

-- ----------------------------
-- Records of sys_notice_template
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_notice_template_item`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_template_item`;
CREATE TABLE `sys_notice_template_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) NOT NULL DEFAULT '' COMMENT '项名称',
  `show_name` varchar(50) NOT NULL DEFAULT '' COMMENT '显示名称',
  `replace_name` varchar(50) NOT NULL DEFAULT '' COMMENT '替换字段名字',
  `type_ids` varchar(255) NOT NULL COMMENT '关联type类型',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1820 COMMENT='通知模板项';

-- ----------------------------
-- Records of sys_notice_template_item
-- ----------------------------
INSERT INTO `sys_notice_template_item` VALUES ('1', '商场名称', '{商场名称}', 'shopname', 'after_register,recharge_success,create_order,pay_success,confirm_order,order_deliver,order_remind,refund_order', '0');
INSERT INTO `sys_notice_template_item` VALUES ('2', '用户名称', '{用户名称}', 'username', 'after_register,recharge_success,create_order,pay_success,confirm_order,order_deliver,order_remind,refund_order', '1');
INSERT INTO `sys_notice_template_item` VALUES ('5', '商品名称', '{商品名称}', 'goodsname', 'order_deliver', '4');
INSERT INTO `sys_notice_template_item` VALUES ('6', '商品规格', '{商品规格}', 'goodssku', 'order_deliver', '5');
INSERT INTO `sys_notice_template_item` VALUES ('7', '主订单号', '{主订单号}', 'orderno', 'create_order,pay_success,confirm_order,order_deliver,order_remind,refund_order', '6');
INSERT INTO `sys_notice_template_item` VALUES ('8', '订单金额', '{订单金额}', 'ordermoney', 'create_order,pay_success,confirm_order,order_deliver,order_remind,refund_order', '7');
INSERT INTO `sys_notice_template_item` VALUES ('9', '商品金额', '{商品金额}', 'goodsmoney', 'create_order,pay_success,order_deliver', '8');
INSERT INTO `sys_notice_template_item` VALUES ('10', '验证码', '{验证码}', 'number', 'register_validate,forgot_password,bind_mobile,bind_email', '9');
INSERT INTO `sys_notice_template_item` VALUES ('11', '充值金额', '{充值金额}', 'rechargemoney', 'recharge_success', '0');
INSERT INTO `sys_notice_template_item` VALUES ('12', '物流公司', '{物流公司}', 'expresscompany', 'order_deliver', '0');
INSERT INTO `sys_notice_template_item` VALUES ('13', '快递编号', '{快递编号}', 'expressno', 'order_deliver', '0');

-- ----------------------------
-- Table structure for `sys_notice_template_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_template_type`;
CREATE TABLE `sys_notice_template_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模板名称',
  `template_code` varchar(50) NOT NULL DEFAULT '' COMMENT '模板编号',
  `template_type` varchar(50) NOT NULL DEFAULT '' COMMENT '模板类型',
  `notify_type` varchar(255) NOT NULL DEFAULT '' COMMENT '通知人类型',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='通知模板类型';

-- ----------------------------
-- Records of sys_notice_template_type
-- ----------------------------
INSERT INTO `sys_notice_template_type` VALUES ('1', '注册成功', 'after_register', 'all', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('2', '注册验证', 'register_validate', 'all', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('3', '充值成功', 'recharge_success', 'all', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('4', '确认订单', 'confirm_order', 'all', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('5', '付款成功', 'pay_success', 'all', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('6', '下单成功', 'create_order', 'all', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('7', '订单发货', 'order_deliver', 'all', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('8', '找回密码', 'forgot_password', 'all', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('9', '手机绑定', 'bind_mobile', 'sms', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('10', '邮箱绑定', 'bind_email', 'email', 'user');
INSERT INTO `sys_notice_template_type` VALUES ('11', '退款订单', 'refund_order', 'all', 'business');
INSERT INTO `sys_notice_template_type` VALUES ('12', '订单提醒', 'order_remind', 'all', 'business');
INSERT INTO `sys_notice_template_type` VALUES ('13', '充值成功', 'recharge_success', 'all', 'business');

-- ----------------------------
-- Table structure for `sys_province`
-- ----------------------------
DROP TABLE IF EXISTS `sys_province`;
CREATE TABLE `sys_province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` tinyint(4) NOT NULL DEFAULT '0',
  `province_name` varchar(255) NOT NULL DEFAULT '',
  `sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`province_id`),
  KEY `IDX_g_province_ProvinceName` (`province_name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=481;

-- ----------------------------
-- Records of sys_province
-- ----------------------------
INSERT INTO `sys_province` VALUES ('1', '2', '北京市', '1');
INSERT INTO `sys_province` VALUES ('2', '2', '天津市', '0');
INSERT INTO `sys_province` VALUES ('3', '2', '河北省', '0');
INSERT INTO `sys_province` VALUES ('4', '2', '山西省', '0');
INSERT INTO `sys_province` VALUES ('5', '2', '内蒙古自治区', '0');
INSERT INTO `sys_province` VALUES ('6', '5', '辽宁省', '0');
INSERT INTO `sys_province` VALUES ('7', '5', '吉林省', '0');
INSERT INTO `sys_province` VALUES ('8', '5', '黑龙江省', '0');
INSERT INTO `sys_province` VALUES ('9', '1', '上海市', '0');
INSERT INTO `sys_province` VALUES ('10', '1', '江苏省', '0');
INSERT INTO `sys_province` VALUES ('11', '1', '浙江省', '0');
INSERT INTO `sys_province` VALUES ('12', '1', '安徽省', '0');
INSERT INTO `sys_province` VALUES ('13', '3', '福建省', '0');
INSERT INTO `sys_province` VALUES ('14', '1', '江西省', '0');
INSERT INTO `sys_province` VALUES ('15', '2', '山东省', '0');
INSERT INTO `sys_province` VALUES ('16', '4', '河南省', '0');
INSERT INTO `sys_province` VALUES ('17', '4', '湖北省', '0');
INSERT INTO `sys_province` VALUES ('18', '4', '湖南省', '0');
INSERT INTO `sys_province` VALUES ('19', '3', '广东省', '0');
INSERT INTO `sys_province` VALUES ('20', '3', '广西壮族自治区', '0');
INSERT INTO `sys_province` VALUES ('21', '3', '海南省', '0');
INSERT INTO `sys_province` VALUES ('22', '7', '重庆市', '0');
INSERT INTO `sys_province` VALUES ('23', '7', '四川省', '0');
INSERT INTO `sys_province` VALUES ('24', '7', '贵州省', '0');
INSERT INTO `sys_province` VALUES ('25', '7', '云南省', '0');
INSERT INTO `sys_province` VALUES ('26', '7', '西藏自治区', '0');
INSERT INTO `sys_province` VALUES ('27', '6', '陕西省', '0');
INSERT INTO `sys_province` VALUES ('28', '6', '甘肃省', '0');
INSERT INTO `sys_province` VALUES ('29', '6', '青海省', '0');
INSERT INTO `sys_province` VALUES ('30', '6', '宁夏回族自治区', '0');
INSERT INTO `sys_province` VALUES ('31', '6', '新疆维吾尔自治区', '0');
INSERT INTO `sys_province` VALUES ('32', '8', '香港特别行政区', '0');
INSERT INTO `sys_province` VALUES ('33', '8', '澳门特别行政区', '0');
INSERT INTO `sys_province` VALUES ('34', '8', '台湾省', '0');
INSERT INTO `sys_province` VALUES ('35', '1', '火星', '0');
INSERT INTO `sys_province` VALUES ('36', '1', '土星', '0');

-- ----------------------------
-- Table structure for `sys_shortcut_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_shortcut_menu`;
CREATE TABLE `sys_shortcut_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属用户',
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属店铺',
  `sort` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '模块id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='快捷菜单';

-- ----------------------------
-- Records of sys_shortcut_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_url_route`
-- ----------------------------
DROP TABLE IF EXISTS `sys_url_route`;
CREATE TABLE `sys_url_route` (
  `routeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule` varchar(255) NOT NULL DEFAULT '' COMMENT '伪静态路由规则',
  `route` varchar(255) NOT NULL DEFAULT '' COMMENT '路由地址',
  `is_open` int(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `is_system` int(1) NOT NULL DEFAULT '0' COMMENT '是否是系统默认',
  `route_model` tinyint(4) NOT NULL DEFAULT '1' COMMENT '配置伪静态使用的模块1.shop2.wap3.admin',
  `remark` text NOT NULL COMMENT '简介',
  PRIMARY KEY (`routeid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='系统伪静态路由';

-- ----------------------------
-- Records of sys_url_route
-- ----------------------------
INSERT INTO `sys_url_route` VALUES ('1', 'goods', 'shop/goods/goodsinfo', '1', '1', '1', '');
INSERT INTO `sys_url_route` VALUES ('2', 'list', 'shop/goods/goodslist', '1', '1', '1', '');
INSERT INTO `sys_url_route` VALUES ('3', 'brands', 'shop/goods/brandlist', '1', '1', '1', '');
INSERT INTO `sys_url_route` VALUES ('4', 'integralcenter', 'shop/goods/integralcenter', '1', '1', '1', '');
INSERT INTO `sys_url_route` VALUES ('5', 'discount', 'shop/index/discount', '1', '1', '1', '');
INSERT INTO `sys_url_route` VALUES ('7', 'membercenter', 'shop/member/index', '1', '0', '1', '');
INSERT INTO `sys_url_route` VALUES ('8', 'article', 'shop/cms/articleclassinfo', '1', '1', '1', '文章详情');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例信息',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_password` varchar(255) NOT NULL DEFAULT '' COMMENT '用户密码（MD5）',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态  用户状态默认为1',
  `user_headimg` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `is_system` int(1) NOT NULL DEFAULT '0' COMMENT '是否是系统后台用户 0 不是 1 是',
  `is_member` int(11) NOT NULL DEFAULT '0' COMMENT '是否是前台会员',
  `user_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `user_tel_bind` int(1) NOT NULL DEFAULT '0' COMMENT '手机号是否绑定 0 未绑定 1 绑定 ',
  `user_qq` varchar(255) DEFAULT '' COMMENT 'qq号',
  `qq_openid` varchar(255) NOT NULL DEFAULT '' COMMENT 'qq互联id',
  `qq_info` varchar(2000) NOT NULL DEFAULT '' COMMENT 'qq账号相关信息',
  `user_email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `user_email_bind` int(1) NOT NULL DEFAULT '0' COMMENT '是否邮箱绑定',
  `wx_openid` varchar(255) DEFAULT NULL COMMENT '微信用户openid',
  `wx_is_sub` int(1) NOT NULL DEFAULT '0' COMMENT '微信用户是否关注',
  `wx_info` varchar(2000) DEFAULT NULL COMMENT '微信用户信息',
  `other_info` varchar(255) DEFAULT NULL COMMENT '附加信息',
  `current_login_ip` varchar(255) DEFAULT NULL COMMENT '当前登录ip',
  `current_login_type` int(11) DEFAULT NULL COMMENT '当前登录的操作终端类型',
  `last_login_ip` varchar(255) DEFAULT NULL COMMENT '上次登录ip',
  `last_login_type` int(11) DEFAULT NULL COMMENT '上次登录的操作终端类型',
  `login_num` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `real_name` varchar(50) DEFAULT '' COMMENT '真实姓名',
  `sex` smallint(6) DEFAULT '0' COMMENT '性别 0保密 1男 2女',
  `location` varchar(255) DEFAULT '' COMMENT '所在地',
  `nick_name` varchar(50) DEFAULT '牛酷用户' COMMENT '用户昵称',
  `wx_unionid` varchar(255) NOT NULL DEFAULT '' COMMENT '微信unionid',
  `qrcode_template_id` int(11) NOT NULL DEFAULT '0' COMMENT '模板id',
  `wx_sub_time` int(11) DEFAULT '0' COMMENT '微信用户关注时间',
  `wx_notsub_time` int(11) DEFAULT '0' COMMENT '微信用户取消关注时间',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  `current_login_time` int(11) DEFAULT '0' COMMENT '当前登录时间',
  `last_login_time` int(11) DEFAULT '0' COMMENT '上次登录时间',
  `birthday` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `IDX_sys_user_user_email` (`user_email`),
  KEY `IDX_sys_user_user_name` (`user_name`),
  KEY `IDX_sys_user_user_password` (`user_password`),
  KEY `IDX_sys_user_user_tel` (`user_tel`),
  KEY `IDX_sys_user_wx_openid` (`wx_openid`),
  KEY `IDX_sys_user_wx_unionid` (`wx_unionid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=372 COMMENT='系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('2', '0', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '', '1', '1', '', '0', '', '', '', '', '0', null, '0', null, null, '0.0.0.0', '1', '0.0.0.0', '1', '18', '', '0', '', 'admin', '', '0', '0', '0', '2018', '1544786032', '1531294040', '0');
INSERT INTO `sys_user` VALUES ('3', '0', 'gygq', 'e10adc3949ba59abbe56e057f20f883e', '1', 'upload/avator/1530841301.jpg', '0', '1', '18356854587', '0', '9356232312', '', '', '9632323232@qq.com', '0', '', '0', '', '', '0.0.0.0', '1', '0.0.0.0', '1', '4', '李一名', '1', '杭州', '还有一人', '', '0', '0', '0', '1530783659', '1530949427', '1530934245', '1531929600');
INSERT INTO `sys_user` VALUES ('4', '0', 'mamw', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '1', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '0.0.0.0', '1', '', '0', '1', '', '0', '', 'mamw', '', '0', '0', '0', '1530843646', '1530843745', '0', '0');
INSERT INTO `sys_user` VALUES ('5', '0', 'cheshi123', '9725f0e49b1b5df368197094d685fcaf', '1', 'upload/avator/1530857775.jpg', '0', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '0.0.0.0', '1', '0.0.0.0', '1', '2', '', '0', '', 'cheshi123', '', '0', '0', '0', '1530857706', '1530857707', '1530857706', '0');
INSERT INTO `sys_user` VALUES ('6', '0', '路遥', 'e10adc3949ba59abbe56e057f20f883e', '1', 'upload/avator/1531276807.jpg', '0', '1', '18888888888', '0', '', '', '', '888888888@qq.com', '0', '', '0', '', '', '0.0.0.0', '1', '', '0', '1', '王卫国', '1', '陕西榆林市清涧县一个贫困的农民家庭', '123456', '', '0', '0', '0', '1531274896', '1531276765', '1531274896', '-635068800');
INSERT INTO `sys_user` VALUES ('7', '0', 'cz', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '1', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '0.0.0.0', '1', '', '0', '1', '', '0', '', 'cz', '', '0', '0', '0', '1531276263', '1531279436', '0', '0');

-- ----------------------------
-- Table structure for `sys_user_admin`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_admin`;
CREATE TABLE `sys_user_admin` (
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'user用户ID',
  `admin_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户姓名',
  `group_id_array` int(11) NOT NULL DEFAULT '0' COMMENT '系统用户组',
  `is_admin` int(1) NOT NULL DEFAULT '0' COMMENT '是否是系统管理员组',
  `admin_status` int(11) DEFAULT '1' COMMENT '状态 默认为1',
  `desc` text COMMENT '附加信息',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=910 COMMENT='后台管理员表';

-- ----------------------------
-- Records of sys_user_admin
-- ----------------------------
INSERT INTO `sys_user_admin` VALUES ('2', '管理员', '2', '1', '1', null);
INSERT INTO `sys_user_admin` VALUES ('4', 'mamw', '3', '0', '1', 'dd');
INSERT INTO `sys_user_admin` VALUES ('7', 'cz', '4', '0', '1', '');

-- ----------------------------
-- Table structure for `sys_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group`;
CREATE TABLE `sys_user_group` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '1' COMMENT '实例ID',
  `group_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户组名称',
  `group_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户组状态',
  `is_system` int(1) NOT NULL DEFAULT '0' COMMENT '是否是系统用户组',
  `module_id_array` text NOT NULL COMMENT '系统模块ID组，用，隔开',
  `desc` text COMMENT '描述',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=963 COMMENT='系统用户组表';

-- ----------------------------
-- Records of sys_user_group
-- ----------------------------
INSERT INTO `sys_user_group` VALUES ('2', '0', '管理员组', '1', '1', '120,121,122,123,126,127,128,129,133,137,139,144,145,149,151,169,170,171,172,176,179,180,184,185,186,187,189,190,191,192,194,195,196,197,198,199,200,201,202,203,210,218,221,334,335,336,339,340,341,342,343,358,359,360,361,381,382,383,387,388,389,390,392,394,395,403,405,409,418,419,420,421,422,423,424,425,427,430,431,432,433,434,436,437,439,440,441,442,443,444,445,446,447,450,451,452,454,455,456,457,459,460,461,462,463,469,471,472,474,477,478,479,480,481,482,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,501,502,503,504,506,509,510,512,513,518,519,520,521,522,523,524,525,526,527,528,529,530,10001,10002,10003,10004,10005,10006,10007,10009,10010,10011,10012,10013,10014,10015,10016,10017,10018,10019,10021,10023,10024,10075,10077,10078,10079,10080,10081,10082,10083,10084,10085,10086,10087,10096,10097,10101,10103,10104,10105,10106,10113,10119,10120,10121,10122,10123,10124,10125,10126,10127,10128,10129,10130,10135', null, '2018', '0');
INSERT INTO `sys_user_group` VALUES ('3', '0', '打理员', '1', '0', '149,151,419,421,420,422,423,424,425,171,210,172,479,481,480,10001,10002,10003,482,484,485,334,478,139,169,184,185,190,194,10122,10127,10128,179,180,10130,186,187,446,195,10106,196,197,198,199,200,201,202,203,469,10103,137,145,10113,10119,497,498,488,490,489,504,503,509,510', '', '1530843540', '0');
INSERT INTO `sys_user_group` VALUES ('4', '0', '操作组', '1', '0', '149,151,419,421,420,422,423,424,425,171,210,172,479,481,480,10001,10002,10003,482,484,485,334,478,139,169', '', '1531276231', '0');

-- ----------------------------
-- Table structure for `sys_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_log`;
CREATE TABLE `sys_user_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '操作用户ID',
  `user_name` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名称',
  `is_system` int(11) NOT NULL DEFAULT '1' COMMENT '是否是后台操作',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '对应url',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '操作控制器',
  `method` varchar(255) NOT NULL DEFAULT '' COMMENT '操作方案',
  `data` text COMMENT '传输数据',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=82 COMMENT='用户操作日志';

-- ----------------------------
-- Records of sys_user_log
-- ----------------------------
INSERT INTO `sys_user_log` VALUES ('1', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530780675');
INSERT INTO `sys_user_log` VALUES ('2', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/addgoodscategory', '商品', '添加商品分类', '添加商品分类:男装', '0.0.0.0', '1530781158');
INSERT INTO `sys_user_log` VALUES ('3', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/addgoodsbrand', '商品', '添加商品品牌', '添加商品品牌:阿迪达斯', '0.0.0.0', '1530781194');
INSERT INTO `sys_user_log` VALUES ('4', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/addgoodscategory', '商品', '添加商品分类', '添加商品分类:短袖T恤', '0.0.0.0', '1530781826');
INSERT INTO `sys_user_log` VALUES ('5', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/addgoodscategory', '商品', '添加商品分类', '添加商品分类:五分马裤', '0.0.0.0', '1530781875');
INSERT INTO `sys_user_log` VALUES ('6', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '添加商品', '添加商品:夏季中国风棉麻休闲短裤男加肥加大码透气中裤韩版裤子潮流五分裤', '0.0.0.0', '1530782054');
INSERT INTO `sys_user_log` VALUES ('7', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '添加商品', '添加商品:夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '0.0.0.0', '1530782319');
INSERT INTO `sys_user_log` VALUES ('8', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '添加商品', '添加商品:2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生', '0.0.0.0', '1530783051');
INSERT INTO `sys_user_log` VALUES ('9', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:夏季男士短袖t恤韩版宽松5五分袖男生七分袖潮流衣服半袖体恤2018', '0.0.0.0', '1530783097');
INSERT INTO `sys_user_log` VALUES ('10', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '添加商品', '添加商品:2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生SS', '0.0.0.0', '1530783240');
INSERT INTO `sys_user_log` VALUES ('11', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addcoupontype', '营销', '添加优惠券类型', '添加优惠券类型:分分钟称你', '0.0.0.0', '1530783322');
INSERT INTO `sys_user_log` VALUES ('12', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/pointconfig', '营销', '积分设置', '积分设置：转化比率100,启用设置：1', '0.0.0.0', '1530783369');
INSERT INTO `sys_user_log` VALUES ('13', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addgift', '营销', '赠品管理', '添加赠品：罗汉果一个', '0.0.0.0', '1530783410');
INSERT INTO `sys_user_log` VALUES ('14', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addmansong', '营销', '满减送管理', '添加满减送：小心你后面', '0.0.0.0', '1530783468');
INSERT INTO `sys_user_log` VALUES ('15', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/adddiscount', '营销', '限时折扣', '添加限时折扣：有种你就来', '0.0.0.0', '1530783500');
INSERT INTO `sys_user_log` VALUES ('16', '2', 'admin', '1', 'http://192.168.2.123/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '192.168.2.123', '1530837260');
INSERT INTO `sys_user_log` VALUES ('17', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530837344');
INSERT INTO `sys_user_log` VALUES ('18', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:2018夏季新款韩版潮流外套宽松薄款防晒衣服男连帽衬衫青少年学生SS', '0.0.0.0', '1530837411');
INSERT INTO `sys_user_log` VALUES ('19', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:夏季中国风棉麻休闲短裤男加肥加大码透气中裤韩版裤子潮流五分裤', '0.0.0.0', '1530837510');
INSERT INTO `sys_user_log` VALUES ('20', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:连帽衬衫青少年学生', '0.0.0.0', '1530837572');
INSERT INTO `sys_user_log` VALUES ('21', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/auth/adduser', '用户', '添加用户', '添加用户：mamw', '0.0.0.0', '1530843646');
INSERT INTO `sys_user_log` VALUES ('22', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530843691');
INSERT INTO `sys_user_log` VALUES ('23', '4', 'mamw', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530843745');
INSERT INTO `sys_user_log` VALUES ('24', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530843770');
INSERT INTO `sys_user_log` VALUES ('25', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530855441');
INSERT INTO `sys_user_log` VALUES ('26', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530857655');
INSERT INTO `sys_user_log` VALUES ('27', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530864186');
INSERT INTO `sys_user_log` VALUES ('28', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530923730');
INSERT INTO `sys_user_log` VALUES ('29', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530934079');
INSERT INTO `sys_user_log` VALUES ('30', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/addgoodscategory', '商品', '添加商品分类', '添加商品分类:毛绒', '0.0.0.0', '1530934418');
INSERT INTO `sys_user_log` VALUES ('31', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '添加商品', '添加商品:西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服', '0.0.0.0', '1530940421');
INSERT INTO `sys_user_log` VALUES ('32', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1530941584');
INSERT INTO `sys_user_log` VALUES ('33', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addcoupontype', '营销', '添加优惠券类型', '添加优惠券类型:十一秒', '0.0.0.0', '1530942464');
INSERT INTO `sys_user_log` VALUES ('34', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:连帽衬衫青少年学生', '0.0.0.0', '1530942482');
INSERT INTO `sys_user_log` VALUES ('35', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:111西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服', '0.0.0.0', '1530942497');
INSERT INTO `sys_user_log` VALUES ('36', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服', '0.0.0.0', '1530942509');
INSERT INTO `sys_user_log` VALUES ('37', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:111西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服', '0.0.0.0', '1530949280');
INSERT INTO `sys_user_log` VALUES ('38', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1531183025');
INSERT INTO `sys_user_log` VALUES ('39', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1531269865');
INSERT INTO `sys_user_log` VALUES ('40', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1531272377');
INSERT INTO `sys_user_log` VALUES ('41', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/addgoodsbrand', '商品', '添加商品品牌', '添加商品品牌:梦比优斯', '0.0.0.0', '1531273052');
INSERT INTO `sys_user_log` VALUES ('42', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/addgoodscategory', '商品', '添加商品分类', '添加商品分类:书籍', '0.0.0.0', '1531273962');
INSERT INTO `sys_user_log` VALUES ('43', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '添加商品', '添加商品:平凡的世界', '0.0.0.0', '1531274264');
INSERT INTO `sys_user_log` VALUES ('44', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '添加商品', '添加商品:人生', '0.0.0.0', '1531274452');
INSERT INTO `sys_user_log` VALUES ('45', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addcoupontype', '营销', '添加优惠券类型', '添加优惠券类型:好书赠送识书人', '0.0.0.0', '1531274537');
INSERT INTO `sys_user_log` VALUES ('46', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/pointconfig', '营销', '积分设置', '积分设置：转化比率99.00,启用设置：1', '0.0.0.0', '1531274557');
INSERT INTO `sys_user_log` VALUES ('47', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addgift', '营销', '赠品管理', '添加赠品：送书', '0.0.0.0', '1531274599');
INSERT INTO `sys_user_log` VALUES ('48', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addmansong', '营销', '满减送管理', '添加满减送：暑期阅读会', '0.0.0.0', '1531274690');
INSERT INTO `sys_user_log` VALUES ('49', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/adddiscount', '营销', '限时折扣', '添加限时折扣：关爱老会员', '0.0.0.0', '1531274727');
INSERT INTO `sys_user_log` VALUES ('50', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/auth/adduser', '用户', '添加用户', '添加用户：cz', '0.0.0.0', '1531276263');
INSERT INTO `sys_user_log` VALUES ('51', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:平凡的世界', '0.0.0.0', '1531276703');
INSERT INTO `sys_user_log` VALUES ('52', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addmansong', '营销', '满减送管理', '添加满减送：送书', '0.0.0.0', '1531278063');
INSERT INTO `sys_user_log` VALUES ('53', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:人生', '0.0.0.0', '1531278789');
INSERT INTO `sys_user_log` VALUES ('54', '7', 'cz', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1531279436');
INSERT INTO `sys_user_log` VALUES ('55', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1531279502');
INSERT INTO `sys_user_log` VALUES ('56', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addmansong', '营销', '满减送管理', '添加满减送：嵩友会', '0.0.0.0', '1531286259');
INSERT INTO `sys_user_log` VALUES ('57', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addmansong', '营销', '满减送管理', '添加满减送：歌友会', '0.0.0.0', '1531286409');
INSERT INTO `sys_user_log` VALUES ('58', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/promotion/addmansong', '营销', '满减送管理', '添加满减送：纳思书院开业', '0.0.0.0', '1531286572');
INSERT INTO `sys_user_log` VALUES ('59', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1531293682');
INSERT INTO `sys_user_log` VALUES ('60', '2', 'admin', '1', 'http://localhost/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1531294040');
INSERT INTO `sys_user_log` VALUES ('61', '2', 'admin', '1', 'http://localhost/shopping5/index.php?s=/admin/goods/copygoods', '商品', '添加商品', '添加商品:111西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服-副本', '127.0.0.1', '1537336033');
INSERT INTO `sys_user_log` VALUES ('62', '2', 'admin', '1', 'http://localhost/shopping5/index.php?s=/admin/goods/copygoods', '商品', '添加商品', '添加商品:111西服套装男士三件套商务正装职业小西装修身夏季伴郎新郎结婚礼服-副本', '127.0.0.1', '1537336058');
INSERT INTO `sys_user_log` VALUES ('63', '2', 'admin', '1', 'http://localhost/shopping2/shopping9/index.php?s=/admin/login/login', '用户', '用户登录', '', '0.0.0.0', '1544786032');

-- ----------------------------
-- Table structure for `sys_version_devolution`
-- ----------------------------
DROP TABLE IF EXISTS `sys_version_devolution`;
CREATE TABLE `sys_version_devolution` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `devolution_username` varchar(255) NOT NULL DEFAULT '' COMMENT '授权账户',
  `devolution_password` varchar(255) NOT NULL DEFAULT '' COMMENT '授权密码',
  `create_date` int(11) DEFAULT '0' COMMENT '更新时间',
  `devolution_code` varchar(255) NOT NULL DEFAULT '' COMMENT '授权码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='用户授权信息';

-- ----------------------------
-- Records of sys_version_devolution
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_version_patch`
-- ----------------------------
DROP TABLE IF EXISTS `sys_version_patch`;
CREATE TABLE `sys_version_patch` (
  `patch_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `patch_type` int(11) NOT NULL DEFAULT '1' COMMENT '补丁类型  1. B2C单用户商城 2.B2C 单用户分销商城 3 B2B2C多用户商城',
  `patch_type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '补丁类型名称',
  `patch_release` varchar(50) NOT NULL DEFAULT '' COMMENT '补丁编号',
  `patch_name` varchar(255) NOT NULL DEFAULT '' COMMENT '补丁标题',
  `patch_no` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '版本号',
  `patch_file_name` varchar(50) NOT NULL DEFAULT '' COMMENT '补丁文件名称',
  `patch_log` text NOT NULL COMMENT '版本补丁更新日志',
  `patch_file_size` varchar(255) NOT NULL DEFAULT '' COMMENT '补丁文件大小',
  `is_up` int(11) NOT NULL DEFAULT '2' COMMENT '是否升级  1代表已升级  0未升级 2全部',
  `modify_date` int(11) DEFAULT '0' COMMENT '更新时间',
  `patch_download_url` varchar(255) NOT NULL DEFAULT '' COMMENT '更新地址',
  `is_new_update` int(11) NOT NULL DEFAULT '0' COMMENT '是否为最新的更新版本',
  `from_version` varchar(255) NOT NULL DEFAULT '' COMMENT '在多少版本之上升级',
  PRIMARY KEY (`patch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='版本补丁管理';

-- ----------------------------
-- Records of sys_version_patch
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_version_update_records`
-- ----------------------------
DROP TABLE IF EXISTS `sys_version_update_records`;
CREATE TABLE `sys_version_update_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `auth_no` varchar(255) NOT NULL DEFAULT '' COMMENT '授权码',
  `update_type` int(11) NOT NULL DEFAULT '1' COMMENT '更新方式1. 线下2.在线',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '当前版本',
  `update_version` varchar(255) NOT NULL DEFAULT '' COMMENT '升级版本',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `version_type` varchar(255) NOT NULL DEFAULT 'b2c' COMMENT '升级版本',
  `remark` text NOT NULL COMMENT '更新说明',
  `is_complete` int(11) NOT NULL DEFAULT '0' COMMENT '是否更新完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='版本升级记录表';

-- ----------------------------
-- Records of sys_version_update_records
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_wap_custom_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_wap_custom_template`;
CREATE TABLE `sys_wap_custom_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `template_name` varchar(250) DEFAULT '' COMMENT '自定义模板名称（暂时预留）',
  `template_data` longtext COMMENT '模板数据（JSON格式）',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间戳',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间戳',
  `is_enable` int(11) NOT NULL DEFAULT '0' COMMENT '是否启用 0 不启用 1 启用',
  `is_default` int(11) DEFAULT '0' COMMENT '是否为默认模板 0 不是 1 是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机端自定义模板';

-- ----------------------------
-- Records of sys_wap_custom_template
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_website`
-- ----------------------------
DROP TABLE IF EXISTS `sys_website`;
CREATE TABLE `sys_website` (
  `website_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '网站标题',
  `logo` varchar(255) NOT NULL DEFAULT '' COMMENT '网站logo',
  `web_desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '网站描述',
  `key_words` varchar(255) NOT NULL DEFAULT '' COMMENT '网站关键字',
  `web_icp` varchar(255) NOT NULL DEFAULT '' COMMENT '网站备案号',
  `style_id_pc` int(10) NOT NULL DEFAULT '2' COMMENT '前台网站风格（1：热情洋溢模板，2：蓝色清爽版）',
  `web_address` varchar(255) NOT NULL DEFAULT '' COMMENT '网站联系地址',
  `web_qrcode` varchar(255) NOT NULL DEFAULT '' COMMENT '网站公众号二维码',
  `web_url` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺网址',
  `web_email` varchar(255) NOT NULL DEFAULT '' COMMENT '网站邮箱',
  `web_phone` varchar(255) NOT NULL DEFAULT '' COMMENT '网站联系方式',
  `web_qq` varchar(255) NOT NULL DEFAULT '' COMMENT '网站qq号',
  `web_weixin` varchar(255) NOT NULL DEFAULT '' COMMENT '网站微信号',
  `web_status` int(10) NOT NULL DEFAULT '1' COMMENT '网站运营状态1.开启 2.关闭 ',
  `third_count` text NOT NULL COMMENT '第三方统计',
  `close_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '站点关闭原因',
  `wap_status` int(10) NOT NULL DEFAULT '1' COMMENT '手机端运营状态 1.开启2.关闭',
  `style_id_admin` int(10) DEFAULT '4' COMMENT '后台网站风格（3：旧模板，4：新模板）',
  `create_time` int(11) DEFAULT '0' COMMENT '网站创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '网站修改时间',
  `url_type` int(11) NOT NULL DEFAULT '0' COMMENT '网站访问模式',
  `web_popup_title` varchar(50) NOT NULL DEFAULT '' COMMENT '网站弹出框标题',
  `web_wechat_share_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '微信分享logo',
  `web_gov_record` varchar(60) NOT NULL DEFAULT '' COMMENT '网站公安备案信息',
  `web_gov_record_url` varchar(255) NOT NULL DEFAULT '' COMMENT '网站公安备案跳转链接地址',
  `is_show_follow` smallint(1) NOT NULL DEFAULT '1' COMMENT 'wap端是否显示顶部关注',
  PRIMARY KEY (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='网站信息表';

-- ----------------------------
-- Records of sys_website
-- ----------------------------
INSERT INTO `sys_website` VALUES ('1', 'Niushop开源商城', 'public/static/images/default_img_url/logo.png', '开源商城', '开源商城', '', '1', '山西省太原市', 'upload/common/1530840541.jpg', 'http://www.niushop.com.cn/', '', '400-886-7993', '88888888', '', '1', '', '对不起，牛酷商城维护中，大家敬请期待...', '1', '4', '1477452112', '1531276045', '0', '商城', 'upload/common/1530840541.jpg', '', '', '1');

-- ----------------------------
-- Table structure for `sys_web_style`
-- ----------------------------
DROP TABLE IF EXISTS `sys_web_style`;
CREATE TABLE `sys_web_style` (
  `style_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(50) NOT NULL DEFAULT '' COMMENT '样式名称',
  `style_path` varchar(255) NOT NULL DEFAULT '' COMMENT '样式路径',
  `stye_img` varchar(255) NOT NULL DEFAULT '' COMMENT '样式图片路径',
  `desc` text COMMENT '备注',
  `type` int(11) DEFAULT '1' COMMENT '1：前台样式，2：后台样式',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`style_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='网站前台样式表';

-- ----------------------------
-- Records of sys_web_style
-- ----------------------------
INSERT INTO `sys_web_style` VALUES ('1', '热情洋溢', 'default', '', null, '1', '0', '0');
INSERT INTO `sys_web_style` VALUES ('2', '蓝色清爽', 'blue', '', null, '1', '0', '0');
INSERT INTO `sys_web_style` VALUES ('4', '简约版', 'adminblue', '', '', '2', '1500608775', '1500608775');

-- ----------------------------
-- Table structure for `sys_weixin_auth`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_auth`;
CREATE TABLE `sys_weixin_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `authorizer_appid` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的appid  授权之后不用刷新',
  `authorizer_refresh_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺授权之后的刷新token，每月刷新',
  `authorizer_access_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的公众号token，只有2小时',
  `func_info` varchar(1000) NOT NULL DEFAULT '' COMMENT '授权项目',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号昵称',
  `head_img` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号头像url',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号原始账号',
  `alias` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号原始名称',
  `qrcode_url` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号二维码url',
  `auth_time` int(11) DEFAULT '0' COMMENT '授权时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='店铺(实例)微信公众账号授权';

-- ----------------------------
-- Records of sys_weixin_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_default_replay`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_default_replay`;
CREATE TABLE `sys_weixin_default_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关注时回复';

-- ----------------------------
-- Records of sys_weixin_default_replay
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_fans`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_fans`;
CREATE TABLE `sys_weixin_fans` (
  `fans_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '粉丝ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员编号ID',
  `source_uid` int(11) NOT NULL DEFAULT '0' COMMENT '推广人uid',
  `instance_id` int(11) NOT NULL COMMENT '店铺ID',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `nickname_decode` varchar(255) DEFAULT '',
  `headimgurl` varchar(500) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` smallint(6) NOT NULL DEFAULT '1' COMMENT '性别',
  `language` varchar(20) NOT NULL DEFAULT '' COMMENT '用户语言',
  `country` varchar(60) NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `district` varchar(255) NOT NULL DEFAULT '' COMMENT '行政区/县',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '用户的标识，对当前公众号唯一     用户的唯一身份ID',
  `unionid` varchar(255) NOT NULL DEFAULT '' COMMENT '粉丝unionid',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝所在组id',
  `is_subscribe` bigint(1) NOT NULL DEFAULT '1' COMMENT '是否订阅',
  `memo` varchar(255) NOT NULL COMMENT '备注',
  `subscribe_date` int(11) DEFAULT '0' COMMENT '订阅时间',
  `unsubscribe_date` int(11) DEFAULT '0' COMMENT '解订阅时间',
  `update_date` int(11) DEFAULT '0' COMMENT '粉丝信息最后更新时间',
  PRIMARY KEY (`fans_id`),
  KEY `IDX_sys_weixin_fans_openid` (`openid`),
  KEY `IDX_sys_weixin_fans_unionid` (`unionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='微信公众号获取粉丝列表';

-- ----------------------------
-- Records of sys_weixin_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_follow_replay`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_follow_replay`;
CREATE TABLE `sys_weixin_follow_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关注时回复';

-- ----------------------------
-- Records of sys_weixin_follow_replay
-- ----------------------------
INSERT INTO `sys_weixin_follow_replay` VALUES ('1', '0', '1', '0', '1531275159', '0');

-- ----------------------------
-- Table structure for `sys_weixin_functions_button`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_functions_button`;
CREATE TABLE `sys_weixin_functions_button` (
  `button_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `instance_id` int(11) NOT NULL COMMENT '实例',
  `button_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块名',
  `keyname` varchar(20) NOT NULL DEFAULT '' COMMENT '触发关键词',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '触发网址',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '触发次数',
  `is_enabled` int(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `is_system` int(1) DEFAULT '0',
  `orders` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`button_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='微信功能按钮';

-- ----------------------------
-- Records of sys_weixin_functions_button
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_instance_msg`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_instance_msg`;
CREATE TABLE `sys_weixin_instance_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL COMMENT '店铺id（单店版为0）',
  `template_no` varchar(55) NOT NULL COMMENT '模版编号',
  `template_id` varbinary(55) DEFAULT NULL COMMENT '微信模板消息的ID',
  `title` varchar(100) NOT NULL COMMENT '模版标题',
  `is_enable` bit(1) DEFAULT b'0' COMMENT '是否启用',
  `headtext` varchar(255) NOT NULL COMMENT '头部文字',
  `bottomtext` varchar(255) NOT NULL COMMENT '底部文字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='微信实例消息';

-- ----------------------------
-- Records of sys_weixin_instance_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_key_replay`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_key_replay`;
CREATE TABLE `sys_weixin_key_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `key` varchar(255) NOT NULL COMMENT '关键词',
  `match_type` tinyint(4) NOT NULL COMMENT '匹配类型1模糊匹配2全部匹配',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关键词回复';

-- ----------------------------
-- Records of sys_weixin_key_replay
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_media`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_media`;
CREATE TABLE `sys_weixin_media` (
  `media_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例id店铺id',
  `type` varchar(255) NOT NULL DEFAULT '1' COMMENT '类型1文本(项表无内容) 2单图文 3多图文',
  `sort` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`media_id`),
  UNIQUE KEY `id` (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170;

-- ----------------------------
-- Records of sys_weixin_media
-- ----------------------------
INSERT INTO `sys_weixin_media` VALUES ('1', '消息素材', '0', '1', '0', '1530837983', '0');
INSERT INTO `sys_weixin_media` VALUES ('2', '东方资产报告:房价若下降20-30%，或冲击银行风险底线', '0', '2', '0', '1530838145', '0');
INSERT INTO `sys_weixin_media` VALUES ('3', '地', '0', '1', '0', '1531275170', '0');
INSERT INTO `sys_weixin_media` VALUES ('4', '路遥', '0', '2', '0', '1531275233', '0');

-- ----------------------------
-- Table structure for `sys_weixin_media_item`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_media_item`;
CREATE TABLE `sys_weixin_media_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `media_id` int(11) NOT NULL COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(50) NOT NULL COMMENT '作者',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `show_cover_pic` tinyint(4) NOT NULL DEFAULT '1' COMMENT '封面图片显示在正文中',
  `summary` text,
  `content` text NOT NULL COMMENT '正文',
  `content_source_url` varchar(200) NOT NULL DEFAULT '' COMMENT '图文消息的原文地址，即点击“阅读原文”后的URL',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '阅读次数',
  PRIMARY KEY (`id`),
  KEY `id` (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=712;

-- ----------------------------
-- Records of sys_weixin_media_item
-- ----------------------------
INSERT INTO `sys_weixin_media_item` VALUES ('1', '1', '消息素材', '', '', '0', '', '', '', '0', '0');
INSERT INTO `sys_weixin_media_item` VALUES ('2', '2', '东方资产报告:房价若下降20-30%，或冲击银行风险底线', '小明', 'upload/common/1530838069.jpg', '1', '报告显示，32.8%的金融从业受访者认为2018年银行不良资产规模增长最显著的行业为制造业，30.3%的受访者认为是房地产业。而在受访的经济学家中，有64%认为房地产业的不良资产规模将会显著增长，其次才是制造业。', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; text-indent: 2em;\">7月4日，四大资产管理公司之一的中国东方资产管理股份有限公司(简称&quot;东方资产&quot;)发布《中国金融不良资产市场调查报告(2018)》(下称&quot;报告&quot;)。报告显示，房地产类信贷资产质量或将下滑，若房价下降20-30%，将会使得银行面临显著压力。</span></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">报告显示，32.8%的金融从业受访者认为2018年银行不良资产规模增长最显著的行业为制造业，30.3%的受访者认为是房地产业。而在受访的经济学家中，有64%认为房地产业的不良资产规模将会显著增长，其次才是制造业。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">房地产领域的不良资产值得关注。报告称，自2017年北京&quot;3·17&quot;严格调控开始，全国超百城发布了近250次楼市调控政策，有效遏制了热点城市的投机需求。党的十九大报告提出:&quot;坚持房子是用来住的、不是用来炒的定位，加快建立多主体供给、多渠道保障、租购并举的住房制度，让全体人民住有所居。&quot;在这一主基调下，预计2018年我国房地产市场会继续承受较大压力，涉房不良贷款规模也可能会增加。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">中国的银行业能扛得住房价多大程度的下跌呢?</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">报告显示，若房地产市场在密集政策下反应过度，比如房价下跌20%-30%，或者市场预计房地产税政策出台可能造成过大冲击，势必会对整体产业链条产生影响，届时包括建筑业、房地产业在内的行业风险将连环爆发，强力冲击银行的风险底线。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">报告中采访的大部分经济学家认为，2018年一二三线城市房价稳中有降，下跌的可能性高于上涨的可能性，其中三线城市已经感受到了房地产市场需求不足的压力。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">报告显示，2017年三四线城市房地产市场价格上涨过高，房地产企业拿地价格较高，房地产抵押贷款利率提升。2018年三四线城市房价可能发生调整，中小规模房地产企业的风险可能会凸显。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">一方面，房地产企业融资难度加大，融资利率水平不断提高。房地产企业相关债券、信托、公司债、中期票据、私募资管计划和资产证券计划等多种融资渠道收窄。另一方面，三四线城市的小型房地产商受到资金压力和需求影响回落，2018年之后的经营压力可能会进一步加大，而大型房地产企业借助于多元化的融资渠道和融资成本优势，有望进一步壮大。综合来看，具有中小区域型、三四线城市项目占比过高或杠杆过高等监管关注特征的房地产企业融资渠道预计更加受限，全国性大型房地产企业对区域性房地产企业的兼并重组将成为行业常态。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在2017年人民币贷款余额中，房地产贷款、地产开发贷款、房产开发贷款、个人购房贷款、保障性住房开发贷款等房地产类贷款占据了较大比重，第一季度至第三季度分别高达55.8%、56.3%和57.2%。尽管房地产调控措施实施之后，流入房地产市场的新增贷款有所减少，但由于基数庞大，报告预计，2018年房地产类贷款比重仍可能在56%以上。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; text-indent: 2em; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; white-space: normal; background-color: rgb(255, 255, 255);\">在这一形势下，银行贷款质量与房地产市场运行情况密切相关。自2013年以来，房地产业的不良贷款规模增长较快，尤其是2015年，幅度达73%，报告预计2018年增幅不低于20%。尽管房地产行业的不良贷款率总体上相对较低，但一直处于上升态势，随着调控政策持续发力，房地产市场的调整幅度将会不断增加，报告预计2018年不良贷款率会达到1.5%左右，向整体平均水平趋近。</p><p><br/></p>', '', '0', '2');
INSERT INTO `sys_weixin_media_item` VALUES ('3', '3', '地', '', '', '0', '', '', '', '0', '0');
INSERT INTO `sys_weixin_media_item` VALUES ('4', '4', '路遥', '平凡的世界', 'upload/common/1531275207.jpg', '1', '《平凡的世界》是中国著名作家路遥创作的一部百万字的长篇巨著；这是一部全景式地表现中国当代城乡社会生活的长篇小说；全书共三部；作者在中国70年代中期到80年代中期近十年间的广阔背景上，通过复杂的矛盾纠葛，以孙少安和孙少平两兄弟为中心，刻画了当时社会各阶层众多普通人的形象；劳动与爱情、挫折与追求、痛苦与欢乐、日常生活与巨大社会冲突纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路；读来令人荡气回肠，不忍释卷；被誉为“茅盾文学奖皇冠上的明珠，激励千万青年的不朽经典”', '<p><span style=\"color: rgb(71, 54, 36); font-family: 楷体_GB2312, 仿宋_GB2312, 宋体; font-size: 20px; font-weight: bold; background-color: rgb(66, 47, 27);\">《平凡的世界》是中国著名作家路遥创作的一部百万字的长篇巨著；这是一部全景式地表现中国当代城乡社会生活的长篇小说；全书共三部；作者在中国70年代中期到80年代中期近十年间的广阔背景上，通过复杂的矛盾纠葛，以孙少安和孙少平两兄弟为中心，刻画了当时社会各阶层众多普通人的形象；劳动与爱情、挫折与追求、痛苦与欢乐、日常生活与巨大社会冲突纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路；读来令人荡气回肠，不忍释卷；被誉为“茅盾文学奖皇冠上的明珠，激励千万青年的不朽经典”</span></p>', '', '0', '0');

-- ----------------------------
-- Table structure for `sys_weixin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_menu`;
CREATE TABLE `sys_weixin_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `menu_name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `ico` varchar(32) NOT NULL DEFAULT '' COMMENT '菜图标单',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单',
  `menu_event_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1普通url 2 图文素材 3 功能',
  `media_id` int(11) NOT NULL DEFAULT '0' COMMENT '图文消息ID',
  `menu_event_url` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单url',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '触发数',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_date` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`menu_id`),
  KEY `IDX_biz_shop_menu_orders` (`sort`),
  KEY `IDX_biz_shop_menu_shopId` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='微设置->微店菜单';

-- ----------------------------
-- Records of sys_weixin_menu
-- ----------------------------
INSERT INTO `sys_weixin_menu` VALUES ('1', '0', '乐享购', '', '0', '1', '0', 'http://localhost/shopping9/index.php?s=/admin/wchat/menu', '0', '1', '1530837838', '0');
INSERT INTO `sys_weixin_menu` VALUES ('2', '0', '购享乐', '', '1', '2', '2', '', '0', '1', '1531275029', '0');

-- ----------------------------
-- Table structure for `sys_weixin_msg_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_msg_template`;
CREATE TABLE `sys_weixin_msg_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `template_no` varchar(55) NOT NULL COMMENT '编号',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `contents` varchar(255) NOT NULL DEFAULT '' COMMENT '内容示例',
  `template_id` varchar(55) DEFAULT '' COMMENT '模版id',
  `headtext` varchar(255) DEFAULT NULL COMMENT '头部文字',
  `bottomtext` varchar(255) DEFAULT NULL COMMENT '底部文字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信消息模版';

-- ----------------------------
-- Records of sys_weixin_msg_template
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_qrcode_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_qrcode_template`;
CREATE TABLE `sys_weixin_qrcode_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实例ID',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `background` varchar(255) NOT NULL DEFAULT '' COMMENT '背景图片',
  `nick_font_color` varchar(255) NOT NULL DEFAULT '#000' COMMENT '昵称字体颜色',
  `nick_font_size` smallint(6) NOT NULL DEFAULT '12' COMMENT '昵称字体大小',
  `is_logo_show` smallint(6) NOT NULL DEFAULT '1' COMMENT 'logo是否显示',
  `header_left` varchar(6) NOT NULL DEFAULT '0px' COMMENT '头部左边距',
  `header_top` varchar(6) NOT NULL DEFAULT '0px' COMMENT '头部上边距',
  `name_left` varchar(6) NOT NULL DEFAULT '0px' COMMENT '昵称左边距',
  `name_top` varchar(6) NOT NULL DEFAULT '0px' COMMENT '昵称上边距',
  `logo_left` varchar(6) NOT NULL DEFAULT '0px' COMMENT 'logo左边距',
  `logo_top` varchar(6) NOT NULL DEFAULT '0px' COMMENT 'logo上边距',
  `code_left` varchar(6) NOT NULL DEFAULT '0px' COMMENT '二维码左边距',
  `code_top` varchar(6) NOT NULL DEFAULT '0px' COMMENT '二维码上边距',
  `is_check` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_remove` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除  0未删除 1删除',
  `template_url` varchar(255) NOT NULL DEFAULT '' COMMENT '模板样式路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 COMMENT='微信推广二维码模板管理';

-- ----------------------------
-- Records of sys_weixin_qrcode_template
-- ----------------------------
INSERT INTO `sys_weixin_qrcode_template` VALUES ('1', '0', 'public/static/images/qrcode_bg/qrcode_bg.png', '#2b2b2b', '23', '1', '93px', '467px', '159px', '479px', '98px', '319px', '89px', '88px', '1', '0', 'public/static/images/qrcode_bg/template_bg_img.png');
INSERT INTO `sys_weixin_qrcode_template` VALUES ('2', '0', 'upload/common/1530837914.jpeg', '#ffffff', '23', '0', '59px', '15px', '150px', '120px', '0px', '0px', '70px', '300px', '0', '0', 'upload/qrcode/promote_qrcode_template/qrcode_template_2_0.png');
INSERT INTO `sys_weixin_qrcode_template` VALUES ('3', '0', 'upload/common/1531275123.jpg', '#2b2b2b', '23', '1', '59px', '15px', '150px', '120px', '120px', '100px', '70px', '300px', '0', '0', 'upload/qrcode/promote_qrcode_template/qrcode_template_3_0.png');

-- ----------------------------
-- Table structure for `sys_weixin_user_msg`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_user_msg`;
CREATE TABLE `sys_weixin_user_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `msg_type` varchar(255) NOT NULL,
  `content` text,
  `is_replay` int(11) NOT NULL DEFAULT '0' COMMENT '是否回复',
  `create_time` int(11) DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '粉丝openid',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  `headimgurl` varchar(500) NOT NULL DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息表';

-- ----------------------------
-- Records of sys_weixin_user_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_user_msg_replay`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_user_msg_replay`;
CREATE TABLE `sys_weixin_user_msg_replay` (
  `replay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `replay_uid` int(11) NOT NULL COMMENT '当前客服uid',
  `replay_type` varchar(255) NOT NULL,
  `content` text,
  `replay_time` int(11) DEFAULT '0',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  PRIMARY KEY (`replay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息回复表';

-- ----------------------------
-- Records of sys_weixin_user_msg_replay
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_wexin_onekeysubscribe`
-- ----------------------------
DROP TABLE IF EXISTS `sys_wexin_onekeysubscribe`;
CREATE TABLE `sys_wexin_onekeysubscribe` (
  `instance_id` int(11) NOT NULL COMMENT '实例ID',
  `url` varchar(300) NOT NULL DEFAULT '' COMMENT '一键关注url',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2048 COMMENT='微信一键关注设置';

-- ----------------------------
-- Records of sys_wexin_onekeysubscribe
-- ----------------------------
