<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>编辑产品</title>
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
            <div class="edittable">
            <legend>编辑产品</legend>
          
                <div class="edit">               
                 <img src="resources/images/${p.productimage}.jpg" ></div>
         
            <form action="products/editProduct">
                <!--使用隐藏字段提交要编辑的产品的索引-->              
                <br><br>
                <span>产品编号：</span><input type="text" name="productId" value="${p.productId}">
                <br><br>
                <span>产品名称：</span><input type="text" name="productName" value="${p.productName}">
                <br><br>
                <span>产品单价：</span><input type="text" name="productPrice" value="${p.productPrice}">
                <br><br>                
                <span>产品类型：</span><input type="text" name="productDetil" value="${p.productDetil}">
                <br><br>
                  <span>产品件本：</span><input type="text" name="productUnit" value="${p.productUnit}">
                <br><br>
                  <span>产品库存：</span><input type="text" name="productStock" value="${p.productStock}">
                <br><br>
                  <span>图片名称：</span><input type="text" name="productimage" value="${p.productimage}">
                <br><br>
                  <span>产品描述：</span><input type="text" name="productdiscrib" value="${p.productdiscrib}">
                <br><br>                             
                <input type="submit" value="提交更改">
            </form>
                
                   </div>
        </fieldset>
    </body>
</html>
