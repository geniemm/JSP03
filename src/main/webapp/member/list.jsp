<%@page import="day03.memberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	list.jsp<br>
	<jsp:useBean id="dao" class="day03.memberDAO" />
	<%
		ArrayList<memberDTO> list = dao.getList();
	%>
	size : <%= list.size() %> 
	
	<table border="1">
		<tr>
		<th>id</th><th>name</th><th>addr</th>
		</tr>
		<% for(memberDTO d :list){ %>
			<tr>
			<td><%= d.getId() %></td>
			<td>
			<a href ="delete.jsp?id=<%= d.getId() %>">
			<%= d.getName() %></a>
			</td>
			<td><%= d.getAddr() %></td>
			</tr>
		<% } %>
	</table>
</body>
</html>