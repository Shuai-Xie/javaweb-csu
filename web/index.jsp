<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: shuai
  Date: 2017/6/10
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>中南大学</title>

    <!--meta 可提供有关页面的元信息（meta-information）-->
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

<body>
<div class="top">
    <!--logo图片链接-->
    <div class="csu-logo">
        <a href="http://www.csu.edu.cn/"><img src="images/logo.jpg"></a>
    </div>

    <div class="top-right">
        <div class="right-line1">
            <!--未来学生 在校学生 教职员工 校友校董-->
            <div class="ycszb">
                <a href="" class="ld">未来学生</a>
                <a href="" class="ld">在校学生</a>
                <a href="" class="ld">教职员工</a>
                <a href="" class="ld">校友校董</a>
            </div>

            <!--教育机构 研究机构-->
            <div id="wrap">
                <div id="main_nav">
                    <ul id="siteguide">
                        <li id="eduqlink">
                            <a href="">教育机构</a>
                            <ul class="jyjgli" id="eduzone">
                                <li class="edulist"><a href="http://wxy.csu.edu.cn/" target="_blank">文学与新闻传播学院</a></li>
                                <li class="edulist"><a href="http://sfl.csu.edu.cn/" target="_blank">外国语学院</a></li>
                                <li class="edulist"><a href="http://bs.csu.edu.cn/" target="_blank">商学院</a></li>
                                <li class="edulist"><a href="http://law.csu.edu.cn/" target="_blank">法学院</a></li>
                                <li class="edulist"><a href="http://ps.csu.edu.cn/" target="_blank">马克思主义学院</a></li>

                                <li class="edulist"><a href="http://csuspa.csu.edu.cn/" target="_blank">公共管理学院</a></li>
                                <li class="edulist"><a href="http://math.csu.edu.cn/" target="_blank">数学与统计学院</a></li>
                                <li class="edulist"><a href="http://wl.csu.edu.cn/" target="_blank">物理与电子学院</a></li>
                                <li class="edulist"><a href="http://ccce.its.csu.edu.cn/" target="_blank">化学化工学院</a>
                                </li>
                                <li class="edulist"><a href="http://cmee.csu.edu.cn/" target="_blank">机电工程学院</a></li>

                                <li class="edulist"><a href="http://energy.csu.edu.cn/" target="_blank">能源科学与工程学院</a>
                                </li>
                                <li class="edulist"><a href="http://mse.csu.edu.cn/" target="_blank">材料科学与工程学院</a></li>
                                <li class="edulist"><a href="http://pmri.csu.edu.cn/" target="_blank">粉末冶金研究院</a></li>
                                <li class="edulist"><a href="http://stte.csu.edu.cn/" target="_blank">交通运输工程学院</a></li>
                                <li class="edulist"><a href="http://civil.csu.edu.cn/" target="_blank">土木工程学院</a></li>

                                <li class="edulist"><a href="http://smse.csu.edu.cn/" target="_blank">冶金与环境学院</a></li>
                                <li class="edulist"><a href="http://gip.its.csu.edu.cn/" target="_blank">地球科学与信息物理学院</a>
                                </li>
                                <li class="edulist"><a href="http://srse.csu.edu.cn/" target="_blank">资源与安全工程学院</a></li>
                                <li class="edulist"><a href="http://sise.csu.edu.cn/" target="_blank">信息科学与工程学院</a></li>
                                <li class="edulist"><a href="http://software.csu.edu.cn/" target="_blank">软件学院</a></li>

                                <li class="edulist"><a href="http://jcyxy.csu.edu.cn/" target="_blank">基础医学院</a></li>
                                <li class="edulist"><a href="http://sph.csu.edu.cn/" target="_blank">湘雅公共卫生学院</a></li>
                                <li class="edulist"><a href="http://nursing.csu.edu.cn/" target="_blank">湘雅护理学院</a></li>
                                <li class="edulist"><a href="http://xykqyy.csu.edu.cn/" target="_blank">湘雅口腔医学院</a></li>
                                <li class="edulist"><a href="http://yxy.csu.edu.cn/" target="_blank">湘雅药学院</a></li>

                                <li class="edulist"><a href="http://life.csu.edu.cn/" target="_blank">生命科学学院</a></li>
                                <li class="edulist"><a href="http://saa.csu.edu.cn/" target="_blank">航空航天学院</a></li>
                                <li class="edulist"><a href="http://sports.csu.edu.cn/" target="_blank">体育教研部</a></li>
                                <li class="edulist"><a href="http://www.csu-aso.com/" target="_blank">爱尔眼科学院</a></li>
                            </ul>
                        </li>

                        <li id="sciqlink">
                            <a href="">研究机构</a>
                            <ul class="yjjgli" id="scizone">
                                <li class="scilist"><a
                                        href="http://www.csu.edu.cn/organization/academy/keylab/skablpm/sklab/index.htm"
                                        target="_blank">粉末冶金国家重点实验室</a></li>
                                <li class="scilist"><a href="http://www.sklmg.edu.cn/" target="_blank">医学遗传学国家重点实验室</a>
                                </li>
                                <li class="scilist"><a href="http://hpcm.csu.edu.cn/" target="_blank">高性能复杂制造国家重点实验室</a>
                                </li>
                                <li class="scilist"><a
                                        href="http://pmri.csu.edu.cn/News/DefaultNews.aspx?NewsTypeID=160130"
                                        target="_blank">粉末冶金国家工程研究中心</a></li>
                                <li class="scilist"><a href="http://www.csu.edu.cn/index.htm#">人类干细胞国家工程研究中心</a></li>
                                <li class="scilist"><a href="http://hsrlab.csu.edu.cn/"
                                                       target="_blank">高速铁路建造技术国家工程实验室</a></li>
                                <li class="scilist"><a href="http://zjsgczx.csu.edu.cn/" target="_blank">国家重金属污染防治工程技术研究中心</a>
                                </li>
                                <li class="scilist"><a href="http://www.csu.edu.cn/index.htm#">生殖与干细胞工程研究所</a></li>
                                <li class="scilist"><a href="http://aes.its.csu.edu.cn/" target="_blank">高等教育研究所</a>
                                </li>
                                <li class="scilist"><a href="http://cri.csu.edu.cn/" target="_blank">肿瘤研究所</a></li>
                                <li class="scilist"><a href="http://www.csupharmacol.com/" target="_blank">临床药理研究所</a>
                                </li>
                                <li class="scilist"><a
                                        href="http://www.csu.edu.cn/organization/academy/yanjiusuo/fzyw/fzyw.htm"
                                        target="_blank">分子药物与治疗研究所</a></li>
                                <li class="scilist"><a href="http://mirc.csu.edu.cn/" target="_blank">分子影像研究中心</a></li>
                                <li class="scilist" title="国家高性能铝材工程化与创新能力建设平台（轻合金研究院）"><a
                                        href="http://lari.csu.edu.cn/" target="_blank">国家高性能铝材工程化与创新能力平台</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <!--信息门户| 中南e行| 邮件系统| 图书馆| 简| 繁| English-->
        <div class="right-line2">
            <!--只要div宽度适中就可以，a是行内元素-->
            <a href="http://my.csu.edu.cn/" class="lt">信息门户</a>|
            <a href="http://app.its.csu.edu.cn/" class="lt">中南e行</a>|
            <a href="http://mail.csu.edu.cn/" class="lt">邮件系统</a>|
            <a href="http://lib.csu.edu.cn/" class="lt">图书馆</a>|
            <a class="lt">简</a>|
            <a class="lt">繁</a>|
            <a class="lt" href="http://en.csu.edu.cn">English</a>
        </div>

        <!--搜索-->
        <label for="my_search"></label>
        <input id="my_search" type="text" class="search">

    </div>
