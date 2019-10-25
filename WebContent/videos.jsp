<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Videos Page</title>
</head>
<body>
	<%
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
	response.setHeader("Expires", "0"); //Proxies
	
	//prevent directly landing on tis page without login
	if(session.getAttribute("uname") == null)
		response.sendRedirect("login.jsp");
	%>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/e59fq2i2HL4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	<br><br>
	<form action="LogoutServlet">
		<input type="submit" value="Logout">
	</form>
</body>
<br><br>
<footer>
	<%@ include file="about.jsp" %>
</footer>
</html>
