<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<title>Mission & Vision</title>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<style>
			.alert {
		      padding: 20px;
			  background-color: #4CAF50;
			  color: white;
			  font-size: 30px;
			}
			.alert{
				position: absolute;
				left: 53%;
			    top: 50%;
			    transform: translate(-50%,-50%);
		
			}
			body{
			  margin: 0;
		      padding: 0;
			  background-image: url('missionvision.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: 100% 100%;
			}
			
			.btn {
			  background-color: aqua;
			  border: none;
			  color: white;
			  padding: 12px 16px;
			  font-size: 16px;
			  cursor: pointer;
			  
			  position: absolute;
			  left: 50%;
			  top: 108%;
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
			<h2 style="color:black;font-size:30px;text-align: center;"> Our Mission and Vision </h2>
			<p>To our clients, communities, and team of employees, we say:
			"Like smart friends, we care deeply about your well-being and will use our hearts and our heads to help you get where you want to be."
			</p>
			<p>We will be a Community Bank well known as the most caring, trusted, and respected local source of financial guidance and solutions in the communities we serve. By doing so, we will continue to strengthen the reputation of community banks and bankers.
			</p>
		 
		 <!--  --><button class="btn"><i class="fa fa-home"></i> Home</button>
		  <button class="btn"> <a href="/Project1/home.jsp"> <strong><i class="fa fa-home"></i> HOME</strong> </a></button>
	</div>
	</body>
</html>
