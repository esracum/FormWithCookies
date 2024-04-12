<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieApp</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    form {
        width: 300px;
        margin: 0 auto;
    }
    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }
    button:hover {
        background-color: #45a049;
    }
    label {
        font-weight: bold;
    }
    .container {
        padding: 16px;
    }
    span.psw {
        float: right;
        padding-top: 16px;
    }
    .remember {
        display: inline-block;
        margin-top: 16px;
    }
</style>
</head>
<body>

  	
    <form action="cookiecontrol" method="post">
        <div class="container">
            <label for="uname"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>
            
            <button type="submit">Login</button>
            <label class="remember">
              <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
        </div>
    </form>
</body>
</html>

<%	
//eğer cookie kaydedilmisse direkt giriş yap
	Cookie[] cookies = null;    		
	cookies = request.getCookies();
	
	if (cookies != null ){
		if(cookies.length > 1){
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("welcomePages.jsp");
			requestDispatcher.forward(request, response); 
		}
	} 
%>
