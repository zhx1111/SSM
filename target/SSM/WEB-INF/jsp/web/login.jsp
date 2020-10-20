<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="/WEB-INF/tld/c.tld" %>
<html>
<head>
    <meta charset="UTF-8">
<title>蔚蓝网登录页面</title>
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/layout.css" rel="stylesheet"  />
    <link href="css/template.css" rel="stylesheet" />
</head>

<body>
<header  class="header_middle">
    <div class="login_header_left"><img src="images/logo.png" alt="logo"/></div>
    <div class="login_header_right"><a href="" class="blue">首页</a> | <a href="product.html" class="blue">商品展示页</a>  | <a href="shopping.jsp" class="blue">购物车</a> | <a href="register.html" class="blue">注册</a></div>
</header>

<div id="main">
    <div class="login_main_left"><img src="images/book.jpg"> </div>
    <div class="login_main_mid">
        <div class="login_content_top">请登录蔚蓝网</div>
        <form id="loginForm" action="usersLogin" method="post">
            <dl class="login_content">
                <dt>Email地址或昵称：</dt>
                <dd><input id="email" type="text" name="uname" class="login_content_input"/></dd>
            </dl>
            <dl class="login_content">
                <dt>密码：</dt>
                <dd><input id="pwd" type="password" name="password" class="login_content_input"/></dd>
            </dl>
            <dl class="login_content">
                <dt></dt>
                <dd><input id="btn" value="" type="submit"  class="login_btn_out"/></dd>
            </dl>
        </form>
        <div class="login_content_end_bg">
            <div class="login_content_end_bg_top">
                <label class="login_content_bold">还不是蔚蓝网用户？</label>快捷方便的免费注册，让你立刻尽享蔚蓝网提供的条项优惠服务......
            </div>
            <div class="login_content_end_bg_end">
                <input id="quick_register" class="login_register_out" value=" " type="button"/>
            </div>
        </div>
    </div>
</div>

<footer id="footer">
    <div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">正版保障</a> | <a href="#" target="_parent" class="footer_dull_red">满额免运</a> | <a href="#" target="_parent" class="footer_dull_red">货到付款</a> | <a href="#" target="_parent" class="footer_dull_red">品种最全</a> | <a href="#" target="_parent" class="footer_dull_red">免费退换</a></div>
    <div class="footer_end">Copyright (C) 蔚蓝网 2006-2016, All Rights Reserved  <img src="images/validate.gif"  alt="版权" style="vertical-align:middle;" /> 京ICP证100488号 出版物经营许可证 京批100160号</div>
</footer>
<script src="js/jquery-1.12.4.js"></script>
<script src="js/login.js"></script>
</body>
</html>
