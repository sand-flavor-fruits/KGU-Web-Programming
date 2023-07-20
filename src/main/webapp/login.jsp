<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div class="container">
				<h1>Login</h1>
			</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<%
				String error = request.getParameter("error");
				if(error != null){
					out.println("아이디와 비밀번호를 확인해주세요");
				}
			%>
			<p>
			<p>
			<p>
			<form class="form-signin" action="j_security_check" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only"></label>
					<input type="text" class="form-control" placeholder="ID" name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only"></label>
					<input type="password" class="form-control" placeholder="Password" name='j_password' required>
				</div>
				<p>
				<p>
				<p>
				<p>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
	<p>
	<p>
	<p>
	<p>
	<p>
	<p>
	<%@ include file="footer.jsp" %>
</body>
</html>