<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
	<title>Success!</title>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<style>
			.alert {
		      padding: 30px;
			  background-color: violet;
			  color: white;
			  font-size: 30px;
			}
			.alert{
				position: absolute;
				left: 50%;
			    top: 50%;
			    transform: translate(-50%,-50%);
		
			}
			body{
			  margin: 0;
		      padding: 0;
			  background-image: url('transfersuccess.jpg');
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
		 Your <em>"Amount"</em> has been transferred <strong>Successfully!</strong> 
		 
		 <!--  --><button class="btn"><i class="fa fa-home"></i> Home</button>
		  <button class="btn"> <a href="/Project1/home.jsp"> <strong><i class="fa fa-home"></i> HOME</strong> </a></button>
	</div>
	</body>
</html>























<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Transfer has been done Successfully</h3>
</body>
</html> -->