<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Title Upload to Database Demo</title>
</head>
<body>
    <div style="margin:auto">
        <h1>Title Upload</h1>
        <form method="post" action="../UploadTextServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                	<td>Text: </td>
                	<td><input type="text" name="passage" size="50" required/></td>
                </tr>
                <tr>
                	<td>Section: </td>
                	<td><input type="text" name="section" size="50" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                    	<input type="hidden" value="FirstPage" name="page">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>