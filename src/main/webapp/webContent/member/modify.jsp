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
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="dto" class="day03.memberDTO" />
	<jsp:setProperty property="*" name="dto" />

	<%
		
		memberDAO dao = new memberDAO();
		int result = dao.modify(request.getParameter("name"),
				request.getParameter("addr"),request.getParameter("tel"),request.getParameter("id"));
		if(result ==1){%>
			<script>
			alert("수정완료 되었습니다.");
			location.href="index.jsp";
			</script>
		<% } %>
</body>
</html>