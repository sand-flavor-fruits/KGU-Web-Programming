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
		<div class="row" align="center">
			<div class="col-md-5">
			<hr>
				<h5> 제목 : <%=flower.getFlowerId()%>&nbsp;&nbsp; <%=flower.getMtitle() %></h5>
			</div>
			<div class="col-md-6">
				<hr>
				<p> <b>유형</b> : <%=flower.getCategory() %>&nbsp;<%=flower.getName() %></h3>
				<hr>
				<p> <b>최대가격</b> : <%=flower.getUnitPrice() %>원
				<hr>
				<p> <b>예시사진</b><p> : <img src="./resources/images/<%=flower.getFilename() %>" style="width: 50%"/>
				<hr>
				<p> <a href="./main.jsp" class="btn btn-secondary"> >>Home</a>
			</div>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp" %>
	</div>
</body>
</html>