<%
   // Create cookies for first and last names.      
   Cookie firstName = new Cookie("first_name","Max");
   Cookie lastName = new Cookie("last_name","Mustermann");

   // Set expiry date after 24 Hrs for both the cookies.
   firstName.setMaxAge(60*60*24); 
   lastName.setMaxAge(60*60*24); 

   // Add both the cookies in the response header.
   response.addCookie( firstName );
   response.addCookie( lastName );
%>
<html>
<head>
<title>Setting Cookies</title>
</head>
<body>
<center>
<h1>Set Cookies</h1>
</center>
<ul>
<li><p><b>First Name:</b>
  Max
</p></li>
<li><p><b>Last  Name:</b>
  Mustermann
</p></li>
</ul>
</body>
</html>
