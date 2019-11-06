<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="abc.jsp">
<% for(int i=1 ; i<=100;i++){ %>
	<%=i %> <input type="checkbox" name="c1" value="<%=i*i %>">
	
<%  } %>
	<button type="submit">aaa</button>
</form>
</body>
</html>