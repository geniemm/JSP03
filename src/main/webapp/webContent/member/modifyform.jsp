<%@page import="day03.memberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day03.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../default/header.jsp" %>

	<%
		memberDAO dao = new memberDAO();
		ArrayList<memberDTO> list = dao.memberInfo(request.getParameter("id"));
	%>	
	<% request.setCharacterEncoding("utf-8"); %>
	<% for(memberDTO d :list){ %>
		<div>
		<form action="modify.jsp" method="post">
		<input type="hidden" name="id" value="<%= d.getId()%>"><br>
		<input type="text" name="name" value="<%= d.getName() %>"><br>
		<input type="text" name="addr" value="<%= d.getAddr() %>"><br>
		<input type="text" name="tel" value="<%= d.getTel() %>"><br>
		<input type="submit" value="완료"><input type="reset" value="취소">
		</form>
		</div>
	<% } %>
	<%@ include file="../default/footer.jsp" %>
</body>
</html>