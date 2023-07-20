<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Flower" %>
<%@ page import="dao.FlowerRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flower Shop</title>
<script type="text/javascript">
	function addToCart(){
		if (confirm("상품을 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>
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
	 	String id = request.getParameter("id");
		FlowerRepository dao = FlowerRepository.getInstance();
		Flower flower = dao.getFlowerById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=flower.getFilename() %>" style="width: 50%"/>
			</div>
			<div class="col-md-6">
				<h3><%=flower.getCategory() %>&nbsp;<%=flower.getName() %></h3>
				<p> <b>상품코드 : </b><span class="badge badge-danger">
				<%=flower.getFlowerId() %></span>
				<p> <b>구성</b> : <%=flower.getType() %>
				<p> <b>원산지</b> : <%=flower.getOrigin() %>
				<p> <b>가격</b> : <%=flower.getUnitPrice() %>원
				<p> <form name="addForm" action = "./addCart.jsp?id=<%=flower.getFlowerId() %>" method="post">
				<p> <a href="#" class="btn btn-info" onclick="addToCart()"> >>주문 추가&nbsp;&nbsp;&nbsp;</a>
					<a href="./cart.jsp" class="btn btn-warning"> >>장바구니&nbsp;&nbsp;&nbsp;</a>
					<a href="./main.jsp" class="btn btn-secondary"> >>Home</a>
					</form>
			</div>
			<hr>
			<div>
			 <img src="./resources/images/<%=flower.getFilename() %>" style="width: 50%"/>
			 <p><p> <%=flower.getType() %>으로 이루어진 꽃다발입니다.
			 특별한 추억을 만들고 싶은 날, 오래 기억하고 싶은 기념일 모두 추천드립니다.
			 <p><p><h5>[생일/기념일/고백/승진축하/이벤트/출산/감사/위로/일상]</h5>
			 <p><p><img src="./resources/images/<%=flower.getFilename2() %>" style="width: 50%"/>
			 <p><p>계절꽃, 리본, 포장지 등 부소재는 계절 및 지역에 따라 변동될 수 있습니다.
			 <p><p><h3>전국배송가능</h3>
			 <p><p>당일 신선한 소재를 사용해 제작합니다.
			 <p>정해진 시간에 배송됩니다.
			 <p> 배송 시간은 이벤트 데이, 도서산가닞역, 교통상황 등에 따라 좀 더 지연될 수 있습니다.
			 <p> 도서 산간 지역이나 시군 소재지에서 떨어진 일부 지역의 경우 문자를 통해 따로 안내를 드리고 있습니다.
			</div>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp" %>
	</div>
</body>
</html>