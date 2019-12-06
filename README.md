[Web课程设计 - 中南大学主页 - 简书](http://www.jianshu.com/p/711f2ea9b182)

# 实验一
## 一、实验内容
制作一个与中南大学主页类似的页面：
1. 熟悉html、CSS以及JavaScript使用，完成网页设计。CSS和JS文件单独书写。
1. 版面排版和内容需基本接近学校主页
1. 只需完成首页的制作，无需做二级页面
1. “教育机构”需有类似的弹出窗口菜单
1. “首页”等菜单需要有类似的弹出菜单

## 二、实验设计
### 2.1 head 标签内容
head 标签内通常会由 title，meta，link，script 标签。
- title 是网页标题栏名称；
- meta 提供有关页面的元信息，比如作者，页面字符格式等；
- link 可以链接标题栏要显示的图标：
images/favicon.ico  (icon文件在线生成生成器转化图片)
link也可以链接css文件路径，自定义的css和bootstrap的css；
- script 写入自己的 js 文件或者 src 链接的 jQuery 文件。


```html
<head>
    <title>中南大学</title>
    <!-- meta 可提供有关页面的元信息（meta-information）-->
    <meta name="keywords" content="中南大学" charset="utf-8"/>

    <!--标题栏图标-->
    <!--rel, shortcut icon, type-->
    <link href="images/favicon.ico" rel="icon" type="image/x-icon">
    <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">  <!--快捷方式的图标-->

    <!--css文件-->
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet">

    <script src="js/jquery-3.2.1.min.js"></script>

</head>
```

### 2.2 页面布局


![](http://upload-images.jianshu.io/upload_images/1877813-ca76e157636217d2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

整体页面自上而下分为 3 部分：

||||
|:-:|:-:|:-:|
|绿色框|	div class = “top”	|页面头部|
|紫色框|	div class = “main”	|页面主体|
|红色框|	div class = “foot”	|页面尾部|


#### 2.2.1 页面头部

![](http://upload-images.jianshu.io/upload_images/1877813-be6dff2b53104fe8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

左边中南大学矩形 logo，img 标签

右边内容分为3行
- 第1行：
未来学生 在校学生 教职员工 校友校董 
包含2个下拉列表（教育机构 研究机构）

- 第2行：
信息门户| 中南e行| 邮件系统| 图书馆| 简| 繁| English
这些都是 a 标签，通过合理地设置字体大小和间距就可以做出这种效果

- 第3行：
1个搜索框

通过设置浮动，使得左边的图片和右边的内容显示在一行。

#### 2.2.2 页面主体


![](http://upload-images.jianshu.io/upload_images/1877813-4f9e3f61dcf68fff.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

主体部分自上而下分为 4 部分：

|||
|:-:|:-:|
|红色	|nav 导航栏包含8个选项
|紫色	|banner 学校图片海报
|蓝色	|中南要闻，2个 li 浮动显示
|绿色	|学生信息查询

#### 2.2.3 页面底部

![](http://upload-images.jianshu.io/upload_images/1877813-41b2ad4f76390466.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
页面底部蓝色的固定在浏览器底部，如果页面内容足够多，就不用设置 fixed 属性，底部的 bar 自动就在页面底部，效果也不错。

div id = “foot” 对应的CSS

```css
/*底部*/
#foot {
    width: 100%;
    height: 50px;
    padding: 0;
    background: #0f70b4;
    position: fixed;
    bottom: 0;
}
```

### 2.3 弹出子菜单
教育机构和首页栏目弹出菜单一样，将子菜单 ul 包括在上一级标签教育机构的 li 下面。

![](http://upload-images.jianshu.io/upload_images/1877813-b94577a8b8c415d3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 红色箭头指示隐藏的下拉列表 ul class="jyjgli"
- 绿色箭头指示 ul 的父级标签 li id="eduqlink" 


![](http://upload-images.jianshu.io/upload_images/1877813-477fe729529a8755.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


默认情况下 ul 的 display=none，当鼠标 hover 时，display=block

```css
/*教育机构*/
#main_nav li ul.jyjgli {
    position: absolute;
    top: 21px;
    right: 0;
    width: 350px;
    height: 410px;
    padding: 15px 5px 15px 18px;
    background: #396f98;
    border: 1px solid white;
    display: none;
    z-index: 999;
}

/*hover需要上下级*/
/*li:hover ul*/
#main_nav li:hover ul {
    display: block;
}
```

同样，对于首页部分，也是这样的原理。


![](http://upload-images.jianshu.io/upload_images/1877813-dbc04798e6a89bb5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 红色 ul 对应子菜单
- 绿色 li 对应父级标签


![](http://upload-images.jianshu.io/upload_images/1877813-d3af8e67a7a39024.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

对应的 css

```css
.dropdown-content {
    display: none; /*隐藏下拉菜单的内容*/
    position: absolute;
    background-color: #f9f9f9;
    list-style: none;
    width: 115px;
    font-size: 14px;
    line-height: 32px;
    font-weight: 100;
}

/*hover设置光标悬停未点击之前的样式*/
.dropdown:hover .dropdown-content {
    display: block;
}
```

### 2.4 导航条横向菜单

![](http://upload-images.jianshu.io/upload_images/1877813-c205b82c5b3b97dd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这个菜单基于 html 最原始的标签 ul 的。ul 默认的内容li时竖直排列的，通过设置 ul 和 li 的 float 等属性使得这些 li 标签横向排列。

对应的 css
- "#nav对应ul
- .dropdown对应ul下的li

```css
/*导航栏内容设置*/
#nav {
    width: 943px;
    height: 32px;
    padding: 0 0 0 5px;
    margin: 0;
    list-style: none;
}

/*设置下拉菜单*/
.dropdown {
    float: left;
}
```

# 实验二
## 一、实验内容
制作一个信息查询页面：
1. 在数据库（任选）中建两个数据表（学生信息表（学号、姓名、班级）和学生成绩表（学号、课程名称、成绩、成绩登记时间）
1. 页面中输入学生姓名点击搜索即可查询到该学生的所有成绩
1. 成绩以表格形式显示
1. 需使用Ajax技术

## 二、实验设计

### 2.1 建立数据库

（1）Student 表
```sql
-- auto-generated definition
CREATE TABLE Student
(
  sNo   VARCHAR(10) NOT NULL
    PRIMARY KEY,
  sName VARCHAR(32) NOT NULL,
  class VARCHAR(32) NOT NULL
);
```

表中插入 3 行数据


![](http://upload-images.jianshu.io/upload_images/1877813-9b5ec8a6db0985a1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


（2）Grade 表

```sql
-- auto-generated definition
CREATE TABLE Grade
(
  no           VARCHAR(10) NOT NULL,
  course       VARCHAR(32) NULL,
  grade        INT(10)     NULL,
  registerTime DATE        NULL,
  CONSTRAINT fk_sno
  FOREIGN KEY (no) REFERENCES csu.Student (sNo)
);

CREATE INDEX fk_sno
  ON Grade (no);
```
表中插入数据

![](http://upload-images.jianshu.io/upload_images/1877813-624c013a41480863.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


（3）表间关系

![](http://upload-images.jianshu.io/upload_images/1877813-4444db10b1746736.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 2.2 前端输入框

在前端设置了输入框，输入学生姓名进行查询。


![](http://upload-images.jianshu.io/upload_images/1877813-d549db113c8c53cd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

对应 html 代码，采用了 bootstrap 的输入框和按钮样式。

![](http://upload-images.jianshu.io/upload_images/1877813-cd570be57b7601ab.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![](http://upload-images.jianshu.io/upload_images/1877813-a8bd5916883dcd12.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

在输入框的下面定了一个空的 table，用于当查询的时候返回内容。

![](http://upload-images.jianshu.io/upload_images/1877813-2f06f4fcb28a0d50.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 2.3 Ajax 向后端传输数据

```js
<script>
    function postData() {
        $.ajax({
            type: "post",
            url: "HelloForm",
            data: {
                "name": $("#name").val()
            },
            success: function (res) {
//                        alert(res);
                $("#my_table").html(""); // tbody置空
                $("#my_table").append(res); // tbody添加数据
            }
        });
    }
</script>
```

- type：post 向后端传递 name 输入框输入的 data
- url：数据传入的链接：原链接+/HelloFrom
- data：传递的数据
- success：成功后进行的操作，jsp 中预留的 table append 数据

初始

![](http://upload-images.jianshu.io/upload_images/1877813-829f202bbcfe0216.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

查询

![](http://upload-images.jianshu.io/upload_images/1877813-500c3f1a217ffc49.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

查询另一个人

![](http://upload-images.jianshu.io/upload_images/1877813-ff8da855f08967f2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

页面没有刷新，效果很不错。

### 2.4 后端 Servlet 数据查询

![](http://upload-images.jianshu.io/upload_images/1877813-e1b75762dc92ab4c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

在 src 目录下定义了 HelloForm 这个类，主要包括：
- 数据库属性设定
- doPost 和 doGet 处理


```java
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by shuai
 * on 2017/6/10.
 */
@WebServlet("/HelloForm")
public class HelloForm extends HttpServlet {

    private static final long serialVersionUID = 1;

    // JDBC 驱动名及数据库 URL
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/csu"; // 同DataGrip

    // 数据库的用户名与密码，需要根据自己的设置
    private static final String USER = "root";
    private static final String PASS = "shuai";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 获取输入的学生姓名
        String name = new String(request.getParameter("name").getBytes(), "UTF-8");

        try {
            // 注册 JDBC 驱动器
            Class.forName(JDBC_DRIVER);

            // 打开一个连接
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // 执行sql查询
            Statement stmt = conn.createStatement();

//            String sql = "SELECT * FROM Grade WHERE no = \"0902140133\"; ";

            // 注意String要加引号
            String sql = "SELECT * FROM Grade " +
                    "WHERE no = (SELECT sNo FROM Student WHERE sName = \"" + name + "\");";

            // 执行查询得到结果集
            ResultSet rs = stmt.executeQuery(sql);

            // 向jsp页面传递数据
            RequestDispatcher rd = request.getRequestDispatcher("temp.jsp");
            request.setAttribute("data", rs);
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
```
doGet 分为以下几步：
1. 获取前端输入的学生姓名，request.getParameter("name")
1. 给 HelloForm 注册 JDBC 驱动器
1. 打开与 MySQL 数据库的链接
1. 定义 sql 语句
1. 执行 sql 查询得到结果集
1. 将结果集传回给 temp.jsp 页面

### 2.5 帮助 Ajax 的 temp.jsp
temp.jsp 是一个临时的 jsp 文件，用于将执行 sql 返回的结果集转化成列表项，然后这些内容被 index.jsp 预留的 table 添加，从而在主页面异步加载数据。

```jsp
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: shuai
  Date: 2017/6/20
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<tr>
    <th width="25%">学号</th>
    <th width="25%">课程</th>
    <th width="25%">成绩</th>
    <th width="25%">登记时间</th>
</tr>
<%
    ResultSet rs = (ResultSet) request.getAttribute("data");

    // 展开结果集数据库
    try {
        while (rs.next()) {
            String sNo = rs.getString("no");
            String course = rs.getString("course");
            String grade = rs.getString("grade");
            String registerTime = rs.getString("registerTime");

            // 输出数据
            out.println("<tr>");
            out.println("<td>" + sNo + "</td>");
            out.println("<td>" + course + "</td>");
            out.println("<td>" + grade + "</td>");
            out.println("<td>" + registerTime + "</td>");
            out.println("</tr>");

        }
    } catch (Exception e) {
        e.printStackTrace();
    }

%>
```


![Ajax 完成](http://upload-images.jianshu.io/upload_images/1877813-90b93f8e47154137.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

