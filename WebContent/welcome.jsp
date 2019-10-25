<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
	
	<%
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
	response.setHeader("Expires", "0"); //Proxies
	
	if(session.getAttribute("uname") == null)
		response.sendRedirect("login.jsp");
	%>
	Welcome <%= session.getAttribute("uname")%>
	<br>
	<br>
	<a href="videos.jsp">Videos</a>
	<br>
	<br>
	<form action="LogoutServlet">
	
		<input type="submit" value="Logout">
	</form>
</body>
<br><br>
<footer>
	<%@ include file="about.jsp" %>
</footer>
</html>