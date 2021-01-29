<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>恰饭吧-餐厅介绍</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/public.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jqpublic.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>

    <style>
        .wenben{
            width: 900px;
            height: 350px;
            /*background-color: #00661c;*/
        }
        .wenben2{
            width: 800px;
            height: 350px;
            position: absolute;
            left: 5%;
            /*background-color: #8e9f1d;*/
            color: black;
            font-size: 15px;


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
    <div class="xddhl dhl1"><a href="User_index.jsp" style="color: white">首页</a></div>
    <div class="xddhl dhl2"><a href="User_menu.jsp" style="color: white">菜单</a></div>
    <div class="xddhl dhl3"><a href="User?code=viewUser" style="color: white">会员中心</a></div>
    <div class="xddhl dhl4"><a href="User_introduce.jsp" style="color: white">关于我们</a></div>

    <section class="Topmenubg">
        <div class="Topnav">
            <div class="LeftNav">
                <a href="register.jsp">注册</a>/

                    <a href="login.jsp">登录</a>
                    <a href="user?method=logout">欢迎您</a>

                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2641172930&site=qq&menu=yes"> QQ客服</a>
                <a class="weixin">微信客服</a>
                <div class="tupian"><img src="images/weixin.jpg" width="100px"><p>扫一扫&nbsp;反馈问题</p></div>            </div>
            <div class="RightNav">
                <a href="User_cart.jsp">购物车（0）</a>  <a href="login1.jsp">商家入驻</a>
            </div>
        </div>
    </section>
    <div class="Logo_search">
        <div class="Logo">
            <img src="images/logo.jpg" title="DeathGhost" alt="模板">
            <i></i>
            <span>蚌埠市 [ <a >龙子湖区</a> ]</span>
        </div>
        <div class="Search">
            <form method="get" id="main_a_serach" onsubmit="return check_search(this)">
                <div class="Search_nav" id="selectsearch">
                    <a href="javascript:;" onClick="selectsearch(this,'restaurant_name')" class="choose">餐厅</a>
                    <a href="javascript:;" onClick="selectsearch(this,'food_name')">食物名</a>
                </div>
                <div class="Search_area">
                    <input type="search" id="fkeyword" name="keyword" placeholder="请输入您所需查找的食物名称..." class="searchbox" />
                    <input type="submit" class="searchbutton" value="搜 索" />
                </div>
            </form>
            <p class="hotkeywords"><a href="suanla.jsp" title="酸辣土豆丝">酸辣土豆丝</a><a href="xihong.jsp" title="西红柿炒蛋">西红柿炒蛋</a><a href="youmen.jsp" title="油焖茄子">油焖茄子</a><a href="${pageContext.request.contextPath}mifan.html" title="米饭">米饭</a><a href="miantiao.jsp" title="面条">面条</a><a href="kele.jsp" title="可乐">可乐</a></p>
        </div>
    </div>
    <nav class="menu_bg">
        <ul class="menu">
            <li><a href="User_index.jsp">首页</a></li>
            <li><a href="User_menu.jsp">订餐</a></li>
            <li><a href="User_cart.jsp">会员中心</a></li>
            <li><a href="User_introduce.jsp">关于我们</a></li>
        </ul>
    </nav>
</header>
<!--Start content-->
<section class="Psection MT20">
    <article class="A-left Overflow">
        <h1 class="Font16 FontW classtitle">恰饭吧</h1>
        <div class="A-read">
            <div class="wenben">
                <div class="wenben2">

                    <p style="font-size: 30px; text-align: center;">关于我们</p>
                    <br>
                    <p >&nbsp;&nbsp;&nbsp;&nbsp;饿了就来“恰饭吧”！</p>
                    <p >&nbsp;&nbsp;&nbsp;&nbsp;“恰饭吧”是一家蚌埠特色美食餐厅，主打家常菜和特色饮料，网上订餐，极速配送，让您吃的安心，吃得放心。孔子言：“食不厌精，脍不厌细”，我的的每一道菜，都平凡但不随意，精选优质时蔬，谷物，用心烹调，带给您家的味道。</p>
                    <p >&nbsp;&nbsp;&nbsp;&nbsp;餐厅主打菜——酸辣土豆丝，选用蚌埠本地纯天然大土豆，配上新鲜采摘的辣椒，酸辣爽口，好吃下饭；西红柿炒蛋——酸甜西红柿香嫩草鸡蛋的碰撞，每一口都是温馨的味道；油焖茄子——新鲜采摘的茄子，经过五道工序，小火慢炖，蒜香提鲜，入口丝滑绵密，极致享受。我们还配有优质主食，米饭，馒头，面条等，以及橙汁，可乐，奶茶，让您吃的放心，吃的舒心。</p>
                    <p >&nbsp;&nbsp;&nbsp;&nbsp;我们每天早上进店第一件事就是检查。针对各各岗位工作，库存、卫生。以此确保每天店内货源充足，新鲜产品指示准确，体验更加顺畅，环境干净明亮。以检查而备有患。激励也是是每天必做项目。针对早上员工的整体状态，给予相应激励。针对个人精神状态，不定时给予鼓励。针对前一日的店内运营数据，给予希望和鼓励的激励。</p>
                    <p >&nbsp;&nbsp;&nbsp;&nbsp;外卖下饭菜，餐餐好胃来。“恰饭吧”——您的随身餐厅，快来点单吧！</p>

                </div>
            </div>
        </div>
    </article>
    <aside class="A-right Overflow">
        <div class="AAlist">
            <span class="AAlt FontW Font14 Block">。。。</span>
            <ul>
                <li><a  target="_blank" title="。。。">。。。</a></li>
            </ul>
        </div>
        <!--广告位-->
        <div style="margin:8px 0;">
            <a  target="_blank"><img src="upload/ggw.jpg"></a>
        </div>
    </aside>
</section>
<!--End content-->
<div class="F-link">
</div>
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

