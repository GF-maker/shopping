<%@page import="com.qdu.pojo.Product"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <base href="${pageContext.request.contextPath}/" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/images/shortcut.png" rel="shortcut icon" type="image/x-icon"/>
        <title>购物车信息</title>
        <style>
            .cart_buy input{
                margin-left: 10px;
                padding:10px 20px;
                background: #ff4400;
                color:white;
                font-size:15px;
            }
            .cart img{
                float: left;
            }
            .cart img{
                float: left;
            }
            .cart p{
                float: left;
            }
        </style>
    </head>
    <body>
        <!--通过JSP指令导入头部-->
        <%@include file="header.jsp" %>
        <h1>购物车信息</h1>
        <ul>
            
        
    <c:forEach items="${list}" var="cart">
        <div class="cart">
            <img src="resources/images/${cart.productimage }.jpg" alt="">
            <p><h1>${cart.productName }</h1></p>
            <br/><br/><br/> <br/><br/><br/>
            <p><h2>${cart.productdiscrib }</h2></p>
            <i class="yuan">￥</i><span class="price">${pprice}</span>   
            <p><h2>购买数量：${qty}</h2></p>
        </div>
    </c:forEach> 
</ul>

<br/><br/><br/> <br/><br/><br/>
<br/><br/>

<p><h2>商品总价格：${qty*pprice}</h2></p>
 
<div class="cart_buy">
    <form  action="dingdan">
         <input type="submit" value="立即购买"></div>   
    </form>
   
</body>
</html>
