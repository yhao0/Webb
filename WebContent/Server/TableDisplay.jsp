<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>Table Display</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/vrclass"
     user="root"  password="root"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * FROM images WHERE section="carousel" AND page="FirstPage";
</sql:query>

<table border="1" width="100%" >
<tr>
   <th>ID</th>
   <th>File Name</th>
   <th>Image</th>
   <th>Options</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.file_name}"/></td>
   <td>	
   		<div style="width:800px">
			<img width="100%"src="${pageContext.request.contextPath}/images/HomePage/${row.file_name}">   
		</div>
   <td>
   		<form action="../DeleteServlet" method="post">
   			<input type="hidden" value="images" name="table"/>
   			<input type="hidden" value="${row.id}" name="picID"/>
   			<input type="submit" value="Remove" name="remove"/>
   		</form>
   		<form action="Update.jsp" method="post">
   			<input type="hidden" value="images" name="table"/>
   			<input type="hidden" value="${row.id}" name="picID"/>
   			<input type="submit" value="Update" name="update"/>
   		</form>
   </td>
</tr>
</c:forEach>
</table>
<div style="width:100%;margin-bottom:80px">
	<a href="UploadImage.jsp" style="text-decoration:none;float:right;border:1px solid black;border-radius:5px;background-color: lightgoldenyellow;">Upload Image</a>
</div>
</body>
</html>