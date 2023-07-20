<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Flower" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dao.FlowerRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flower Shop</title>
<%@ include file="header.jsp" %>
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
	<%
	request.setCharacterEncoding("utf-8");

	String cartId = session.getId();
	
	String shipping_cartId="";
	String shipping_name="";
	String shipping_shippingDate="";
	String shipping_country="";
	String shipping_zipCode="";
	String shipping_addressName="";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_country"))
				shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_zipCode"))
				shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			
			
		}
	}
	
%>
		<div class="container">
			<h3>영수증</h3>
		</div>
		<div class="container">
			<div style="padding-top:50px">
					<p>성명 : &nbsp;<%out.print(shipping_name);%>
					<p>우편번호 : &nbsp;<%out.print(shipping_zipCode);%>
					<p>주소 : &nbsp;<%out.print(shipping_addressName); out.print(shipping_country);%>
					<p>배송일 : &nbsp;<%out.print(shipping_shippingDate);%>
				<table class="table table-hover">
				<tr>
					<th class="text-center">상품</th>
					<th class="text-center">수량</th>
					<th class="text-center"></th>
					<th class="text-center">소계</th>
				</tr>
				<%
					int sum = 0;
					ArrayList<Flower> cartList = (ArrayList<Flower>) session.getAttribute("cartlist");
					if(cartList == null)
						cartList = new ArrayList<Flower>();
					for(int i = 0; i < cartList.size(); i++){
						Flower flower = cartList.get(i);
						int total = flower.getUnitPrice() * flower.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td class="text-center"><em><%=flower.getName() %></em></td>
					<td class="text-center"><%=flower.getQuantity() %></td>
					<td class="text-center"><%=flower.getUnitPrice() %></td>
					<td class="text-center"><%=total%>원</td>
				</tr>
				<%
					}
				%>
				<tr>
					<td></td>
					<td></td>
					<td class="text-right"><strong>총액: </strong></td>
					<td class="text-center text-danger"><strong><%=sum%></strong></td>
				</tr>
				</table>
			<a href="./thankCustomer.jsp" class="button" role="button">주문 완료</a>
			<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId %>" class="button" role="button">취소</a>
	
		</div>
	</div>
	<p>
	<p>
	<%@ include file="footer.jsp" %>
	</div>
</body>
</html>