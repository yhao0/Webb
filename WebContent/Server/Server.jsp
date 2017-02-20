<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<link href="${pageContext.request.contextPath}/server.css" rel="stylesheet" type="text/css">
<title>Server</title>
</head>
<body>
	<div class="welcome">
		<h1>Welcome <strong><span style="font-size: 40px">${sessionScope.user}</span></strong>!</h1>
	</div>
	<div class="container">
		<div class="title">
			<h1 style="font-size: 30px"><strong>首页</strong></h1>
		</div>
		<div class="content-container">
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/ServerMain.jsp">Layout</a>
			</div>
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/TableDisplay.jsp">轮播</a>
			</div>
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/TableDisplayMenu.jsp">英语语感训练</a>
			</div>
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/TableDisplayMiniCarousel.jsp">课堂略影</a>
			</div>
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/TableDisplayMiniCarousel.jsp">展会活动</a>
			</div>
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/TableDisplayMiniCarousel.jsp">所获奖项</a>
			</div>
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/TableDisplayFooter.jsp">页脚</a>
			</div>
		</div>
		<div class="content-container">
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/DisplayArticles.jsp">文章</a>
			</div>
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/DisplayText.jsp">标题</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="title">
			<h1 style="font-size: 30px"><strong>关于酷趣ABC</strong></h1>
		</div>
		<div class="content-container">
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/#">Layout</a>
			</div>
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/#">轮播</a>
			</div>
		</div>
		<div class="content-container">
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/DisplayArticles.jsp">文章</a>
			</div>
			<div class="content">
				<a href="${pageContext.request.contextPath}/Server/DisplayText.jsp">标题</a>
			</div>
		</div>
	</div>
</body>
</html>