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
	<h3>회원가입</h3>
	</div>
	<div>
		<form action="join.jsp" method="post">
			<input type="text" name="id" placeholder="아이디"><br>
			<input type="text" name="pwd" placeholder="비밀번호"><br>
			<input type="text" name="name" placeholder="이름"><br>
			<input type="text" name="addr" placeholder="주소"><br>
			<input type="text" name="tel" placeholder="전화번호"><br>
			<input type="submit" id="join" value="회원등록">
			<br>
		</form>
	</div>
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>