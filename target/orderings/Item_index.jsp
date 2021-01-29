<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>我的店铺</title>
    <meta name="author" content="DeathGhost"/>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/public.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jqpublic.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
    <style>
        .xddh2{
            position: absolute;
            top:160px;
            width: 49.9%;
            height: 50px;
            box-shadow: 0 0 0 1px #000000;
            text-align: center;
            background-color: #4EAC5C;
            font-size: 30px;
            color: #4EAC5C;
        }
        .dh21{
            left: 0.2%;
        }
        .dh22{
            left: 50.3%;
        }


        .tupian{
            width: 100px;
            height: 150px;
            position: absolute;
            top: 25px;
            left: 18.6%;
            background-color: white;
            visibility: hidden;
        }
        .weixin:hover~.tupian{
            visibility: visible;
        }
    </style>


</head>
<body>
<header>
    <div class="xddh2 dh21"><a href="Item_index.jsp" style="color: white">商家信息</a></div>
    <div class="xddh2 dh22"><a href="User_index.jsp" style="color: white">信息管理</a></div>

    <section class="Topmenubg">
        <div class="Topnav">
            <div class="LeftNav">
                <a href="register.jsp">注册</a>/

                <c:if test="${sessionScope.user==null}">
                    <a href="login1.jsp">登录</a>
                </c:if>
                <c:if test="${sessionScope.user!=null}">
                    <a href="user?method=logout">欢迎您</a>
                </c:if>

                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2641172930&site=qq&menu=yes"> QQ客服</a>
                <a class="weixin">微信客服</a>
                <div class="tupian"><img src="images/weixin.jpg" width="100px"><p>扫一扫&nbsp;反馈问题</p></div>
            </div>
        </div>
    </section>
    <div class="Logo_search">
        <div class="Logo">
            <img src="images/logo.jpg" >
            <i></i>
            <span>蚌埠市 [ <a href="#">龙子湖</a> ]</span>
        </div>
        <div class="Search">
            <form method="get" id="main_a_serach" onsubmit="return check_search(this)">
                <div class="Search_nav" id="selectsearch">
                    <a href="javascript:;" onClick="selectsearch(this,'food_name')">食物名</a>
                </div>
                <div class="Search_area">
                    <input type="search" id="fkeyword" name="keyword" placeholder="请输入您所需查找的食物名称..." class="searchbox" />
                    <input type="submit" class="searchbutton" value="搜 索" />
                </div>
            </form>
            <p class="hotkeywords"><a href="suanla.jsp" title="酸辣土豆丝">酸辣土豆丝</a><a href="xihong.jsp" title="西红柿炒蛋">西红柿炒蛋</a><a href="youmen.jsp" title="油焖茄子">油焖茄子</a><a href="mifan.jsp" title="米饭">米饭</a><a href="miantiao.jsp" title="面条">面条</a><a href="kele.jsp" title="可乐">可乐</a></p>
        </div>
    </div>
    <nav class="menu_bg">
        <ul class="menu">
            <li><a href="Item_index.jsp">餐厅信息</a></li>
            <li><a href="Item_menu.jsp">菜单</a></li>
        </ul>
    </nav>
