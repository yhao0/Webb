

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;

/**
 * Servlet implementation class ImageServlet
 */
@WebServlet("/images/*")
public class ImageServlet extends HttpServlet {
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/vrclass";
    private String dbUser = "root";
    private String dbPass = "root";
    // content=blob, name=varchar(255) UNIQUE.
    private static final String SQL_FIND = "SELECT image FROM images WHERE file_name = ?";

   // @Resource(name="jdbc/vrclass") // For Tomcat, define as <Resource> in context.xml and declare as <resource-ref> in web.xml.
  

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String imageName = request.getPathInfo().substring(1); // Returns "foo.png".
        Connection conn = null;
        try {
        	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        	conn = DriverManager.getConnection(dbURL, dbUser, dbPass); 
        	PreparedStatement statement = conn.prepareStatement(SQL_FIND);
        	statement.setString(1, imageName);
        	System.out.println(statement);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    byte[] content = resultSet.getBytes("image");
                    response.setContentType(getServletContext().getMimeType(imageName));
                    response.setContentLength(content.length);
                    response.getOutputStream().write(content);
                } else {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404.
                }
            }
        } catch (SQLException e) {
            throw new ServletException("Something failed at SQL/DB level.", e);
        }
    }
}
