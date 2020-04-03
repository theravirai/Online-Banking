package p4;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Validation extends HttpServlet 
{
	public void service(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			String usn = request.getParameter("USN");//Taking USN from HTML file
			if(usn.length()!=10)
			{
				response.sendRedirect("/Servlet4/error.html");
			} 
			else
			{
				request.getServletContext().getRequestDispatcher("/GetResult").forward(request, response);
			}
		}
		catch(Exception e)
		{
			System.out.println("Problem in Service method");
		}
	}
}
