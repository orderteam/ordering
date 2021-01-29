<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商家登录</title>
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style>
        .blank{
            margin: auto;
            width: 72px;
            height: 100px;
            background: url("${pageContext.request.contextPath}/images/user.png") no-repeat;
            position: absolute;
            top:110px;
            left:732px;
        }
        .background{
            margin: auto;
            width: 150px;
            height: 150px;
            border-radius: 50%;
            background-color: #CBFAD8;
        }
        #from{
            margin: auto;
            width: 500px;
            height: 200px;

        }
        #username{
            display: block;
            line-height: 50px;
            width: 450px;
            border:1px solid ;
            border-radius: 5px;
        }
        #password{
            display: block;
            line-height: 50px;
            width: 450px;
            border:1px solid ;
            border-radius: 5px;
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
    </style>




</head>
<body>
<!--标题  用户登录-->
<h1 style="color: #4EAC5C;" align="center">商
    &nbsp;&nbsp;&nbsp;家&nbsp;&nbsp;&nbsp;登&nbsp;&nbsp;&nbsp;录</h1>

<!--空白div块-->
<div class="blank"></div>
<div class="background"></div>

<!--用户名和密码的输入框  from表单 以table为框架-->
<div id="from">

    <form id="loginForm" action="user?method=login1"  method="post" onsubmit="login()">
        <table border="0" cellspacing="0" cellpadding="30px">

            <div class="form-group">
                <tr>
                    <td colspan="2">
                        <label for="username" class="col-sm-2 control-label"></label>
                        <div class="col-sm-6">
                            <input type="text" id="username" name="username" required="required" placeholder="请输入商家账户名">
                            <div id="usernameMsg"></div>
                        </div>
                    </td>
                </tr>
            </div>

            <%--            获取会员用户名--%>
            <c:if test="${requestScope.msg!=null}">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label"></label>
                    <div class="col-sm-6" style="color: red">${requestScope.msg}</div>
                </div>
            </c:if>


            <div class="form-group">
                <tr>
                    <td colspan="2">
                        <label for="password" class="col-sm-2 control-label"></label>
                        <input type="password" class="form-control" required="required" id="password" name="pwd" placeholder="请输入密码">
                        <div id="passwordMsg"></div>
                    </td>
                </tr>
            </div>

            <div class="form-group">
                <tr align="center">
                    <td colspan="2">
                        <input type="image" src="images/login.png" style="width: 300px;">
                    </td>
                </tr>
            </div>

            <tr >
                </td>
                <td align="right">
                    <a href="User_index.jsp">返回首页</a>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
<script>

    function login() {
        //判断两者是否为空，为空则在div块中显示提示；不为空则提交表单
        if (validateUsername() & validatePassword()){
            //提交表单
            document.forms[0].submit();
            return true;
        }
        return false;

    }



    //校验用户名是否为空 ture不为空，可以通过校验 false为空，不能通过校验
    function validateUsername() {
        var username=document.getElementById("username").value;
        var usernameMsg=document.getElementById("usernameMsg");
        if(username==""){
            usernameMsg.innerHTML="<font style='color:red'>*请输入用户名或手机号</font>"
            return false;
        }else {
            document.getElementById("usernameMsg").innerHTML = "";
        }
        return true;
    }

    //校验密码是否为空 ture不为空，可以通过校验 false为空，不能通过校验
    function validatePassword() {
        var password=document.getElementById("password").value;
        var passwordMsg=document.getElementById("passwordMsg");
        if(password==""){
            passwordMsg.innerHTML="<font style='color:red'>*请输入密码</font>"
            return false;
        }else {
            document.getElementById("passwordMsg").innerHTML = "";
        }
        return true;
    }

</script>
</html>
