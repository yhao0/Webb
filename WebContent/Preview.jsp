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
	SELECT * FROM articles WHERE  preview=${param.myvar} ORDER BY date_time DESC LIMIT 2;
</sql:query>

			
		<c:forEach var="row" items="${result.rows}">
								<div class="left-mini-container">
									<div class="left-mini-container-title">
										<p><strong>${row.article_title}</strong></p>
									</div>
									<div class="left-mini-container-content fade" style="height:80px">
										<p>${row.article_body}</p>
									</div>
									<a href=${row.link}><img src="${pageContext.request.contextPath}/Image/more.png" style="float:right"></a>
								</div>
		</c:forEach>
			