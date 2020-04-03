package project1;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Balance extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void service(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			HttpSession session = request.getSession();
			int acc_no = (int)session.getAttribute("acc_no");
			Model m = new Model();
			m.setAcc_no(acc_no);
			boolean status = m.checkBalance();
			
			if(status == true)
			{
				int balance = m.getBalance();
				session.setAttribute("bal", balance);
				response.sendRedirect("/Project1/balancesuccess.jsp");
			}
			else
			{
				response.sendRedirect("/Project1/balancefail.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
