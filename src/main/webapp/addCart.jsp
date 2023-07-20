<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Flower" %>
<%@ page import="dao.FlowerRepository" %>

<% String id = request.getParameter("id");
	if(id == null || id.trim().equals("")){
	response.sendRedirect("main.jsp");
	return;
	}
	
	FlowerRepository dao = FlowerRepository.getInstance();
	
	Flower flower = dao.getFlowerById(id);

	if(flower == null)
		response.sendRedirect("exceptionNoFlowerId.jsp");
	ArrayList<Flower> goodsList = dao.getAllFlowers();
	Flower goods = new Flower();
	for(int i = 0; i < goodsList.size(); i++){
		goods = goodsList.get(i);
		if(goods.getFlowerId().equals(id)){
			break;
		}
	}
	ArrayList<Flower> list = (ArrayList<Flower>) session.getAttribute("cartlist");
	if(list == null){
		list = new ArrayList<Flower>();
		session.setAttribute("cartlist", list);
	}
	int cnt = 0;
	Flower goodsQnt = new Flower();
	for(int i = 0; i < list.size(); i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getFlowerId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if(cnt == 0){
		goods.setQuantity(1);
		list.add(goods);
	}
	response.sendRedirect("flower.jsp?id=" + id);
%>