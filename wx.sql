SET NAMES UTF8;
DROP DATABASE IF EXISTS weixin;
CREATE DATABASE weixin CHARSET=UTF8;
USE weixin;

#首页轮播图表
CREATE TABLE carrousel(
	id INT PRIMARY KEY AUTO_INCREMENT,
	img_url VARCHAR(128)
);
INSERT INTO carrousel VALUES(NULL,'https://www.wyptheroc.com:3000/banner2.png');
INSERT INTO carrousel VALUES(NULL,'https://www.wyptheroc.com:3000/banner4.png');
INSERT INTO carrousel VALUES(NULL,'https://www.wyptheroc.com:3000/banner-@2x.png');
INSERT INTO carrousel VALUES(NULL,'https://www.wyptheroc.com:3000/banner@2x.png');

#用户信息表
CREATE TABLE user(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(64),
	city VARCHAR(128),
	nickName VARCHAR(64),
	birthday VARCHAR(64),
	phone VARCHAR(64),
	email VARCHAR(128),
	pic VARCHAR(1024)
);
INSERT INTO user VALUES
(NULL,'大燕子','Guangzhou','贤','2010-09-10',15889965081,'609049015@qq.com','https://wx.qlogo.cn/mmopen/vi_32/yXnBxjNjcByHibWibIWxfaggNCSCo8rA5nhzL32Itj6QBz2BCb6GIAhXbeI2z9t9qNcPOEkIKDCfpFo3Qhicaceow/132'),
(NULL,'小红','Shantou','flower','2011-02-03',15789403030,'15789403030@qq.com','https://www.wyptheroc.com:3000/pic_1.jpg'),
(NULL,'小明','Shantou','flower','2011-02-03',15789403030,'15789403030@qq.com','https://www.wyptheroc.com:3000/pic_2.jpg'),
(NULL,'红豆','Shantou','flower','2011-02-03',15789403030,'15789403030@qq.com','https://www.wyptheroc.com:3000/pic_3.jpg'),
(NULL,'大宝军666','Shantou','flower','2011-02-03',15789403030,'15789403030@qq.com','https://www.wyptheroc.com:3000/pic_4.jpg'),
(NULL,'呐喊670','Shantou','flower','2011-02-03',15789403030,'15789403030@qq.com','https://www.wyptheroc.com:3000/pic_5.jpg'),
(NULL,'叶落深秋','Shantou','flower','2011-02-03',15789403030,'15789403030@qq.com','https://www.wyptheroc.com:3000/pic_6.jpg'),
(NULL,'妥妥滴','Shantou','flower','2011-02-03',15789403030,'15789403030@qq.com','https://www.wyptheroc.com:3000/pic_7.jpg'),
(NULL,'虎虎生威','Shantou','flower','2011-02-03',15789403030,'15789403030@qq.com','https://www.wyptheroc.com:3000/pic_8.jpg');

#评论表
CREATE TABLE comment(
	id INT PRIMARY KEY AUTO_INCREMENT,
	cid INT,
	userName VARCHAR(64),
	time VARCHAR(64),
	content VARCHAR(1024)
);
INSERT INTO comment VALUES(NULL,1,'小红','2018-08-18 10:20','写的挺好的，受教了，希望多些此类的文章！');
INSERT INTO comment VALUES(NULL,1,'小明','2018-09-10 06:20','不错的文章，学习了哈！');
INSERT INTO comment VALUES(NULL,1,'大燕子','2018-09-30 10:20','文章写的非常棒，受益匪浅！');
INSERT INTO comment VALUES(NULL,2,'妥妥滴','2018-08-01 12:20','写的很好，自己学到很多东西，谢谢');
INSERT INTO comment VALUES(NULL,2,'大燕子','2018-09-10 16:20','不错的文章，学习了哈！');
INSERT INTO comment VALUES(NULL,3,'大宝军666','2018-06-10 10:20','wo jiu lai kan kan');
INSERT INTO comment VALUES(NULL,3,'红豆','2018-07-10 10:20','额，还是先学基本的吧，貌似有点看不懂。');
INSERT INTO comment VALUES(NULL,3,'妥妥滴','2018-08-10 10:20','哈哈！还有个问题怎么改版后人少了吗?');
INSERT INTO comment VALUES(NULL,3,'呐喊670','2018-10-01 10:20','非常好，学到很多东西!');
INSERT INTO comment VALUES(NULL,5,'叶落深秋','2018-07-10 10:20','好好好好好红啊红啊红啊后');
INSERT INTO comment VALUES(NULL,5,'虎虎生威','2018-09-10 10:20','文章写的非常棒，受益匪浅！');

#单选题目录
CREATE TABLE single(
	id INT PRIMARY KEY AUTO_INCREMENT,
	sid INT,
	color VARCHAR(16),
	title VARCHAR(64),
	content VARCHAR(128)
);
INSERT INTO single VALUES(NULL,1,'#00c0e4','Html','超文本标记语言，标准通用标记语言下的一个运用。超文本就是指页面内可以包含图片、链接、甚至音乐、程序等非文字元素。超文本标记语言的结构包括“头”部分和“主体”部分。');
INSERT INTO single VALUES(NULL,2,'#5bd999','CSS','层叠样式表是一种用来表现HTML或XML等文件格式的计算机语言。CSS不仅可以静态地修饰网页，还可以配合各种脚本语言动态地对网页各元素进行格式化。');
INSERT INTO single VALUES(NULL,3,'#eac14d','Javascript','JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。用来给HTML网页增加动态功能。');
INSERT INTO single VALUES(NULL,4,'#d95b93','Java','Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程。');

#单选题表
CREATE TABLE single_table(
	id INT PRIMARY KEY AUTO_INCREMENT,
	sid INT,
	title VARCHAR(128),
	keyA VARCHAR(64),
	keyB VARCHAR(64),
	keyC VARCHAR(64),
	keyD VARCHAR(64),
	answer VARCHAR(64)
);
INSERT INTO single_table VALUES(NULL,1,'以下标签为换行符的是','A:<hr>','B:<br/>','C:<p>','D:<div>','B');
INSERT INTO single_table VALUES(NULL,1,'在HTML上，将表单中INPUT元素的TYPE属性值设置为( )时，用于创建重置按钮。','A:reset','B:set','C:button','D:image','A');
INSERT INTO single_table VALUES(NULL,1,'在制作HTML页面时，页面的布局技术主要分为( )','A:框架布局','B:表格布局','C:DIV层布局','D:以上全部选项','D');
INSERT INTO single_table VALUES(NULL,1,'关于下列代码片段的说法中，正确的是( )。<hr size="5" color="#0000ff" width="50%">','A:size是指水平线的长度','B:size是指水平线的宽度','C:width是指水平线的宽度','D:width是指水平线的高度 ','B');
INSERT INTO single_table VALUES(NULL,1,'在HTML中，可以使用( )标记向网页中插入GIF动画文件','A:<form>','B:<body>','C:<table>','D:<img>','D');
INSERT INTO single_table VALUES(NULL,1,'在HTML中，下面( )不属于HTML文档的基本组成部分','A:<style></style>','B:<body></body>','C:<html></html>','D:<head></head>','A');
INSERT INTO single_table VALUES(NULL,1,'HTML是什么意思？','A:高级文本语言','B:超文本标记语言','C:扩展标记语言','D:图形化标记语言','B');
INSERT INTO single_table VALUES(NULL,1,'哪一个属性使HTML文档中表格里的单元格在同行进行合并？','A:cellspacing','B:cellpadding','C:rowspan','D:colspan','C');
INSERT INTO single_table VALUES(NULL,1,'以下哪个不可以在HTML文档中使用的特殊字符。','A:&gt;','B:&tl;','C:&yen;','D:&nbsp;','B');
INSERT INTO single_table VALUES(NULL,1,'我们想要为网页中的文字加上超链接，可以采用哪个标签？','A:<href>','B:<a>','C:<link>','D:<src>','B');
INSERT INTO single_table VALUES(NULL,1,'不是表单提供给用户的输入形式是( )','A:type=text','B:type=radio','C:type=file','D:type=type','D');
INSERT INTO single_table VALUES(NULL,1,'下列html元素当中，都属于块级元素的是','A:h3,ul,form,table,p','B:h2,table,ul,a,input','C:p,ul,form,div,strong','D:div,p,h1,table,span','A');
INSERT INTO single_table VALUES(NULL,1,'在HTML5中，哪个方法用于获得用户的当前位置？','A:getPosition()','B:getCurrentPosition()','C:getUserPosition()','D:getLocation()','B');

