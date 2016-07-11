<%
   Cookie cookie = new Cookie("first_name", "");
   cookie.setMaxAge(0);
   cookie.setValue("");
   response.addCookie(cookie);
   
   cookie = new Cookie("last_name", "");
   cookie.setMaxAge(0);
   cookie.setValue("");
   response.addCookie(cookie);
%>
<html>
<head>
<title>Delete Cookies</title>
</head>
<body>
<center>
<h1>delete Cookies</h1>
</center>
</body>
</html>