</div>

<div class="clear"></div>

<!--学校概况 栏-->
<div class="nam">

    <ul id="nav">

        <li class="dropdown">
            <a href="" style="width:117px;" class="">学校概况</a>
            <ul class="dropdown-content">
                <li style="width:117px"><a title="历史沿革" href="" style="width:117px;">历史沿革</a></li>
                <li style="width:117px"><a title="学校领导" href="" style="width:117px;">学校领导</a></li>
                <li style="width:117px"><a title="院士风采" href="" style="width:117px;">院士风采</a></li>
                <li style="width:117px"><a title="统计资料" href="" style="width:117px;">统计资料</a></li>
                <li style="width:117px"><a title="学科专业" href="" style="width:117px;">学科专业</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="" style="width:117px;">机构设置</a>
            <ul class="dropdown-content">
                <li style="width:117px"><a>机关部门</a></li>
                <li style="width:117px"><a title="二级学院" href="" style="width:117px;">二级学院</a></li>
                <li style="width:117px"><a title="直附属单位" href="" style="width:117px;">直附属单位</a></li>
                <li style="width:117px"><a title="附属医院" href="" style="width:117px;">附属医院</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="" style="width:117px;">人力资源</a>
            <ul class="dropdown-content">
                <li style="width:117px"><a title="人事政策" href="http://rsc2.csu.edu.cn/zczd.htm"
                                           style="width:117px;">人事政策</a></li>
                <li style="width:117px"><a title="人事考核" href="http://ehr.csu.edu.cn/" style="width:117px;">人事考核</a></li>
                <li style="width:117px"><a title="人事招聘" href="http://rsc2.csu.edu.cn/zpxx.htm"
                                           style="width:117px;">人事招聘</a></li>
                <li style="width:117px"><a title="博士后" href="http://bsh.csu.edu.cn/" style="width:117px;">博士后</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="" style="width:117px;">教育教学</a>
            <ul class="dropdown-content">
                <li style="width:117px"><a title="本科生教育" href="http://bksy.csu.edu.cn/" style="width:117px;">本科生教育</a>
                </li>
                <li style="width:117px"><a title="研究生教育" href="http://gra.its.csu.edu.cn/yjsy/" style="width:117px;">研究生教育</a>
                </li>
                <li style="width:117px"><a title="留学生教育" href="http://iecd.csu.edu.cn/lxzn.htm" style="width:117px;">留学生教育</a>
                </li>
                <li style="width:117px"><a title="继续教育" href="http://sce.csu.edu.cn/" style="width:117px;">继续教育</a></li>
                <li style="width:117px"><a title="远程教育" href="http://cne.csu.edu.cn/index.html" style="width:117px;">远程教育</a>
                </li>
                <li style="width:117px"><a title="精品课程" href="http://netclass.csu.edu.cn/jpkc/" style="width:117px;">精品课程</a>
                </li>
            </ul>
        </li>


        <li class="dropdown">
            <a href="http://kxyjb.csu.edu.cn/" style="width:117px;">科学研究</a>
            <ul class="dropdown-content">
                <li style="width:117px"><a title="人才团队" href="http://kxyjb.csu.edu.cn/rwsk/rctd.htm"
                                           style="width:117px;">人才团队</a></li>
                <li style="width:117px"><a title="项目管理" href="http://kxyjb.csu.edu.cn/xmgl.htm" style="width:117px;">项目管理</a>
                </li>
                <li style="width:117px"><a title="成果奖励" href="http://kxyjb.csu.edu.cn/cgjl.htm" style="width:117px;">成果奖励</a>
                </li>
                <li style="width:117px"><a title="知识产权" href="http://kxyjb.csu.edu.cn/zscq.htm" style="width:117px;">知识产权</a>
                </li>
                <li style="width:117px"><a title="产学研合作" href="http://kxyjb.csu.edu.cn/jszy.htm" style="width:117px;">产学研合作</a>
                </li>
                <li style="width:117px"><a title="科学技术协会" href="http://kexie.csu.edu.cn/"
                                           style="width:117px;">科学技术协会</a></li>
            </ul>
        </li>


        <li class="dropdown">
            <a href="" style="width:117px;">招生就业</a>
            <ul class="dropdown-content">
                <li style="width:117px"><a title="本科生招生" href="http://zhaosheng.csu.edu.cn/"
                                           style="width:117px;">本科生招生</a></li>
                <li style="width:117px"><a title="研究生招生" href="http://gra.its.csu.edu.cn/yjsy/" style="width:117px;">研究生招生</a>
                </li>
                <li style="width:117px"><a title="留学生招生" href="http://iecd.csu.edu.cn/lxzn.htm" style="width:117px;">留学生招生</a>
                </li>
                <li style="width:117px"><a title="继续教育招生" href="http://sce.csu.edu.cn/" style="width:117px;">继续教育招生</a>
                </li>
                <li style="width:117px"><a title="远程教育招生" href="http://cne.csu.edu.cn/index.html" style="width:117px;">远程教育招生</a>
                </li>
                <li style="width:117px"><a title="就业信息网" href="http://jobsky.csu.edu.cn/" style="width:117px;">就业信息网</a>
                </li>
                <li style="width:117px"><a title="创业网" href="http://chinadxscy.csu.edu.cn/" style="width:117px;">创业网</a>
                </li>
            </ul>
        </li>


        <li class="dropdown">
            <a href="http://iecd.csu.edu.cn/" style="width:117px;">国际交流</a>
            <ul class="dropdown-content">
                <li style="width:117px"><a title="交流合作" href="http://iecd.csu.edu.cn/jlhz.htm"
                                           style="width:117px;">交流合作</a></li>
                <li style="width:117px"><a title="出国出境" href="http://iecd.csu.edu.cn/cgcj.htm"
                                           style="width:117px;">出国出境</a></li>
                <li style="width:117px"><a title="海外专家" href="http://iecd.csu.edu.cn/hwzj.htm"
                                           style="width:117px;">海外专家</a></li>
                <li style="width:117px"><a title="留学中南" href="http://iecd.csu.edu.cn/lxzn.htm"
                                           style="width:117px;">留学中南</a></li>
                <li style="width:117px"><a title="留学海外" href="http://iecd.csu.edu.cn/lxhw.htm"
                                           style="width:117px;">留学海外</a></li>
                <li style="width:117px"><a title="港澳台事务" href="http://iecd.csu.edu.cn/gatsw.htm" style="width:117px;">港澳台事务</a>
                </li>
            </ul>
        </li>


        <li class="dropdown">
            <a href="" style="width:117px;">学生天地</a>
            <ul class="dropdown-content">
                <li style="width:117px"><a title="学情直通车" href="http://xgw.csu.edu.cn/xgw/"
                                           style="width:117px;">学情直通车</a></li>
                <li style="width:117px"><a title="学生工作网" href="http://xgw.csu.edu.cn/" style="width:117px;">学生工作网</a>
                </li>
                <li style="width:117px"><a title="研究生工作网" href="http://ygb.csu.edu.cn " style="width:117px;">研究生工作网</a>
                </li>
                <li style="width:117px"><a title="升华网" href="http://54sh.csu.edu.cn/" style="width:117px;">升华网</a></li>
                <li style="width:117px"><a title="国防生网" href="http://gfs.csu.edu.cn/" style="width:117px;">国防生网</a></li>
                <li style="width:117px"><a title="中国大学生创业网" href="http://chinadxscy.csu.edu.cn/" style="width:117px;">中国大学生创业网</a>
                </li>
                <li style="width:117px"><a title="云麓园BBS" href="http://bbs.csu.edu.cn/" style="width:117px;">云麓园BBS</a>
                </li>
                <li style="width:117px"><a title="缘来友你" href="http://ylyn.csu.edu.cn/" style="width:117px;">缘来友你</a>
                </li>
            </ul>
        </li>
    </ul>
