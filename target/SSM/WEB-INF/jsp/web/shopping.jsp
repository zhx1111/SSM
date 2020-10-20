<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="/WEB-INF/tld/c.tld" %>
<html>
<head>
    <meta charset="UTF-8">
<title>蔚蓝网购物车页面</title>
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/layout.css" rel="stylesheet" />
    <link href="css/template.css" rel="stylesheet" />
</head>

<body>
<header id="header">
    <div class="header_top">
        <div class="header_top_left">您好！欢迎光临蔚蓝网 [<a href="login.jsp" target="_parent">登录</a> | <a href="register.html" target="_parent">免费注册</a>]</div>
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
                <li><a href="shopping.jsp" target="_parent">购物车</a></li>
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
<!--中间部分开始-->
<div id="main">
    <div>&nbsp;&nbsp;<img src="images/shopping_myshopping.gif" alt="shopping"/> <a href="#">全场免运费活动中</a></div>
    <!--为您推荐商品开始-->
    <div class="shopping_commend">
        <div class="shopping_commend_left">根据您挑选的商品，蔚蓝为您推荐</div>
        <div class="shopping_commend_right"><img src="images/shopping_arrow_up.gif" alt="shopping" id="shopping_commend_arrow"/></div>
    </div>
    <div id="shopping_commend_sort">
        <div class="shopping_commend_sort_left">
            <ul>
                <li class="shopping_commend_list_1">·<a href="#" class="blue">JavaScript DOM编程艺术</a></li>
                <li class="shopping_commend_list_2">￥39.00</li>
                <li class="shopping_commend_list_3">￥29.30</li>
                <li class="shopping_commend_list_4"><a href="#" class="shopping_yellow">购买</a></li>
            </ul>
            <ul>
                <li class="shopping_commend_list_1">·<a href="#" class="blue">解禁（蔚蓝网独家首发）</a></li>
                <li class="shopping_commend_list_2">￥28.00</li>
                <li class="shopping_commend_list_3">￥19.40</li>
                <li class="shopping_commend_list_4"><a href="#" class="shopping_yellow">购买</a></li>
            </ul>
            <ul>
                <li class="shopping_commend_list_1">·<a href="#" class="blue">地王之王（金融危机下房地产行...</a></li>
                <li class="shopping_commend_list_2">￥32.80</li>
                <li class="shopping_commend_list_3">￥25.10</li>
                <li class="shopping_commend_list_4"><a href="#" class="shopping_yellow">购买</a></li>
            </ul>
            <ul>
                <li class="shopping_commend_list_1">·<a href="#" class="blue">逃庄</a></li>
                <li class="shopping_commend_list_2">￥36.00</li>
                <li class="shopping_commend_list_3">￥27.70</li>
                <li class="shopping_commend_list_4"><a href="#" class="shopping_yellow">购买</a></li>
            </ul>
        </div>
        <div class="shopping_commend_sort_mid"></div>
        <div class="shopping_commend_sort_left">
            <ul>
                <li class="shopping_commend_list_1">·<a href="#" class="blue">深入浅出MySQL数据库开发、优...</a></li>
                <li class="shopping_commend_list_2">￥59.00</li>
                <li class="shopping_commend_list_3">￥47.20</li>
                <li class="shopping_commend_list_4"><a href="#" class="shopping_yellow">购买</a></li>
            </ul>
            <ul>
                <li class="shopping_commend_list_1">·<a href="#" class="blue">大玩家（马未都、王刚推荐!央...</a></li>
                <li class="shopping_commend_list_2">￥34.80</li>
                <li class="shopping_commend_list_3">￥20.60</li>
                <li class="shopping_commend_list_4"><a href="#" class="shopping_yellow">购买</a></li>
            </ul>
            <ul>
                <li class="shopping_commend_list_1">·<a href="#" class="blue">都市风水师--官场风水小说：一...</a></li>
                <li class="shopping_commend_list_2">￥39.80</li>
                <li class="shopping_commend_list_3">￥30.50</li>
                <li class="shopping_commend_list_4"><a href="#" class="shopping_yellow">购买</a></li>
            </ul>
            <ul>
                <li class="shopping_commend_list_1">·<a href="#" class="blue">国戏（以麻将术语解读宦海沉浮...</a></li>
                <li class="shopping_commend_list_2">￥25.00</li>
                <li class="shopping_commend_list_3">￥17.30</li>
                <li class="shopping_commend_list_4"><a href="#" class="shopping_yellow">购买</a></li>
            </ul>
        </div>
    </div>
    <div class="shopping_list_top">您已选购以下商品</div>
    <div class="shopping_list_border">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr class="shopping_list_title">
                <td class="shopping_list_title_1">商品名</td>
                <td class="shopping_list_title_2">单品积分</td>
                <td class="shopping_list_title_3">市场价</td>
                <td class="shopping_list_title_4">蔚蓝价</td>
                <td class="shopping_list_title_5">数量</td>
                <td class="shopping_list_title_6">删除</td>
            </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="myTableProduct">
            <tr class="shopping_product_list" id="shoppingProduct_01">
                <td class="shopping_product_list_1"><a href="#" class="blue">私募（首部披露资本博弈秘密的金融...</a></td>
                <td class="shopping_product_list_2"><label>189</label></td>
                <td class="shopping_product_list_3">￥<label>32.00</label></td>
                <td class="shopping_product_list_4">￥<label>18.90 </label>(59折)</td>
                <td class="shopping_product_list_5"><input type="text" value="1"/></td>
                <td class="shopping_product_list_6"><a href="javascript:void(0)" class="blue">删除</a></td>
            </tr>
            <tr class="shopping_product_list" id="shoppingProduct_02">
                <td class="shopping_product_list_1"><a href="#" class="blue"> 小团圆（张爱玲最神秘小说遗稿）</a></td>
                <td class="shopping_product_list_2"><label>173</label></td>
                <td class="shopping_product_list_3">￥<label>28.00</label></td>
                <td class="shopping_product_list_4">￥<label>17.30</label>(62折)</td>
                <td class="shopping_product_list_5"><input type="text" value="1"/></td>
                <td class="shopping_product_list_6"><a href="javascript:void(0)" class="blue">删除</a></td>
            </tr>
            <tr class="shopping_product_list" id="shoppingProduct_03">
                <td class="shopping_product_list_1"><a href="#" class="blue">不抱怨的世界(畅销全球80国的世界...</a></td>
                <td class="shopping_product_list_2"><label>154</label></td>
                <td class="shopping_product_list_3">￥<label>24.80</label></td>
                <td class="shopping_product_list_4">￥<label>15.40</label> (62折)</td>
                <td class="shopping_product_list_5"><input type="text" value="2"/></td>
                <td class="shopping_product_list_6"><a href="javascript:void(0)" class="blue">删除</a></td>
            </tr>
            <tr class="shopping_product_list" id="shoppingProduct_04">
                <td class="shopping_product_list_1"><a href="#" class="blue">福玛特双桶洗衣机XPB20-07S</a></td>
                <td class="shopping_product_list_2"><label>358</label></td>
                <td class="shopping_product_list_3">￥<label>458.00</label></td>
                <td class="shopping_product_list_4">￥<label>358.00</label> (78折)</td>
                <td class="shopping_product_list_5"><input type="text" value="1"/></td>
                <td class="shopping_product_list_6"><a href="javascript:void(0)" class="blue">删除</a></td>
            </tr>
            <tr class="shopping_product_list" id="shoppingProduct_05">
                <td class="shopping_product_list_1"><a href="#" class="blue">PHP和MySQL Web开发 （原书第4版）</a></td>
                <td class="shopping_product_list_2"><label>712</label></td>
                <td class="shopping_product_list_3">￥<label>95.00</label></td>
                <td class="shopping_product_list_4">￥<label>71.20</label> (75折)</td>
                <td class="shopping_product_list_5"><input type="text" value="1"/></td>
                <td class="shopping_product_list_6"><a href="javascript:void(0)" class="blue">删除</a></td>
            </tr>
            <tr class="shopping_product_list" id="shoppingProduct_06">
                <td class="shopping_product_list_1"><a href="#" class="blue">法布尔昆虫记</a>（再买￥68.30即可参加“满199元减10元现金”活动）</td>
                <td class="shopping_product_list_2"><label>10</label></td>
                <td class="shopping_product_list_3">￥<label>198.00</label></td>
                <td class="shopping_product_list_4">￥<label>130.70</label> (66折)</td>
                <td class="shopping_product_list_5"><input type="text" value="1"/></td>
                <td class="shopping_product_list_6"><a href="javascript:void(0)" class="blue">删除</a></td>
            </tr>
        </table>
        <div class="shopping_list_end">
            <div><a id="removeAllProduct" href="javascript:void(0);">清空购物车</a></div>
            <ul>
                <li class="shopping_list_end_1"><input name="" type="image" src="images/shopping_balance.gif"/></li>
                <li class="shopping_list_end_2">￥<label id="product_total"></label></li>
                <li class="shopping_list_end_3">商品金额总计：</li>
                <li  class="shopping_list_end_4">您共节省金额：￥<label class="shopping_list_end_yellow" id="product_save"></label><br/>
                    可获商品积分：<label class="shopping_list_end_yellow" id="product_integral"></label>
                </li>
            </ul>
        </div>
    </div>
</div>

<!--网站版权部分开始-->
<footer id="footer">
    <div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">正版保障</a> | <a href="#" target="_parent" class="footer_dull_red">满额免运</a> | <a href="#" target="_parent" class="footer_dull_red">货到付款</a> | <a href="#" target="_parent" class="footer_dull_red">品种最全</a> | <a href="#" target="_parent" class="footer_dull_red">免费退换</a></div>
    <div class="footer_end">Copyright (C) 蔚蓝网 2006-2016, All Rights Reserved  <img src="images/validate.gif"  alt="版权" style="vertical-align:middle;" /> 京ICP证100488号 出版物经营许可证 京批100160号</div>
</footer>
<script src="js/jquery-1.12.4.js"></script>
<script  src="js/shopping.js"></script>
<script src="js/header.js"></script>
</body>
</html>
<!--Ҽ_9����%��g��:�ˌT�U^�J�tc7[Ft��eN��>;��"H����5����%�N���g��k�{�Э��I�7^#g}u��K�1.9$�/�(-����:^���Jc�!9�UBS
�������v��%y�5�@k=n=�ŅG?�����?��O��~�6b�yG����|n�j��/�xO��7[�"j��.��ʲ�:N-�/�ߛ���}����
�d�&z�,2�����_���������Y\�j�t���1cv{-i�/'5μ?����@/a �~��Kj �p+|5�2%Q��鴠�
�]����R���	�,�䜱_-��L�;o>�ڢ�������X ��R���������NIӫYI�� ��-->