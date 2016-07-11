<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Client Information</title>
</head>
<body>
<div class="container">
<%
	//http://www.user-agents.org/	
	String userAgent = request.getHeader("User-Agent");
	Enumeration e = request.getHeaderNames();
	String header;
	String k,v;
	LinkedHashMap <String,String> hm = new LinkedHashMap<>();
	while(e.hasMoreElements()){
		k = (String)e.nextElement();
		v =  request.getHeader(k);
		System.out.println(k + ":" +v);
		hm.put(k, v);
	}
	// put the hashmap as pageContext attribute
	pageContext.setAttribute("map", hm);
	
	response.getHeaderNames();
	
%>

<h3>Client Information</h3>
<br>
<ul>
Hashmap-size: <%= hm.size() %> <br>
Hashmap-size: <c:out value="${map.size()}"></c:out>
<table class="table table-bordered">
	<c:forEach var="entry" items="${pageScope.map}">
		<tr><td><c:out value="${entry.key}"/></td> <td><c:out value="${entry.value}"/></td></tr>
	</c:forEach>
</table>
</div>
</body>
</html>
