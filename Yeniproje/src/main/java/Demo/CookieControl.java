package Demo;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class CookieControl
 */
@WebServlet("/cookiecontrol")
public class CookieControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CookieControl() {
        super();
       
    }	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("welcomePages.jsp");
		
		if(request.getParameter("remember") == null ){
			
	        requestDispatcher.forward(request, response); 
		}
		else{ 
				Cookie userCookie = new Cookie(request.getParameter("uname") , request.getParameter("psw"));
				userCookie.setMaxAge(60*60*10);
				response.addCookie(userCookie);
			    
						
				
			    requestDispatcher.forward(request, response);	
			   	    
		}
	}
}












