<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help & Support</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	body{
			  margin: 0;
		      padding: 0;	
			  background-image: url('helpandsupport.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: 100% 100%;

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
				  top: 90%;
				  transform: translate(-50%,-50%);
		}
				
	/* Darker background on mouse-over */
	.btn:hover {
	  background-color: Red;
	}       



</style>

</head>
<body>
	<button class="btn"> <a href="/Project1/home.jsp"> <strong><i class="fa fa-home"></i> HOME</strong> </a></button>
</body>
</html>