
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/UploadArticleServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class UploadArticleServlet extends HttpServlet {
	
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/vrclass";
    private String dbUser = "root";
    private String dbPass = "root";
    private static final String sql = "INSERT INTO articles (article_body, article_title, page, link, preview) values (?, ?, ?, ?, ?)";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        String article_body = request.getParameter("article_body");
        String article_title = request.getParameter("article_title");
        String preview = request.getParameter("preview");
        String page = request.getParameter("page");
        String link = request.getParameter("link");
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(3, page);
            statement.setString(4, link);
            statement.setString(1, article_body);
            statement.setString(2, article_title);
            if (preview != null) {
            	statement.setInt(5, Integer.parseInt(preview));
            } else {
            	statement.setInt(5,0);
            }
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "Article uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
    }
}
