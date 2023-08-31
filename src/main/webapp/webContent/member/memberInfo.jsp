<%@page import="day03.memberDAO"%>
<%@page import="day03.memberDTO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
a{
	text-decoration-line:none;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	
	<%
	memberDAO dao = new memberDAO();
	ArrayList<memberDTO> list = dao.memberInfo(request.getParameter("id"));
	%>
	<% for(memberDTO d :list){ %>
	<div>
		<table>
		<tr><th>아이디</th><td><%= d.getId() %></td><tr>
		<tr><th>비밀번호</th><td><%= d.getPwd() %></td><tr>
		<tr><th>이름</th><td><%= d.getName() %></td><tr>
		<tr><th>주소</th><td><%= d.getAddr() %></td><tr>
		<tr><th>전화번호</th><td><%= d.getTel() %></td><tr>
		</table>
		<button><a href=modifyform.jsp?id=<%= d.getId() %> >수정</a></button>
		<button><a href=delete.jsp?id=<%= d.getId() %>>삭제</a></button>
		</div>
		<% } %>
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>