INSERT INTO single_table VALUES(NULL,2,'CSS是什么的缩写？','A:Colorful Style Sheets','B:Cascading Style Sheets','C:Creative Style Sheets','D:Computer Style Sheets','B');
INSERT INTO single_table VALUES(NULL,2,'HTML文档中什么位置比较适合于引用外部样式表？','A:在<head>部分','B:文档结尾','C:文档开始','D:在<body>中','A');
INSERT INTO single_table VALUES(NULL,2,'哪个HTML标签定义内部的样式表？','A:<style>','B:<css>','C:<script>','D:<cssStyle>','A');
INSERT INTO single_table VALUES(NULL,2,'哪个是正确的CSS语法？','A:{body;color:black}','B:body:color=black','C:{body:color=black(body}','D:body {color: black}','D');
INSERT INTO single_table VALUES(NULL,2,'哪个属性用来改变背景颜色？','A:background-color:','B:color:','C:bgcolor:','D:set-Color:','A');
INSERT INTO single_table VALUES(NULL,2,'如何改变一个元素中的文本的颜色？','A:color:','B:text-color=','C:text-color:','D:fgcolor:','A');
INSERT INTO single_table VALUES(NULL,2,'哪个CSS属性控制文字大小？','A:font-style','B:font-size','C:text-size','D:text-style','B');
INSERT INTO single_table VALUES(NULL,2,'将所有的<p>元素全部加粗的CSS','A:{font-weight:bold}','B:{text-size:bold}','C:<p style="font-size:bold">','D:<p style="text-size:bold">','A');
INSERT INTO single_table VALUES(NULL,2,'如何改变一个元素的字体？','A:font=','B:f:','C:font-family:','D:text-name:','C');
INSERT INTO single_table VALUES(NULL,2,'如何改变一个元素的左页边距？','A:margin:','B:margin-left:','C:text-indent:','D:indent:','B');
INSERT INTO single_table VALUES(NULL,2,'如何让一个列表中各个项之前显示实心的正方形(square)？','A:type: square','B:type-list: square','C:list-style-type: square','D:list-type: square','C');
INSERT INTO single_table VALUES(NULL,2,'.CSS是利用（  ）XHTML标签构建网页布局','A:<dir>','B:<div>','C:<dis>','D:<dif>','B');
INSERT INTO single_table VALUES(NULL,2,'下列哪种方式是用类选择器定义样式的( )','A: p{color: red}','B:.one{color: red} ','C:#two{color: red}','D:p,h1{color: red}','B');
INSERT INTO single_table VALUES(NULL,2,'以下哪个选项是设置底边框的( )','A:border-bottom','B:border-top','C:border-left','D:border-right','A');

INSERT INTO single_table VALUES(NULL,3,'JavaScript是运行在( )的脚本语言','A:服务器端','B:客户端','C:在服务器运行后，把结果返回到客户端','D:在客户端运行后，把结果返回到服务端','B');
INSERT INTO single_table VALUES(NULL,3,'setTimeout("buy( )",20)表示的意思是( )','A:间隔20秒后，buy( )函数被调用一次','B:间隔20分钟后，buy( )函数被调用一次','C:间隔20毫秒后，buy( )函数被调用一次','D:buy( )函数被持续调用20次','C');
INSERT INTO single_table VALUES(NULL,3,'在JavaScript中，能使文本框失去焦点的方法是( )','A:onblur( )','B:focus( )','C:blur( )','D:leave( )','C');
INSERT INTO single_table VALUES(NULL,3,'在Javascript中，运行Math.ceil(25.5);的结果是( )','A:<hr>','B:25','C:25.5','D:26','D');
INSERT INTO single_table VALUES(NULL,3,'在JavaScript中( )方法可以对数组元素进行排序','A:add( )','B:join( )','C:sort( )','D:length( )','C');
INSERT INTO single_table VALUES(NULL,3,'以下不属于javascript中提供的常用数据类型的是( )','A:Undefined','B:Null','C:Number','D:Connection','D');
INSERT INTO single_table VALUES(NULL,3,'关于函数，以下说法错误的是( )','A:函数类似于方法，是执行特定任务的语句块。','B:可以直接使用函数名称来调用函数','C:函数可以提高代码的重用率','D:函数不能有返回值','D');
INSERT INTO single_table VALUES(NULL,3,'以下可以获取系统当前日期的是( )','A:var k = new Date( );','B:Date k = new Date( )','C:var k = new date( )','D:以上说法均不对','A');
INSERT INTO single_table VALUES(NULL,3,'在JavaScript中，能使文本框获得焦点的方法是 ( )','A:onSelect( )','B:focus( )','C:blur( )','D:fix( )','B');
INSERT INTO single_table VALUES(NULL,3,'以下关于JavaScript的说法中错误的是( )','A:jQuery是基于JavaScript的一个封装框架','B:JavaScript与JQuery是两种脚本语言','C:JavaScript可以通过script标签的形式引入到网页中','D:使用jQuery方法前必须先引入jquery框架库文件','B');
INSERT INTO single_table VALUES(NULL,3,'关于JavaScript中的Math对象的说法，正确的是( )','A:Math.ceil(512.51)返回的结果为512','B:Math.floor( )方法用于对数字进行下舍入','C:Math.round(-512.51)返回的结果为-512','D:Math.random( )返回的结果范围为0-1，包括0和1','B');

INSERT INTO single_table VALUES(NULL,4,'定义命名常量LENGTH，值为100的合理语句为( )','A:public int LENGTH=100','B:final int LENGTH=100 ','C:public static int LENGTH=100','D:static  final int LENGTH=100','D');
INSERT INTO single_table VALUES(NULL,4,'无需在程序中import就可以直接使用简单类名的类，属于包( )','A:java.applet','B:java.awt','C:java.util','D:java.lang','D');
INSERT INTO single_table VALUES(NULL,4,'在Java中，负责对字节代码解释执行的是( )','A:应用服务器','B:虚拟机','C:垃圾回收器','D:编译器','B');
INSERT INTO single_table VALUES(NULL,4,'一个栈的输入序列为1 2 3 4 5，则下列序列中不可能是栈得输出序列的是( )','A:5 4 1 3 2','B:2 3 4 1 5','C:1 5 4 3 2','D:2 3 1 4 5','A');
INSERT INTO single_table VALUES(NULL,4,'LDAP是什么? ','A:是一种开源产品','B:是一种编程语言','C:是一种访问协议','D:是一种存储数据的目录','C');
INSERT INTO single_table VALUES(NULL,4,'要想在你的视图上成功的执行查询需要做什么？','A:只能在基础表中有select权限','B:在视图中需要有select权限','C:基础表中必须有数据','D:基础表必须在同一个 用户模式中','B');
INSERT INTO single_table VALUES(NULL,4,'Oracle中VARCHAR2类型的最大长度是：','A:4000','B:3000','C:1000','D:2000','A');
INSERT INTO single_table VALUES(NULL,4,'下列哪一个选项按照顺序包括了OSI模型的七个层次:( )','A:物理层 数据链路层 传输层 网络层 会话层 表示层 应用层','B:物理层 数据链路层 会话层 网络层 传输层 表示层 应用层','C:物理层 数据链路层 网络层 传输层 会话层 表示层 应用层','D:网络层 传输层 物理层 数据链路层 会话层 表示层 应用层','C');
INSERT INTO single_table VALUES(NULL,4,'以下哪些不是javascript的全局函数( )','A:eval','B:escape','C:setTimeout','D:parseFloat','C');
INSERT INTO single_table VALUES(NULL,4,'在UML提供的图中,( )用于按时间顺序描述对象间的交互。 ','A:协作图','B:网络图','C:序列图','D:状态图','C');
INSERT INTO single_table VALUES(NULL,4,'下面有关系统并发访问数估算数据那个最有效：','A:高峰时段日处理业务量100000','B:高峰时段平均每秒请求数80','C: 同时在线用户数100','D:平均每秒用户请求数50','B');
INSERT INTO single_table VALUES(NULL,4,'以下代码段将创建几个对象?String s1="bc";String s2="bc";','A:2','B:3','C:0','D:1','D');
INSERT INTO single_table VALUES(NULL,4,'如果配置一个Servlet需要使用的参数，最好在哪个方法中加载？','A:init','B:doGet','C:destory','D:doPost','A');
INSERT INTO single_table VALUES(NULL,4,'下面哪个Set是排序的？','A:LinkedHashSet','B:HashSet','C:AbstractSet','D:TreeSet','A');
INSERT INTO single_table VALUES(NULL,4,'类的实例方法表示的是什么？( )','A:父类对象的行为','B:类的属性','C:类对象的行为','D:类的行为','C');
INSERT INTO single_table VALUES(NULL,4,'下面说法正确的是（ ）','A:JAVA中线程是非抢占式的','B:JAVA中的线程不可以共享数据','C:每个JAVA程序都至少有一个线程，即主线程','D:JAVA中的线程不可以共享代码','C');

