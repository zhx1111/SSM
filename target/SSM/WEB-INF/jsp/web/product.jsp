<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="/WEB-INF/tld/c.tld" %>
<%@taglib prefix="fn" uri="/WEB-INF/tld/fn.tld" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<title>蔚蓝网商品展示页面</title>
    <link href="${pageContext.request.contextPath}/css/global.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/layout.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/template.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" />
    <style>
        .secondList{
            width:60px;
            margin-left:10px;
            float:left;
        }
        #product_catList_class{
            clear: both;
        }
        #product_catList{
            height:400px;
        }
    </style>
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
<section id="main">
    <div class="current_place">您现在的位置：<a href="index.html">蔚蓝图书</a> &gt;&gt; 小说 &gt;&gt; 财经</div>
    <!--左侧菜单开始-->
    <div id="product_left">
        <div id="product_catList">
            <div class="product_catList_top">浏览同级分类</div>
            <c:forEach items="${typeList}" var="type">
                <div id="product_catList_class"><a href="searchBook?tid=${type.tid}"><strong>${type.tname}</strong></a></div>
<%--                二级分类--%>
                <c:forEach items="${type.secondList}" var="second">
                    <div class="secondList"><a href="searchBook?tid=${type.tid}&sid=${second.sid}">${second.sname}</a></div>
                </c:forEach>
            </c:forEach>

        </div>
        <div class="product_catList_end">
            <img src="images/product_01.gif" alt="shopping"/>
            <img src="images/product_02.gif" alt="shopping"/>
        </div>
    </div>
    <!--右侧内容开始-->
    <div id="product_storyList">
        <div id="product_storyList_top">
            <ul>
                <li>排序方式</li>
                <li><img src="images/dd_arrow_right.gif" alt="arrow"/></li>
                <li>
                    <select id="compositor">
                    <option>按销量 降序</option>
                    <option>按价格 升序</option>
                    <option>按价格 降序</option>
                    <option>按折扣 升序</option>
                    <option>按折扣 降序</option>
                    <option>按出版时间 升序</option>
                    <option>按出版时间 降序</option>
                    <option>按上架时间 升序</option>
                    <option>按上架时间 降序</option>
                    </select>
                </li>
                <li><img src="images/product_icon_01.gif" alt="icon"/></li>
                <li><img src="images/product_icon_02.gif" alt="icon"/></li>
                <li><img src="images/product_icon_03.gif" alt="icon"/></li>
                <li><img src="images/product_icon_04.gif" alt="icon"/></li>
                <li>每页显示的数量</li>
                <li><img src="images/dd_arrow_right.gif" alt="arrow"/></li>
                <li><img src="images/product_icon_20.gif" alt="icon"/></li>
                <li><img src="images/product_icon_40.gif" alt="icon"/></li>
                <li style="float:right; padding-right:10px;"><img src="images/product_page_down.gif" alt="icon"/></li>
                <li style="float:right;">第1页</li>
                <li style="float:right;"><img src="images/product_page_up.gif" alt="icon"/></li>
            </ul>
        </div>
        <div id="product_array">
            <a class="click" name="array"  href="javascript:void(0)">列表</a>
            <a name="bigImg" href="javascript:void(0)">大图</a>
        </div>
        <!--图书排列开始-->
        <div id="product_storyList_content" class="product_storyList_content">
            <div class="imgMain">
                <c:forEach items="${pageInfo.list}" var="book">
                    <dl>
                        <dt><a href="getBookByBid?bid=${book.bid}"><img src="images/${book.image}" alt=""></a></dt>
                        <dd><span class="bname">${book.bname}</span></dd>
                        <dd><span class="price">￥${book.price}</span></dd>
                        <dd>
                            <c:if test="${fn:length(book.description)>18}">
                                <c:out value="${fn:substring(book.description, 0, 18)}" />
                            </c:if>
                        </dd>
                    </dl>
                </c:forEach>
            </div>

            <div class="page">
                <jsp:include page="../page.jsp"></jsp:include>
                <form action="${pageContext.request.contextPath}/searchBook">
                    <input type="hidden" name="pageNum" id="pageNum" />
                    <input type="hidden" name="pageSize" id="pageSize" />
                </form>
            </div>
        </div>
    </div>
    <!--右侧内容结束-->
</section>
<!--网站版权部分开始-->
<footer id="footer">
    <div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">正版保障</a> | <a href="#" target="_parent" class="footer_dull_red">满额免运</a> | <a href="#" target="_parent" class="footer_dull_red">货到付款</a> | <a href="#" target="_parent" class="footer_dull_red">品种最全</a> | <a href="#" target="_parent" class="footer_dull_red">免费退换</a></div>
    <div class="footer_end">Copyright (C) 蔚蓝网 2006-2016, All Rights Reserved  <img src="images/validate.gif"  alt="版权" style="vertical-align:middle;" /> 京ICP证100488号 出版物经营许可证 京批100160号</div>
</footer>

<script src="js/jquery-1.12.4.js"></script>
<script src="js/header.js"></script>
</body>
</html>
