<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Homepage</title>
<!-- TODO: 현재 페이지에 적절한 CSS를 임포트하십시오. -->
<link type="text/css" 
	rel="stylesheet" 
	href="<%= request.getContextPath() %>/css/home.css"/>
</head>
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
      <div id="content" Style="background-color:#E0E0E0">
			<!-- Content 영역 -->
			<img src="data:image/jpeg;base64,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"/>
      </div>
	</div>
	
	<!-- footer include -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
	
	
  </div>
</body>
</html>