#多选题表
CREATE TABLE multi_table(
	id INT PRIMARY KEY AUTO_INCREMENT,
	sid INT,
	title VARCHAR(128),
	keyA VARCHAR(64),
	keyB VARCHAR(64),
	keyC VARCHAR(64),
	keyD VARCHAR(64),
	answer VARCHAR(64)
);
INSERT INTO multi_table VALUES(NULL,1,'在HTML中，表格排版信息，效果如图所示，则下列描述正确的是( )。','A:为一个3行2列的表格','B:第一个单元格横跨两行','C:第一个单元格中的图片水平居中对齐，文字水平居左对齐','D:图片在单元格中垂直顶端对齐','BD');
INSERT INTO multi_table VALUES(NULL,1,'在CSS中，关于CSS样式说法错误的是( )','A:CSS代码严格区分大小写','B:每条样式规则使用分号(;)隔开','C:CSS样式实现了内容与样式的分离，利于团队开发','D:CSS样式无法实现页面的精确控制','AD');
INSERT INTO multi_table VALUES(NULL,1,'在HTML中，以下对于网页标题的描述正确的是( )。','A:使用<head></head>标签','B:使用<title></title>标签','C:会在浏览器窗口的标题栏显示网页标题','D:使用<body></body>标签','BC');
INSERT INTO multi_table VALUES(NULL,1,'在CSS选择器中，以下选项( )属于后代选择器。','A:input.bg','B:input .bg','C:h3,.second,#sty','D:.txt td','BD');
INSERT INTO multi_table VALUES(NULL,1,'下列关于CSS中盒子模型说法错误的是( )。','A:盒子模型是页面布局的基础，它包括外边距、边框、内边距以及元素的宽高等属性','B:border(边框)代表盒子外壳本身的宽度','C:margin(外边距)代表内容与边框间的距离','D:padding(内边距)代表盒子与其他盒子之间的距离','CD');
INSERT INTO multi_table VALUES(NULL,1,'在HTML中，下列关于表单及表单元素的描述正确的是( )。','A:多行文本域的标签是<input type="textarea">','B:以“post”方式提交表单，一般适用于安全性要求较高的场合','C:将表单元素的“type”属性设置为“button”,可在页面中创建一个按钮','D:<input  type="image"  href="images/btn.gif">可将图片设置为提交按钮','BC');
INSERT INTO multi_table VALUES(NULL,1,'在HTML中，以下关于<input>元素的属性说法正确的是( )','A:type执行表单元素的类型，默认为text','B:size执行表单元素的初始宽度，大小必须以字符为单位','C:checked指定单选按钮或浮选框是否被选中','D:maxlength指定可在text或password元素中输入的最大字符数，默认为100','AC');
INSERT INTO multi_table VALUES(NULL,1,'在HTML中，关于img标签说法错误的是( )','A:img标签可用于在网页中插入图片','B:img标签是块级标签','C:img标签的title属性用于指定替代文本','D:img标签的src属性用于指定图片路径','BC');

INSERT INTO multi_table VALUES(NULL,2,'CSS中的选择器包括（ ）','A:超文本标记选择器','B:类选择器','C:标签选择器','D:ID选择器','BCD');
INSERT INTO multi_table VALUES(NULL,2,'CSS文本属性中，文本对齐属性的取值有（ ）','A:auto','B:justify','C:center','D:right ','BCD');
INSERT INTO multi_table VALUES(NULL,2,'下面关于CSS的说法正确的有( )','A:CSS可以控制网页背景图片','B:margin属性的属性值可以是百分比','C:整个BODY可以作为一个BOX','D:对于中文可以使用word-spacing属性对子间距调整','ABC');
INSERT INTO multi_table VALUES(NULL,2,'关于内容、结构和表现说法正确的是( )','A:内容是页面传达信息的基础','B:表现使得内容的传达变得更加清晰和方便','C:结构就是对内容的交互及操作效果','D:内容就是网页要传达的信息，包括文本、图片、音乐、视频、等。','ABD');
INSERT INTO multi_table VALUES(NULL,2,'关于CSS基本语法说法正确的是( )','A:属性必须要包含在{ }号之中','B:属性和属性值之间用等号链接','C:在有多个属性时，用":"进行区分','D:如果一个属性有几个值，则每个属性值之前用分号分隔开','AC');
INSERT INTO multi_table VALUES(NULL,2,'关于边框，以下写法正确的是( )','A:border-top-width','B:border-style','C:border-width','D:border-color','ABCD');
INSERT INTO multi_table VALUES(NULL,2,'以下哪个属性值属于Float这个属性( )','A:left','B:center','C:right','D:none','ACD');
INSERT INTO multi_table VALUES(NULL,2,'关于WEB标准以下说法正确的是( )','A:Web标准是一个复杂的概念集合，它由一系列标准组成','B:这些标准全部有W3C起草和发布','C:Web标准可以分为3个方面','D:Web标准里的表现标准语言主要包括CSS','ACD');

INSERT INTO multi_table VALUES(NULL,3,'下列对表单事件描述正确的是( )','A:表单元素获得焦点时将触发focus事件。','B:表单元素失去焦点时将触发blur事件。','C:单元素获得焦点时将触发blur事件','D:表单元素失去焦点时将触发focus事件','AB');
INSERT INTO multi_table VALUES(NULL,3,'以下关于toggle( )方法，说法正确的是( )','A:可用于模拟鼠标连续点击事件，使用语法：toggle(f1,f2,…,fN)','B:它还用于切换元素的可见状态，此时使用无参的toggle( )即可','C:可以实现元素的渐变效果','D:可以实现元素的滑动效果','AB');
INSERT INTO multi_table VALUES(NULL,3,'关于改变透明度动画效果，以下说法错误的是( )','A:fadeIn( )和fadeOut( )用于改变元素透明度。','B:fadeIn( )控制元素淡入，fadeOut( )控制元素淡出','C:fadeIn( )控制元素淡出，fadeOut( )控制元素淡入','D:fadeIn( )和fadeOut( )用于改变元素高度','CD');
INSERT INTO multi_table VALUES(NULL,3,'在JavaScript中，使用open( )方法实现弹出窗口时，能够控制窗口大小无法调节的选项是 ( )','A:window.open("show.html","弹出窗口","resizable=no");','B:window.open("show.html","弹出窗口","resizable=yes");','C:window.open("show.html","弹出窗口","resizable=0");','D:window.open("show.html","弹出窗口","resizable=1");','AC');
INSERT INTO multi_table VALUES(NULL,3,'在JQuery中，能够实现元素高度变化的是 ( )','A:slide( )','B:slideUp( )','C:slideDown( )','D:slideChange( )','BC');
INSERT INTO multi_table VALUES(NULL,3,'在Jquery中，下列关于DOM操作的说法错误的是( )','A:$(A).append(B)表示将A追加到B中','B:$(A).appendTo(B)表示把A追加到B中','C:$(A).after(B)表示将A插入到B以后','D:$(A).insertAfter(B)表示将A插入到B以后','AC');
INSERT INTO multi_table VALUES(NULL,3,'Jquery中，能够使div中的文本节点内容显示为空的代码是( )','A:$("div").text("")','B:$("div").val("")','C:$("div").html("")','D:$("div").innerHTML=""','AC');
INSERT INTO multi_table VALUES(NULL,3,'在JavaScript语法中，下列说法正确的是( )','A:parseInt(43.12)返回值为43','B:parseInt("abc43.12")返回值为NaN','C:parseFloat("45.13abc")==parseInt(43.12) 返回true','D:isNaN(parseFloat("45.13abc"))返回true','AB');
INSERT INTO multi_table VALUES(NULL,3,'Javascript的基本组成包括以下( )选项','A:DOM','B:BOM','C:ECMAScript','D:jQuery','ABC');

