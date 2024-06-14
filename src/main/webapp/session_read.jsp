<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>세션 읽기..</h3>
	
	<%
	//	Object 타입으로 반환되므로, 다운 캐스팅이 필수적임
	String sess1 = (String)session.getAttribute("sess1");
	Integer sess2 = (Integer)session.getAttribute("sess2");
	%>
	
	<p>문자열 세션: <%=sess1 %></p>
	<p>정수 세션: <%=sess2 %></p>
	
	<p><a href = "session_delete.jsp">세션 ㅅ각제</a></p>
	<p><a href = "session_write.jsp">세션 기록</a></p>
</body>
</html>