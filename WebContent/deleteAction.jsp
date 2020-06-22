<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.javaex.vo.GuestVo"%>
<%@page import = "com.javaex.dao.GuestDao" %>
    
<%
	String no = request.getParameter("no");
	String pw = request.getParameter("password");
	GuestDao dao = new GuestDao();
	int password = dao.password(Integer.parseInt(no));
	int inputNum = Integer.parseInt(pw);
	
	if(password == inputNum){
		response.sendRedirect("./main.jsp");
	}else{%>
		<script type="text/javascript">

		  alert("비밀번호가 틀렸습니다.");
		  document.location.href="./main.jsp";

		</script>
 <%	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



</body>
</html>