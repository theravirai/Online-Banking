<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Home Loan</title>
        	<style>
				body {
				  background-image: url('homeloan.jpg');
				  background-repeat: no-repeat;
				  background-attachment: fixed;
				  background-size: 100% 100%;
				}
			</style>
			
       		 <style type="text/css">
            
	            * {
	                margin: 0;
	                padding: 0;
	            }
	            div.background{
	                position: absolute;
	                left: 50%;
	                top: 85%;
	                transform: translateX(-50%) translateY(-50%);
	                text-align: center;
	                font-family: Pacifico, Calibri;
	                font-size: 3em;
	                background: white;
	                opacity: 0.8;
					/* transition: opacity 0.6s; */
	            }
	           
	            
	            .btn {
				  background-color: Aqua;
				  border: none;
				  color: white;
				  padding: 12px 16px;
				  font-size: 16px;
				  cursor: pointer;
				  
				  position: absolute;
				  left: 50%;
				  top: 96.8%;
				  transform: translate(-50%,-50%);
				}
				
				/* Darker background on mouse-over */
				.btn:hover {
				  background-color: Red;
				}       
       		 </style>
    </head>
    
    <body>
    	<div class = "background">
		<h1 style="color: red; font-size:50px; font-family: Impact, Charcoal, sans-serif; "> You have successfully applied for Home Loan at 9.5% interest</h1>
		</div>
		<button class="btn"> <a href="/Project1/home.jsp"> <strong><i class="fa fa-home"></i> HOME</strong> </a></button>
		
	</body>
</html>








































<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>You have successfully applied for Home Loan at 9.5% interest</h1>
</body>
</html> -->