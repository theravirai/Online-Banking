<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>




<!DOCTYPE html>
<html>
<head>
<title>Login Failed</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		body {
				  background-image: url('loginfail.jpg');
				  background-repeat: no-repeat;
				  background-attachment: fixed;
				  background-size: 100% 100%;
		}	
	
		.alert {
		  padding: 20px;
		  background-color: #f44336;
		  color: black;
		  position: absolute;
          left: 59%;
          top: 50%;
          transform: translateX(-50%) translateY(-50%);
          text-align: center;
          font-family: Pacifico, Calibri;
          font-size: 30px;
		}
		
		.closebtn {
		  margin-left: 15px;
		  color: black;
		  font-weight: bold;
		  float: right;
		  font-size: 22px;
		  line-height: 20px;
		  cursor: pointer;
		  transition: 0.3s;
		}

		.closebtn:hover {
		  color: black;
		}
		
		.btn {
			  background-color: DodgerBlue;
			  border: none;
			  color: white;
			  padding: 12px 16px;
			  font-size: 16px;
			  cursor: pointer;
			  
			  position: absolute;
			  left: 60%;
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
		<div class="alert">
		  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
		  <strong>Error!</strong> The UserName or Password is Incorrect.
		  </div>
		  <button class="btn"> <a href="/Project1/index.jsp"> <strong><i class="fa fa-home"></i> Try Again </strong> </a></button>
		

	</body>
</html>
























<!-- <!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Login Failed</title>
        	<style>
				body {
				  background-image: url('loginfail.jpg');
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
				  background-color: DodgerBlue;
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
		<h1 style="color:blue;font-size:90px;">The UserName or Password is Incorrect</h1>
		<button class="btn"> <a href="/Project1/index.jsp"> <strong> <i class="fa fa-home"></i> Try Again </strong> </a></button>
	</body>
</html> -->


































<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Login Failed</h3>
</body>
</html> -->