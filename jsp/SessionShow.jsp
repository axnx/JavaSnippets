<html>
<head>
<title>Setting session</title>
</head>
<body>
<center>
<h1>Set session</h1>
</center>
<ul>
<li><p><b>First Name:</b>
  <%=session.getAttribute("sessFirstname") %>
</p></li>
<li><p><b>Last  Name:</b>
   <%=session.getAttribute("sessLastname") %>
</p></li>
</ul>
</body>
</html>