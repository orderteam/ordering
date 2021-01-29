<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <style>

        .logo{
            position: absolute;
            left: 33%;
            top: 0%;
        }
        h1{
            display: inline-block;
            font-size: 50px;
            font-weight: bold;
            font-family: 华文细黑;
            position: absolute;
            left: 52%;
            top: 5%;
        }
        #d{
            width: 450px;
            height: 580px;
            position:absolute;
            left: 36%;
            top: 20%;
        }
        .wel{
            font-size: 25px;
            font-weight: bold;
            font-family: 华文细黑;
            text-align: center;
            color: #4EAC5C;
        }
        .brd{
            width: 400px;
            height: 480px;
            position: absolute;
            top: 12%;
            left: 5%;
        }
        .tex{
            display: block;
            line-height: 40px;
            width: 350px;
            border:1px solid ;
            border-radius: 5px;
        }
        #code{
            display: block;
            line-height: 35px;
            width: 210px;
            border:1px solid ;
            border-radius: 5px;
        }
        .tab{
            position: absolute;
            left: 4%;
        }


        input{
            outline:none;
            /*点进去无外部边框出现*/
        }
        a{
            color: #4EAC5C;
            text-decoration: none;
        }
        a:hover{
            color: chartreuse;
        }

        .tip {
            width: 200px;
            height: 30px;
            position:absolute;
            left: 62%;
        }
        #t1{
            top: 33%;
        }
        #t2{
            top: 41%;
        }
        #t3{
            top: 49%;
        }
        #t6{
            top: 58%;
        }
        #t4{
            top: 66%;
        }
        #t5{
            top: 74%;
        }

        .YZM_pic{
            display: block;
            width: 100px;
            height: 35px;
            background-color: #FFFFFF;
            color: #000000;
            font-size: 20px;
            box-shadow: 0 0 0 1px #000000;
            border-radius: 5px;
            border-right: 5px;
            text-align: center;
        }
        span.YZM_pic:hover{
            background-color: lightblue;

        }
        #blank{
            width: 100px;
            height: 29px;
            box-shadow: 0 0 0 1px #000000;
            border-radius: 5px;
            background-color: white;
            position:absolute;
            left: 54.55%;
            top: 40.5%;
            text-align: center;
            padding-top: 6px;
        }
        #blank:hover{
            background-color: lightblue;
            cursor: pointer;
        }
    </style>
</head>
<body>
<!--logo图标和标题-->
<img src="images/logo.jpg" class="logo" width="300px">
<h1>用户注册</h1>

<!--填写注册信息 总体在div块中-->
<div id="d">
    <p class="wel">欢迎你，填写以下信息后就可以注册了</p>
    <div class="brd">
        <!--form表单 以table为框架-->
        <form class="register" action="user?method=regist" method="post">
            <table cellpadding="0" cellspacing="20">
                <!--手机号码-->
                <tr>
                    <th colspan="2">
                        <input type="text" class="tex" id="phone" name="phone" placeholder="请输入手机号码">
                    </th>
                </tr>
                <!--验证码-->
                <tr>
                    <td>
                        <input type="text" name="code" id="code" placeholder="请输入验证码">
                    </td>
                    <td>
                        <span id="YZM" class="YZM_pic" title="看不清，换一张"></span>
                    </td>
                </tr>
                <!--用户名-->
                <tr>
                    <th colspan="2">
                        <input type="text" class="tex" id="username" name="username" placeholder="请设置用户名">
                    </th>
                </tr>
                <!--邮箱-->
                <tr>
                    <th colspan="2">
                        <input type="text" class="tex" id="email" name="email" placeholder="请设置邮箱">
                    </th>
                </tr>
                <!--密码-->
                <tr>
                    <th colspan="2">
                        <input type="password" class="tex" id="password" name="password" placeholder="请设置密码">
                    </th>
                </tr>
                <!--再次确认密码-->
                <tr>
                    <th colspan="2">
                        <input type="password" class="tex" id="rePassword" name="rePassword" placeholder="请再次输入密码">
                    </th>
                </tr>

                <!--注册按钮-->
                <tr align="center">
                    <td colspan="2">
                        <input type="image" src="images/注册按钮.png" width="300px">
                    </td>
                </tr>
                <!--登录界面和返回首页的超链接-->
                <tr >
                    <td align="left">
                        <a href="login.jsp">已有账户？ 登录>></a>
                    </td>
                    <td align="right">
                        <a href="User_index.jsp">返回首页</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

