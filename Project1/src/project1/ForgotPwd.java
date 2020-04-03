package project1;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ForgotPwd extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public void service(HttpServletRequest request, HttpServletResponse response)
    {
    	try
    	{
    		String email = request.getParameter("email");
    		HttpSession session1 = request.getSession(true);
    		session1.setAttribute("email",email);
    		
    		String fromEmail="nr860411@gmail.com"; //sender's mail id.
    		String pwd="8604119037";		//sender's mail pwd.
    		String toEmail=email;  //reciever's mail id.
    		
    		String subject="DO NOT REPLY: Mail from Java Program"; // mail subject line
    		String msg="http://localhost:9090/Project1/resetpwd.jsp"; //mail body
    		
    		//Creating Session Object
    		Properties prop = new Properties();
    		prop.put("mail.smtp.host", "smtp.gmail.com");
    		prop.put("mail.smtp.port", 587);
    		prop.put("mail.smtp.auth", "true");
    		prop.put("mail.smtp.starttls.enable", "true");

    		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator()
    		{
    			protected PasswordAuthentication getPasswordAuthentication()
    			{
    				//sender's mail id and pwd is encapsulated inside "SendersCredentials.java"
    				return new PasswordAuthentication(fromEmail, pwd);
    			}
    		});

    		
    		//Composing the Mail
    		MimeMessage mesg = new MimeMessage(session);
    		mesg.setFrom(new InternetAddress(fromEmail));
    		mesg.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));
    		mesg.setSubject(subject);  
    		mesg.setText(msg);  
    		
    		//Sending the Mail
    		Transport.send(mesg);
    		System.out.println("Mail Sent!!");
    		response.sendRedirect("/Project1/forgotpwdsuccess.jsp");
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }
}
