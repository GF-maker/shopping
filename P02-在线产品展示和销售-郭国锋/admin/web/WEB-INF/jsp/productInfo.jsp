<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>产品详情</title>
        <base href="${pageContext.request.contextPath}/" />
        <link rel="stylesheet" href="resources/css/style.css"/>
    </head>
    <body>
        <style>
              .edit img {
                width: 250px;             
                height: 250px;
            }
        </style>
        <fieldset>
            <legend>产品详情</legend>
              <div class="edit">               
                 <img src="resources/images/${product.productimage}.jpg" ></div>
            <p><span>产品编号：</span> ${product.productId}  </p>
            <p><span>产品名称：</span> ${product.productName}  </p>
            <p><span>产品单价：</span> ${product.productPrice}  </p>
        </fieldset>
    </body>
</html>
