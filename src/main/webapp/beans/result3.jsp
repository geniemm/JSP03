<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result3.jsp<br>
	<jsp:useBean id="dto" class="day03.memberDTO" />
	<jsp:setProperty property="*" name="dto"/> <!-- 모든값을 dto에 넣어주겠다 ~ setter여러번 호출보다 편리 -->
	<%  %>
	id : <%= dto.getId() %><br>
	pwd : <%= dto.getPwd() %><br>
	name : <%= dto.getName() %><br>
	

</body>
</html>