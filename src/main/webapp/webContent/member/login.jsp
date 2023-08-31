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
	
	<div>
	<h3>로그인 페이지 입니다</h3>
	</div>
	<div>
		<form action="loginChk.jsp" method="post">
			<input type="text" name="id" placeholder="id"><br>
			<input type="password" name="pwd" placeholder="pwd">
			<input type="submit" id="bt1" value="로그인">
			<br>
			<a href="joinForm.jsp">회원가입</a>
		</form>
	</div>
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>