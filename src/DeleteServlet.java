import java.io.File;
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
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private String dbURL = "jdbc:mysql://localhost:3306/vrclass";
    private String dbUser = "root";
    private String dbPass = "root";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        String table = request.getParameter("table");
        int rowID = Integer.parseInt(request.getParameter("picID"));
        String path = request.getParameter("path");
        //System.out.println(table + " " + rowID);
        
        
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
        
        try {
        	
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = String.format("DELETE FROM %s WHERE id=?", table);
            PreparedStatement statement = conn.prepareStatement(sql);
            //statement.setString(1, table);
            statement.setInt(1, rowID);
             
            /*
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(3, inputStream);
            }
 
 			*/
            // sends the statement to the database server
            int row = statement.executeUpdate();
            /*
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
            */
            File file = new File(path);
            
            if (file.delete()) {
            	System.out.println("FILE DELETED");
            } else {
            	System.out.println("FILE UNABLE TO DELETE");
            }
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
            getServletContext().getRequestDispatcher("/ServerMain.html").forward(request, response);
        }	
	}
}