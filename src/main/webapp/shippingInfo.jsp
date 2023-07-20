<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Flower" %>
<%@ page import="dao.FlowerRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flower Shop</title>
<%@ include file="header.jsp"%>
<link rel='stylesheet' href='./resources/css/woocommerce-layout.css' type='text/css' media='all'/>
<link rel='stylesheet' href='./resources/css/woocommerce-smallscreen.css' type='text/css' media='only screen and (max-width: 768px)'/>
<link rel='stylesheet' href='./resources/css/woocommerce.css' type='text/css' media='all'/>
<link rel='stylesheet' href='./resources/css/font-awesome.min.css' type='text/css' media='all'/>
<link rel='stylesheet' href='./resources/css/style.css' type='text/css' media='all'/>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Oswald:400,500,700%7CRoboto:400,500,700%7CHerr+Von+Muellerhoff:400,500,700%7CQuattrocento+Sans:400,500,700' type='text/css' media='all'/>
<link rel='stylesheet' href='./resources/css/easy-responsive-shortcodes.css' type='text/css' media='all'/>
</head>
<body class="archive post-type-archive post-type-archive-product woocommerce woocommerce-page">
	<div id="page">
	<div class="container">
		<header id="masthead" class="site-header">
			<%@ include file="menu.jsp" %>
		</header>
	</div>
	<div class="jumbotron">
		<div class ="container">
			<h1 class="display-3">배송 정보</h1>
		</div>
	</div>
	<div class="container" align="center">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type = "hidden" name="cartId" value="<%=request.getParameter("cartId") %>"/>
			<div class="form-group row">
				<p>주문자명&nbsp; <input name="name" type="text" class="form-control"/>
				<p>&nbsp;&nbsp;&nbsp;배송일 &nbsp; <input name="shippingDate" type="text" class="form-control"/>
				<p>(yyyy/mm/dd/hh)
				<p>&nbsp;&nbsp;&nbsp;&nbsp;국가명&nbsp; <input name="country" type="text" class="form-control"/>
				<p>&nbsp;우편변호&nbsp; <input name="zipCode" type="text" class="form-control"/>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소&nbsp;<input name="addressName" type="text" class="form-control"/>
			</div>
			<p>
			<p>
			<div class="form-group row" align="center">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-primary" value="등록"/>
				<a href="./cart.jsp?cartId=<%=request.getParameter("cartId") %>" class="btn btn-secondary" role="button">취소</a>
			</div>
		</form>
	</div>
	<p>
	<p>
	<%@ include file="footer.jsp" %>
	</div>
</body>
</html>