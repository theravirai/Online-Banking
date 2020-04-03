<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
</html>