<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = (String)session.getAttribute("name");
String usn = (String)session.getAttribute("usn");
int m1 = (int)session.getAttribute("m1");
int m2 = (int)session.getAttribute("m2");
int m3 = (int)session.getAttribute("m3");
out.println("Your details are");
out.println(name+" "+usn+" "+m1+" "+m2+" "+m3);
%>
</body>
</html>