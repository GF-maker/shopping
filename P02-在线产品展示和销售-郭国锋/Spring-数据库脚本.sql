CREATE DATABASE Spring
GO

USE Spring
GO
drop table Student

--登录注册表
CREATE TABLE Student
(
StuId char(100) not null primary key,
StuName nvarchar(20) not null,
StuPassword varchar(20),
StuPassword2 varchar(50) not null,
StuNumber varchar(50),
StuEmail varchar(50)
)
--drop table Student
GO
INSERT Student VALUES 
('201540703321',N'张三','123456','123456','17853242630',N'232347888@qq.com')
GO
select * from Student
GO



--创建账户表Account
create table Account
(
AccountId char(10) primary key not null,
AccountName nvarchar(4) not null,
AccountBalance float not null check(AccountBalance>0)
)
go

--插入6条记录
insert into Account values
('6217851111',N'赵六六',100),
('6217852222',N'张八八',200)
go

--查询Account表数据
select * from Account
go
--drop  table Product
CREATE TABLE Product
(
ProductId char(50) primary key,
ProductName nvarchar(100) not null,
ProductPrice int,

ProductDetil nvarchar(200),
ProductUnit nvarchar(10),
ProductStock int,
Productimage nvarchar(200),
Productdiscrib nvarchar(200) 
)
GO
--drop table Product
INSERT INTO Product VALUES

('G1',N'Taschen Monet',98,N'图书音像',N'本',1000,N'莫奈',N'原版引进中文版Taschen Monet 图书世界名著 畅销书籍'),
('G2',N'爱的教育',12,N'图书音像',N'本',1000,N'爱的教育',N'爱的教育 正版亚米契斯原著青少年课外书必读 儿童文学图书世界名著'),
('G3',N'你若安好便是晴天',9,N'图书音像',N'本',1000,N'你若安好，便是晴天',N'你是人间四月天林徽因 名家经典语你是人间的四月天'),
('G4',N'我们仨',18,N'图书音像',N'本',1000,N'我们仨',N'我们仨 新版 杨绛先生文集 用心记述了钱钟书.杨绛这个特殊家庭'),
('G5',N'厚黑学',52,N'图书音像',N'本',1000,N'厚黑学',N'受益一生全书7册情商书籍畅全集李宗吾原著励志书'),
('G6',N'简爱',22,N'图书音像',N'本',1000,N'简.爱',N'简爱 吉林大学出版社 宋兆霖译 中文版无删减原版'),
('G7',N'儒林外史',19,N'图书音像',N'本',1000,N'儒林外史',N'儒林外史 中国古典文学名著 古典小说 无障碍阅读典藏版'),
('G8',N'边城',17,N'图书音像',N'本',1000,N'边城',N'边城(纪念版)沈从文正版包邮原著高中书籍中国文学精选代表性小说'),
('G9',N'围城',27,N'图书音像',N'本',1000,N'围城',N'钱钟书代表作原版中国现当代长篇正版文学小说书籍'),
('G10',N'倾城之恋',27,N'图书音像',N'本',1000,N'倾城之恋',N'倾城之恋 张爱玲创作的中短篇小说 现当代文学爱情故事言情小说'),

