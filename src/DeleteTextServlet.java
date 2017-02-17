import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteTextServlet")
public class DeleteTextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private String dbURL = "jdbc:mysql://localhost:3306/vrclass";
    private String dbUser = "root";
    private String dbPass = "root";
    private static final String sql = "DELETE FROM text WHERE id=?";

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        int rowID = Integer.parseInt(request.getParameter("id"));
        //System.out.println(table + " " + rowID);
        
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
        
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            System.out.println(sql);
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, rowID);
            
            // sends the statement to the database server
            int row = statement.executeUpdate();
        } catch (Exception ex) {
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
            getServletContext().getRequestDispatcher("/Server/Server.jsp").forward(request, response);
        }	
	}
}