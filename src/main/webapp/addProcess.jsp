<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Flower" %>
<%@ page import="dao.FlowerRepository" %>
<%
	request.setCharacterEncoding("utf-8");

	String filename = "";
	String realFolder = "C:\\upload";
	int maxSize = 5*1024*1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());


	String flowerId = request.getParameter("flowerId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("price");
	String category = request.getParameter("category");
	String mtitle = request.getParameter("mtitle");

	Integer price;
	if(unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	FlowerRepository dao = FlowerRepository.getInstance();
	
	Flower newflower =new Flower();
	newflower.setFlowerId(flowerId);
	newflower.setName(name);
	newflower.setUnitPrice(price);
	newflower.setCategory(category);
	newflower.setMtitle(mtitle);
	newflower.setFilename(filename);
	
	dao.addFlower(newflower);
	
	response.sendRedirect("made.jsp");

%>
