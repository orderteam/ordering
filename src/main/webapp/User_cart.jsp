<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>恰饭吧-我的购物车</title>
    <meta name="author" content="DeathGhost"/>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/public.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jqpublic.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>

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
                <a href="User_cart.jsp">购物车（0）</a>  <a href="login">商家入驻</a>
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
            <li><a href="User_center.jsp">会员中心</a></li>
            <li><a href="User_introduce.jsp">关于我们</a></li>
        </ul>
    </nav>
</header>
<!--Start content-->
<form action="#">
    <div class="gwc" style=" margin:auto;">
        <table cellpadding="0" cellspacing="0" class="gwc_tb1">
            <tr>
                <td class="tb1_td1"><input id="Checkbox1" type="checkbox"  class="allselect"/></td>
                <td class="tb1_td1">全选</td>
                <td class="tb1_td3">商品</td>
                <td class="tb1_td4">原价</td>
                <td class="tb1_td5">数量</td>
                <td class="tb1_td6">单价</td>
                <td class="tb1_td7">操作</td>
            </tr>
        </table>
        <table cellpadding="0" cellspacing="0" class="gwc_tb2" id="table1">
            <tr>
                <td colspan="7" class="shopname Font14 FontW">店铺：恰饭吧</td>
            </tr>
            <tr>
                <td class="tb2_td1"><input type="checkbox" value="1" name="newslist" id="newslist-1" /></td>
                <td class="tb2_td2"><a href="suanla.jsp" target="_blank"><img src="upload/01.jpg"/></a></td>
                <td class="tb2_td3"><a href="suanla.jsp" target="_blank">酸辣土豆丝</a></td>
                <td class="tb1_td4"><s>￥15.00</s></td>
                <td class="tb1_td5"><input id="min1" name=""  style="width:30px; height:30px;border:1px solid #ccc;" type="button" value="-" />
                    <input id="text_box1" name="" type="text" value="1" style=" width:40px;height:28px; text-align:center; border:1px solid #ccc;" />
                    <input id="add1" name="" style="width:30px; height:30px;border:1px solid #ccc;" type="button" value="+" />
                </td>
                <td class="tb1_td6"><label id="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;"></label></td>
                <td class="tb1_td7"><a href="#" id="delcart1">删除</a></td>
            </tr>
        </table>
        <table cellpadding="0" cellspacing="0" class="gwc_tb2" id="table2">
            <tr>
                <td colspan="7" class="shopname Font14 FontW">店铺：恰饭吧</td>
            </tr>
            <tr>
                <td class="tb2_td1"><input type="checkbox" value="1" name="newslist" id="newslist-2" /></td>
                <td class="tb2_td2"><a href="xihong.jsp" target="_blank"><img src="upload/02.jpg"/></a></td>
                <td class="tb2_td3"><a href="xihong.jsp" target="_blank">西红柿炒蛋</a></td>
                <td class="tb1_td4"><s>￥7.00</s></td>
                <td class="tb1_td5"><input id="min2" name=""  style=" width:30px; height:30px;border:1px solid #ccc;" type="button" value="-" />
                    <input id="text_box2" name="" type="text" value="1"
                           style=" width:40px;height:28px; text-align:center; border:1px solid #ccc;" />
                    <input id="add2" name="" style=" width:30px; height:30px;border:1px solid #ccc;" type="button" value="+" />
                </td>
                <td class="tb1_td6"><label id="total2" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;"></label></td>
                <td class="tb1_td7"><a href="#" id="delcart2">删除</a></td>
            </tr>
        </table>
        <table cellpadding="0" cellspacing="0" class="gwc_tb3">
            <tr>
                <td class="tb1_td1"><input id="checkAll" class="allselect" type="checkbox" /></td>
                <td class="tb1_td1">全选</td>
                <td class="tb3_td1"><input id="invert" type="checkbox" />
                    反选
                    <input id="cancel" type="checkbox" />
                    取消 </td>
                <td class="tb3_td2 GoBack_Buy Font14"><a href="#" target="_blank">继续购物</a></td>
                <td class="tb3_td2">已选商品
                    <label id="shuliang" style="color:#ff5500;font-size:14px; font-weight:bold;">0</label>
                    件</td>
                <td class="tb3_td3">合计(不含运费):<span>￥</span><span style=" color:#ff5500;">
        <label id="zong1" style="color:#ff5500;font-size:14px; font-weight:bold;">0.00</label>
        </span></td>
                <td class="tb3_td4"><span id="jz1">结算</span><a href="User_confirm.jsp" style=" display:none;" class="jz2" id="jz2">结算</a></td>
            </tr>
        </table>
    </div>
</form>
<footer>
    <section class="Otherlink">
        <aside>
            <div class="ewm-left">
                <p>享受健康美食，就来恰饭吧！</p>
                <img src="logo.jpg" height="150" width="200"/></div>   </div>
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
                    <li><a  target="_blank" title="支付方式">支付方式</a></li>
                    <li><a  target="_blank" title="配送方式">配送方式</a></li>
                    <li><a  target="_blank" title="配送效率">配送效率</a></li>
                    <li><a  target="_blank" title="服务费用">服务费用</a></li>
                </ul>
            </div>
            <div>
                <span><i class="i2"></i>关于我们</span>
                <ul>
                    <li><a  target="_blank" title="招贤纳士">招贤纳士</a></li>
                    <li><a href="User_introduce.jsp" target="_blank" title="标题">网站介绍</a></li>
                    <li><a  target="_blank" title="配送效率">配送效率</a></li>
                    <li><a  target="_blank" title="商家加盟">商家加盟</a></li>
                </ul>
            </div>
            <div>
                <span><i class="i3"></i>帮助中心</span>
                <ul>
                    <li><a  target="_blank" title="服务内容">服务内容</a></li>
                    <li><a  target="_blank" title="服务介绍">服务介绍</a></li>
                    <li><a  target="_blank" title="常见问题">常见问题</a></li>
                    <li><a  target="_blank" title="网站地图">网站地图</a></li>
                </ul>
            </div>
        </section>
    </section>
</footer>
</body>
</html>
