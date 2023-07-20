<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class = "navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="support.jsp" style="float:right">&nbsp;|&nbsp;Support</a>
			<a class="navbar-brand" href="review.jsp" style="float:right">&nbsp;|&nbsp;Review</a>
			<a class="navbar-brand" href="mypage.jsp" style="float:right">&nbsp;|&nbsp;MyPage</a>
			<a class="navbar-brand" href="cart.jsp" style="float:right">&nbsp;|&nbsp;Cart</a>
			<a class="navbar-brand" href="signup.jsp" style="float:right">&nbsp;|&nbsp;Sign Up</a>
			<a class="navbar-brand" href="login.jsp" style="float:right">Login</a>
			<form action="search.jsp" method="post">
				<input type="text" placeholder="상품 검색" name="search">
				<input type="submit" value="검색">
			</form>
		</div>
	</div>
</nav>
