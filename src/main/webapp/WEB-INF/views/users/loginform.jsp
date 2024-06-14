<%@ page language = "java" contentType = "text/html; charset = UTF-8"
	pageEncoding = "UTF-8" %>
	
<% 
//	에러메시지 체크
String errorMsg = (String)request.getAttribute("error");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Home: Login</title>
</head>
<body>

	<h1>Login</h1>
	<%
	//	에러메시지 출력
	if (errorMsg != null){
		%><p style="color:crimson; font-weight:bold;"><%=errorMsg %></p><%
	}
	%>
	<form method="POST" action="<%=request.getContextPath()%>/users">
		<input type="hidden" name="a" value="login" />
		<label for="email">이메일 정보</label>
		<input type="text" name="email" /><br>
		<label for="password">Password</label>
		<input type="password" name="password" /><br/>
		<input type="submit" value="로그인" />
	</form>
	
	<p><a href = "<%=request.getContextPath()%>">초기화면으로 돌아가기</a></p>
</body>
</html>