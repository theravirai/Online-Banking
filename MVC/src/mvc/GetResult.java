package mvc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.jdbc.driver.OracleDriver;

public class GetResult extends HttpServlet 
{
	public void service(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			String temp = request.getParameter("USN");//Taking USN from HTML file
			Model m = new Model();
			m.setUsn(temp);
			m.getResult();
		
			String name = m.getName();
			String usn = m.getUsn();
			int m1 = m.getMarks1();
			int m2 = m.getMarks2();
			int m3 = m.getMarks3();
			
			HttpSession session = request.getSession(true);
			session.setAttribute("name",name);
			session.setAttribute("usn",usn);
			session.setAttribute("m1", m1);
			session.setAttribute("m2", m2);
			session.setAttribute("m3", m3);
			response.sendRedirect("/MVC/disp.jsp");
		}
		catch(Exception e)
		{
			System.out.println("Problem in Service method");
		}
	}
}
