<%-- 
    Document   : regist
    Created on : 2019-6-10, 15:13:03
   Author     : 郭国锋
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>regist</title>
             <base href="${pageContext.request.contextPath}/" />
        <meta charset="UTF-8">
        <link href="变形金刚图标.ico" rel="shortcut icon">
        <link rel="stylesheet" href="resources/css/regist.css">
        <link rel="stylesheet" href="resources/css/common.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <style>
            #reg_content{
                height: 700px;
                width: 1400px;
                background: red;
                margin: 0 auto;
                background-image: url(resources/images/海贼王.jpg);
            }  
        </style>
        <!--头部-->
        <div id="reg_header">

            <div class="reg_h_center">
                <div class="reg_h_left">
                    <img src="resources/images/Dream商城.png" alt="">
                    <h3>Dream购物者欢迎注册</h3>
                </div>
                <div class="reg_h_right">
                    <span>已有账户</span>                   
                     <a href="products/login">请直接登录吧</a>
                </div>
            </div>
        </div>
        <!--表单内容-->
        <div id="reg_content">
            <div id="login_body">
                <div class="login_b_center">
                    <div class="login_bg">
                        <h4>新用户注册 </h4>
                        <!--因为需要保存到数据库，所以使用post方式提交-->
                        <form action="students/register" id="login"  method="post">
           
                           <div class="password">                           
                                <input   type="text"  placeholder="请输入身份证号" name="stuId">
                            </div> 
                            <div class="username">                            
                                <input id="username" type="text" placeholder="请输入用户名" name="stuName">
                            </div>
                            <div class="password">                           
                                <input  id="pwd" type="password" placeholder="请输入密码" name="stuPassword">
                            </div> 
                            <div class="password">                           
                                <input  id="pwd2" type="password" placeholder="请再次输入密码"name="stuPassword2">
                            </div>
                               
                            <div class="password">                           
                                <input   type="text"  placeholder="请输入手机号" name="stuNumber">
                            </div>   
                            <div class="password">                           
                                <input  type="text"  placeholder="请输入邮箱" name="stuEmail">
                            </div>                            
                            <div class="login_btn">
                                <input  type="button" class="login_btn" value="立即注册" onclick="checkData()">
                            </div>                      
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function checkData() {
                //注册的时候做了两个判断，1.用户名和密码，再次输入密码不能为空。2.两次输入的密码必须一致。
                //1.获取用户名和密码
                var username = document.getElementById("username");
                var pwd = document.getElementById("pwd");
                var pwd2 = document.getElementById("pwd2");
                //2.判断输入的内容不能为空
                if (username.value == "") {
                    alert("请输入用户名");
                    return;
                }
                if (pwd.value == "") {
                    alert("请输入密码");
                    return;
                }
                if (pwd2.value == "") {
                    alert("请再次输入密码");
                    return;
                }
                //3.两次密码一样
                if (pwd.value == pwd2.value) {
                    //发送请求 获取form表单                
                    var form = document.getElementById("login");
                    //提交，相当于执行action请求
                    form.submit();
                } else {
                    alert("两次输入的密码不一样");
                }

            }
        </script>
    </body>
</html>