INSERT INTO multi_table VALUES(NULL,4,'按照学生平均成绩(avg_grade) 将students表中的数据检索出来，下面SQL语句正确的是( )','A:SELECT * FROM students ORDER BY avg_grade','B:SELECT * FROM students GROUP BY avg_grade ASC ','C:SELECT * FROM students ORDER BY avg_grade DESC','D:SELECT * FROM students ORDER by avg_grade asc','ACD');
INSERT INTO multi_table VALUES(NULL,4,'下列是jsp作用域的通信对象的有( )','A:Session','B:application','C:pageContext','D:cookie','ABC');
INSERT INTO multi_table VALUES(NULL,4,'在接口中以下哪条定义是正确的? ( )','A:void methoda();','B:public double methoda();','C:public final double methoda();','D:static void methoda(double d1);','AB');
INSERT INTO multi_table VALUES(NULL,4,'下面哪个语句正确地声明一个整型的二维数组？','A:int a[][] = new int[][];','B:int a[10][10] = new int[][];','C:int a[][] = new int[10][10];','D:int [][]a = new int[10][10];','CD');
INSERT INTO multi_table VALUES(NULL,4,'下面哪些不是java的简单数据类型?','A:short','B:Boolean','C:Double','D:float','BC');
INSERT INTO multi_table VALUES(NULL,4,'下列说法错误的有( )','A:数组是一种对象','B:数组属于一种原生类','C:int number=[]={31,23,33,43,35,63}','D:数组的大小可以任意改变','BCD');
INSERT INTO multi_table VALUES(NULL,4,'不能用来修饰interface的有( )','A:private','B:public','C:protected','D:static','ACD');
INSERT INTO multi_table VALUES(NULL,4,'下列说法错误的有( )','A:在类方法中可用this来调用本类的类方法','B:在类方法中调用本类的类方法时可直接调用','C:在类方法中只能调用本类中的类方法','D:在类方法中绝对不能调用实例方法','ACD');
INSERT INTO multi_table VALUES(NULL,4,'javax.Servlet的包中，属于类的是( )','A:Servlet','B:GenericServlet','C:ServletException','D:ServletContext','BC');
INSERT INTO multi_table VALUES(NULL,4,'哪二种声明防止方法覆盖？','A:final void methoda() {}','B:void final methoda() {}','C:static void methoda() {}','D:static final void methoda() {}','AD');

