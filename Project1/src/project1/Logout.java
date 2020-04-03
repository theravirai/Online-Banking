package project1;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public void service(HttpServletRequest request, HttpServletResponse response)			
    {
    	try
    	{
    		HttpSession session = request.getSession();
    		session.invalidate();
    		response.sendRedirect("/Project1/index.jsp");
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }
}
