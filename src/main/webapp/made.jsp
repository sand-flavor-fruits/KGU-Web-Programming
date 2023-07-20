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
		FlowerRepository dao = FlowerRepository.getInstance();
		ArrayList<Flower> listOfFlowers = dao.getAllFlowers();
	%>
	<div class="container">
		<div class="row" align="center">
		<hr>
			<%
				for(int i = 34; i < listOfFlowers.size(); i++){
					Flower flower = listOfFlowers.get(i);
			%>
			<div class="col-md-4" >
				<a href="./madedetail.jsp?id=<%=flower.getFlowerId()%>" ><h5 style="text-align:center"><%=flower.getCategory()%>&nbsp;<%=flower.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=flower.getMtitle() %></h5></a>
				<hr>
			</div>
			<%
				}
			%>
			<form action="addmade.jsp" method="post">
				<input type="button" value="글쓰기">
			</form>
			<p>
			<p>
			<p>
		</div>              
	</div>
	<%@ include file="footer.jsp" %>
	</div>
</body>
</html>