#判断题表
CREATE TABLE judge_table(
	id INT PRIMARY KEY AUTO_INCREMENT,
	sid INT,
	title VARCHAR(128),
	keyA VARCHAR(64),
	keyB VARCHAR(64),
	answer VARCHAR(64)
);
INSERT INTO judge_table VALUES(NULL,1,'在源代码窗口可以看到html文件是标准的ASCII文件，它是包含了许多被称为标签(tag)的特殊字符串的普通文本文件','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,1,'HTML的段落标志中，标注文本以原样显示的是<PRE></PRE>','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,1,'HTML的颜色属性值中，Black的代码是"#f00000"','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,1,'Dremweaver MX 中，创建最小的标题的文本标签是<h1></h1>','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,1,'Dremweaver MX 中，设置超链接，在设置链接路径时可以是相对路径也可以是绝对路径','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,1,'CGI和ASP均是一种机器语言','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,1,'Dremweaver MX 中，设置文本类型链接源时，文字颜色默认为蓝色','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,1,'HTML中，空格的代码为&nbsp;','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,1,'HTML中，URL的中文名称是"统一资源定位符"','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,1,'标识<b>无需</b>标识','正确','错误','错误');

INSERT INTO judge_table VALUES(NULL,2,'在CSS中，border:1px 2px 3px 4px表示设置某个HTML元素的上边框为1px、右边框为2px、下边框为3px、左边框为4px。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'在CSS中，padding和margin的值都可以为负数。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'在CSS中，使用//或<!---->用来书写一行注释。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'由于Table布局相比DIV布局缺点较多，因此在网页制作时应当完全放弃使用Table布局。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'在W3C规范中，每一个标签都应当闭合，使用<br></br>可以实现和段落标签<p></p>同样的效果。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'一个div可以插入多个背景图片','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'背景颜色的写法background:#ccc等同于background-color:#ccc','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,2,'结构表现标准语言包括XHTML和XML以及HTML。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'任何标签都可以通过加style属性来直接定义它的样式。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,2,'同padding属性与margin属性类似，border属性也有单侧属性，即也可以单独定义某一个方向上的属性。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,2,'margin不可以单独定义某一个方向的值。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'Border是CSS的一个属性，用它可以给能确定范围的HTML标记，如td、div添加边框。只能定义边框的样式（style）、宽度(width)。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'CSS选择器中用户定义的类和用户定义的ID在使用上只有定义方式不同。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,2,'对于自定义样式，其名称必须以点（.）开始','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,2,'<div>标签简单而言是一个区块容器标签。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,2,' position允许用户精确定义元素框出现的相对位置。','正确','错误','正确');

INSERT INTO judge_table VALUES(NULL,3,'if语句可以实现多路分支','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,3,'一个用switch语句实现的多路分支结构的程序不能使用if语句实现。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,3,'任何循环语句的循环体至少要执行一次。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,3,'循环语句是可以嵌套的，不仅相同的循环语句可以嵌套，不同的循环语句也可以嵌套。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,3,'在JavaScript中，任何一种循环结构的程序段，都可以用while循环实现。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,3,'break语句可以出现在各种不同循环语句的循环体中。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,3,'continue语句智能出现在循环体中。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,3,'要排除程序中的错误只能使用专业化的调试工具。','正确','错误','错误');

INSERT INTO judge_table VALUES(NULL,4,'类可以有多个构造方法。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,4,'用Javac编译Java源文件后得到代码叫字节码。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,4,'Java源程序文件中是不区分字母的大小写的。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,4,'当一个方法在运行过程中产生一个异常，则这个方法会终止，但是整个程序不一定终止运行。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,4,'Java源程序文件中是不区分字母的大小写的。','正确','错误','错误');
INSERT INTO judge_table VALUES(NULL,4,'一个类如果实现了某个接口，那么它必须重载该接口中的所有方法。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,4,'Java的屏幕坐标是以像素为单位，容器的左上角被确定为坐标的起点。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,4,'设String对象s=”H”，运行语句System.out.println(s.concat(“ello!”));后String对象s的内容为”Hello!”，所以语句输出为”Hello!”','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,4,'Java的源代码中定义几个类，编译结果就生成几个以.class为后缀的字节码文件。','正确','错误','正确');
INSERT INTO judge_table VALUES(NULL,4,'Java有垃圾回收机制，内存回收程序可在指定的时间释放内存对象。','正确','错误','错误');

#填空题表
CREATE TABLE fill_table(
	id INT PRIMARY KEY AUTO_INCREMENT,
	sid INT,
	title VARCHAR(128),
	answer VARCHAR(64)
);
INSERT INTO fill_table VALUES(NULL,1,'使用文本编辑器编辑完HTML后，扩展名可以是_____或_____。','html,htm');
INSERT INTO fill_table VALUES(NULL,1,'表格的标签是______，单元格的标签是______。','table,td');
INSERT INTO fill_table VALUES(NULL,1,'在编辑table表格时，合并行使用 ______合并列使用______。','rowspan,colspan');
INSERT INTO fill_table VALUES(NULL,1,'在CSS层叠样式表当中经常用到的三种选择器：____、____、____。','元素选择器,类选择器,id选择器');
INSERT INTO fill_table VALUES(NULL,1,'在JavaScript脚本语言当中，定义函数使用____单词表示。','function');
INSERT INTO fill_table VALUES(NULL,1,'用来输入密码的表单域是___标签type属性等于 ____。','input,password');
INSERT INTO fill_table VALUES(NULL,1,'文件头标签也就是通常所见到的____标签。','head');
INSERT INTO fill_table VALUES(NULL,1,'预格式化文本标记<pre></pre>的功能是______。','标记内的内容按照原格式显示在网页当中');
INSERT INTO fill_table VALUES(NULL,1,'_____是网页与网页之间联系的纽带，也是网页的重要特色。','超链接');
INSERT INTO fill_table VALUES(NULL,1,'window的____事件在浏览器完成页面加载后立即触发。','onload');

INSERT INTO fill_table VALUES(NULL,2,'在标签当中可以通过____属性中设定CSS样式。','style');
INSERT INTO fill_table VALUES(NULL,2,'CSS样式遵循____原则。','就近');
INSERT INTO fill_table VALUES(NULL,2,'表单的提交有两种方式，分别是:_____、_____。','get,post');
INSERT INTO fill_table VALUES(NULL,2,'表单对象的名称由____属性设定；提交方法由_____属性指定；若要提交大数据量的数据，则应采用_____方法；表单提交后的数据处理程序由_____属性指定。','name,method,post,action');
INSERT INTO fill_table VALUES(NULL,2,'经常说的表单验证，那么表单是使用____标签表示。','form');
INSERT INTO fill_table VALUES(NULL,2,'利用CSS设置网页背景颜色为绿色的语句________。','<body style=”background-color:green;”>');
INSERT INTO fill_table VALUES(NULL,2,'请写出在网页中设定表格边框的厚度的属性_____；设定表格单元格之间宽度属性____；设定表格资料与单元格线的距离属性_____。','border,cellpadding,cellspacing');
INSERT INTO fill_table VALUES(NULL,2,'<tr>….</tr>是用来定义______；<td>…</td>是用来定义______；','表格的一行,表格的一列');

INSERT INTO fill_table VALUES(NULL,3,'JavaScript有两种引用数据类型 ：_____、____。','数组,对象');
INSERT INTO fill_table VALUES(NULL,3,'Javascript通过_____延迟指定时间后，去执行某程序。','setTimeout');
INSERT INTO fill_table VALUES(NULL,3,'Javascript里String对象通过____方法取第一次出现子字符串的字符位置。','indexOf');
INSERT INTO fill_table VALUES(NULL,3,'Javascript里取字符串的长度是____,取数组的长度是 _____。 ','.length,.length');
INSERT INTO fill_table VALUES(NULL,3,'Javascript里若已知元素name，通过_____可以获 得一组元素。','getElementsByName()');
INSERT INTO fill_table VALUES(NULL,3,'Javascript弹出对话框的三个命令____,____,____。','alert(),promot(),confirm()');
INSERT INTO fill_table VALUES(NULL,3,'Javascript里字符串执行正则的方法是，字符串里根据指定字符切割的方法是____。','split()');
INSERT INTO fill_table VALUES(NULL,3,'Javascript里Math的_____方法返回介于0和1之间的伪随机数。','random()');
INSERT INTO fill_table VALUES(NULL,3,'Javascript通过___延迟指定时间后，去执行某程序。','setTimeout');
INSERT INTO fill_table VALUES(NULL,3,'Javascript当中的变量，分为____、____。','全局变量,局部变量');

INSERT INTO fill_table VALUES(NULL,4,'一个Java源程序是由若干个____组成。','类');
INSERT INTO fill_table VALUES(NULL,4,'____是Java的关键字，用来定义类','class');
INSERT INTO fill_table VALUES(NULL,4,'Java应用程序中有多个类时，java命令后的类名必须是包含了____方法的那个类的名字','main');
INSERT INTO fill_table VALUES(NULL,4,'在一个Java应用程序中main方法必须被说明为____。','public static void');
INSERT INTO fill_table VALUES(NULL,4,'Java中所有程序都使用方法，应用程序以____方法开始。','main');
INSERT INTO fill_table VALUES(NULL,4,'____就是Java语言中已经被赋予特定意义的一些单词，不可以把这类词作为名字来用。','关键字');
INSERT INTO fill_table VALUES(NULL,4,'使用关键字____来定义逻辑变量。','boolean');
INSERT INTO fill_table VALUES(NULL,4,'Java中byte型数组在内存中的存储形式是____。','补码');
INSERT INTO fill_table VALUES(NULL,4,'对于int型变量，内存分配____个字节。','4');
INSERT INTO fill_table VALUES(NULL,4,'对于byte型变量，内存分配____个字节。','1');
INSERT INTO fill_table VALUES(NULL,4,'对于long型变量，内存分配____个字节。','8');
INSERT INTO fill_table VALUES(NULL,4,'对于short型变量，内存分配____个字节。','2');
INSERT INTO fill_table VALUES(NULL,4,'使用关键字____来定义字符变量。','char');

#问答题表
CREATE TABLE short_table(
	id INT PRIMARY KEY AUTO_INCREMENT,
	sid INT,
	title VARCHAR(128),
	answer VARCHAR(1024)
);
INSERT INTO short_table VALUES(NULL,1,'主流浏览器内核私有属性css前缀：','1、mozilla内核 (firefox,flock等) -moz；2、webkit内核(safari,chrome等) -webkit；3、opera内核(opera浏览器) -o；4、trident内核(ie浏览器) -ms；');
INSERT INTO short_table VALUES(NULL,1,'默认情况下，使用h1标签会形成什么效果?','加粗、大号文字');
INSERT INTO short_table VALUES(NULL,1,'关于HTML语义化，你知道的都有哪些标签？','header、article、address都属于语义化明确的标签。');
INSERT INTO short_table VALUES(NULL,1,'添加样式的方式有','1、内联式：即直接加在标签上的样式 如:<div style="width:100px;"></div> 导入样式：@import 
url("css/style.css")；2、嵌入式：即用<style>.classname {width: 100px;}</style>标签括起来写在页面中的样式；3、外部引用式：即将样式单独放到一个文件夹中，然后用link标签引入页面的形式，如：<link rel="stylesheet" 
type="text/css" href="Css.css" />；');
INSERT INTO short_table VALUES(NULL,1,'标签的目的是什么？','用可伸缩矢量图来画图或文本');
INSERT INTO short_table VALUES(NULL,1,'img标签中的alt属性的作用是','提供替代图片的信息，使屏幕阅读器能获取到关于图片的信息');
INSERT INTO short_table VALUES(NULL,1,'form表单中input元素的readonly与disabled属性描述','1、设置readonly = true，页面上无法修改内容，但是可以通过JavaScript修改,内容会被提交；2、设置disabled = true,无法修改内容，也不会被提交');
INSERT INTO short_table VALUES(NULL,1,'放在HTML里的哪一部分JavaScripts会在页面加载的时候被执行？','1、在HTML body部分中的JavaScripts会在页面加载的时候被执行。2、在HTML head部分中的JavaScripts会在被调用的时候才执行。');

INSERT INTO short_table VALUES(NULL,2,'css hack原理及常用hack','原理：利用不同浏览器对CSS的支持和解析结果不一样编写针对特定浏览器样式。常见的hack有:属性hack;选择器hack;IE条件注释');
INSERT INTO short_table VALUES(NULL,2,'介绍一下标准的CSS的盒子模型？低版本IE的盒子模型有什么不同的？','有两种，IE盒子模型、W3C盒子模型；盒模型： 内容(content)、填充(padding)、边界(margin)、 边框(border)；区 别： IE的content部分把 border 和 padding计算了进去;');
INSERT INTO short_table VALUES(NULL,2,'rgba() 和 opacity 的透明效果有什么不同？','opacity 作用于元素以及元素内的所有内容（包括文字）的透明度;rgba() 只作用于元素自身的颜色或其背景色，子元素不会继承透明效果');
INSERT INTO short_table VALUES(NULL,2,'css 属性 content 有什么作用？','content 属性专门应用在 before/after 伪元素上，用于插入额外内容或样式');
INSERT INTO short_table VALUES(NULL,2,'请解释一下 CSS3 的 Flexbox（弹性盒布局模型）以及适用场景？','Flexbox 用于不同尺寸屏幕中创建可自动扩展和收缩布局');
INSERT INTO short_table VALUES(NULL,2,'li与li之间有看不见的空白间隔是什么原因引起的？有什么解决办法？','i排列受到中间空白(回车/空格)等的影响，因为空白也属于字符，会被应用样式占据空间，产生间隔。解决办法：在ul设置设置font-size=0,在li上设置需要的文字大小');
INSERT INTO short_table VALUES(NULL,2,'ont-style 属性 oblique 是什么意思？','font-style: oblique; 使没有 italic 属性的文字实现倾斜');
INSERT INTO short_table VALUES(NULL,2,'如果需要手动写动画，你认为最小时间间隔是多久？','16.7ms 多数显示器默认频率是60Hz，即1秒刷新60次，所以理论上最小间隔: 1s / 60 * 1000 ＝ 16.7ms');
INSERT INTO short_table VALUES(NULL,2,'overflow: scroll 时不能平滑滚动的问题怎么处理？','监听滚轮事件，然后滚动到一定距离时用 jquery 的 animate 实现平滑效果。');

INSERT INTO short_table VALUES(NULL,3,'JS是什么，JS和HTML的开发如何结合？','JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，为浏览器的一部分，广泛用于客户端的脚本语言，最早是在HTML（标准通用标记语言下的一个应用）网页上使用，用来给HTML网页增加动态功能。通过在<script></script>标签中使用或者<script src=“XX.js”></script>引入');
INSERT INTO short_table VALUES(NULL,3,'什么是全局变量？这些变量如何声明，使用全局变量有哪些问题？','全局变量是整个代码长度可用的变量，也就是说这些变量没有任何作用域。var关键字用于声明局部变量或对象。如果省略var关键字，则声明一个全局变量。例：// Declare a global globalVariable = “Test”;使用全局变量所面临的问题是本地和全局变量名称的冲突。此外，很难调试和测试依赖于全局变量的代码。');
INSERT INTO short_table VALUES(NULL,3,'ViewState和SessionState有什么区别？','“ViewState”特定于会话中的页面。“SessionState”特定于可在Web应用程序中的所有页面上访问的用户特定数据。');
INSERT INTO short_table VALUES(NULL,3,'什么是===运算符？','===被称为严格等式运算符，当两个操作数具有相同的值而没有任何类型转换时，该运算符返回true。');
INSERT INTO short_table VALUES(NULL,3,'说明如何使用JavaScript提交表单？','要使用JavaScript提交表单，请使用document.form [0] .submit（）;');
INSERT INTO short_table VALUES(NULL,3,'3 + 2 +“7”的结果是什么？','由于3和2是整数，它们将直接相加。由于7是一个字符串，它将会被直接连接，所以结果将是57。');
INSERT INTO short_table VALUES(NULL,3,'说明如何检测客户端机器上的操作系统？','为了检测客户端机器上的操作系统，应使用navigator.appVersion字符串（属性）。');
INSERT INTO short_table VALUES(NULL,3,'Javascript中的NULL是什么意思？','NULL用于表示无值或无对象。它意味着没有对象或空字符串，没有有效的布尔值，没有数值和数组对象。');
INSERT INTO short_table VALUES(NULL,3,'delete操作符的功能是什么？','delete操作符用于删除程序中的所有变量或对象，但不能删除使用VAR关键字声明的变量。');
INSERT INTO short_table VALUES(NULL,3,'JavaScript中有哪些类型的弹出框？','Alert、Confirm and、Prompt');
INSERT INTO short_table VALUES(NULL,3,'break和continue语句的作用？','Break语句从当前循环中退出。continue语句继续下一个循环语句。');
INSERT INTO short_table VALUES(NULL,3,'在JavaScript中使用的Push方法是什么？','push方法用于将一个或多个元素添加或附加到数组的末尾。使用这种方法，可以通过传递多个参数来附加多个元素。');

INSERT INTO short_table VALUES(NULL,4,'嵌套静态类与顶级类有什么区别？','一个公共的顶级类的源文件名称与类名相同，而嵌套静态类没有这个要求。一个嵌套类位于顶级类内部，需要使用顶级类的名称来引用嵌套静态类，如 HashMap.Entry 是一个嵌套静态类，HashMap 是一个顶级类，Entry是一个嵌套静态类。
');
INSERT INTO short_table VALUES(NULL,4,'你能写出一个正则表达式来判断一个字符串是否是一个数字吗？','一个数字字符串，只能包含数字，如 0 到 9 以及 +、- 开头，通过这个信息，你可以下一个如下的正则表达式来判断给定的字符串是不是数字。
');
INSERT INTO short_table VALUES(NULL,4,'Java 中，受检查异常和不受检查异常的区别？','受检查异常编译器在编译期间检查。对于这种异常，方法强制处理或者通过 throws 子句声明。其中一种情况是 Exception 的子类但不是 RuntimeException 的子类。非受检查是 RuntimeException 的子类，在编译阶段不受编译器的检查。');
INSERT INTO short_table VALUES(NULL,4,'Java 中，Serializable与Externalizable的区别？','Serializable 接口是一个序列化 Java 类的接口，以便于它们可以在网络上传输或者可以将它们的状态保存在磁盘上，是 JVM 内嵌的默认序列化方式，成本高、脆弱而且不安全。Externalizable 允许你控制整个序列化过程，指定特定的二进制格式，增加安全机制。');
INSERT INTO short_table VALUES(NULL,4,'进程和线程的区别是什么？','进程是执行着的应用程序，而线程是进程内部的一个执行序列。一个进程可以有多个线程。线程又叫做轻量级进程。');
INSERT INTO short_table VALUES(NULL,4,'同步方法和同步代码块的区别是什么？','在Java语言中，每一个对象有一把锁。线程可以使用synchronized关键字来获取对象上的锁。synchronized关键字可应用在方法级别(粗粒度锁)或者是代码块级别(细粒度锁)。');
INSERT INTO short_table VALUES(NULL,4,'在监视器(Monitor)内部，是如何做线程同步的？程序应该做哪种级别的同步？','监视器和锁在Java虚拟机中是一块使用的。监视器监视一块同步代码块，确保一次只有一个线程执行同步代码块。每一个监视器都和一个对象引用相关联。线程在获取锁之前不允许执行同步代码。');
INSERT INTO short_table VALUES(NULL,4,'什么是死锁(deadlock)？','两个进程都在等待对方执行完毕才能继续往下执行的时候就发生了死锁。结果就是两个进程都陷入了无限的等待中。');
INSERT INTO short_table VALUES(NULL,4,'如何确保N个线程可以访问N个资源同时又不导致死锁？','使用多线程的时候，一种非常简单的避免死锁的方式就是：指定获取锁的顺序，并强制线程按照指定的顺序获取锁。因此，如果所有的线程都是以同样的顺序加锁和释放锁，就不会出现死锁了。');
INSERT INTO short_table VALUES(NULL,4,'为什么集合类没有实现Cloneable和Serializable接口？','克隆(cloning)或者是序列化(serialization)的语义和含义是跟具体的实现相关的。因此，应该由集合类的具体实现来决定如何被克隆或者是序列化。');
INSERT INTO short_table VALUES(NULL,4,'什么是迭代器(Iterator)？','Iterator接口提供了很多对集合元素进行迭代的方法。每一个集合类都包含了可以返回迭代器实例的。迭代方法。迭代器可以在迭代的过程中删除底层集合的元素。');
INSERT INTO short_table VALUES(NULL,4,'Java中垃圾回收有什么目的？什么时候进行垃圾回收？','垃圾回收的目的是识别并且丢弃应用不再使用的对象来释放和重用资源。');





#资讯内容表
CREATE TABLE zixun_content(
	id INT PRIMARY KEY AUTO_INCREMENT,
	cid INT,
	title VARCHAR(64),
	time VARCHAR(64),
	newsfrom VARCHAR(64),
	click INT,
	score FLOAT(2,1),
	width VARCHAR(64),
	img VARCHAR(128),
	content VARCHAR(3000)
);
INSERT INTO zixun_content VALUES(NULL,1,'【PS案例】三步打造一个折纸图形','2018-09-11 11:26','凤凰科技',21,3.5,'98','https://www.wyptheroc.com:3000/4.png',"<div class='text'>导读：今天给大家分享一个用PS制作的案例——折纸图形，后续会有更多的案例发布在优才论坛，敬请关注哦~</div><img src='https://www.wyptheroc.com:3000/1.png' mode='widthFix' class='image'><div class='text'>大家好！如上图，三步打造一枚精致折纸图形，真的就这么简单，下面就为大家介绍下大致思路和方法：</div><div class='text'>1.第一步：创建图形，圆角矩形工具，调整一个合适圆角，填充颜色，然后拷贝，绿色的锚点拉长，旋转角度45度，得到如下图：</div><img src='https://www.wyptheroc.com:3000/2.png' mode='widthFix' class='image'><img src='https://www.wyptheroc.com:3000/3.png' mode='widthFix' class='image'><div class='text'>2.第二部：绿色矩形，调节锚点，用直接选择工具，选择图中黑色那个锚点，移动拖到合适位置，如下图(1-4)：</div><img src='https://www.wyptheroc.com:3000/4.png' mode='widthFix' class='image'><img src='https://www.wyptheroc.com:3000/5.png' mode='widthFix' class='image'><div class='text'>3.第三部：蓝色的矩形，做个渐变，选中图形，在添加形状样式里做个渐变叠加，由深蓝到浅蓝；</div><img src='https://www.wyptheroc.com:3000/6.png' mode='widthFix' class='image'><img src='https://www.wyptheroc.com:3000/7.png' mode='widthFix' class='image'><img src='https://www.wyptheroc.com:3000/8.png' mode='widthFix' class='image'><img src='https://www.wyptheroc.com:3000/9.png' mode='widthFix' class='image'><div class='text'>然后在图形下面再加个圆背景，整个图形制作完成！</div><img src='https://www.wyptheroc.com:3000/10.png' mode='widthFix' class='image'><div class='text' style='text-align:center'>THANKS！</div>");
INSERT INTO zixun_content VALUES(NULL,2,'刚开始学编程？这几款小工具能让你事半功倍','2018-09-01 10:10','Mario Hoyos',10,4,'112','https://www.wyptheroc.com:3000/2_1.jpg',"<img src='https://www.wyptheroc.com:3000/2_1.jpg' mode='widthFix' class='image'><div class='text'>科技行业里，可供人们使用的工具成百上千，你要怎么知道用哪一种上手最合适呢？</div><div class='text'>拿最近刚进入编程这行的人来说吧，大量的工具信息堆砌过来其实毫无益处，反而会无从下手。我发现在自己的开发过程中，很多安装的扩展工具不仅没有真正起到助益作用，反而常常妨碍了正常的开发工作。</div><div class='text'>我不是专家，不过随着时间的推移，我还是编制了一份工具清单，这些工具已经证明对我非常有用。如果你刚刚开始学习怎么编程的话，这个清单能给你提供一些指导。如果你是个经验丰富的开发人员，也希望你能从中学到一些新的东西。</div><div class='text'>我将把这篇文章分为Chrome扩展程序和VS代码扩展扩展程序两部分。我知道还有其他的浏览器和文本编辑器，但是我想你当然只能在你能找到的工具里选择，所以还是别因为个人喜好而引起一场宗教般的争论。</div><div class='text'>请随便选。</div><h4>Chrome扩展程序</h4><img src='https://www.wyptheroc.com:3000/2_2.jpg' mode='widthFix' class='image'><div class='text'>现在设我是一位web开发人员，以Chrome为阵地。下面是一些能让我少花点时间的工具：</div><div class='text'>·WhatFont —— 名字就说明了一切。这是找出你最喜欢网站使用的字体的简单方法，这样你就可以为己所用了。</div><div class='text'>·Pesticide—— 修改CSS的绝佳程序。当我试着学习匣子模型的时候，它简直就是救命稻草般的存在。</div><div class='text'>·Colorzilla ——用于复制确切颜色的一个网站，用它可以将颜色直接复制到剪贴板上，这样你就没必要花太多时间获得正确的RGBA组合了。</div><h4>VS Code扩展程序</h4><img src='https://www.wyptheroc.com:3000/2_3.jpg' mode='widthFix' class='image'><div class='text'>Visual Studio Code是我写代码时的不二之选。</div><div class='text'>·Auto Rename Tag ——自动重命名成对的HTML标记。假如你创建了一个&lt;p&gt;标记。现在你想更改它。有了这个软件，你只需要更改一个就行，另一个会自动修改。从理论上来说，使用这个软件可以把你的工作效率提升一倍。</div><div class='text'>·HTML CSS Support ——HTML文档的CSS支持工具。该工具在获得一些简洁的语法高亮显示和代码建议方面非常有用。</div><div class='text'>·Pesticide—— 修改CSS的绝佳程序。当我试着学习匣子模型的时候，它简直就是救命稻草般的存在。</div><div class='text'>·HTML Snippets ——这一工具在代码分段方面非常有用，可以为你节省大量的时间。它能跟Emmet配对，这样一来你甚至都不用再真正键入HTML了。</div><h4>总结</h4><div class='text'>你肯定也有自己中意的工具，这些工具对你的开发工作来说是必不可少的。也希望我上面提到的一些工具能够提高你的工作效率。</div><div class='text'>但是千万不要落入贪多不烂的陷阱，因为它可能耗费很多时间。</div><div class='text'>希望你能在评论区留下你最喜欢的工具，这样我们就可以共同进步了。</div>");
INSERT INTO zixun_content VALUES(NULL,3,'危险的 target=”_blank” 与 “opener”','2018-08-21 09:00','创宇前端',62,3.0,'84','https://www.wyptheroc.com:3000/3_1.jpg',"<img src='https://www.wyptheroc.com:3000/3_1.jpg' mode='widthFix' class='image'><div class='text'>在网页中使用链接时，如果想要让浏览器自动在新的标签页打开指定的地址，通常的做法就是在 a 标签上添加 target等于'_blank' 属性。</div><div class='text'>然而，就是这个属性，为钓鱼攻击者带来了可乘之机。</div><h4>起源</h4><h5>parent 与 opener</h5><div class='text'>在说 opener 之前，可以先聊聊 <iframe> 中的 parent。</div><div class='text'>我们知道，在&lt;iframe&gt;中提供了一个用于父子页面交互的对象，叫做 window.parent，我们可以通过 window.parent 对象来从框架中的页面访问父级页面的 window。</div><div class='text'>opener 与 parent 一样，只不过是用于&lt;a target='_blank' &gt; 在新标签页打开的页面的。通过 &lt;a target='_blank' &gt; 打开的页面，可以直接使用 window.opener 来访问来源页面的 window 对象。</div><h4>同域与跨域</h4><div class='text'>浏览器提供了完整的跨域保护，在域名相同时，parent 对象和 opener 对象实际上就直接是上一级的 window 对象；而当域名不同时，parent 和 opener 则是经过包装的一个 global 对象。这个 global 对象仅提供非常有限的属性访问，并且在这仅有的几个属性中，大部分也都是不允许访问的（访问会直接抛出 DOMException）。</div><img src='https://www.wyptheroc.com:3000/3_2.jpg' mode='widthFix' class='image'><div class='text'>在&lt;iframe&gt;中，提供了一个 sandbox 属性用于控制框架中的页面的权限，因此即使是同域，也可以控制&lt;iframe&gt;的安全性。</div><h4>防御</h4><h5>JavaScript</h5><div class='text'>noopener 属性看似是解决了所有问题，但是…浏览器的兼容性问题…</div><img src='https://www.wyptheroc.com:3000/3_3.jpg' mode='widthFix' class='image'><div class='text'>可以看到，现在绝大多数浏览器都已经兼容了 rel='noopener'属性了。但是，为了保护稍旧的“近代”浏览器或是很旧的“古代”浏览器甚至是“远古”浏览器，只有 noopener 属性还是远远不够的。</div><div class='text'>这时，就只能请出下面这段原生 JavaScript 来帮忙了。</div><img src='https://www.wyptheroc.com:3000/3_4.png' mode='widthFix' class='image'>");
INSERT INTO zixun_content VALUES(NULL,4,'用 Vue 编写一个长按指令','2018-8-10 15:30',' Obaseki Nosa',26,3.5,'98','https://www.wyptheroc.com:3000/4_1.jpg',"<img src='https://www.wyptheroc.com:3000/4_1.jpg' mode='widthFix' class='image'><div class='text'>有没有想过只需按住一个按钮几秒钟就能在你的 Vue 应用中触发一个功能？</div><div class='text'>有没有想过创建一个按钮，按下一次就可以清除单次输入（或者持续按住可以清除所有输入）？</div><div class='text'>想过？太好了，英雄所见略同。</div><div class='text'>本文就是讲解如何在按下（或者按住）一个按钮时，既执行一个函数，又清除输入。</div><div class='text'>首先，我会讲解如何使用纯 JS 实现。而后也会创建一个 Vue 指令。</div><div class='text'>请系好安全带。好戏在后头呢。</div><h4>原理</h4><div class='text'>要实现长按，用户需要按下并按住按钮几秒钟。</div><div class='text'>想通过代码模拟这一效果，我们需要在鼠标“点击”按下按钮时，启动一个计时器监听用户按下的时长，如果时间超过我们期望的时长，就执行相应的函数。</div><div class='text'>非常简单！然而，我们需要知道用户何时按住按钮。</div><h4>如何实现</h4><div class='text'>当用户点击按钮时，在点击事件之前会触发另外两个事件: mousedown 和 mouseup。</div><div class='text'>当用户按下按钮时触发 mousedown 事件，用户松开按钮时调用 mouseup 事件。</div><div class='text'>我们需要做的是:</div><div class='text'>1、mousedown 事件触发时，启动计时器。</div><div class='text'>一旦 mouseup 事件在预期的 2 秒前被触发，就清除计时器，不要执行相应的函数。就当作一个普通的点击事件</div><div class='text'>只要计时器在我们预设的时间内没有被清除，即 mouseup 事件没有被触发——那么可以断定用户没有释放按钮。因此，可以判定为一次长按，可以执行关联的函数。</div>");
INSERT INTO zixun_content VALUES(NULL,5,'滚动视差？CSS 不在话下','2018-7-16 18:30','伯乐在线',12,3.0,'84','https://www.wyptheroc.com:3000/5_0.jpg',"<h4>何为滚动视差</h4><div class='text'>视差滚动（Parallax Scrolling）是指让多层背景以不同的速度移动，形成立体的运动效果，带来非常出色的视觉体验。 作为网页设计的热点趋势，越来越多的网站应用了这项技术。</div><img src='https://www.wyptheroc.com:3000/5_1.gif' mode='widthFix' class='image'><div class='text'>通常而言，滚动视差在前端需要辅助 Javascript 才能实现。当然，其实 CSS 在实现滚动视差效果方面，也有着不俗的能力。下面就让我们来见识一二：</div><h4>认识 background-attachment</h4><div class='text'>background-attachment 算是一个比较生僻的属性，基本上平时写业务样式都用不到这个属性。但是它本身很有意思。</div><div class='text'>background-attachment：如果指定了 background-image ，那么 background-attachment 决定背景是在视口中固定的还是随着包含它的区块滚动的。</div><div class='text'>单单从定义上有点难以理解，随下面几个 Demo 了解下 background-attachment 到底是什么意思：</div><h4>background-attachment: scroll</h4><div class='text'>scroll 此关键字表示背景相对于元素本身固定， 而不是随着它的内容滚动。</div><h4>background-attachment: local</h4><div class='text'>local 此关键字表示背景相对于元素的内容固定。如果一个元素拥有滚动机制，背景将会随着元素的内容滚动， 并且背景的绘制区域和定位区域是相对于可滚动的区域而不是包含他们的边框。</div><h4>background-attachment: fixed</h4><div class='text'>fixed 此关键字表示背景相对于视口固定。即使一个元素拥有滚动机制，背景也不会随着元素的内容滚动。</div><h4>使用 background-attachment: fixed 实现滚动视差</h4><div class='text'>效果如下：</div><img src='https://www.wyptheroc.com:3000/5_2.gif' mode='widthFix' class='image'><div class='text'>嗯？有点神奇，为什么会是这样呢？可能很多人会和我一样，第一次接触这个属性对这样的效果感到懵逼。</div><div class='text'>我们把上面 background-attachment: fixed 注释掉，或者改为 background-attachment: local，再看看效果：</div><img src='https://www.wyptheroc.com:3000/5_3.gif' mode='widthFix' class='image'><div class='text'>当页面滚动到图片应该出现的位置，被设置了 background-attachment: fixed 的图片并不会继续跟随页面的滚动而跟随上下移动，而是相对于视口固定死了。</div><div class='text'>效果如下：</div><img src='https://www.wyptheroc.com:3000/5_4.gif' mode='widthFix' class='image'><div class='text'>综上，就是 CSS 使用 background-attachment: fixed 实现滚动视差的一种方式，也是相对而言比较容易的一种。</div>");
INSERT INTO zixun_content VALUES(NULL,6,'组件、Prop 和 State','2018-6-16 10:30','Linton Ye',11,5,'140','https://www.wyptheroc.com:3000/6_1.jpg',"<h4>学习目标</h4><div class='text'>当你读完本文后希望你能重新回到这里，并能够轻松回答以下问题:</div><div class='text'>·什么是 prop ？</div><div class='text'>·什么是 state ？</div><div class='text'>·何时使用 prop ？何时使用 state ？</div><div class='text'>·如何让例子的窗户可以打开和关闭？</div><div class='text'>·你能写出 Domo 帽子那个例子的伪代码吗？</div><h4>盖房子</h4><div class='text'>要想理解这些概念是什么以及如何使用它们，我们先来写一个小示例。就盖个房子如何？(点击门有惊喜)'></div><div class='text'>查看由 focuser (@focuser) 在 CodePen 编写的 Demo : React 小屋。'></div><h4>组件</h4><div class='text'>如果你还记得我们在前面文章中所讨论过的，组件的概念是 React 的三大支柱之一。使用 React 开发应用基本都是在使用组件。'></div><div class='text'>第一步是将 UI 分解成多个组件。例如，我们可以这样来拆分房子:</div><img src='https://www.wyptheroc.com:3000/6_1.jpg' mode='widthFix' class='image'><div class='text现在来编码！'>现在来编码！</div><img src='https://www.wyptheroc.com:3000/6_2.png' mode='widthFix' class='image'><div class='text'>等一下，怎么看起来这么像 HTML ？没错！React 的部分代码看上去就是非常像 HTML ，其实就是这样设计的，这是为了让 Web 设计师理解和编写 React 代码更容易一些。太贴心了！</div><div class='text'>因此，在上面的代码中，我们使用</div><div class='text'>作为容器，这基本和 HTML 中是一样的。而像 Roof 和 Wall 这样的标签是我们即将定义的自定义标签/组件。温馨提示: 上面的代码并非实际的 React 代码，甚至连 JavaScript 都算不上。暂时，我们只使用这种宽松的语法来介绍概念。一旦你理解这些概念后，我们再来学习 JavaScript 的细节并将上述概念转换成真实代码。</div><div class='text'>为了让这个例子更容易理解一些，我再简化一下: 从现在开始，我们来写一个超级简单的 Web 应用，连图片都不用，只显示文字。</div><div class='text'>例如，Roof 其实就是一个里面有文字的 div :</div><img src='https://www.wyptheroc.com:3000/6_3.png' mode='widthFix' class='image'><div class='text'>其他组件也是如此，都是只有文字的 div 而已。首先，我们来看下房子的完整的 React 风格的代码:</div><img src='https://www.wyptheroc.com:3000/6_4.png' mode='widthFix' class='image'><div class='text'>这没什么不好理解的，是吧？House 是由 Roof、Wall、Window 和 Door 组成的，这些都是纯文本构成的组件。</div><div class='text'>最后，React 生成的 HTML 如下所示:</div><img src='https://www.wyptheroc.com:3000/6_5.png' mode='widthFix' class='image'>");

UPDATE zixun_content SET width ='98' WHERE cid = 1 ;
UPDATE zixun_content SET width ='112' WHERE cid = 2 ;
UPDATE zixun_content SET width ='84' WHERE cid = 3 ;
UPDATE zixun_content SET width ='98' WHERE cid = 4 ;
UPDATE zixun_content SET width ='84' WHERE cid = 5 ;
UPDATE zixun_content SET width ='140' WHERE cid = 6 ;












