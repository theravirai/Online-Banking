<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Transfer Amount</title>
	
	<style>
			body {
			  margin: 0;
		      padding: 0;	
			  background-image: url('moneytransfer.jpg');
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
				color: white;
				font-size: 16px;
				background: blue;
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
			.box input[type="text"],
			.box input[type="text"]
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
			color: yellow;
			font-weight: 900;
			}
			h2
			{
				margin: 0;
				padding: 0 0 20px;
				color: #00ff00;
				text-align: center;
				font-size:30px;
			}
			
	</style>
           
	
	</head>
	<body>
		<div class="box">
			<h2>Transfer Your Amount</h2>
			<form action = "/Project1/Transfer">
				<table>
					<tr>
						<td><div class="t">To Account No:</div></td>
						<td><input type = "text" name = "t_acc_no"/></td>
					</tr>
					
					<tr>
						<td><div class="t">Amount:</div></td>
						<td><input type = "text" name = "amnt"/></td>
					</tr>
					
					<tr>
						<td><input type = "submit" value = "Transfer"/></td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
    



























<<!-- !DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action = "/Project1/Transfer">
<table>
<tr>
<td>To Account No</td>
<td> <input type = "text" name = "t_acc_no"/></td>
</tr>
<tr>
<td>Amount</td>
<td><input type = "text" name = "amnt"/></td>
</tr>
<tr>
<td><input type = "submit" value = "TRANSFER"/></td>
</tr>
</table>
</form>
</body>
</html> -->