<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
	<h1>Hosgeldiniz</h1>
	<p><% 
		
		Cookie[] cookies = null;
		cookies = request.getCookies();
		
		// cookie kontrolü
		if( cookies != null ){ 	 
			
			if(cookies.length > 1){
			
				// isim ve şifre bilgisini alma
				String name = cookies[1].getName();
				String password = cookies[1].getValue();
				
				out.println("<p>Merhaba <strong>" +  name + "</strong> ---- cerez bilgisi kaydedildi </p>"); 
				out.println("username = " + name + "\npassword = " + password );
				
			}
			else{
			
				out.println("<p>Merhaba <i>" + request.getParameter("uname") + "</i> ---- [cerez kaydedilmedi ] </p>");
			}
		}else{
			
			out.println("Cerez bulunamadı");		
		}	
		%></p>
</body>
</html>
