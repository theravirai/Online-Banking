<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 
<!DOCTYPE html>
<html>
	<title>Logout</title>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<style>
			.alert {
		      padding: 20px;
			  background-color: red;
			  color: white;
			  font-size: 30px;
			}
			.alert{
				position: absolute;
				left: 40%;
			    top: 40%;
			    transform: translate(-50%,-50%);
		
			}
			body{
			  margin: 0;
		      padding: 0;
			  background-image: url('logout.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: 100% 100%;
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
			  top: 140%;
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
		 You have been <strong>Successfully!</strong> <em>"Logged Out"</em>  
		 
		 <!--  --><button class="btn"><i class="fa fa-home"></i> Home</button>
		  <button class="btn"> <a href="/Project1/index.jsp"> <strong><i class="fa fa-home"></i>Again DashBoard</strong> </a></button>
	</div>
	</body>
</html>