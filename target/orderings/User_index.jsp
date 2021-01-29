<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>恰饭吧</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/public.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jqpublic.js"></script>

    <style>

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

    <style>

        /*置顶及二维码小程序设置*/
        .container{
            position: fixed;
            font-size: 12px;
            bottom: 30px;
            right: -64px;
            z-index: 99999999;
        }
        .contain{
            width: 124px;
            height: 230px;
            background: white;
            box-shadow: 0 1px 8px 0 rgba(0,0,0,0.1);/*边框阴影*/
            border-radius: 7px;
        }
        .container:hover{
            width: 170px;
        }
        .top{
            cursor: pointer;
        }
        .top a{
            text-align: center;
            width: 28px;
            color: #999999;
            margin: 4px auto 0;
            font-size: 12px;
        }
        .top a{
            display: block;
            text-decoration: none;
        }
        .erweima,.xiaochengxu{
            font-size: 12px;
            margin-top: 10px;
            text-align: center;
        }
        .erweima p,.xiaochengxu p{
            margin-bottom: 6px;
            color: black;
        }
        .pic_ewm{
            width: 64px;
            height: 64px;
            background: url("images/erweima.png") no-repeat;
            background-size: 100% 100%;
            margin: 0 auto;
        }
        .pic_xcx{
            width: 64px;
            height: 64px;
            background: url("images/xiaochengxu.png") no-repeat;
            background-size: 100% 100%;
            margin: 0 auto;
        }

    </style>
</head>

<body>
<a name="top"></a>


<header>

    <div class="xddhl dhl1"><a href="User_index.jsp" style="color: white">首页</a></div>
    <div class="xddhl dhl2"><a href="User_menu.jsp" style="color: white">菜单</a></div>
    <div class="xddhl dhl3"><a href="User?code=viewUser" style="color: white">会员中心</a></div>
    <div class="xddhl dhl4"><a href="User_introduce.jsp" style="color: white">关于我们</a></div>

    <section class="Topmenubg">
        <div class="Topnav">
            <div class="LeftNav">
                <a href="register.jsp">注册</a>/

                <c:if test="${sessionScope.users==null}">
                    <a href="login.jsp">登录</a>
                </c:if>
                <c:if test="${sessionScope.users!=null}">
                    <a href="user?method=logout">欢迎您</a>
                </c:if>

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
            <span>蚌埠市 [ <a href="#">龙子湖区</a> ]</span>
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
            <p class="hotkeywords"><a href="suanla.jsp" title="酸辣土豆丝">酸辣土豆丝</a><a href="xihong.jsp" title="西红柿炒蛋">西红柿炒蛋</a><a href="youmen.jsp" title="油焖茄子">油焖茄子</a><a href="mifan.jsp" title="米饭">米饭</a><a href="miantiao.jsp" title="面条">面条</a><a href="kele.jsp" title="可乐">可乐</a></p>
        </div>
    </div>
    <nav class="menu_bg">
        <ul class="menu">
            <li><a href="User_index.jsp">首页</a></li>
            <li><a href="User_menu.jsp">菜单</a></li>
            <li><a href="User_cart.jsp">会员中心</a></li>
            <li><a href="User_introduce.jsp">关于我们</a></li>
        </ul>
    </nav>
</header>
<!--Start content-->
<section class="Cfn">
    <aside class="C-left">
        <div class="S-time">服务时间：周一~周六<time>09:00</time>-<time>23:00</time></div>
        <div class="C-time">
            <img src="upload/dc.jpg"/>
        </div>
        <a href="User_menu.jsp" target="_blank"><img src="images/by_button.png"></a>
        <a href="User_menu.jsp" target="_blank"><img src="images/dc_button.png"></a>
    </aside>
    <div class="F-middle">
        <ul class="rslides f426x240">
            <li><a href="javascript:"><img src="upload/01.jpg"/></a></li>
            <li><a href="javascript:"><img src="upload/02.jpg" /></a></li>
            <li><a href="javascript:"><img src="upload/03.jpg"/></a></li>
        </ul>
    </div>
    <aside class="N-right">
        <div class="N-title">菜品上新<i>NEW DISHES</i></div>
        <ul class="Newslist">
            <li><i></i><a href="xihong.jsp" target="_blank" title="这里调用新闻标题...">酸甜的番茄和嫩滑的鸡蛋，给你家的味道...</a></li>
            <li><i></i><a href="suanla.jsp" target="_blank" title="这里调用新闻标题...">酸辣土豆丝，清爽下饭...</a></li>
        </ul>
        <ul class="Orderlist" id="UpRoll">
            <li>
                <p>订单编号：2020090912973</p>
                <p>收件人：王先生</p>
                <p>订单状态：<i class="State01">已发货</i></p>
            </li>
            <li>
                <p>订单编号：2020090912978</p>
                <p>收件人：张小姐</p>
                <p>订单状态：<i class="State02">已签收</i><i class="State03">已点评</i></p>
            </li>
            <li>
                <p>订单编号：2020090912988</p>
                <p>收件人：赵先生</p>
                <p>订单状态：<i class="State02">已签收</i><i class="State03">已点评</i></p>
            </li>
        </ul>
        <script>
            var UpRoll = document.getElementById('UpRoll');
            var lis = UpRoll.getElementsByTagName('li');
            var ml = 0;
            var timer1 = setInterval(function(){
                var liHeight = lis[0].offsetHeight;
                var timer2 = setInterval(function(){
                    UpRoll.scrollTop = (++ml);
                    if(ml ==1){
                        clearInterval(timer2);
                        UpRoll.scrollTop = 0;
                        ml = 0;
                        lis[0].parentNode.appendChild(lis[0]);
                    }
                },10);
            },5000);
        </script>
    </aside>
