<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Change Password</title>
	
	<style>
			body {
			  margin: 0;
		      padding: 0;	
			  background-image: url('changePassword2.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: 100% 100%;
			}
			
			 .box{
				position: absolute;
				top: 50%;
				left: 50%;
				transform: translate(-50%,-50%);
				width: 350px;
				height: 350px;
				padding: 80px 10px;
				box-sizing: border-box;
				background: rgba(0,0,0,.5);
			}
			
			.box input[type="submit"]{
				border: none;
				outline: none;
				height: 40px;
				color: black;
				font-size: 16px;
				background: aqua;
				cursor: pointer;
				border-radius: 20px;
			}
			.box input[type="submit"]:hover
			{
				background: #efed40;
				color: #262626;
			}
			/* .box input
			{
				width: 100%;
				margin-bottom: 20px;
			} */
			.box input[type="password"],
			.box input[type="password"]
			{
				border: auto;
				/* border-bottom: 1px solid #fff; */
				background: transparent;
				outline: none;
				height: 40px;
				color: #fff;
				font-size: 16px;
			}
			.t{
			font-size: 22px;
			color: white;
			font-weight: 1000;
			}
			h2
			{
				margin: 0;
				/* padding: 0 0 20px; */
				color: red;
				text-align: center;
				font-size:30px;
				font-weight: 1100;
			}
			
	</style>
           
	
	</head>
	<body>
		<div class="box">
			<h2>Password <strong>Mismatched</strong></h2>
			<h2>Please try <strong>Again!</strong></h2>
			<form action = "/Project1/ChangePassword">
				<table>
					<tr>
						<td><div class="t"> New Password:</div></td>
						<td><input type = "password" name = "pw"/></td>
					</tr>
					
					<tr>
						<td><div class="t"> Confirm Password:</div></td>
						<td><input type = "password" name = "cpw"/></td>
					</tr>
					
					<tr>
						<td><input type = "submit" value = "Save Changes"/></td>
					</tr>
				</table>
			</form>
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
<h3>Password Mismatched. Please Try Again</h3>
<form action = "/Project1/ChangePassword">
<table>
<tr>
<td>New Password</td>
<td> <input type = "password" name = "pw"/></td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input type = "password" name = "cpw"></td>
</tr>
<tr>
<td><input type = "submit"></td>
</tr>
</table>
</form>
</body>
</html> -->