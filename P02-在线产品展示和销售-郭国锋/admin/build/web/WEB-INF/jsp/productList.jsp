<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>产品列表</title>
        <base href="${pageContext.request.contextPath}/" />
        <link rel="stylesheet" href="resources/css/style.css"/>
        <script src="resources/js/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <fieldset>
          
         
            <legend>产品列表</legend>
             <a href="products/toAddProduct">添加新产品</a>

            <table>
                <tr>
                    <th>产品编号</th>
                    <th>产品图片</th>
                    <th>产品名称</th>
                    <th>产品单价</th>
                    <th>操作</th>
                </tr>
                <!--在此遍历产品列表-->
                <c:forEach items="${productList}" var="p">
                    <tr id="${p.productId}">
                        <td>${p.productId}</td>
                        <td><img src="resources/images/${p.productimage}.jpg" ></td>                  
                        <td>${p.productName}</td>
                        <td>${p.productPrice}</td>
                        <td>
                            <a href="products/viewProduct?pid=${p.productId}">查看详情</a>&nbsp;
                            <a href="products/toEditProduct?pid=${p.productId}">编辑</a>&nbsp;
                            <a href="products/deleteProduct?pid=${p.productId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </fieldset>
        <br>
        

        <script>
            function deleteProduct() {
                $.ajax({
                    url: 'products/deleteProduct',
                    type: "POST",
                    data: {"pid": pid}, 
                    //发送学号给服务器删除学生
                    success: function () {
                        //服务器删除学生的同时从表格删除当前行
                        //需要在打印tr的时候给每个tr一个id用于区分没一行
                        $("#" + pid).remove(); //remove删除当前元素和其内容
                    },
                    error: function () {
                        alert("Ajax请求失败!");
                    }
                });
            }
        </script>
    </body>
</html>