</section>
<section class="Sfainfor">
    <article class="Sflist">
        <div id="Indexouter">
            <ul id="Indextab">
                <li class="current">点菜</li>
                </p>
            </ul>
            <div id="Indexcontent">
                <ul style="display:block;">
                    <li>

                        <div class="SCcontent">
                            <a href="suanla.jsp" target="_blank" title="菜品名称">
                                <figure>
                                    <img src="upload/01.jpg">
                                    <figcaption>
                                        <span class="title">酸辣土豆丝</span>
                                        <span class="price"><i>￥</i>15.00</span>
                                    </figcaption>
                                </figure>
                            </a>
                            <a href="xihong.jsp" target="_blank" title="菜品名称">
                                <figure>
                                    <img src="upload/02.jpg">
                                    <figcaption>
                                        <span class="title">西红柿炒蛋</span>
                                        <span class="price"><i>￥</i>7.00</span>
                                    </figcaption>
                                </figure>
                            </a>
                            <a href="youmen.jsp" target="_blank" title="菜品名称">
                                <figure>
                                    <img src="upload/03.jpg">
                                    <figcaption>
                                        <span class="title">油焖茄子</span>
                                        <span class="price"><i>￥</i>12.00</span>
                                    </figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="bestshop">
                            <a href="mantou.jsp" target="_blank" title="菜品">
                                <figure>
                                    <img src="upload/8.jpg" height="329" width="435"/></figure>
                            </a>
                            <a href="User_menu.jsp" target="_blank" title="菜品">
                                <figure>
                                    <img src="images/logo.jpg" height="1024" width="1654"/></figure>
                            </a>
                            <a href="mifan.jsp" target="_blank" title="菜品">
                                <figure>
                                    <img src="upload/9.jpg" height="398" width="600"/></figure>
                            </a>
                            <a href="User_menu.jsp" target="_blank" title="菜品">
                                <figure>
                                    <img src="images/logo.jpg" height="1024" width="1654"/></figure>
                            </a>
                            <a href="miantiao.jsp" target="_blank" title="菜品">
                                <figure>
                                    <img src="upload/10.jpg" height="434" width="600"/></figure>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </article>
    <aside class="A-infor">
        <img src="upload/2014911.jpg">
        <div class="usercomment">
            <span>用户菜品点评</span>
            <ul>
                <li>
                    <img src="upload/01.jpg">
                    用户“吉良吉影”对[ 恰饭吧 ]“酸辣土豆丝”评说：味道挺不错，送餐速度挺快...
                </li>
                <li>
                    <img src="upload/02.jpg">
                    用户“空调徐伦”对[ 恰饭吧 ]“酸辣土豆丝”评说：味道挺不错，送餐速度挺快...
                </li>
            </ul>
        </div>
    </aside>
</section>
<!--End content-->
<footer>
    <section class="Otherlink">
        <aside>
            <div class="ewm-left">
                <p>享受健康美食，就来恰饭吧！</p>
                <img src="images/logo.jpg" height="150" width="200"/></div>
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
</footer>
<div class="container">
    <div class="contain">
        <div class="top">
            <a href="User_index.jsp">返回顶部</a>
        </div>
        <div class="erweima">
            <p>恰饭吧App</p>
            <div class="pic_ewm"></div>
        </div>
        <div class="xiaochengxu">
            <p>恰饭吧小程序</p>
            <div class="pic_xcx"></div>
        </div>
    </div>
</div>
</body>
</html>
