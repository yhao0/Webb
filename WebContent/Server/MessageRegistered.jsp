<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
</head>
<body>
	<div style="width: 100%;left:0;text-align:center">
		<div style="margin: auto">
			<h3><%=request.getAttribute("Message")%></h3>
		</div>
		<div style="margin: auto">
			<a href="Register.html">Back</a>
		</div>
	</div>
</body>
</html>