('D1',N'HuaWei/matebook',5988,N'电脑办公',N'件',1000,N'电脑1',N'Huawei/华为 Matebook X WT-W09 13英寸i5轻薄便携商务办公超极本笔记本电脑'),
('D2',N'Huawei/华为 M3 青春版',1899,N'电脑办公',N'件',1000,N'电脑2',N'Huawei/华为 M3 青春版 平板电脑 10英寸 高清显示安卓WiFi/4G可通话智能移动游戏电脑 '),
('D3',N'Huawei/华为 MateBook X Pro',7788,N'电脑办公',N'件',1000,N'电脑3',N'Huawei/华为 MateBook X Pro MACH-W19 i5集显指纹识别轻薄商务办公便携笔记本电脑 '),
('D4',N'Apple/苹果 13 英寸 MacBook Pro ',13388,N'电脑办公',N'件',1000,N'电脑4',N'Apple/苹果 13 英寸 MacBook Pro 触控栏和触控 ID 2.3GHz 处理器 256GB 存储容量 '),
('D5',N'2018款 Apple/苹果 触控栏和触控 ',14088,N'电脑办公',N'件',1000,N'电脑5',N'2018款 Apple/苹果 触控栏和触控 ID 2.3GHz 处理器 512GB 存储容量 商务办公笔记本电脑 13英寸 MacBook Pro '),
('D6',N'苹果2018 MacBook Pro13英寸',2800,N'电脑办公',N'件',1000,N'电脑6',N'苹果2018 MacBook Pro13英寸i5 8259U显示屏，触控ID笔记本电脑女 '),
('D7',N'联想小新潮7000-13',5688,N'电脑办公',N'件',1000,N'电脑7',N'Huawei/联想小新潮7000-13 轻薄窄边框笔记本电脑 13.3英寸(i5-8250U/8G/固态硬盘/MX150 2G独显)'),
('D8',N'联想吃鸡游戏本笔记本',2099,N'电脑办公',N'件',1000,N'电脑8',N'联想吃鸡游戏本笔记本电脑轻薄便携商务办公学生分期付款15.6英寸'),
('D9',N'Huawei/华为 M3 青春版',1899,N'电脑办公',N'件',1000,N'电脑9',N'Huawei/华为 M3 青春版 平板电脑 10英寸 高清显示安卓WiFi/4G可通话智能移动游戏电脑 '),
('D10',N'GGTX1060MQ',7199,N'电脑办公',N'件',1000,N'电脑10',N'Dell/戴尔 G7 GTX1060MQ 6G独显游匣八代i5四核PCIe固态 15.6英寸学生吃鸡游戏本笔记本电脑便携'),

('J1',N'格杰仕真皮床',1470,N'家具家居',N'件',1000,N'家具1',N'格杰仕真皮床1.8米双人床婚床现代简约床主卧榻榻米欧式皮床家具 '),
('J2',N'轻奢镀金茶几电视柜组合',1888,N'家具家居',N'件',1000,N'家具2',N'轻奢镀金茶几电视柜组合客厅后现代简约不锈钢黑白色烤漆家具地柜 '),
('J3',N'北欧沙发',2588,N'家具家居',N'件',1000,N'家具3',N'北欧沙发客厅整装现代简约小户型轻奢风家具套装实木布艺沙发组合 '),
('J4',N'北欧小户型组合贵妃布艺沙发',2380,N'家具家居',N'件',1000,N'家具4',N'北欧小户型组合贵妃布艺沙发现代简约客厅整装家具可拆洗乳胶沙发'),
('J5',N'现代木纹整体衣帽间简爱',2000,N'家具家居',N'件',1000,N'家具5',N'现代木纹整体衣帽间全屋定制开放式平板衣橱衣柜定做家具装修设计 '),
('J6',N'匠气轻奢单人位沙发椅',659,N'家具家居',N'件',1000,N'家具6',N'匠气轻奢单人位沙发椅现代简约客厅沙发扶手椅休闲老虎椅单座椅子'),
('J7',N'功夫茶桌',1500,N'家具家居',N'件',1000,N'家具7',N'功夫茶桌红木茶台茶几实木客厅新中式茶桌椅组合小茶艺桌简约现代'),
('J8',N'马氏皇庭北欧小户型梳妆台',1720,N'家具家居',N'件',1000,N'家具8',N'马氏皇庭北欧小户型梳妆台现代简约实木化妆桌网红卧室欧式化妆台'),
('J9',N'梳妆台卧室化妆桌',398,N'家具家居',N'件',1000,N'家具9',N'梳妆台卧室化妆桌简约化妆柜小户型迷你网红ins风化妆台经济型'),
('J10',N'黑檀实木大板桌',2000,N'家具家居',N'件',1000,N'家具10',N'黑檀实木大板桌原木茶桌茶台红木餐桌书桌画案老板办公桌花梨家具 '),

