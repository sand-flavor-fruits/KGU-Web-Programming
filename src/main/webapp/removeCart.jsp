<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Flower" %>
<%@ page import="dao.FlowerRepository" %>

<%
String id = request.getParameter("id");
if(id == null || id.trim().equals("")){
	response.sendRedirect("main.jsp");
	return;
}
FlowerRepository dao = FlowerRepository.getInstance();
Flower flower = dao.getFlowerById(id);

if(flower == null)
	response.sendRedirect("exceptionNoFlowerId.jsp");

ArrayList<Flower> cartList = (ArrayList<Flower>) session.getAttribute("cartlist");
Flower goodsQnt = new Flower();
for(int i = 0; i < cartList.size(); i++){
	goodsQnt = cartList.get(i);
	if(goodsQnt.getFlowerId().equals(id)){
		cartList.remove(goodsQnt);
	}
}
response.sendRedirect("cart.jsp");
%>