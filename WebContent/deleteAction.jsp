<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.javaex.vo.GuestVo"%>
<%@page import = "com.javaex.dao.GuestDao" %>
    
<%
	int no = Integer.parseInt(request.getParameter("no"));
	String inputNum = request.getParameter("password");
	
	System.out.println(no);
	System.out.println(inputNum);

	GuestDao dao = new GuestDao();
	int num = dao.delete(no, inputNum);
	
	if(num == 1){
		response.sendRedirect("./main.jsp");
	}else{%>
		<script>
		alert("비밀번호가 틀렸습니다.");
		document.location.href = "./main.jsp";
		</script>
	<%}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



</body>
</html>