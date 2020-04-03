package project1;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ChangePassword extends HttpServlet 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6328219862895321463L;

	public void service(HttpServletRequest request, HttpServletResponse response)
	{
		
		try
		{
			HttpSession session = request.getSession();
			int acc_no = (int)session.getAttribute("acc_no");
			Model m = new Model();
			m.setAcc_no(acc_no);
			String pw = request.getParameter("pw");
			m.setPwd(pw);
			
			boolean status = m.changePassword();
			if(status == true)
			{
				response.sendRedirect("/Project1/pwdsuccess.jsp");
			}
			else
			{
				response.sendRedirect("/Project1/pwdfail.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
