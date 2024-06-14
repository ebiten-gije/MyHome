<%@page import="himedia.myhome.dao.GuestbookVo"%>
<%@page import="himedia.myhome.dao.GuestbookDaoOI"%>
<%@page import="himedia.myhome.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>방명록</title>
</head>
<body>
<%
ServletContext cont = getServletContext();

String dbuser = cont.getInitParameter("dbuser");
String dbpass = cont.getInitParameter("dbpass");

String no = request.getParameter("id");
Long num = Long.parseLong(no);	

String password = request.getParameter("password");

GuestbookDao dao = new GuestbookDaoOI(dbuser, dbpass);
GuestbookVo vo = dao.search(num, password);
if(vo != null){
%>
<h4>수정 페이지</h4>
<form action="<%=request.getContextPath()%>/guestbook" method="POST">
<input type='hidden' name="a" value="update">
<input type='hidden' name="no" value="<%=num%>">
<table border=1 width=500>
	<tr>
		<td colspan=4><textarea name="content" cols=60 rows=5><%=vo.getContent()%></textarea></td>
	</tr>
	<tr>
		<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
	</tr>
</table>
</form>
<%
} else {	
%>
<h3>비밀번호가 틀렸습니다</h3>
<h3>비밀번호를 확인하고 다시 시도해주세용</h3>
<p><a href="<%=request.getContextPath()%>/guestbook">메인으로 돌아가기</a></p>
<%
}
%>
</body>
</html>