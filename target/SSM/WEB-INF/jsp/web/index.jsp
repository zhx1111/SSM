<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld"%>
<%@include file="userControll.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>蔚蓝网首页</title>
    <link href="${pageContext.request.contextPath}/css/global.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/layout.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/template.css" rel="stylesheet" />
    <style>
        .book_sort_bottom{
            float:left;
            width:60px;
        }
        .book_sort{
            height: 195px;
        }
    </style>
</head>
<body>
<!--随滚动条滚动可关闭广告-->
<div id="right" class="right">
    <div class="dd_close" id="dd_close"><a href="javascript:void(0);">关闭</a></div>
    <img src="images/scroll.jpg" id="right1" />
</div>
<!--头部-->
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
                <li><a href="getCartList" target="_parent">购物车</a></li>
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
<!--网站中间内容开始-->
<section id="main">
    <!--左侧菜单开始-->
    <div id="catList">
        <!--图书商品分类开始-->
        <div class="book_sort">
            <div class="book_sort_bg"><a href="searchBook"><img src="images/dd_book_cate_icon.gif" alt="图书" /> 图书商品分类</a></div>
            <c:forEach items="${typeInfo.list}" var="type">
                <div class="book_sort_bottom">${type.tname}</div>
            </c:forEach>

        </div>
        <!--图书商品分类结束-->
    </div>
    <!--左侧菜单结束-->
    <!--中间部分开始-->
    <div id="content">
        <!--轮换显示的横幅广告图片-->
        <div class="scroll">
            <ul id="scroll_img">
                <c:forEach items="${img.list}" var="i">
                    <li><img src="images/${i.img}"/></li>
                </c:forEach>
            </ul>
            <ul id="scroll_number">
                <c:forEach items="${img.list}" var="i">
                    <li>${i.id}</li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!--中间部分结束-->
    <!--右侧部分开始-->
    <section id="silder">
        <!--书讯快递-->
        <div class="book_sort">
            <div class="book_sort_bg"><img src="images/dd_book_mess.gif" alt="mess" style=" vertical-align:text-bottom;"/>书讯快递</div>
            <div class="book_class">
                <div id="dome">
                    <div id="dome1">
                        <ul id="express">
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书&gt;&gt;</li>
                            <li>・弗洛伊德作品精选集59折</li>
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书&gt;&gt;</li>
                            <li>・弗洛伊德作品精选集59折</li>
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书&gt;&gt;</li>
                            <li>・弗洛伊德作品精选集59折</li>
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书&gt;&gt;</li>
                            <li>・弗洛伊德作品精选集59折</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!--右侧部分结束-->
    <section class="book">
        <h1>电子书</h1>
        <ul>
            <c:forEach items="${bookInfo.list}" var="book" begin="1" end="6">
                <li>
                    <img src="images/${book.image}"><br/>
                    <p>${book.bname}</p>
                </li>
            </c:forEach>

        </ul>
    </section>
    <section class="tab">
        <ol>
            <li>图书畅销榜</li>
            <li>图书上新书榜</li>
        </ol>
        <ul>
            <li><span>1</span><p>追风筝的人</p><dl><dt><img src="images/selling01.jpg"></dt><dd><h1>追风筝的人</h1>中文版，快乐大本营高圆圆感动推荐，奥巴马送给女儿的新年礼物</dd></dl></li>
            <li><span>2</span><p>解忧杂货店</p><dl><dt><img src="images/selling02.jpg"></dt><dd><h1>解忧杂货店</h1>《白夜行》后东野圭吾备受欢迎作品：不是推理小说，却更扣人心弦</dd></dl></li>
            <li><span>3</span><p>天才在左疯子在右</p><dl><dt><img src="images/selling03.jpg"></dt><dd><h1>天才在左疯子在右</h1>新增10个被封杀篇章！看高智商疯子如何调戏和羞辱正常人！继高圆圆后，女神陈乔恩芒果台盛情推荐！</dd></dl></li>
            <li><span>4</span><p>白夜行</p><dl><dt><img src="images/selling04.jpg"></dt><dd><h1>白夜行</h1>东野圭吾推理小说无冕之王。全新精装典藏版</dd></dl></li>
            <li><span>5</span><p>阮/陈恩静 吕亦涵 著</p><dl><dt><img src="images/selling05.jpg"></dt><dd><h1>阮/陈恩静 吕亦涵 著</h1>商战风云诡谲X情场暗潮汹涌。这一生幸运的是—— 以你之名，冠我之姓</dd></dl></li>
            <li><span>6</span><p>摆渡人</p><dl><dt><img src="images/selling06.jpg"></dt><dd><h1>摆渡人</h1>畅销欧美33个国家，荣获多项图书大奖。如果命运是一条孤独的河流，谁会是你灵魂的摆渡人？如果我真的存在，也是因为你需要我。</dd></dl></li>
            <li><span>7</span><p>岛上书店</p><dl><dt><img src="images/selling07.jpg"></dt><dd><h1>岛上书店</h1>每个人的生命中，都有无比艰难的那一年，将人生变得美好而辽阔</dd></dl></li>
            <li><span>8</span><p>百年孤独</p><dl><dt><img src="images/selling08.jpg"></dt><dd><h1>百年孤独</h1>加西亚马尔克斯代表作，中文版首次授权！</dd></dl></li>
            <li><span>9</span><p>我们仨</p><dl><dt><img src="images/selling09.jpg"></dt><dd><h1>我们仨</h1>《我们仨》是杨绛先生撰写的家庭生活回忆录，三联书店出版，影响几代人的作品，杨绛先生经典散文！</dd></dl></li>
            <li><span>10</span><p>从你的全世界路过</p><dl><dt><img src="images/selling10.jpg"></dt><dd><h1>从你的全世界路过</h1>从你的全世界路过 2014中国好书榜获奖图书</dd></dl></li>
        </ul>
        <ul>

            <c:forEach items="${bookInfo.list}" var="book" begin="1" end="10" varStatus="states">
                <li>
                    <span>${states.index}</span>
                    <p>${book.bname}</p>
                    <dl>
                        <dt>
                            <img src="images/${book.image}">
                        </dt>
                        <dd>
                            <h1>${book.bname}</h1>
                                ${book.description}
                        </dd>
                    </dl>
                </li>
            </c:forEach>
        </ul>
    </section>
</section>
<!--网站版权部分开始-->
<footer id="footer">
    <div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">正版保障</a> | <a href="#" target="_parent" class="footer_dull_red">满额免运</a> | <a href="#" target="_parent" class="footer_dull_red">货到付款</a> | <a href="#" target="_parent" class="footer_dull_red">品种最全</a> | <a href="#" target="_parent" class="footer_dull_red">免费退换</a></div>
    <div class="footer_end">Copyright (C) 蔚蓝网 2006-2016, All Rights Reserved  <img src="images/validate.gif"  alt="版权" style="vertical-align:middle;" /> 京ICP证100488号 出版物经营许可证 京批100160号</div>
</footer>
<script  src="js/jquery-1.12.4.js"></script>
<script src="js/index.js"></script>
<script src="js/header.js"></script>
</body>
</html>
