<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Flower" %>
<%@ page import="dao.FlowerRepository"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<a href="?language=ko"/>Korean</a>|<a href="?language=en" >English</a>
	<form name="newflower" action="./addProcess.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
				<div class=container>
					<label class="col-sm-2"><fmt:message key="flowerId"/></label>
					<div class="col-sm-3">
						<input type="text" id="flowerId">
					</div>
				</div>
				<div class=container>
					<label class="col-sm-2"><fmt:message key="mtitle"/></label>
					<div class="col-sm-3">
						<input type="text" id="flowerId">
					</div>
				</div>
				<div class=container>
					<label class="col-sm-2"><fmt:message key="category"/></label>
					<div class="col-sm-3">
						<input type="text" id="flowerId">
					</div>
				</div>
				<div class=container>
					<label class="col-sm-2"><fmt:message key="name"/></label>
					<div class="col-sm-3">
						<input type="text" id="flowerId">
					</div>
				</div>
				<div class=container>
					<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
					<div class="col-sm-3">
						<input type="text" id="flowerId">
					</div>
				</div>
				<div class=container>
					<label class="col-sm-2"><fmt:message key="fileName"/></label>
					<div class="col-sm-3">
						<input type="text" id="flowerId">
					</div>
				</div>

				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckAdd()">
					</div>
				</div>
	<%@ include file="footer.jsp" %>
	</div>
</body>
</html>