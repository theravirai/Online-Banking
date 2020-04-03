package project1;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Transfer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public void service(HttpServletRequest request, HttpServletResponse response)
    {
    	try
    	{
    		HttpSession session = request.getSession();
    		int acc_no = (int)session.getAttribute("acc_no");
    		String a = request.getParameter("t_acc_no");
    		int t_acc_no = Integer.parseInt(a);
    		String b = request.getParameter("amnt");
    		int amnt = Integer.parseInt(b);
    		Model m = new Model();
    		m.setAcc_no(acc_no);
    		m.setBalance(amnt);
    		
    		boolean status = m.transfer(t_acc_no);
    		if(status == true)
    		{
    			response.sendRedirect("/Project1/transfersuccess.jsp");
    		}
    		else
    		{
    			response.sendRedirect("/Project1/transferfail.jsp");
    		}
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }
}
