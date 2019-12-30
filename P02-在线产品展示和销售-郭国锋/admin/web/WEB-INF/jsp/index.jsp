
<%-- 
    Document   : user
    Created on : 2019-6-3, 16:03:11
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <base href="${pageContext.request.contextPath}/" />
          <link rel="stylesheet" href="resources/css/index.css">  
         
         
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dream商城后台管理系统</title>
    </head>
    <body>
        <style>
            .h_top_right{
                 margin: 0 5px;
    font-size: 16px;
                 float: right;
    height: 50px;
            }
        </style>
        <div class="h_top_right">                      
                        <a href="">欢迎 ${student.stuName} </a>
                        <a href="products/showAllProducts">查看商品列表</a>                                          
                    </div>

        <div id="container">

			<!--
			服务器跳转时，路径相对的是服务器WebContent
			浏览器请求跳转时， 路径相对的当前的jsp
			
			 在JSP  凡是有  action  src  href 都要去写绝对路径  加上工程名称的路径
		    -->
			<form action="students/login">
				<div class="login">Dream商城后台管理系统
				<span style="color:red">${err }</span>
				</div>
				<div class="username-text">用户名:</div>
				<div class="password-text">密码:</div>
				<div class="username-field">
					<input type="text" name="stuId" value="" />
				</div>
				<div class="password-field">
					<input type="password" name="stuPassword" value="" />
				</div>
				<input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">记住用户名</label>
	
				<div class="forgot-usr-pwd"></div>
                                <div class="inp"><input type="submit" value="GO" /></div>
			</form>
		</div>
    </body>
</html>
