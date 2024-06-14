<%@page import="himedia.myhome.dao.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Homepage</title>
<link type="text/css" 
	rel="stylesheet" 
	href="<%= request.getContextPath() %>/css/guestbook.css"/>
</head>
<%
List <GuestbookVo> list = null;
if(request.getAttribute("list") instanceof List){
	list = (List<GuestbookVo>)request.getAttribute("list");	
}

%>
<body>
  <div id="container">
  
    <!-- header include -->
    <jsp:include page="/WEB-INF/views/includes/header.jsp">
    	<jsp:param name="param1" value="value1" />
    	<jsp:param name="param2" value="value2" />
    </jsp:include>

	<!-- navigation include -->
	<jsp:include page="/WEB-INF/views/includes/navigation.jsp" />
    
	<div id="wrapper">
      <div id="content">
			<!-- Content 영역 -->
			<form action="<%=request.getContextPath()%>/guestbook" method="POST">
			<input type="hidden" name="a" value="add"/>
			<table border=1 width=500>
				<tr>
					<td>이름</td><td><input type="text" name="name"></td>
					<td>비밀번호</td><td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
				</tr>
				<tr>
					<td colspan=4 align=right><input type="submit" VALUE="확인"></td>
				</tr>
			</table>
			</form>
			<br/>

			<%
			for (GuestbookVo vo : list){
			%>
			<table width=510 border=1>
				<tr>
					<td><%=vo.getNo()%></td>
					<td><%=vo.getName()%></td>
					<td><%=vo.getDate()%></td>
					<td><a href="<%=request.getContextPath()%>/guestbook?a=passconfirm&no=<%=vo.getNo()%>">수정</a></td>
					<td><a href="<%=request.getContextPath()%>/guestbook?a=deleteform&no=<%=vo.getNo()%>">삭제</a></td>
				</tr>
				<tr>
					<td colspan=5><%=vo.getContent()%></td>
				</tr>
			</table>
        	<br/>
			<%
			}
			%>
      </div>
	</div>
	
	<!-- footer include -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
	
	
  </div>
</body>
</html>