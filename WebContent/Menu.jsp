<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/vrclass"
     user="root"  password="root"/>
     
<sql:query dataSource="${snapshot}" var="result">
	SELECT * FROM images WHERE section="menu" AND page="FirstPage";
</sql:query>

			<div class="container">
				<c:forEach var="row" items="${result.rows}">
				<div class="hover-box">
					<img src="${pageContext.request.contextPath}/images/HomePage/${row.file_name}">
					<div class="overlay">
						<div class="hover-image">
							<img src="Image/FirstPage/hover.png">
						</div>
					</div>
				</div>
				</c:forEach>
			</div>