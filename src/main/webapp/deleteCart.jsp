<%@ page import="dto.Flower" %>
<%@ page import="dao.FlowerRepository" %>

<%
	String id = request.getParameter("cartId");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	session.invalidate();
	response.sendRedirect("cart.jsp");
%>