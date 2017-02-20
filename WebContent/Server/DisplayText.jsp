<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<html>
<head>
<title>Table Display</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/vrclass"
     user="root"  password="root"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * FROM text WHERE page="FirstPage";
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>ID</th>
   <th>Passage</th>
   <th>Options</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><p>${row.passage}</p></td>
   <td>
   		<form action="DeleteTextServlet" method="post">
   			<input type="hidden" value="${row.id}" name="id"/>
   			<input type="submit" value="Remove" name="remove"/>
   		</form>
   		<form action="UpdateText.jsp" method="post">
   			<input type="hidden" value="${row.id}" name="id"/>
   			<input type="submit" value="Update" name="update"/>
   		</form>
   </td>
</tr>
</c:forEach>
</table>
 <div style="width:100%;margin-bottom:80px">
	<a href="UploadText.jsp" style="text-decoration:none;float:right;border:1px solid black;border-radius:5px;background-color: lightgoldenyellow;">Upload Image</a>
</div>
</body>
</html>