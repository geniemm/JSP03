<%@page import="day03.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
		
		memberDTO dto = new memberDTO(); // setter통해서 값저장하고 아래 getter를 통해 값 가져오는걸로 사용할수있다~
		dto.setId(id); dto.setPwd(pwd);
		
	%>
		id : <%= dto.getId() %><br>
		pwd : <%= dto.getPwd() %><br>
</body>
</html>