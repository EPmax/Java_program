<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <link rel="shortcut icon" href="img/book.png">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="js/jquery-3.2.1.min.js" ></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>
    <style>
        .huanying{
            font-family: SimHei,Microsoft YaHei,"Lucida Calligraphy";
        }
        .zhuti{
            color: #946b2f;
        }
        .zhutib{
            background-color: #946b2f;
        }
        .wh{
            color: white;
        }
        .denglujiemian{
            border-bottom: 2px solid #946b2f;
            border-left: 2px solid #946b2f;
            border-top: 2px solid #946b2f;
            border-right: 2px solid #946b2f;
            width: 500px;
            height: 400px;
            margin: auto;
            margin-top: 10px;
            padding: 10px;
        }
        .yzm{
            width: 64px;
            height: 40px;
        }
    </style>
    <script>
        window.onload=function (){
            var img=document.getElementById("checkCode");
            img.onclick=function (){
                var date =new Date().getTime();
                img.src="/muduilibrary/yzmServlet?"+date;
            }
        }
    </script>
</head>
<body>
<h3 class="text-center huanying zhuti">欢迎进入木对图书管理系统</h3>

<div class="denglujiemian">
    <form action="/muduilibrary/LoginServlet" method="post">
        <div class="form-group zhuti">
            <label for="exampleInputEmail1">请输入电子邮箱</label>
            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email" name="account_number">
        </div>
        <div class="form-group zhuti">
            <label for="exampleInputPassword1">请输入密码</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="password" name="password">
        </div>

        <div style="color: red">${requestScope.error}</div>

        <div class="form-group zhuti">
            <label for="yzm">输入图片上的数字:</label>
            <div style="width: 100px;display: inline-block;margin-left: 10px;margin-right: 10px;margin-top: 10px">
                <input type="text" class="form-control" id="yzm"  name="yzm" style="width: 100px"></div>
            <div style="width: 100px;display: inline-block"><img src="/muduilibrary/yzmServlet" class="yzm" id="checkCode"></div>
        </div>


        <div style="color: red">${requestScope.yzm_error}</div>

        <div class="row">
            <div class="col-lg-3">
                <a  class="btn btn-default zhuti " style="margin-left: 100px;margin-top: 20px" href="index.jsp">取消</a>
            </div>
            <button type="submit" class="btn btn-default zhuti " style="margin-left: 200px;margin-top: 20px">登录</button>
        </div>
    </form>


</div>
<a  class="btn btn-default zhuti " style="margin-left: 800px;margin-top: 20px" href="register.jsp">没有账号？点我注册</a>
</body>
</html>