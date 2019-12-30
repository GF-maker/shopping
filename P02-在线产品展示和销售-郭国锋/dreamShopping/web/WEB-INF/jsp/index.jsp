<%-- 
    Document   : index
    Created on : 2019-6-10, 15:13:03
   Author     : 郭国锋
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index</title>    
 <base href="${pageContext.request.contextPath}/" />        
        <link rel="stylesheet" href="resources/css/index.css">        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <!--通过JSP指令导入头部-->
       <%@include file="header.jsp" %>

        <!--广告页-->
        <div id="ad">
            <img src="resources/images/海绵宝宝.jpg" alt="">
        </div>
        <!--秒杀-->
        <div id="ms">
            <div class="ms_title">
                <span>Dream秒杀 
                    <span>总有你想不到的低价</span>
            </div>

            <div class="ms_body">
                <ul>
                    <li>
                        <a href="detail.jsp.html">
                            <img src="resources/images/华为nova3.jpg" alt="">
                            <p>华为 nova 3 3D炫彩机身，2400万高清四摄</p>
                            <i class="yuan">¥</i><span class="price">1769</span>
                        </a>
                    </li>
                    <li>
                        <a href="mother.html">
                            <img src="resources/images/三星 Galaxy S9+.jpg" alt="">
                            <p>三星 Galaxy S9+ 凝时拍摄,智能可变光圈,背景虚化实时对焦</p>
                            <i class="yuan">¥</i><span class="price">6148</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="resources/images/苹果 iPhone XS.jpg" alt="">
                            <p>苹果 iPhone XS 超视网膜显示屏 智慧过人的A12仿生芯片</p>
                            <i class="yuan">¥</i><span class="price">7738</span>
                        </a>
                    </li>
                    <li> 
                        <a href="">
                            <img src="resources/images/小米 小米手机8.jpg" alt="">
                            <p>小米 小米手机8 超清四曲面 AI超感光双摄 红外人脸识别</p>
                            <i class="yuan">¥</i><span class="price">2199</span>
                        </a>
                    </li>
                    <li>
                        <a href="detail.jsp.html">
                            <img src="resources/images/OPPO R15梦镜版.jpg" alt="">
                            <p>OPPO R15梦镜版 3D四曲面陶瓷机身 AI人像模式</p>
                            <i class="yuan">¥</i><span class="price">2999</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!--热卖商品-->
        <div id="hot_goods">
            <h3>
                热卖商品
            </h3>
            <div class="hot_goods_body">
                <ul>
                    <li>
                        <a href="">
                            <img src="resources/images/抹茶故事.jpg" alt="">
                            <p>抹茶故事羽绒服男2018新款潮流韩版帅气学生男生短款加厚冬季外套</p>
                            <i class="yuan">¥</i><span class="price">479.00</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="resources/images/女童风衣儿童外套中长款.jpg" alt="">
                            <p>女童风衣儿童外套中长款春秋2018新款中大童秋装女孩韩版洋气童装</p>
                            <i class="yuan">¥</i><span class="price">199.00</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="resources/images/秋冬新款毛衣男格子韩版.jpg" alt="">
                            <p>秋冬新款毛衣男格子韩版潮流宽松高领青年针织衫个性加厚ins上衣</p>
                            <i class="yuan">¥</i><span class="price">118.00</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="resources/images/NOTHOMME羽绒服.jpg" alt="">
                            <p>NOTHOMME羽绒服男短款港仔文艺男冬季时尚夹克亮面情侣银色外套潮</p>
                            <i class="yuan">¥</i><span class="price">369.00</span>
                        </a>
                    </li>
                    <li> 
                        <a href="">
                            <img src="resources/images/小个子穿搭女装.jpg" alt="">
                            <p>小个子穿搭女装小香风呢子大衣毛呢外套+宽松直筒裤两件套装秋冬</p>
                            <i class="yuan">¥</i><span class="price">165.00</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="resources/images/冬季2018新款羊羔毛领外套.jpg" alt="">
                            <p>冬季2018新款羊羔毛领外套女仿貂绒毛宽松加绒加厚中长款流行大衣</p>
                            <i class="yuan">¥</i><span class="price">2609.90</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="resources/images/2018秋冬季新款女装宽松韩版.jpg" alt="">
                            <p>2018秋冬季新款女装宽松韩版拼色呢子大衣中长款显瘦时尚毛呢外套</p>
                            <i class="yuan">¥</i><span class="price">258.00</span>
                        </a>
                    </li>
                    <li> 
                        <a href="">
                            <img src="resources/images/2018新款女装冬装宽松大码.jpg" alt="">
                            <p>2018新款女装冬装宽松大码中长款毛呢外套女拼接撞色毛领呢子大衣</p>
                            <i class="yuan">¥</i><span class="price">299.00</span>
                        </a>
                    </li>
                    <li> 
                        <a href="">
                            <img src="resources/images/申亿男士背包.jpg" alt="">
                            <p>申亿男士背包双肩包男2018新款 书包男 时尚潮流PU软皮电脑包</p>
                            <i class="yuan">¥</i><span class="price">149.00</span>
                        </a>
                    </li>

                    <li> 
                        <a href="">
                            <img src="resources/images/时尚休闲学院风情侣双肩包.jpg" alt="">
                            <p>时尚休闲学院风情侣双肩包学生防水背包潮牌软包女</p>
                            <i class="yuan">¥</i><span class="price">139.00</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>
