<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <div class="xddhl dhl1"><a href="User_index.jsp" style="color: white">首页</a></div>
    <div class="xddhl dhl2"><a href="User_menu.jsp" style="color: white">菜单</a></div>
    <div class="xddhl dhl3"><a href="User_center.jsp" style="color: white">会员中心</a></div>
    <div class="xddhl dhl4"><a href="User_introduce.jsp" style="color: white">关于我们</a></div>

    <meta charset="utf-8" />
    <title>菜品详情--橙汁</title>
    <meta name="author" content="DeathGhost"/>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/public.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jqpublic.js"></script>


    <script src="js/jquery-1.11.0.min.js"></script>
    <script>
        $(function () {
            //获得时间
            var today=new Date();
            //提交评论
            $("#discuss").click(function () {
                //创建新评论
                /*var t = $("<tr><td>" + $("#name").val() + ":" + "</td><td>" + $("#text").val()+ "</td></tr>")*/
                var n=$("#name").val();
                var t=$("#text").val();

                //获取session中会员昵称
                var href = "<c:out value='${sessionScope.users.username}' />"
                $("#table").append(href+"<br><br>");

                $("#table").append(/*n+<br>*/t+"<br>"+today.toLocaleString());

            })
        })
    </script>

    <style>
        a:hover{
            cursor: pointer;
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
    <script>
        $(function(){
            $('.title-list li').click(function(){
                var liindex = $('.title-list li').index(this);
                $(this).addClass('on').siblings().removeClass('on');
                $('.menutab-wrap div.menutab').eq(liindex).fadeIn(150).siblings('div.menutab').hide();
                var liWidth = $('.title-list li').width();
                $('.shopcontent .title-list p').stop(false,true).animate({'left' : liindex * liWidth + 'px'},300);
            });

            $('.menutab-wrap .menutab li').hover(function(){
                $(this).css("border-color","#ff6600");
                $(this).find('p > a').css('color','#ff6600');
            },function(){
                $(this).css("border-color","#fafafa");
                $(this).find('p > a').css('color','#666666');
            });
        });
    </script>
</head>
<body>
<header>
    <section class="Topmenubg">
        <div class="Topnav">
            <div class="LeftNav">
                <a href="register.jsp">注册</a>/

                <%--                登录显示与登出--%>
                <c:if test="${sessionScope.users==null}">
                    <a href="login.jsp">登录</a>
                </c:if>
                <c:if test="${sessionScope.users!=null}">
                    <a href="user?method=logout">${sessionScope.users.username}，欢迎您</a>
                </c:if>

                <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2641172930&site=qq&menu=yes"> QQ客服</a>
                <a class="weixin">微信客服</a>
                <div class="tupian"><img src="images/weixin.jpg" width="100px"><p>扫一扫&nbsp;反馈问题</p></div>
            </div>
            <div class="RightNav">
                <a href="User_cart.jsp">购物车（0）</a>  <a >商家入驻</a>
            </div>
        </div>
    </section>
    <div class="Logo_search">
        <div class="Logo">
            <img src="images/logo.jpg">
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
            <p class="hotkeywords"><a href="suanla.jsp" title="酸辣土豆丝">酸辣土豆丝</a><a href="xihong.jsp" title="西红柿炒蛋">西红柿炒蛋</a><a href="youmen.jsp" title="油焖茄子">油焖茄子</a><a href="mifan.jsp" title="米饭">米饭</a><a href="miantiao.jsp" title="面条">面条</a><a href="kele.jsp" title="可乐">可乐</a></p>
        </div>
    </div>
    <nav class="menu_bg">
        <ul class="menu">
            <li><a href="User_index.jsp">首页</a></li>
            <li><a href="User_menu.jsp">订餐</a></li>
            <li><a href="User_center.jsp">会员中心</a></li>
            <li><a href="User_introduce.jsp">关于我们</a></li>
        </ul>
    </nav>
</header>
<!--Start content-->
<section class="slp">
    <section class="food-hd">
        <div class="foodpic">
            <img src="upload/chengzhi.jpg" id="showimg">
            <ul class="smallpic">
                <li><img src="upload/chengzhi.jpg" onmouseover="show(this)" onmouseout="hide()"></li>
            </ul>
        </div>
        <div class="foodtext">
            <div class="foodname_a">
                <h1>橙汁</h1>
                <p>蚌埠市龙子湖区</p>
            </div>
            <div class="price_a">
                <p class="price01">促销：￥<span>6.00</span></p>
                <p class="price02">价格：￥<s>9.00</s></p>
            </div>
            <div class="Freight">
                <span>配送费用：</span>
                <span><i>xx区</i>至<i>龙子湖区</i></span>
                <span>￥2.00</span>
            </div>
            <ul class="Tran_infor">
                <li>
                    <p class="Numerical">23</p>
                    <p>月销量</p>
                </li>
                <li class="line">
                    <p class="Numerical">58</p>
                    <p>累计评价</p>
                </li>
                <li>
                    <p class="Numerical">4</p>
                    <p>送幸福积分</p>
                </li>
            </ul>
            <form action="User_cart.jsp">
                <div class="BuyNo">
                    <span>我要买：<input type="number" name="Number" required autofocus min="1" value="1"/>份</span>
                    <span>库存：3258</span>
                    <div class="Buybutton">
                        <input name="" type="submit" value="加入购物车" class="BuyB">
                        <a href=" User_index.jsp"><span class="Backhome">进入店铺首页</span></a>
                    </div>
                </div>
            </form>
        </div>
        <div class="viewhistory">
            <span class="VHtitle">看了又看</span>
            <ul class="Fsulist">
                <li>
                    <a href="xihong.jsp" target="_blank" title="西红柿炒蛋"><img src="upload/03.jpg"></a>
                    <p>西红柿炒蛋</p>
                    <p>￥7.00</p>
                </li>
                <li>
                    <a href="youmen.jsp" target="_blank" title="油焖茄子"><img src="upload/02.jpg"></a>
                    <p>油焖茄子</p>
                    <p>￥12.00</p>
                </li>
            </ul>
        </div>
    </section>
    <!--bottom content-->
    <section class="Bcontent">
        <article>
            <div class="shopcontent">
                <div class="title2 cf">
                    <ul class="title-list fr cf ">
                        <li class="on">详细说明</li>
                        <li>评价详情（5）</li>
                        <li>成交记录（5）</li>
                        <p><b></b></p>
                    </ul>
                </div>
                <div class="menutab-wrap">
                    <!--case1-->
                    <div class="menutab show">
                        <div class="cont_padding">
                            <img src="upload/chengzhi.jpg" width="400px">
                            <p><p>鲜果原榨，酸甜解渴</p></p>
                        </div>
                    </div>
                    <!--case2-->
                    <div class="menutab">
                        <div class="cont_padding">
                            <table class="Dcomment">

                                <tr>
                                    <td>
                                        <p>DEATHGHOST</p><br>
                                        还不错，速度倒是挺快的
                                        <time>2016/05/31 下午11:30:39</time>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <!--创建评论区-->
                                        <table id="table"></table><br>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <%--<!--输入姓名-->
                                        昵称:<input type="text" id="name"><br>--%>
                                        <!--输入评论内容-->
                                        <textarea cols="120" rows="8" id="text" style="margin: auto"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <!--评论按钮-->
                                        <input type="button" value="评论" id="discuss" style="font-size: 20px;">
                                    </td>
                                </tr>
                            </table>
                            <div class="TurnPage">
                                <a >
                                    <span class="Prev"><i></i>首页</span>
                                </a>
                                <a ><span class="PNumber">1</span></a>
                                <a ><span class="PNumber">2</span></a>
                                <a >
                                    <span class="Next">最后一页<i></i></span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!--case4-->
                    <div class="menutab">
                        <div class="cont_padding">

                            <table width="888">
                                <th width="35%">买家</th>
                                <th width="20%">价格</th>
                                <th width="15%">数量</th>
                                <th width="30%">成交时间</th>
                                <tr height="40">
                                    <td>d***t</td>
                                    <td>￥59</td>
                                    <td>1</td>
                                    <td>2014-9-18 11:13:07</td>
                                </tr>
                            </table>

                        </div>
                        <div class="TurnPage">
                            <a >
                                <span class="Prev"><i></i>首页</span>
                            </a>
                            <a ><span class="PNumber">1</span></a>
                            <a ><span class="PNumber">2</span></a>
                            <a >
                                <span class="Next">最后一页<i></i></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </article>
        <!--ad&other infor-->
        <aside>
            <!--广告位或推荐位-->
            <a  title="广告位占位图片" target="_blank"><img src="upload/2014912.jpg"></a>
        </aside>
    </section>
</section>

<footer>
    <section class="Otherlink">
        <aside>
            <div class="ewm-left">
                <p>享受健康美食，就来恰饭吧！</p>
                <img src="images/logo.jpg" height="150px" width="200px"/></div>
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
</footer>
</body>
</html>
