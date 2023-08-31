<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result2.jsp<br>
	<jsp:useBean id="dto" class="day03.memberDTO"></jsp:useBean><!-- useBean : 객체를 만든다 new연산자랑 동일해-->
	<jsp:setProperty property="id" name="dto" /><!-- setter property에는 받아올값 name에는 dto -->
	id : <jsp:getProperty property="id" name="dto" /><br><!-- getter -->
	id : <%= dto.getId() %><br>
	<jsp:setProperty property="pwd" name="dto" />
	pwd : <jsp:getProperty property="pwd" name="dto" /><br>
	<%
		 dto.setPwd(request.getParameter("pwd"));
	%>
	pwd2 : <%= dto.getPwd() %><br>
</body>
</html>