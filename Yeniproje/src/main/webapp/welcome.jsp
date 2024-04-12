<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
         
   Cookie username = new Cookie("username",request.getParameter("uname"));
   Cookie password = new Cookie("password",request.getParameter("psw"));

   
   username.setMaxAge(60*60*10); 
   password.setMaxAge(60*60*10); 

   
   response.addCookie( username );
   response.addCookie( password );   
   
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookie</title>
</head>
<body>

	<h1>Selam</h1>
	<p>Welcome sayfasindasin</p>

</body>
</html>