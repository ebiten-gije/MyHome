<%@page import="himedia.myhome.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<div id="header">
	<h1>My Homepage</h1>
	<p>${authUser }</p>
	<c:choose>
		<c:when test="${not empty authUser }">
		<!-- 로그인한 사용자 웰컴 메시지, 로그아웃 링크	 -->
		<ul> 
			<li><a href = "<c:url value="/users?a=logout"/>">로그아웃</a></li>
			<li>${authUser.name } 님 안녕하세용</li> 
		</ul>
		</c:when>
		<c:otherwise>
		<!-- 로그인 안한 사용자 가입 링크와 로그인 폼 링크 -->
		<ul>	
			<li><a href = "<c:url value="/users?a=joinform"/>">회원가입</a></li>
			<li><a href = "<c:url value="/users?a=loginform"/>">로그인</a></li>
		</ul>
		</c:otherwise>
	</c:choose>
</div>
<!-- /header -->
<!-- h3>Params</h3>
  <ul>
  	<li>param1 : <%= request.getParameter("param1") %></li>
<li>param2 : <%= request.getParameter("param2") %></li>
</ul -->