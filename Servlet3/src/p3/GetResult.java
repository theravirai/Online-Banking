package p3;

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

import oracle.jdbc.driver.OracleDriver;

public class GetResult extends HttpServlet 
{
	String url = "jdbc:oracle:thin:@//localhost:1521/XE";
	String un = "SYSTEM";
	String pw = "SYSTEM";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet res = null;
	
	String a = null;
	String b = null;
	int c = 0;
	int d = 0;
	int e = 0;
	
	public void init()
	{
		try
		{
			DriverManager.registerDriver(new OracleDriver());
			System.out.println("Driver loaded Successfully");
			
			con = DriverManager.getConnection(url, un, pw);
			System.out.println("Conncetion is established");
		}
		catch(SQLException e)
		{
			System.out.println("Problem in init method");
		}
	}
	public void service(HttpServletRequest request, HttpServletResponse response)
	{
		String usn = request.getParameter("USN");//Taking USN from HTML file
		if(usn.length()!=10)
		{
			try {
				response.sendRedirect("/Servlet3/error.html");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			try
			{
				String s = "SELECT * FROM STUDENT1 WHERE USN = ?";
				pstmt =  con.prepareStatement(s);
				pstmt.setString(1, usn);
				res = pstmt.executeQuery();
				while(res.next())
				{
					a = res.getString(1);
					b = res.getString(2);
					c = res.getInt(3);
					d = res.getInt(4);
					e = res.getInt(5);
				}
				PrintWriter pw = response.getWriter();
				pw.println(a+" "+b+" "+c+" "+d+" "+e);
			}
			catch(Exception e)
			{
				System.out.println("Problem in Service method");
			}
		}
	}
	public void destroy()
	{
		try
		{
			con.close();
			pstmt.close();
			res.close();
		}
		catch(SQLException e)
		{
			System.out.println("Problem occured in destroy method");
		}
	}
}
