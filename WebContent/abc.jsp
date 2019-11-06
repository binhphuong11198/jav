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
	String[] t = request.getParameterValues("c1");
	for(String st:t ){
		out.print(st+"<br>");
	}
%>
</body>
</html>