</header>
<!--Start content-->
<section class="Psection MT20">
    <article class="A-left Overflow">
        <h1 class="Font16 FontW classtitle">餐厅信息</h1>
        <div class="Articlelist Overflow">
            <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="Item_index.jsp" target="_blank" title="这里是文章标题">人事变动</a><time>2020-08-10</time></p>
            <p class="p2">新招纳主厨一名，会计一名，学徒两名…</p>
            <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="Item_index.jsp" target="_blank" title="这里是文章标题">菜品日交易量（份）</a><time>2020-08-12</time></p>
            <p class="p2"><img src="upload/biao1.png" height="434" width="754"/>餐厅运营正常，可乐和奶茶销售量较高...</p>
            <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="Item_index.jsp" target="_blank" title="这里是文章标题">餐厅日交易额</a><time>2020-08-15</time></p>
            <p class="p2"><img src="upload/biao2.png" height="447" width="754"/>餐厅收益平稳，周一周二收益略高<length>, <frequency>, <angle>, <time>, <…</p>
            <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="Item_index.jsp" target="_blank" title="这里是文章标题">餐厅周报</a><time>2020-08-16</time></p>
            <p class="p2">因餐饮前台老员工流失大，新员工多，在对客服务中保证不了服务质量，影响了宾馆对客服务形象，员工整体服务热情不高，劳动纪律时有松懈。部门培训工作没有及时跟上，有时新员工刚到岗10天半个月经过培训后又离岗，又有新员工到岗，重新培训。这样反复进行培训，员工达不到培训效果，直接影响到服务质量稳定性。…</p>
            <p class="p1 FontW Font14"><i class="Blockinline"></i><a href="Item_index.jsp" target="_blank" title="这里是文章标题">餐厅战略</a><time>2020-08-17</time></p>
            <p class="p2">、做好市场营销工作，淡季的全员公关，加大婚庆市场开发。
                2、做好外欠款，月饼款回收工作。
                3、加强基层内部管理，提高部门管理水平，降低餐饮运行成本。
                4、做好冬季员工培训工作。…</p>
            <div class="TurnPage">
                <a href="#">
                    <span class="Prev"><i></i>首页</span>
                </a>
                <a href="#"><span class="PNumber">1</span></a>
                <a href="#"><span class="PNumber">2</span></a>
                <a href="#">
                    <span class="Next">最后一页<i></i></span>
                </a>
            </div>
        </div>
    </article>
    <aside class="A-right Overflow">
        <div class="AAlist">
            <span class="AAlt FontW Font14 Block">相关文章推荐版块</span>
            <ul>
                <li><a  target="_blank" title="这里是推荐某分类文章">这里是推荐某分类文章...</a></li>
            </ul>
        </div>
        <!--广告位-->
        <div style="margin:8px 0;">
            <a href="#" target="_blank"><img src="upload/ggw.jpg"></a>
        </div>
    </aside>
</section>
<footer>
    <section class="Otherlink">
        <aside>
            <div class="ewm-left">
                <p>享受健康美食，就来恰饭吧！</p>
                <img src="images/logo.jpg" height="150" width="200"/></div>
            </div>
            <div class="tips">
                <p>客服热线</p>
                <p><i>1830927**73</i></p>
                <p>配送时间</p>
                <p><time>09：00</time>~<time>22:00</time></p>
                <p>网站公告</p>
            </div>
        </aside>
        <section>
            <div>
                <span><i class="i1"></i>配送支付</span>
                <ul>
                    <li><a  target="_blank" title="标题">支付方式</a></li>
                    <li><a  target="_blank" title="标题">配送方式</a></li>
                    <li><a  target="_blank" title="标题">配送效率</a></li>
                    <li><a  target="_blank" title="标题">服务费用</a></li>
                </ul>
            </div>
            <div>
                <span><i class="i2"></i>关于我们</span>
                <ul>
                    <li><a  target="_blank" title="标题">招贤纳士</a></li>
                    <li><a href="User_introduce.jsp" target="_blank" title="标题">网站介绍</a></li>
                    <li><a  target="_blank" title="标题">配送效率</a></li>
                    <li><a  target="_blank" title="标题">商家加盟</a></li>
                </ul>
            </div>
            <div>
                <span><i class="i3"></i>帮助中心</span>
                <ul>
                    <li><a  target="_blank" title="标题">服务内容</a></li>
                    <li><a  target="_blank" title="标题">服务介绍</a></li>
                    <li><a  target="_blank" title="标题">常见问题</a></li>
                    <li><a  target="_blank" title="标题">网站地图</a></li>
                </ul>
            </div>
        </section>
    </section>
</footer>>
</body>
</html>
