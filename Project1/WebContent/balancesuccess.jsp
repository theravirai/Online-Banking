<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Balance Info</title>
        	<style>
				body {
				  background-image: url('balanceInfo.jpg');
				  background-repeat: no-repeat;
				  background-attachment: fixed;
				  background-size: 100% 100%;
				}
				
				h1 {
				  background-color: #e6ffe6;
				}
			</style>
           
        
        
       		 <style type="text/css">
            
	            * {
	                margin: 0;
	                padding: 0;
	            }
	           	/* body {
	                background-color: #e0e0e0;
	            }  */
	            h1 {
	                position: absolute;
	                left: 50%;
	                top: 50%;
	                transform: translateX(-50%) translateY(-50%);
	                text-align: center;
	                font-family: Pacifico, Calibri;
	                font-size: 3em;
	            }
	            
	            .btn {
				  background-color: lime;
				  border: none;
				  color: white;
				  padding: 12px 16px;
				  font-size: 16px;
				  cursor: pointer;
				  
				  position: absolute;
				  left: 50%;
				  top: 70%;
				  transform: translate(-50%,-50%);
				}
				
				/* Darker background on mouse-over */
				.btn:hover {
				  background-color: Red;
				}       
       		 </style>
    </head>
    
    <body>
		<h1 style="color:blue;font-size:90px;"> <%
		int balance = (int)session.getAttribute("bal");
		out.println("Your Balance Is: &#8364 " +balance);
		%>
		</h1>
		<button class="btn"> <a href="/Project1/home.jsp"> <strong><i class="fa fa-home"></i> HOME</strong> </a></button>
	</body>
</html>











<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int balance = (int)session.getAttribute("bal");
out.println("<center>Your balance is:</center>" +balance);
%>
</body>
</html> --%>