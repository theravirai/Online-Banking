package Servlet;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello extends HttpServlet 
{
	public void service(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			response.sendRedirect("/Servlet1/goodevening.html");
		}
		catch(IOException e)
		{
			System.out.println("Not Respond");
		}
	}
}
