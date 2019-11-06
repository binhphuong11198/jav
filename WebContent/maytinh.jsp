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
	String a = request.getParameter("txtso1");
	String b = request.getParameter("txtso2");
	String nut = request.getParameter("but1");
	long a1, b1, kq=0;
	if(a!=null && b!= null){
		a1= Long.parseLong(a);
		b1= Long.parseLong(b);
		if(nut.equals("+")) kq=a1+b1;
		else if(nut.equals("-")) kq=a1-b1;
			 else if(nut.equals("*")) kq=a1*b1;
			 	  else if(b1==0)
			 		  out.print("<script>alert('bo tay');</script>");
			 	  else kq =a1/b1;
	}
	
	%>	
	<form method='post' action="ktmaytinh?kt=1">
	So 1: 
	<input type='number' name='txtso1' value='<%=(a==null?"":a)%>'> <br>
	So 2: 
	<input type='number' name='txtso2' value='<%=(b==null?"":b)%>'> <br>
	Ket qua: 
	<input type='number' name='txtkq' value='<%=kq%>'> <br>
	<input type='submit' name='but1' value='+'>
	<input type='submit' name='but1' value='-'> 
	<input type='submit' name='but1' value='*'> 
	<input type='submit' name='but1' value='/'> 
	</form>
</body>
</html>