<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
	<title>Apply Loan</title>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<style>
			/* .alert {
			  padding: 20px;
			  opacity: 1;
			  transition: opacity 0.6s;
			  margin-bottom: 100px;
			 
			} */
			
			.alert.success {
				padding: 25px;
				opacity: 1;
				transition: opacity 0.6s;
				margin-bottom: 15px;
				position: absolute;
				left: 70%;
			    top: 40%;
			    transform: translate(-50%,-50%);
				background-color: #4CAF50;
				font-size: 30px
			}
			.alert.info {
				padding: 40px;
			    opacity: 1;
		        transition: opacity 0.6s;
			    margin-bottom: 15px;
			    
				background-color: #2196F3;
				position: absolute;
				left: 70%;
			    top: 30%;
			    transform: translate(-50%,-50%);
			    font-size: 30px
			 }
			.alert.warning {
				padding: 30px;
			    opacity: 1;
		        transition: opacity 0.6s;
			    margin-bottom: 15px;
			
				background-color: #ff9800;
				position: absolute;
				left: 70%;
			    top: 20%;
			    transform: translate(-50%,-50%);
			    font-size: 30px
			}
			
			
			body{
			  margin: 0;
		      padding: 0;
			  background-image: url('loan.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: cover;
			}
			
			.btn {
			  background-color: lime;
			  border: none;
			  color: white;
			  padding: 12px 16px;
			  font-size: 16px;
			  cursor: pointer;
			  
			  position: absolute;
			  left: 70%;
			  top: 60%;
			  transform: translate(-50%,-50%);
			}
			
			/* Darker background on mouse-over */
			.btn:hover {
			  background-color: Red;
			  
			  
			  p {
				  display: block;
				  margin-top: 1em;
				  margin-bottom: 1em;
				  margin-left: 0;
				  margin-right: 0;
				}
			
			
		</style>
	</head>

	<body>
		<div class = "alert">
			<div class="alert success"> 
	  		<a href="/Project1/homeloan.jsp">Apply <strong>Home</strong> Loan</a>
			</div>
	
			<div class="alert info"> 
			  <a href="/Project1/carloan.jsp">Apply <strong>Car</strong> Loan</a>
			</div>
			
			<div class="alert warning"> 
			  <a href="/Project1/education.jsp">Apply <strong>Education</strong> Loan</a>
			</div>
		</div>
		<button class="btn"> <a href="/Project1/home.jsp"> <strong><i class="fa fa-home"></i> HOME</strong> </a></button>
		
		<h1>Points to Remember While Taking a Personal<strong> LOAN:</strong></h1>
		<img src="loanpoints.jpg" style="width:725px;height:220px;">
	
	
	
	<!-- <div class="alert">
		 <a href="/Project1/homeloan.jsp">Apply Home Loan</a><br>
		 <a href="/Project1/carloan.jsp">Apply Car Loan</a><br>
		 <a href="/Project1/education.jsp">Apply Education Loan</a><br>
		 
		 
		 
		 <button class="btn"><i class="fa fa-home"></i> Home</button>
		  <button class="btn"> <a href="/Project1/home.jsp"> <strong><i class="fa fa-home"></i> HOME</strong> </a></button>
	</div> -->
	</body>
</html>




















<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="/Project1/homeloan.jsp">Apply Home Loan</a><br>
<a href="/Project1/carloan.jsp">Apply Car Loan</a><br>
<a href="/Project1/education.jsp">Apply Education Loan</a><br>
</body>
</html> -->