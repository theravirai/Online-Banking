<!DOCTYPE html>
<html>
	<head>
		<style>
			body
			{
				margin: 0;
				padding: 0;
				background: url(index.jpg);
				background-size: cover;
				font-family: sans-serif;
			}
			.loginBox
			{
				position: absolute;
				top: 50%;
				left: 50%;
				transform: translate(-50%,-50%);
				width: 350px;
				height: 420px;
				padding: 80px 40px;
				box-sizing: border-box;
				background: rgba(0,0,0,.5);
			}
			.user
			{
				width: 100px;
				height: 100px;
				border-radius: 50%;
				overflow: hidden;
				position: absolute;
				top: calc(-100px/2);
				left: calc(50% - 50px);
			}
			h2
			{
				margin: 0;
				padding: 0 0 20px;
				color: #efed40;
				text-align: center;
			}
			.loginBox p
			{
				margin: 0;
				padding: 0;
				font-weight: bold;
				color: #fff;
			}
			.loginBox input
			{
				width: 100%;
				margin-bottom: 20px;
			}
			.loginBox input[type="text"],
			.loginBox input[type="password"]
			{
				border: none;
				border-bottom: 1px solid #fff;
				background: transparent;
				outline: none;
				height: 40px;
				color: #fff;
				font-size: 16px;
			}
			::placeholder
			{
				color: rgba(255,255,255,.5);
			}
			.loginBox input[type="submit"]
			{
				border: none;
				outline: none;
				height: 40px;
				color: #fff;
				font-size: 16px;
				background: #ff267e;
				cursor: pointer;
				border-radius: 20px;
			}
			.loginBox input[type="submit"]:hover
			{
				background: #efed40;
				color: #262626;
			}
			.loginBox a
			{
				color: #fff;
				font-size: 14px;
				font-weight: bold;
				text-decoration: none;
			}
			
			.t{
			font-size: 19px;
			color: lime;
			font-weight: 800;
			}
		</style>
		<title>Global Bank</title>
		<link rel="stylesheet" href="style.css">
	</head>

	<body>
		<div class="loginBox">
			<img src="user.png" class="user">
			<h2>Log In Here</h2>
			<form action = "/Project1/Login">
				<table>
				<tr>
				<td><div class = "t">Customer Id:</div></td>
				<td><input type = "text" name = "cid" placeholder = "Enter Customer Id"/></td>
				</tr>
				<tr>
				<td><div class = "t">Password:</div></td>
				<td><input type = "password" name = "pwd" placeholder = "*******"/></td>
				</tr>
				<tr>
				<td><input type = "submit" value = "Sign In"/></td>
				</tr>
				</table>
				<a href="/Project1/forgotpwd.jsp">Forgot Password</a>
			</form>
		</div>
	</body>
</html>