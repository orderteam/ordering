
//更新用户
function updateUser(url) {
    var data = $("#f").serialize();
    $.ajax({
        type:"post",
        url:url,
        data:data,
        success:function (content) {
            parent.location.href="login.jsp";
            alert("会员信息修改成功,请重新登录！");
        }
    });
}

//更新时校验用户名称
function validateUpdateName(url,oldUsername) {

    var newUsername = $("#username").val();

    //昵称不相同，进行更新
    if(oldUsername!=newUsername){
        if(newUsername!=null && newUsername.trim()!=""){
            $.ajax({
                type:"get",
                url:url+"&username="+newUsername,
                dataType:"json",
                success:function(content){
                    var flag = content.flag;
                    var message = content.usernameMsg;
                    if(flag=="true"){
                        $(".usernameMsg").html("<font color='green'>"+message+"</font>");
                    }else if(flag=="false"){
                        $(".usernameMsg").html("<font color='red'>"+message+"</font>");
                    }
                }
            });
        }else{
            $(".usernameMsg").html("<font color='red'>会员昵称不能为空</font>");
        }
    //清空操作
    }else{
        $(".usernameMsg").html("");
    }
}

//通过id查询用户信息
function viewOne(url,id){
    $.ajax({
        type:"get",
        url:url+"&id="+id,
        // success:function (content) {
        //     $(".viewUser").html(content);
        // }
    });
}

//显示查看会员信息所有页面
function viewAll(url){
    var query = $("#searchName").val();

    // 默认查询所有
    if(query==undefined){
        query = "";
    }

    $.ajax({
        type:"get",
        url:url+"&query="+query,
        success:function (content) {
            $(".main").html(content);
        }
    });
}

//实现分页
//首页
function first(url){
    var query = $("#searchName").val();
    var pageNow = $("#pageNow").val();
    pageNow = 1;
    $.ajax({
        type:"get",
        url:url+"&pageNow="+pageNow+"&query="+query,
        success:function (content) {
            $(".main").html(content);
        }
    });
}

//末页
function last(url,myPages){
    var query = $("#searchName").val();
    var pageNow = $("#pageNow").val();
    pageNow = myPages;
    $.ajax({
        type:"post",
        url:url,
        data:{"pageNow":pageNow , "query":query},
        success:function (content) {
            $(".main").html(content);
        }
    });

}

//上一页
function pre(url){
    var query = $("#searchName").val();
    var pageNow = $("#pageNow").val();
    if(pageNow==1){
        alert("已至首页");
    }else{
        pageNow = pageNow - 1;
    }
    $.ajax({
        type:"get",
        url:url+"&pageNow="+pageNow+"&query="+query,
        success:function (content) {
            $(".main").html(content);
        }
    });
}

//下一页
function next(url,myPages) {
    var query = $("#searchName").val();
    var pageNow = $("#pageNow").val();
    if(pageNow == myPages){
        alert("已至末页");
    }else{
        pageNow = pageNow - (-1);
    }
    $.ajax({
        type:"get",
        url:url+"&pageNow="+pageNow+"&query="+query,
        success:function (content) {
            $(".main").html(content);
        }
    });
}

//跳转
function skip(url,myPages) {
    var query = $("#searchName").val();
    var pageNow = $("#pageNow").val();
    if(pageNow<1 || pageNow>myPages){
        alert("超出页码范围");
        pageNow = 1;
    }
    $.ajax({
        type:"get",
        url:url+"&pageNow="+pageNow+"&query="+query,
        success:function (content) {
            $(".main").html(content);
        }
    });
}


//删除会员
function del(url) {
    $.ajax({
        type:"get",
        url:url,
        success:function (content) {
            $(".main").html(content);
        }
    });
}

//删除选中会员
function deleteAll(url) {
    var str = "";

    $(".single").each(function () {
        //获取当前被选中的复选框的值
        if($(this).prop("checked")){
            //被选中的复选框的值
            var id = $(this).parents(".data").find(".id").text();
            //拼接  id=1&id=2&id=3&...
            str=str+"id="+id+"&";
        }
    });

    str = str.substr(0,str.length-1);
    $.ajax({
        type:"get",
        url:url+"&"+str,
        success:function (content) {
            $(".main").html(content);
        }
    });

}

//显示商品添加页面
function add(){
    $.ajax({
        type:"get",
        url:"addItem.jsp",
        success:function(content){
            $(".main").html(content);
        }
    });
}

//注册时商品名称的校验
function validateName(url) {
    var name = $("#name").val();
    if(name!=null && name.trim()!=""){
        $.ajax({
            type:"get",
            url:url+"&name="+name,
            dataType:"json",
            success:function(content){
                var flag = content.flag;
                var message = content.nameMsg;
                if(flag=="true"){
                    $(".nameMsg").html("<font color='green'>"+message+"</font>");
                }else if(flag=="false"){
                    $(".nameMsg").html("<font color='red'>"+message+"</font>");
                }
            }
        });
    }else{
        $(".nameMsg").html("<font color='red'>商品名称不能为空</font>");
    }
}

//添加商品
function addServlet(url) {
    //表单收集二进制数据
    var formData = new FormData($("#f")[0]);
    alert(formData)
    $.ajax({
        type:"post",
        url:url,
        data:formData,
        contentType:false,
        processData:false,
        success:function (content) {
            $(".main").html(content);
        }
    });
}


//通过id查询商品信息
function viewItem(url,id){
    $.ajax({
        type:"get",
        url:url+"&id="+id,
        success:function (content) {
            $(".main").html(content);
        }
    });
}

//更新商品
function updateServlet(url) {
    var formData = new FormData($("#f")[0]);
    $.ajax({
        type:"post",
        url:url,
        data:formData,
        contentType:false,
        processData:false,
        success:function(content){
            $(".main").html(content);
        }
    });
}

//更新时校验商品名称
function validateUpdateItemName(url,oldName) {
    var newName = $("#name").val();
    alert("oldName="+oldName+"\n"+"newName="+newName);

    if(oldName!=newName){

        if(newName!=null && newName.trim()!=""){
            $.ajax({
                type:"get",
                url:url+"&name="+newName,
                dataType:"json",
                success:function(content){
                    var flag = content.flag;
                    var message = content.nameMsg;
                    if(flag=="true"){
                        $(".nameMsg").html("<font color='green'>"+message+"</font>");
                    }else if(flag=="false"){
                        $(".nameMsg").html("<font color='red'>"+message+"</font>");
                    }
                }
            });
        }else{
            $(".nameMsg").html("<font color='red'>商品名称不能为空</font>");
        }

    }else{
        $(".nameMsg").html("");
    }
}

//删除商品
function delItem(url) {
    $.ajax({
        type:"get",
        url:url,
        success:function (content) {
            $(".main").html(content);
        }
    });
}

//删除选中商品
function deleteItemAll(url) {
    var str = "";

    $(".single").each(function () {
        //获取当前被选中的复选框的值
        if($(this).prop("checked")){
            //被选中的复选框的值
            var id = $(this).parents(".data").find(".id").text();
            //拼接  id=1&id=2&id=3&...
            str=str+"id="+id+"&";
        }
    });

    str = str.substr(0,str.length-1);
    $.ajax({
        type:"get",
        url:url+"&"+str,
        success:function (content) {
            $(".main").html(content);
        }
    });

}