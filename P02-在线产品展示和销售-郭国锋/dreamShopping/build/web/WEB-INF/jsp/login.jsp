<%-- 
   
    Author     : 郭国锋
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录界面</title>
         <base href="${pageContext.request.contextPath}/" />
        <link href="变形金刚图标.ico" rel="shortcut icon">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="resources/css/login.css">
    </head>
        <body>
        <!--头部-->
        <div id="header">
            <div class="h_center">
                <img src="resources/images/Dream商城.png" alt="">
                <p>
                    欢迎进入Dream商城，快完成登录吧
                </p>
            </div>
        </div>
        <!--中部-->
        <div id="login_body">
            <div class="login_b_center">
                <div class="login_bg">
                    <h4>密码登录 </h4>
                    <form action="students/login" id="login">
                        <div class="username">
                            <span></span>
                            <input type="text" name="stuId">
                        </div>
                        <div class="password">
                            <span></span>
                            <input type="password" name="stuPassword">
                        </div>   
                        <div class="login_btn">
                            <input type="submit" class="login_btn" value="登录">
                        </div>
                        <div class="forgotPwd">
                             <a href="products/regist">免费注册</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
