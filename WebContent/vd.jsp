<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=request.getAttribute("gt1") %>
<hr>
<%=request.getAttribute("gt2") %>
<hr>
<%	String[] ds=(String[])request.getAttribute("dsht");
	for(String ht : ds){
		out.print(ht+"<br>");
	}
%>
</body>
</html>