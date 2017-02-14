<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
</head>
<body>
    <div style="margin:auto">
        <h1>File Upload to Database Demo</h1>
        <form method="post" action="UpdateServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Portrait Photo: </td>
                    <td>
                    	<input type="file" name="newPhoto" size="50" required/>
                    </td>
                </tr>
                <tr>
                	<td>Name of Photo: </td>
                	<td><input type="text" name="newFileName" size="50" required/></td>
                </tr>
                <tr>
                    <td colspan="2">
                    	<input type="hidden" name="table" value="${param.table}"/>
                    	<input type="hidden" name="id" value="${param.picID}"/>
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>