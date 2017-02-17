<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Text</title>
</head>
<body>
    <div style="margin:auto">
        <h1>Update Text</h1>
        <form method="post" action="../UpdateTextServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                	<td>Text: </td>
                	<td><input type="text" name="newPassage" size="50" required/></td>
                </tr>
                <tr>
                    <td colspan="2">
                    	<input type="hidden" name="section" value="${param.section}"/>
                    	<input type="hidden" name="id" value="${param.id}"/>
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>