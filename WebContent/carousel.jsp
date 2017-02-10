<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/vrclass"
     user="root"  password="root"/>
     
<sql:query dataSource="${snapshot}" var="result">
	SELECT * FROM images WHERE section="carousel" AND page="FirstPage";
</sql:query>

			
		<c:forEach var="row" items="${result.rows}">
			<div>
				<img width="100%" src="${pageContext.request.contextPath}/images/${row.file_name}">
			</div>
		</c:forEach>
			