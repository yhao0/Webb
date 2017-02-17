<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="server.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
</head>
<body>
    <div style="margin:auto">
        <h1>Article Upload</h1>
        <form method="post" action="../UploadArticleServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                	<td>Title: </td>
                	<td><input type="text" name="article_title" size="50" required/></td>
                </tr>
                <tr>
                	<td>Link: </td>
                	<td><input type="text" name="link" size="50"/></td>
                </tr>
                <tr>
                	<td>Body: </td>
                	<td><textarea class="common" name="article_body" size="50" required/></textarea></td>
                </tr>
                <tr>
                	<td>Preview: </td>
                	<td><input type="checkbox" name="preview" value="1"></td>
                </tr>
                <tr>
                    <td colspan="2">
                    	<input type="hidden" value="${param.page}" name="page">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>