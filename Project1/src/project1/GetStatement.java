package project1;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GetStatement extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    
	public void service(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			HttpSession session = request.getSession();
			int acc_no = (int)session.getAttribute("acc_no");
			Model m = new Model();
			m.setAcc_no(acc_no);
			ArrayList al = m.getStatement();
			if(al.isEmpty()==true)
			{
				response.sendRedirect("/Project1/getstatementfail.jsp");
			}
			else
			{
				session.setAttribute("al", al);
				response.sendRedirect("/Project1/getstatementsuccess.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
