<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="/WEB-INF/tld/c.tld" %>
<html>
<head>
    <meta charset="UTF-8">
<title>蔚蓝网注册页面</title>
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/layout.css" rel="stylesheet" />
    <link href="css/template.css" rel="stylesheet" />
    <script type="text/javascript">
        function changeCode()
        {
            var codeImg = document.getElementById("codeImg");
            codeImg.src = "checkCodeInfo?"+new Date().getTime();
        }
    </script>
</head>

<body>
<header class="header_middle">
    <div id="register_header">
        <div class="register_header_left"><img src="images/logo.png" alt="logo"/></div>
        <div class="register_header_right"><a href="/index" class="blue">首页</a> | <a href="/searchBook" class="blue">商品展示页</a>  | <a href="shopping.jsp" class="blue">购物车</a> |  <a href="login.jsp" class="blue">登录</a></div>
    </div>
</header>
<section id="main">
    <div class="register_content">
        <div class="register_mid_bg">用户注册</div>
        <div class="register_message">
            <form action="addUsers" method="post" id="myform">
                <dl class="register_row">
                    <dt>用户名：</dt>
                    <dd><input id="uname" type="text" name="uname" required="required" class="register_input"/></dd>
                </dl>
                <dl class="register_row">
                    <dt>密码：</dt>
                    <dd><input id="password" type="password" name="password" class="register_input"  required="required" pattern="[a-zA-Z0-9]{4,20}"/></dd>
                </dl>
                <dl class="register_row">
                    <dt>确认密码：</dt>
                    <dd><input id="repwd" type="password" name="repwd" class="register_input"required="required"  pattern="[a-zA-Z0-9]{6,20}"/></dd>
                </dl>
				 <dl class="register_row">
				    <dt>真实姓名：</dt>
				    <dd><input name="name" id="name" type="text"/></dd>
				</dl>
                <dl class="register_row">
                    <dt>电子邮箱：</dt>
                    <dd><input name="email" id="email" type="text"/></dd>
                </dl>
                <dl class="register_row">
                    <dt>电话：</dt>
                    <dd>
                      <input name="phone" id="phone" type="text"/>
                    </dd>
                </dl>
				<dl class="register_row">
				    <dt>地址：</dt>
				    <dd>
				      <input name="address" id="address" type="text"/>
				    </dd>
				</dl>
				<dl class="register_row">
				    <dt>验证码：</dt>
				    <dd>
				      <input name="code" id="code" type="text"/>
                        <img src="${pageContext.request.contextPath}/checkCodeInfo" id="codeImg" onclick="changeCode()"/>
                        <span style="color: red">${msg}</span>
				    </dd>
				</dl>
                <div class="registerBtn"><input id="registerBtn" type="image" src="images/register_btn_out.gif"/></div>
            </form>
        </div>
    </div>
</section>
<!--网站版权部分开始-->
<footer id="footer">
    <div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">正版保障</a> | <a href="#" target="_parent" class="footer_dull_red">满额免运</a> | <a href="#" target="_parent" class="footer_dull_red">货到付款</a> | <a href="#" target="_parent" class="footer_dull_red">品种最全</a> | <a href="#" target="_parent" class="footer_dull_red">免费退换</a></div>
    <div class="footer_end">Copyright (C) 蔚蓝网 2006-2016, All Rights Reserved  <img src="images/validate.gif"  alt="版权" style="vertical-align:middle;" /> 京ICP证100488号 出版物经营许可证 京批100160号</div>
</footer>
<script src="js/jquery-1.12.4.js"></script>
<script  src="js/register.js"></script>
</body>
</html>