('X1',N'四川不知火丑橘',39,N'鲜果时光',N'斤',1000,N'水果1',N'四川不知火丑橘 新鲜当季水果6斤桔子耙耙柑甜橘子丑八怪批发包邮'),
('X2',N'新鲜西番莲鸡蛋果',39,N'鲜果时光',N'斤',1000,N'水果2',N'广西百香果热带水果新鲜西番莲鸡蛋果现摘5斤精装大红果酸爽香甜'),
('X3',N'番石榴芭乐',31,N'鲜果时光',N'斤',1000,N'水果3',N'广西高山现摘番石榴芭乐10斤装 新鲜热带水果 清脆香甜'),
('X4',N'阿克苏冰糖心苹果',79,N'鲜果时光',N'斤',1000,N'水果4',N'新疆阿克苏冰糖心苹果10斤大果 新鲜当季水果红富士批发顺丰包邮'),
('X5',N'台湾凤梨释迦果',89,N'鲜果时光',N'斤',1000,N'水果5',N'阳哥 新鲜进口水果台湾凤梨释迦果 番荔枝 释迦 佛头果5斤大果 '),
('X6',N'红心红肉菠萝蜜',89,N'鲜果时光',N'斤',1000,N'水果6',N'越南进口新鲜水果红心红肉菠萝蜜8斤海南榴莲'),
('X7',N'越南白心火龙果',39,N'鲜果时光',N'斤',1000,N'水果7',N'越南白心火龙果新鲜包邮10斤热带进口水果非红心火龙果白色果肉'),
('X8',N'红心牛奶木瓜',24,N'鲜果时光',N'斤',1000,N'水果8',N'送5斤云南红心牛奶木瓜新鲜包邮当季水果批发非海南青木瓜发10斤'),
('X9',N'当季红富士',29,N'鲜果时光',N'斤',1000,N'水果9',N'苹果水果新鲜包邮当季红富士整箱10斤装一箱陕西野生冰糖心丑苹果'),
('X10',N'泰国小菠萝',68,N'鲜果时光',N'斤',1000,N'水果10',N'泰国小菠萝2斤装8-12个进口普吉岛去皮削皮迷你新鲜水果顺丰包邮'),

('M1',N'婴亲霜肤乐湿痒婴儿疹子膏',79,N'母婴孕婴',N'本',1000,N'母婴1',N'戒之馆婴亲霜肤乐湿痒婴儿疹子膏儿童露宝宝护肤品口水润肤霜面霜'),
('M2',N'eoodoo新生儿礼盒',259,N'母婴孕婴',N'本',1000,N'母婴2',N'eoodoo新生儿礼盒婴儿衣服秋冬套装出生满月礼物初生母婴宝宝用品'),
('M3',N'婴儿棉服礼盒',139,N'母婴孕婴',N'本',1000,N'母婴3',N'婴儿棉服礼盒加厚新生儿衣服套装纯棉冬季初生刚出生宝宝母婴用品'),
('M4',N'无味婴儿孕妇驱蚊用品',36,N'母婴孕婴',N'本',1000,N'母婴4',N'润本电热蚊香液无味婴儿孕妇驱蚊用品新生儿宝宝电蚊香补充装5瓶'),
('M5',N'婴儿礼盒',68,N'母婴孕婴',N'本',1000,N'母婴5',N'婴儿礼盒新生儿玩具套装满月宝宝礼物刚出生母婴用品大全初生礼包 '),
('M6',N'母婴用品奶瓶',68,N'母婴孕婴',N'本',1000,N'母婴6',N'浩一贝贝玻璃奶瓶新生儿弯头宽口防胀气婴儿宝宝防摔母婴用品奶瓶 '),
('M7',N'婴儿衣服秋冬纯棉',149,N'母婴孕婴',N'本',1000,N'母婴7',N'婴儿衣服秋冬纯棉刚出生男宝宝礼盒新生儿套装满月初生母婴用品'),
('M8',N'屁屁贵族湿厕纸',25,N'母婴孕婴',N'本',1000,N'母婴8',N'简妮飘（Nepia）屁屁贵族湿厕纸 替换装 60枚/包 母婴可用'),
('M9',N'婴儿礼盒满月送礼',159,N'母婴孕婴',N'本',1000,N'母婴9',N'婴儿礼盒满月送礼百天宝宝礼物新生儿用品母婴益智健身毯四季玩具 '),
('M10',N'电热蚊香液',32,N'母婴孕婴',N'本',1000,N'母婴10',N'丽家宝贝 爱儿可电热蚊香液45ml')

