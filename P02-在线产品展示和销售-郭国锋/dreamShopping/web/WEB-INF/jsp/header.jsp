<%-- 
    Document   : header
     Created on : 2019-6-10, 15:13:03
   Author     : 郭国锋
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page import="com.qdu.pojo.Login1"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--设置标签图标-->
        <link href="变形金刚图标.ico" rel="shortcut icon">
        <link rel="stylesheet" href="resources/css/header.css">      
        <link rel="stylesheet" href="resources/css/common.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
       
        <!--头部-->
        <div id="header">
            <!--顶部-->
            <div class="header_top">
                <div class="h_top_center">
<!--                    <div class="h_top_left">
                        欢迎来到Dream商城
                    </div>-->
                    <div class="h_top_right">                      
                        <a href="products/login">欢迎 ${student.stuName} </a>
                        <a href="products/regist">免费注册</a>
                        <a href="products/cart">购物车</a>
                        <a href="products/dingdan">我的订单</a>
                       
                    </div>
                </div>
            </div>
            <!--中部搜索-->
            <div class="header_center">
                <div class="h_c_logo">
                    <img src="resources/images/Dream商城.png" alt="">
                </div>
                <div class="h_c_search">
                   
                    
                    <form action="products/sousuo">
                        <input class="t_input" type="text"  name="productimage" placeholder="请输入一些内容">
                        <input type="submit" class="t_button">
                    </form>
                    
                    
                    <div class="hot">
                        <a href="#">新款连衣裙</a>
                        <a href="#">四件套</a>
                        <a href="#">潮流T恤</a>
                        <a href="#">时尚女鞋</a>
                        <a href="#">短裤半身裙</a>
                    </div>
                </div>
                <div class="h_c_code">
                    <img src="resources/images/变形金刚图标.jpg" alt="">
                </div>
            </div>
            <!--导航-->
            <div class="nav">
                <ul>
                <li><a href="products/index">首页</a></li>             
               
                   <li>  <a href="products/showProducts?CategoryId=图书音像">图书音像</a></li>
                    <li> <a href="products/showProducts?CategoryId=电脑办公">电脑办公</a></li>
                    <li><a href="products/showProducts?CategoryId=家具家居">家具家居</a></li>
                    <li><a href="products/showProducts?CategoryId=鲜果时光">鲜果时光</a></li>
                    <li><a href="products/showProducts?CategoryId=母婴孕婴">母婴孕婴</a></li>
                </ul>  
            </div>


        </div>
    </body>
</html>
