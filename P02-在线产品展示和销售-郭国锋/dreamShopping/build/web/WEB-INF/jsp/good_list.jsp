<%-- 
    Document   : good_list
    Created on : 2019-6-10, 15:13:03
   Author     : 郭国锋
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>good_List </title>
        <!--设置标签图标-->
        <link href="变形金刚图标.ico" rel="shortcut icon">
        <base href="${pageContext.request.contextPath}/" />
       
        <link rel="stylesheet" href="resources/css/pagestyle.css">
        <link rel="stylesheet" href="resources/css/good_list.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <style>
            #hot_goods .hot_goods_body img{
    width: 220px;
    background: red;
    height: 218px;
    /*图片比较特属于不设置display值不能居中显示*/
    display:block;
    margin: 0 auto;
}
        </style>
        <!--通过JSP指令导入头部-->
        <%@include file="header.jsp" %>
        <!--热卖商品-->
       
        <div id="hot_goods">
            <h3>
                热卖商品
            </h3>
            <div class="hot_goods_body">
                <ul>
                    <c:if test="${empty productfenleilist }">
                        没有商品
                    </c:if>

                    <c:forEach items="${productfenleilist}" var="p">
                        <li>
                            <a href="products/viewProduct?pid=${p.productId}">
                      
                           
                                <img src="resources/images/${p.productimage}.jpg" >
                                <p>${p.productName }</p>
                                <i class="yuan">￥</i><span class="price">${p.productPrice }</span>
                            </a>
                        </li>
                    </c:forEach> 

                </ul>
            </div>
            <!--分页-->
            <div id="page" class="page_div"></div>
        </div>

        <script src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/paging.js"></script>
        <script>
            //分页
            $("#page").paging({
                pageNo: 1,
                totalPage: 10,
                totalSize: 50,
                callback: function (num) {
                    //		alert(num)
                    console.log(num);
                }
            });
        </script>
    </body>
</html>
