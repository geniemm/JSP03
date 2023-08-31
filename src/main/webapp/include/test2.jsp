<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test2.jsp<br>
	
	<%@ include file="test1.jsp" %> <!-- include 지시자 -->
	<hr>
	<jsp:include page="test3.jsp" />
	<!-- jsp tag -->
	<hr>
	<h4>내용 입니다</h4>
	test1: <%= msg %><br>
	test3: <br> <!-- test3에있는 변수는 가져올수없어 -->
	<!-- include지시자는 파일두개를 하나로 합쳐서 번역하는 형식이여서 
		변수 그대로가져와서 사용할수가있는거다
	 	-->
</body>
</html>