</div>

<!--nav下的图-->
<div class="banner">
    <img src="images/banner.jpg" title="" border="0" width="950" height="266">
</div>

<div id="main">
    <div class="clear"></div>

    <div id="main_t">

        <!--中南要闻-->
        <div class="yaowen">
            <a class="fl">中南要闻</a>
            <!--更多-->
            <a href="http://news.csu.edu.cn/" target="_blank">
                <div class="gengduo fr"></div>
            </a>
            <div class="clear"></div>
        </div>

        <!--下面的线-->
        <div class="xian">
            <div class="clear"></div>
        </div>

        <!--要闻内容-->
        <div class="zhongnanyaowenxiu">

            <ul id="form8ul" style="margin:0; padding:0">
                <li>
                    <a href="http://news.csu.edu.cn/info/1002/133797.htm">中南大学与尼泊尔人口与卫生部签订谅解备忘录</a>
                    <span>06-07</span>
                    <!--右侧1个时间标签-->
                </li>
                <li>
                    <a href="http://news.csu.edu.cn/info/1002/133796.htm">教育部网站：中南大学以“三个突出”做好审计工作加强内部控制</a><span>06-07</span>
                </li>
                <li><a href="http://news.csu.edu.cn/info/1002/133746.htm">胡岳华常务副校长率队赴江华对接扶贫工作</a><span>06-02</span></li>
                <li><a href="http://news.csu.edu.cn/info/1002/133735.htm">中共中央、国务院任命田红旗为中南大学校长</a><span>06-01</span>
                </li>
                <li><a href="http://news.csu.edu.cn/info/1002/133732.htm">中南大学范景莲教授荣获首届全国创新争先奖</a><span>05-31</span>
                </li>
                <li>
                    <a href="http://news.csu.edu.cn/info/1002/133698.htm">教育部“一线采风”：中南大学积极构建中华优秀传统文化育人...</a><span>05-30</span>
                </li>
                <li>
                    <a href="http://news.csu.edu.cn/info/1002/133681.htm">许中缘应邀出席中宣部构建中国特色哲学社会科学工作会议并受奖</a><span>05-27</span>
                </li>
                <li><a href="http://news.csu.edu.cn/info/1002/133666.htm">湖南省委书记杜家毫调研中南大学科技园（研发）总部</a><span>05-26</span>
                </li>
                <li><a href="http://news.csu.edu.cn/info/1002/133665.htm">中南大学获赠多语种外文版《习近平谈治国理政》</a><span>05-26</span>
                </li>
                <li><a href="http://news.csu.edu.cn/info/1002/133662.htm">学校举办第二批理工医类战略先导专项开题报告会</a><span>05-26</span>
                </li>
                <li><a href="http://news.csu.edu.cn/info/1002/133652.htm">中南大学与娄底市人民政府签订战略合作协议</a><span>05-25</span>
                </li>
                <li><a href="http://news.csu.edu.cn/info/1002/133613.htm">Nature子刊报道王平山课题组最新研究进展</a><span>05-25</span>
                </li>
            </ul>
        </div>
        <br>


        <!--学生信息查询-->
        <div class="yaowen">
            <a class="fl">学生信息查询</a>
            <div class="clear"></div>
        </div>

        <!--下面的线-->
        <div class="xian">
            <div class="clear"></div>
        </div>

        <br>

        <!--实验2-->
        <div style="width: 300px; left: 50%; margin-left: -160px; position: absolute">
            <div class="input-group" style="width: 200px; float: left">
                <label for="name" class="input-group-addon">姓名</label>   <!--input必须要指定name-->
                <input id="name" type="text" class="form-control" placeholder="Your name">
            </div>

            <button class="btn btn-success" style="width: 90px; float: left; margin-left: 10px"
                    onclick="postData()">查询
            </button>

        </div>

        <br><br><br>
        <table class="table table-striped table-bordered" style="margin: 0 auto; width: 800px">
            <tbody id="my_table">
            <%--<tr>--%>
            <%--<th>学号</th>--%>
            <%--<th>姓名</th>--%>
            <%--</tr>--%>
            <%--<tr>--%>
            <%--<td>23456</td>--%>
            <%--<td>小丁</td>--%>
            <%--</tr>--%>
            </tbody>
        </table>

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

        <br><br><br>

    </div>

</div>

<!--底部-->
<div id="foot">
    <div class="foot">
        <div class="foot_l">
            <a><img src="images/rss.png" border="0" align="absmiddle"></a>&nbsp;&nbsp;
            <a><img border="0" align="absmiddle" src="images/sitemap.png"></a>&nbsp;&nbsp;
            <span>联系我们</span>&nbsp;&nbsp;|&nbsp;&nbsp;
            <span>网站声明</span>&nbsp;&nbsp;|&nbsp;&nbsp;
        </div>
        <div class="foot_m">总访问量：2017-06-09 18:52</div>
        <div class="foot_r">中南大学版权所有　　湘ICP备05005659 　湘教QS3-200505-000204</div>
    </div>
</div>
</body>
</html>
