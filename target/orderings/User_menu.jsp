<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <div class="xddhl dhl1"><a href="User_index.jsp" style="color: white">首页</a></div>
    <div class="xddhl dhl2"><a href="User_menu.jsp" style="color: white">菜单</a></div>
    <div class="xddhl dhl3"><a href="User?code=viewUser" style="color: white">会员中心</a></div>
    <div class="xddhl dhl4"><a href="User_introduce.jsp" style="color: white">关于我们</a></div>

    <meta charset="utf-8" />
    <title>菜单</title>
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
</head>
<body>
<header>
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
                <a href="User_cart.jsp">购物车（0）</a> <a href="login1.jsp">商家入驻</a>
            </div>
        </div>
    </section>
    <div class="Logo_search">
        <div class="Logo">
            <img src="images/logo.jpg" title="DeathGhost" alt="模板">
            <i></i>
            <span>蚌埠 [ <a >龙子湖区</a> ]</span>
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
            <li><a href="User_index.jsp">首页</a></li>
            <li><a href="User_menu.jsp">菜单</a></li>
            <li><a href="User_center.jsp">会员中心</a></li>
            <li><a href="User_introduce.jsp">关于我们</a></li>
        </ul>
    </nav>
</header>
<section class="Psection">
    <section class="fslist_navtree">
        <ul class="select">
            <li class="select-list">
                <dl id="select1">
                    <dt>分类：</dt>
                    <dd class="select-all selected"><a href="javascript:">全部</a></dd>
                    <dd><a href="javascript:">主食</a></dd>
                    <dd><a href="javascript:">时蔬</a></dd>
                    <dd><a href="javascript:">饮料</a></dd>
                </dl>
            <li class="select-result">
                <dl>
                    <dd class="select-no">已选择：</dd>
                </dl>
            </li>
        </ul>
    </section>
    <section class="Fslmenu">
        <a  title="默认排序">
  <span>
  <span>默认排序</span>
  <span></span>
  </span>
        </a>
        <a  title="评价">
  <span>
  <span>评价</span>
  <span class="s-up"></span>
  </span>
        </a>
        <a  title="销量">
  <span>
  <span>销量</span>
  <span class="s-up"></span>
  </span>
        </a>
        <a  title="价格排序">
  <span>
  <span>价格</span>
  <span class="s-down"></span>
  </span>
        </a>
        <a  title="发布时间排序">
  <span>
  <span>发布时间</span>
  <span class="s-up"></span>
  </span>
        </a>
    </section>
    <section class="Fsl">
        <ul>
            <li>
                <a href="suanla.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/01.jpg"></a>
                <hgroup>
                    <h3>酸辣土豆丝</h3>
                    <h4></h4>
                </hgroup>
                <p>分类：时蔬</p>
                <p>。。。。。</p>
                <p>15元</p>
                <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
                    <span class="DSBUTTON"><a href="suanla.jsp" target="_blank" class="Fontfff">订餐</a></span>
                </p>
            </li>
            <li>
                <a href="xihong.jsp" target="_blank" title="调用产品名"><img src="upload/02.jpg"></a>
                <hgroup>
                    <h3>西红柿炒蛋</h3>
                    <h4></h4>
                </hgroup>
                <p>分类：时蔬</p>
                <p>。。。。。。</p>
                <p>7元</p>
                <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
                    <span class="DSBUTTON"><a href="xihong.jsp" target="_blank" class="Fontfff">订餐</a></span>
                </p>
            </li>
            <li>
                <a href="youmen.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/011.jpg"></a>
                <hgroup>
                    <h3>油焖茄子</h3>
                    <h4></h4>
                </hgroup>
                <p>分类：时蔬</p>
                <p>。。。。。</p>
                <p>12元</p>
                <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
                    <span class="DSBUTTON"><a href="youmen.jsp" target="_blank" class="Fontfff">订餐</a></span>
                </p>
            </li>
            <li>
                <a href="miantiao.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/10.jpg"></a>
                <hgroup>
                    <h3>面条</h3>
                    <h4></h4>
                </hgroup>
                <p>分类：主食</p>
                <p>。。。。。</p>
                <p>8元</p>
                <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
                    <span class="DSBUTTON"><a href="miantiao.jsp" target="_blank" class="Fontfff">订餐</a></span>
                </p>
            </li>
            <li>
                <a href="mantou.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/8.jpg"></a>
                <hgroup>
                    <h3>馒头</h3>
                    <h4></h4>
                </hgroup>
                <p>分类：主食</p>
                <p>。。。。。</p>
                <p>5元</p>
                <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
                    <span class="DSBUTTON"><a href="mantou.jsp" target="_blank" class="Fontfff">订餐</a></span>
                </p>
            </li>
            <li>
                <a href="mifan.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/9.jpg"></a>
                <hgroup>
                    <h3>米饭</h3>
                    <h4></h4>
                </hgroup>
                <p>分类：主食</p>
                <p>。。。。。</p>
                <p>15元</p>
                <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
                    <span class="DSBUTTON"><a href="mifan.jsp" target="_blank" class="Fontfff">订餐</a></span>
                </p>
            </li>
            <li>
                <a href="kele.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/kele.jpg"></a>
                <hgroup>
                    <h3>可乐</h3>
                    <h4></h4>
                </hgroup>
                <p>分类：饮料</p>
                <p>。。。。。</p>
                <p>8元</p>
                <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
                    <span class="DSBUTTON"><a href="kele.jsp" target="_blank" class="Fontfff">订餐</a></span>
                </p>
            </li>
            <li>
                <a href="chengzhi.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/chengzhi.jpg"></a>
                <hgroup>
                    <h3>橙汁</h3>
                    <h4></h4>
                </hgroup>
                <p>分类：饮料</p>
                <p>。。。。。</p>
                <p>6元</p>
                <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
                    <span class="DSBUTTON"><a href="chengzhi.jsp" target="_blank" class="Fontfff">订餐</a></span>
                </p>
            </li>
            <li>
                <a href="naicha.jsp" target="_blank" title="调用产品名/店铺名"><img src="upload/naicha.jpg"></a>
                <hgroup>
                    <h3>奶茶</h3>
                    <h4></h4>
                </hgroup>
                <p>分类：饮料</p>
                <p>。。。。。</p>
                <p>14元</p>
                <p>
    <span class="Score-l">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="Score-v">4.8</span>
    </span>
                    <span class="DSBUTTON"><a href="naicha.jsp" target="_blank" class="Fontfff">订餐</a></span>
                </p>
            </li>
        </ul>
        <aside>
            <div class="title">即将上架</div>
            <div class="C-list">
                <a  target="_blank" title="店铺名称"><img src="upload/b.jpg"></a>
                <p><a  target="_blank">xxx</a></p>
                <p>
                    <span>xx元</span>
                    <span style=" float:right">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="ALscore">4.8</span>
   </span>
                </p>
            </div>
            <div class="C-list">
                <a  target="_blank" title="店铺名称"><img src="upload/a.jpg"></a>
                <p><a  target="_blank">xxx</a></p>
                <p>
                    <span>xx元</span>
                    <span style=" float:right">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-on.png">
    <img src="images/star-off.png">
    <span class="ALscore">4.8</span>
   </span>
                </p>
            </div>
        </aside>
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
    </section>
</section>
<!--End content-->
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
</footer>
</body>
</html>
