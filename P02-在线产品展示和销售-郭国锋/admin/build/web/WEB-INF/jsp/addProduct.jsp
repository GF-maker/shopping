<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加产品</title>
        <base href="${pageContext.request.contextPath}/" />
        <link rel="stylesheet" href="resources/css/style.css"/>
    </head>
    <body>
        <fieldset>
            <legend>添加产品</legend>
            <form action="products/addProduct"> 
                <span>图片名称：</span><input type="text" name="productimage" >
                <br><br>
                <span>产品编号：</span><input type="text" name="productId">
                <br><br>
                <span>产品名称：</span><input type="text" name="productName">
                <br><br>
                <span>产品单价：</span><input type="text" name="productPrice">
                <br><br>  
              
                     <br><br>  <br><br>           
                <span>产品类型：</span><input type="text" name="productDetil" >
                <br><br>
                  <span>产品件本：</span><input type="text" name="productUnit">
                <br><br>
                  <span>产品库存：</span><input type="text" name="productStock" >
                <br><br>
                
                  <span>产品描述：</span><input type="text" name="productdiscrib" >
                <br><br> 
                <input type="submit" value="添 加">
            </form>
        </fieldset>
    </body>
</html>
