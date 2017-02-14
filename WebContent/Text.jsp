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
	SELECT * FROM text WHERE section = "${param.myvar}" AND page="${param.mypage}";
</sql:query>

			
		<c:forEach var="row" items="${result.rows}">
			<p><strong>${row.passage}</strong></p>
		</c:forEach>
			