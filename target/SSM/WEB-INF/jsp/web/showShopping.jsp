<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/tld/c.tld" %>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>蔚蓝网商品展示页面</title>
		<link href="${pageContext.request.contextPath}/css/global.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/css/layout.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/css/template.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/css/myCart.css" rel="stylesheet" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
			$(function(){
				calc();


			})

			//计算小计 总价格显示
			function calc()
			{
				//总计
				var totalPrice = 0;
				//获得class名称包括 product 的所有行
				var trs = $("[class*=product]");
				//遍历获得的所有行
				$.each(trs,function(index,dom){
					//获得价格
					var price = $(dom).find(".cart_td_5").text();
					//获得数量
					var num = $(dom).find(".cart_td_6").find("input").val();
					//小计 计算
					var sum = parseFloat(price) * parseInt(num);
					//显示小计
					$(dom).find(".cart_td_7").text(sum);
					totalPrice += sum;
				})
				$("#total").text(totalPrice.toFixed(2));
			}

			function addorders()
			{

				var trs = $("[class*=product]");
				var cids = new Array();
				$.each(trs,function(index,dom) {
					cids.push($(dom).find(".cart_td_8").find("input").val());
				})
				//ajax删除
				$.get("deleteItem","cids="+cids,function(result){
					if($.trim(result) == "true")
					{
						location.href="getCartList";
					}else
					{
						window.alert("失败");
						location.href="getCartList";
					}
				})

				//总计
				var total=$("#total").text();

				$.post("addorders","total="+total,function(result){
					if($.trim(result) == "true"){
						alert("添加订单成功")
					}else{
						alert("添加订单失败")
					}
				})

			}


		</script>



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
		<div id="user">
			购买用户:${users.name},用户电话:${users.phone},用户地址:${users.address}
		</div>
		<div id="con">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" id="shopping">
					<tr>
						<td class="title_2" colspan="2">图书名称</td>
						<td class="title_4">单价（元）</td>
						<td class="title_5">数量</td>
						<td class="title_6">小计（元）</td>
						<td class="title_7">操作</td>
					</tr>
					<tr>
						<td colspan="8" class="line"></td>
					</tr>

					<c:forEach items="${itemList}" var="l">
						<tr class="product">
							<td class="cart_td_2"><img src="images/${l.book.image}" alt="shopping" /></td>
							<td class="cart_td_3"><a href="#">${l.book.bname}</a><br />
								出版日期:${l.book.sendDate}<br />
								保障：<img src="images/taobao_icon_01.jpg" alt="icon" /></td>
							<td class="cart_td_5">${l.book.price}</td>
							<td class="cart_td_6"><input id="num_1" type="text" value="${l.counts}" class="num_input" readonly="readonly" /> </td>
							<td class="cart_td_7">${l.subTotal}</td>
							<td class="cart_td_8"><a href="javascript:void(0);">删除</a>
								<input class="cid" type="hidden" value="${l.cid}" /></td>
						</tr>
					</c:forEach>

					<tr>
						<td colspan="3"><a id="deleteAll" href="javascript:void(0);"><img src="images/taobao_del.jpg" id="delete" alt="delete" /></a></td>
						<td colspan="5" class="shopend">
							商品总价（不含运费）：<label id="total" class="yellow"></label> 元<br />
							<input name=" " type="image" id="tj" src="images/taobao_subtn.jpg" onclick="addorders()" />
						</td>
					</tr>
				</table>
		</div>
		
		</section>
	</body>
</html>
