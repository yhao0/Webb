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

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateTextServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class UpdateTextServlet extends HttpServlet {
	private static final int BUFFER_SIZE = 4096;
       
    private String dbURL = "jdbc:mysql://localhost:3306/vrclass";
    private String dbUser = "root";
    private String dbPass = "root";
    private static final String sql = "UPDATE text SET passage = ? WHERE id = ?";

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        String newPassage = request.getParameter("newPassage");
        System.out.println(newPassage);
        int rowID = Integer.parseInt(request.getParameter("id"));
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, newPassage);
            statement.setInt(2, rowID);
            System.out.println(sql);
            
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "Title Updated";
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
