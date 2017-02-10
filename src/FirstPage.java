

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstPage
 */
@WebServlet("/FirstPage")
public class FirstPage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
        out.println("<!DOCTYPE html>");
        out.println("<html><head>");
        out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'><meta name='viewport' content='width=device-width, initial-scale=1'>");
        //CSS
        out.println("<link href=\"Slick/slick/slick.css\" rel=\"stylesheet\" type=\"text/css\"><link href=\"Slick/slick/slick-theme.css\" rel=\"stylesheet\" type=\"text/css\"><link href=\"FontAwesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"><link href=\"Bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"><link href=\"Copied.css\" rel=\"stylesheet\" type=\"text/css\">");
        //SCRIPTS
        out.println("<script type=\"text/javascript\" src=\"http://code.jquery.com/jquery-1.11.0.min.js\"></script><script type=\"text/javascript\" src=\"http://code.jquery.com/jquery-migrate-1.2.1.min.js\"></script><script src=\"OwlCarousel/docs/assets/vendors/jquery.min.js\"></script><script src=\"Bootstrap/js/bootstrap.min.js\"></script><script src=\"Slick/slick/slick.min.js\"></script>");
        out.println("<title>VRClass</title></head>");
        //QUERY BUTTON
        out.println("<body>" + '\n' + "<a href=\"#\">"+'\n' + "<div id=\"onlineservice\">" + '\n' + "<div class=\"query\">" + '\n' + "<i class=\"fa fa-question-circle\" aria-hidden=\"true\"></i>" + '\n' + "<p style=\"color: #f6f6f6\">在线咨询</p>" + '\n' + "</div>" + '\n' + "</div>" + '\n' + "</a>");
        //NAVBAR
        out.println("<div class=\"newpage\" id=\"page\">" + '\n' + "<div id=\"header\">" + '\n' + "<div class=\"nav-main\">" + '\n' + "<div class=\"fl logo\">" + '\n' + "<img src=\"Image/Navbar/kuqutop.png\">" + '\n' + "</div>" + '\n' + "<ul class=\"fl nav-main\">" + '\n' + "<li><a href=\"#\">首页</a></li>" + '\n' + "<li><a href=\"#\">关于酷趣ABC</a></li>" + '\n' + "<li><a href=\"#\">真实场景英语理念</a></li>" + '\n' + "<li><a href=\"#\">课程体系</a></li>" + '\n' + "<li><a href=\"#\">学习中心</a></li>" + '\n' + "<li><a href=\"#\">授权合作</a></li>" + '\n' + "</ul>" + '\n' + "</div>" + "</div>");
        //CAROUSEL
        out.println("<div class=\"fl carousel-main\" style=\"top: 0; width: 100%; overflow: hidden\">" + '\n' + "<div>" + '\n' + "<img width=\"100%\" src=\"VRClass/images/HAHAJ\">" + '\n' + "</div>" + '\n' + "<div>" + '\n' + "<img width=\"100%\" src=\"VRClass/images/yo\">" + '\n' + "</div>" + '\n' + "</div>");
        //RequestDispatcher rd = request.getRequestDispatcher("ImageServlet");
        //rd.forward(request,response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
