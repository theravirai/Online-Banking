package project1;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ResetPwd extends HttpServlet 
{
    public void session(HttpServletRequest request, HttpServletResponse response)
    {
    	try
    	{
    		HttpSession session = request.getSession();
    		String email = (String)session.getAttribute("email");
    		Model m = new Model();
    		m.setEmail(email);
    		String npw = request.getParameter("npw");
    		m.setPwd(npw);
    		boolean status = m.resetPassword();
    		if(status == true)
    		{
    			response.sendRedirect("/Project1/resetpwdsuccess.jsp");
    		}
    		else
    		{
    			response.sendRedirect("/Project1/resetpwdfail.jsp");
    		}
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }
}
