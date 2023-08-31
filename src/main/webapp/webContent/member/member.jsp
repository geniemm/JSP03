<%@page import="day03.memberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.member1{
	text-align: center;
}
.table1{
margin-left:380px;
	padding:0px;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	<jsp:useBean id="dao" class="day03.memberDAO" />
	<%
		ArrayList<memberDTO> list = dao.getList();
	%>
	<div class="member1">
	<h3>회원목록</h3> 
	</div>
	<div class="table1">
	<table border="1">
		<tr>
		<th>이름</th><th>주소</th><th>전화번호</th>
		</tr>
		<% for(memberDTO d :list){ %>
			<tr>
			<td>
			<a href="memberInfo.jsp?id=<%= d.getId() %>">
			<%= d.getName() %></a>
			</td>
			<td><%= d.getAddr() %></td>
			<td><%= d.getTel() %></td>
			</tr>
		<% } %>
	</table>
	</div>
	<%@ include file="../default/footer.jsp" %>
</body>
</html>