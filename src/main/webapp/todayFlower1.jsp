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
		FlowerRepository dao = FlowerRepository.getInstance();
		ArrayList<Flower> listOfFlowers = dao.getAllFlowers();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0; i < listOfFlowers.size(); i++){
					Flower flower = listOfFlowers.get(i);
					if(flower.getFlowerId().charAt(1) == 'O'){
			%>
			<div class="col-md-4" >
				<a href="./flower.jsp?id=<%=flower.getFlowerId()%>" ><img src="./resources/images/<%=flower.getFilename() %>" style="width:30%"></a>
				<a href="./flower.jsp?id=<%=flower.getFlowerId()%>" ><h5 style="text-align:center"><%=flower.getCategory()%>&nbsp;<%=flower.getName()%></h5></a>
				<p><a href="./flower.jsp?id=<%=flower.getFlowerId()%>" >구성 : <%=flower.getType() %></a>
				<p><a href="./flower.jsp?id=<%=flower.getFlowerId()%>" >Price : <%=flower.getUnitPrice() %>원</a>
				<p> <form name="addForm" action = "./addCart.jsp?id=<%=flower.getFlowerId() %>" method="post">
				<p><a href="#" class="button" onclick="addToCart()">Add to cart</a><p>
					</form>
			</div>
			<%
				}
					}
			%>
		</div>              
	</div>
	<%@ include file="footer.jsp" %>
	</div>
</body>
</html>