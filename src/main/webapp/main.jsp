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
	<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to Flower Shop</h1>
	<!-- align이나 다른 속성으로 조절해보려고 했으나 위치가 이상하게 되어 &nbsp를 사용했습니다. -->
		<script>
    		var index = 0;   //이미지에 접근하는 인덱스
    		window.onload = function(){
	        slideShow();
    		}
    	
    		function slideShow() {
    		var i;
    		var x = document.getElementsByClassName("slide1");  //slide1에 대한 dom 참조
    		for (i = 0; i < x.length; i++) {
    		   x[i].style.display = "none";   //처음에 전부 display를 none으로 한다.
    		}
   	 		index++;
    		if (index > x.length) {
      		  index = 1;  //인덱스가 초과되면 1로 변경
   	 		}   
	    	x[index-1].style.display = "block";  //해당 인덱스는 block으로
	    	setTimeout(slideShow, 1000);   //함수를 1초마다 호출	
 
			}
		</script>
		<p>
		<div align="center">
  			<img class="slide1" src="./resources/images/pink1.png" width="700" height="400">
  			<img class="slide1" src="./resources/images/balloonwhite1.png" width="700" height="400">
  			<img class="slide1" src="./resources/images/heartbox1.png" width="700" height="400">
  			<img class="slide1" src="./resources/images/yellowMarigold1.png" width="700" height="400">
  			<img class="slide1" src="./resources/images/soapmint1.png" width="700" height="400">
		</div>
	</div>
	<p>
	<p>
	<p>
	<p>
	<p>
	<p>
	<%@ include file="footer.jsp" %>
	</div>
</body>
</html>