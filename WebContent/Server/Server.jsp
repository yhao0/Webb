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
	<div style="text-align:center;font-size:30px">
		<h1>Welcome <strong>${sessionScope.user}</strong>!</h1>
	</div>
	<table>
		<tr>
			<th>HomePage</th>
		</tr>
		<tr>
			<td>
				<a href="${pageContext.request.contextPath}/Server/ServerMain.jsp">Layout</a>
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/Server/TableDisplay.jsp">轮播</a>	<!-- TOMORROW DO THIS -->
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/Server/TableDisplayMenu.jsp">Menu</a>	<!-- TOMORROW DO THIS -->
			</td>			
			<td>
				<a href="${pageContext.request.contextPath}/Server/TableDisplayMiniCarousel.jsp">Mini-Carousel</a><!-- TOMORROW DO THIS -->
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/Server/ServerHPTable.html">Tables</a>	<!-- TOMORROW DO THIS -->
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/Server/TableDisplayFooter">Footer</a>	<!-- TOMORROW DO THIS -->
			</td>
			<td>
				<a href="${pageContext.request.contextPath}/Server/ServerHPTable.html">Tables</a>	<!-- TOMORROW DO THIS -->
			</td>
		</tr>
		<tr>
			<th>SecondPage</th>
		</tr>
		<tr>
			<td>
				<a href="#"></a>	
			</td>
			<td>
				<a href="#"></a>
			</td>
		</tr>
	</table>
</body>
</html>