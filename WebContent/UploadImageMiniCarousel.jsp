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
        <form method="post" action="UploadImageServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Image: </td>
                    <td><input type="file" name="photo" size="50"/></td>
                </tr>
                <tr>
                	<td>Name of Photo: </td>
                	<td><input type="text" name="fileName" size="50" required/></td>
                </tr>
                <tr>
                    <td colspan="2">
                    	<input type="hidden" value="FirstPage" name="page">
                    	<input type="hidden" value="minicarousel" name="section">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>