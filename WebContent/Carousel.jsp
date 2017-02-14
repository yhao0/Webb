<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/vrclass"
     user="root"  password="root"/>
     
<sql:query dataSource="${snapshot}" var="result">
	SELECT * FROM images WHERE section="carousel" AND page="FirstPage";
</sql:query>

			
		<c:forEach var="row" items="${result.rows}">
			<div>
				<img width="100%" src="${pageContext.request.contextPath}/images/HomePage/${row.file_name}">
				<!-- <a class="btn btn-red">在线咨询</a> -->
			</div>
		</c:forEach>
			