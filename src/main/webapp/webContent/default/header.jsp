<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.logo{
font-size:30px;
font-family:Fixedsys;
text-align : center;
color: green;
	}
a{
text-decoration: none;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="logo">
 <h2>CARE LAB</h2>
 
 </div>
 <hr>
 <nav class="menu">
 <a href = "../member/index.jsp">HOME</a> &nbsp;&nbsp;
  
 <%
 	if(session.getAttribute("id")==null){ %>
 		<a href = "../member/login.jsp">회원정보</a>
 	<% }else{ %>
 	<a href = "../member/member.jsp">회원정보</a>
<% } %>
 &nbsp;&nbsp;
 
 <%
 	if(session.getAttribute("id")==null){ %>
 		<a href = "../member/login.jsp">로그인</a>
 	<% }else{ %>
 	<a href = "../member/logout.jsp">로그아웃</a>
<% } %>
 
 
 </nav>
 <hr>
</body>
</html>