GO

SELECT * FROM Product
GO

--创建课程表
create table Course
(
CourseId char(4) primary key,
CourseName nvarchar(30),
CourseType nchar(2),
Credits int
)
go

--插入数据到课程表
insert into Course values
('C001',N'毛泽东思想和邓小平理论',N'必修',4),
('C002',N'高等数学',N'必修',6),
('C003',N'Java简介',N'必修',4),
('C004',N'JSP & Servlet',N'必修',6),
('C005',N'JSF框架',N'必修',2),
('C006',N'Hibernate框架',N'必修',2),
('C007',N'形势政策',N'选修',3),
('C008',N'智商改善',N'选修',10),
('C009',N'英语四级',N'必修',4),
('C010',N'英语六级',N'必修',4)
go

select * from Course
go

--创建考试试题表
create table Question
(
QuestionId int,
QuestionDesc nvarchar(50),
AnswerA nvarchar(30),
AnswerB nvarchar(30),
AnswerC nvarchar(30),
AnswerD nvarchar(30),
AnswerKey char(1),
Credits int,
CourseId char(4) foreign key references Course(CourseId),
primary key(QuestionId,CourseId)
)
go

--插入试题到Questions表
insert into Question values
(1,N'What does "bury" mean?',N'埋葬',N'牺牲',N'庆祝',N'不知道','A',5,'C009'),
(2,N'猪是?',N'Dog',N'Pig',N'Chicken',N'Apple','B',5,'C009'),
(3,N'Crocodile是？',N'手机',N'鳄鱼',N'羚羊',N'草泥马','B',3,'C009'),
(4,N'你的智商是？',N'50',N'60',N'70',N'80','A',2,'C009'),
(5,N'Goat的意思是？',N'猪',N'牛',N'羊',N'不知道','C',5,'C009'),
(6,N'Mutton的意思是？',N'猪',N'狗肉',N'羊肉',N'不知道','C',5,'C009'),
(7,N'What does "Snake" mean?',N'蛇',N'牺牲',N'庆祝',N'不知道','A',5,'C009'),
(8,N'Swing flu是?',N'狗流感',N'猪流感',N'禽流感',N'Apple','B',5,'C009'),
(9,N'Bamboo是？',N'手机',N'竹子',N'叶子',N'草坪','B',3,'C009'),
(10,N'你的情商是？',N'50',N'60',N'70',N'80','A',2,'C009')
go

insert into Question values
(1,N'What does "Celebrate" mean?',N'埋葬',N'牺牲',N'庆祝',N'不知道','A',5,'C010'),
(2,N'狗的单词是?',N'Dog',N'Pig',N'Chicken',N'Apple','A',5,'C010'),
(3,N'下列哪项不是cell的意思？',N'手机',N'细胞',N'单元格',N'狗','D',3,'C010'),
(4,N'你的IQ是？',N'50',N'60',N'70',N'80','A',2,'C010'),
(5,N'Pig的意思是？',N'猪',N'牛',N'羊',N'不知道','A',5,'C010'),
(6,N'What does "Sacrifice" mean?',N'埋葬',N'牺牲',N'庆祝',N'不知道','B',5,'C010'),
(7,N'苹果的单词是?',N'Dog',N'Pig',N'Chicken',N'Apple','A',5,'C010'),
(8,N'下列哪项不是solution的意思？',N'解决方案',N'溶液',N'溶解',N'狗','D',3,'C010'),
(9,N'你的EQ是？',N'50',N'60',N'70',N'80','A',2,'C010'),
(10,N'Cow的意思是？',N'猪',N'牛',N'羊',N'不知道','A',5,'C010')
go

select * from Question
go