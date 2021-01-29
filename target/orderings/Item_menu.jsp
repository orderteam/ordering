<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>我的店铺</title>
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
            <img src="images/logo.jpg">
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
</body>
