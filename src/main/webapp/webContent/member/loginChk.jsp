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
	
	
	<jsp:useBean id="dao" class="day03.memberDAO" />
	<%
		memberDTO dto = new memberDTO();
	%>

	
	<%
		request.setCharacterEncoding("utf-8");
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
		System.out.println("id:"+id);
		System.out.println("pwd:"+pwd);
		
		if(id.equals(dto.getId())){
			
			
			if(pwd.equals(d.getPwd())){ %>	
			
			<% session.setAttribute("id",id); %>
				<script>
					location.href="successLogin.jsp"
				</script>

			<% }else{ %>
				<script type="text/javascript">
				alert("비밀번호가 일치하지 않습니다.");
				location.href="login.jsp"
				</script>
			<%} %>
		<%}else if(!id.equals(d.getId())){%>
			<script>
				alert("등록되지 않은 아이디입니다.");
				location.href="login.jsp"
			</script>
		<% } %>
	<% } %>	
		
	
</body>
</html>