<!--悬浮div块 提示信息 位于每行文本框右端-->
<div class="tip " id="t1"></div><br>
<div class="tip " id="t2"></div><br>
<div class="tip " id="t3"></div><br>
<div class="tip " id="t6"></div><br>
<div class="tip " id="t4"></div><br>
<div class="tip " id="t5"></div><br>
<div class="blank" id="blank"><span>获取验证码</span></div><br>
</body>
<script>
    //获取验证码后 提示div块消失
    document.getElementById("blank").onclick=function(){
        document.getElementById("blank").style.visibility="hidden";
        changelmg();
    }
    //点击获取验证码 触发事件
    document.getElementById("YZM").onclick=changelmg;
    //四位随机验证码获取
    var YZM=""
    function changelmg(){
        var arrays=new Array(
            '1','2','3','4','5','6','7','8','9','0'
            ,'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'
            ,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
        );
        YZM=""
        //随机从数据中获取四个验证码
        for(var i=0;i<4;i++){
            var r=parseInt(Math.random()*arrays.length);
            YZM+=arrays[r]
        }
        document.getElementById("YZM").innerHTML=YZM;

    }

    //非空校验 验证码校验 两次密码输入是否一致
    function login() {
        if(validatePhone() & validateCode() & validateEmail() & validateUsername() & validatePassword()){
            if(document.getElementById("ty").value=="会员"){
                alert("用户");
                window.navigate("User_index.jsp");
            }
            if(document.getElementById("ty").value=="商家"){
                alert("商家");
            }
            document.forms[0].submit();
            return true;
        }
        return false;
    }

    //手机号非空校验
    function validatePhone() {
        var phone = document.getElementById("phone").value;
        /*var t1=document.getElementById("t1")*/
        if (phone == "") {
            /*t1.innerHTML= "<font style='color:red;'>请输入手机号码</font>";*/
            document.getElementById("t1").innerHTML = "<font style='color:red;'>*请输入手机号码</font>";
            return false;
        }else{
            document.getElementById("t1").innerHTML = "";
        }
        return true;
    }
    //验证码非空校验 验证码正误校验
    function validateCode() {
        var code = document.getElementById("code").value;
        if (code == "") {
            document.getElementById("t2").innerHTML = "<font style='color:red;'>*请输入验证码</font>";
            return false;
        }else{
            document.getElementById("t2").innerHTML = "";
        }

        if(code!=YZM){
            document.getElementById("t2").innerHTML = "<font style='color:red;'>*验证码错误</font>";
            return false;
        }else{
            document.getElementById("t2").innerHTML = "";
        }
        return true;
    }
    //用户名非空校验
    function validateUsername() {
        var username = document.getElementById("username").value;
        if (username == "") {
            document.getElementById("t3").innerHTML = "<font style='color:red;'>*请填写用户名</font>";
            return false;
        }else{
            document.getElementById("t3").innerHTML = "";
        }
        return true;
    }
    //邮箱非空校验
    function validateEmail() {
        var email = document.getElementById("email").value;
        if (email == "") {
            document.getElementById("t6").innerHTML = "<font style='color:red;'>*请填写邮箱</font>";

        }else{
            var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
            if(reg.test(email)){
                document.getElementById("t6").innerHTML = "";
                return true;
            }else{
                document.getElementById("t6").innerHTML = "<font style='color:red;'>*邮箱格式不正确</font>";
                return false;
            }
        }



        return true;
    }

    //密码非空校验 两次密码输入是否一致
    function validatePassword() {
        var password = document.getElementById("password").value;
        if (password == "") {
            document.getElementById("t4").innerHTML = "<font style='color:red;'>*请填写密码</font>";
        }else{
            document.getElementById("t4").innerHTML = "";
        }

        var rePassword = document.getElementById("rePassword").value;
        if (rePassword == "") {
            document.getElementById("t5").innerHTML = "<font style='color:red;'>*请确认密码</font>";
            return false;
        }else{
            document.getElementById("t5").innerHTML = "";
        }

        if(password!=rePassword){
            document.getElementById("t5").innerHTML = "<font style='color:red;'>*两次密码不一致</font>";
            return false;
        }else{
            document.getElementById("t5").innerHTML = "";
        }
        return true;
    }
</script>
</html>
