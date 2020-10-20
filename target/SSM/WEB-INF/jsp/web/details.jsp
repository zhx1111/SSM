<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
<title>蔚蓝网商品展示页面</title>
    <link href="${pageContext.request.contextPath}/css/global.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/layout.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/template.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/details.css" rel="stylesheet" />
</head>
<body>
<header id="header">
    <div class="header_top">
        <div class="header_top_left">您好！欢迎光临蔚蓝网 [<a href="login.html" target="_parent">登录</a> | <a href="register.html" target="_parent">免费注册</a>]</div>
        <div class="header_top_right">
            <ul>
                <li><a href="#" target="_self">客户服务</a></li>
                <li>|</li>
                <li id="menu"><a href="#" target="_self">新手入门</a> <img src="images/arrow_down.gif" alt="arrow" />
                    <div id="dd_menu_top_down">
                        <a href="#" target="_self">购物保障</a><br />
                        <a href="#" target="_self">购物流程</a><br />
                        <a href="#" target="_self">会员介绍</a><br />
                        <a href="#" target="_self">常见问题</a><br />
                    </div>
                </li>
                <li>|</li>
                <li><a href="#" target="_self">礼品卡</a></li>
                <li>|</li>
                <li><a href="#" target="_self">我的订单</a></li>
                <li>|</li>
                <li><a href="#" target="_self">我的账户</a></li>
                <li>|</li>
                <li><a href="shopping.html" target="_parent">购物车</a></li>
                <li><img src="images/header_shop.gif" alt="shopping"/></li>
            </ul>
        </div>
    </div>
</header>
<div class="header_middle">
    <div class="logo"><img src="images/logo.png" alt="logo"/></div>
    <div class="search"><input type="text" placeholder="请输入搜索关键字"><input type="button"></div>
</div>
<nav id="nav">
    <ul>
        <li><a href="#"> 全部商品分类</a></li>
        <li><a href="#"> 首页</a></li>
        <li><a href="#"> 图书</a></li>
        <li><a href="#"> 特价</a></li>
        <li><a href="#"> 团购</a></li>
    </ul>
</nav>
<section>
	<div class="banner"><img src="images/dianzibook.png" alt=""></div>
    <form action="addCartItem" method="post">
        <div class="details">
            <dl>
                <dt><img src="images/${book.image}" alt=""></dt>
                <dd><h1>${book.bname}</h1></dd>
                <dd>${book.description}</dd>
                <dd>价格:<span>￥${book.price}</span></dd>
                <dd>出版时间:${book.sendDate}</dd>
                <dd>
                    <input type="hidden" name="bid" value="${book.bid}">
                    <input type="hidden" name="price" value="${book.price}">
                    <input type="submit" value="加入购物车" class="cart">
                    <input type="button" value="立即购买" class="buy">
                </dd>
            </dl>
        </div>
    </form>
</section>
<!--网站版权部分开始-->
<footer id="footer">
    <div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">正版保障</a> | <a href="#" target="_parent" class="footer_dull_red">满额免运</a> | <a href="#" target="_parent" class="footer_dull_red">货到付款</a> | <a href="#" target="_parent" class="footer_dull_red">品种最全</a> | <a href="#" target="_parent" class="footer_dull_red">免费退换</a></div>
    <div class="footer_end">Copyright (C) 蔚蓝网 2006-2016, All Rights Reserved  <img src="images/validate.gif"  alt="版权" style="vertical-align:middle;" /> 京ICP证100488号 出版物经营许可证 京批100160号</div>
</footer>

<script src="js/jquery-1.12.4.js"></script>
<script src="js/product.js"></script>
<script src="js/header.js"></script>
</body>
</html>
