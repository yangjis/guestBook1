<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.javaex.vo.GuestVo"%>
<%@page import = "com.javaex.dao.GuestDao" %>

<%
	request.setCharacterEncoding("UTF-8"); //utf-8로 데이터를 해석하여 저장하라.
	String name = request.getParameter("name");//응답받은 파라미터 중 name을 string name에 넣어라
	String password = request.getParameter("password");
	String content = request.getParameter("content");

	GuestVo gVo = new GuestVo(name, password, content);
	GuestDao dao = new GuestDao();
	dao.addList(gVo);
	
	response.sendRedirect("./main.jsp");// ./list.jsp페이지로 리다이렉트해라 	리다이렉트란? 데이터를 계속 유지하지않고 새페이지로 이동
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>