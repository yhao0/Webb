<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>Delete Operation</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/vrclass"
     user="root"  password="root"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from carousel;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>ID</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>File Name</th>
   <th>Image</th>
   <th>Options</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.first_name}"/></td>
   <td><c:out value="${row.last_name}"/></td>
   <td><c:out value="${row.file_name}"/></td>
   <td><img src="<c:out value="${row.file_path}"/>"></td>
   <td>
   		<form action="DeleteServlet" method="post">
   			<input type="hidden" value="carousel" name="table"/>
   			<input type="hidden" value="${row.id}" name="picID"/>
   			<input type="hidden" value="${row.file_path}" name="path"/>
   			<input type="submit" value="Remove" name="remove"/>
   		</form>
   		<form action="EditServlet" method="post">
   			<input type="hidden" value="carousel" name="table"/>
   			<input type="hidden" value="${row.id}" name="picID"/>
   			<input type="hidden" value="${row.file_path}" name="path"/>
   			<input type="submit" value="Edit" name="remove"/>
   		</form>
   </td>
</tr>
</c:forEach>
</table>
 
</body>
</html>