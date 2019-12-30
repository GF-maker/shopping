<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>detail</title>
        <meta charset="UTF-8">
        <base href="${pageContext.request.contextPath}/" />
        <link rel="stylesheet" href="resources/css/xijie.css">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    </head>
    <body>
        <!--通过JSP指令导入头部-->
        <%@include file="header.jsp" %>
        <!--面包屑导航-->
        <div id="bread_crumb">
            <div class="bread_center">
                <a href="index.jsp">首页</a>
                <small>&gt</small>
                <a href="#">运动户外</a>    
                <small>&gt</small>
                <a href="#">运动服饰</a>
            </div>
        </div>
        <!--详情展示-->
        <div id="details">
            <div class="detail_img">
                <img src="resources/images/${product.productimage}大.jpg" alt="">
            </div>
            <div class="detail_price">
                <h3>${product.productdiscrib} </h3>                                 
                <div class="goods_price">
                    <p class="ori_price">原价:¥400<em></em></p>                                                                
                    <p> 优惠价格:<i class="yuan">¥</i><span class="price">${product.productPrice}</span></p> 
                </div>

                <form action="products/cartProduct">
                    <!--  如果不想用户看见，但是想提交更多参数，考虑表单的隐藏字段隐藏字段的name可以随便起，但是尽量有意义隐藏字段的value必须给出，因为不可修改其值-->                                                                             
                    <input type="hidden" name="pid" value="${product.productId}">
                    <input type="hidden" name="pname" value="${product.productName}">
                    <input type="hidden" name="pprice" value="${product.productPrice}">
                    <input type="hidden" name="pdetil" value="${product.productDetil}">
                    <input type="hidden" name="punit" value="${product.productUnit}">
                    <input type="hidden" name="pstock" value="${product.productStock}">
                    <input type="hidden" name="pimage" value="${product.productimage}">
                    <input type="hidden" name="pdiscrib" value="${product.productdiscrib}">
                    
                    <div class="goods_count">购买数量：<input type="text" name="qty" value="1"></div>                                        
                    <div class="goods_buy"><input type="submit" value="加入购物车"></div>                                            
                </form>

            </div>
        </div>
        <!--商品介绍-->
        <div id="introduce">
            <h3>商品详情</h3>
            <div class="detail_body">
                <img src="resources/images/${product.productimage}详情1.jpg" alt="">
                <img src="resources/images/${product.productimage}详情2.jpg" alt="">

            </div>
        </div>
    </body>
</html>





