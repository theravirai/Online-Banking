package project1;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Login extends HttpServlet 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6043736123257724387L;

	public void service(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			String cid = request.getParameter("cid");
			String pwd = request.getParameter("pwd");
			Model m = new Model();
			m.setCust_id(cid);
			m.setPwd(pwd);
			boolean status = m.login();
			if(status == true)
			{
				int acc_no = m.getAcc_no();
				HttpSession session = request.getSession(true);
				session.setAttribute("acc_no", acc_no);
				response.sendRedirect("/Project1/home.jsp");
			}
			else
			{
				response.sendRedirect("/Project1/loginfail.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
