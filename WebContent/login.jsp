<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

	<form action="LoginServlet" method="post">
	<br>
		Enter username: <input type="text" name="uname">
		<br><br>
		Enter password: <input type="password" name="pass">
		<br><br>
		<input type="submit" value="Login">
	</form>
</body>
<br><br>
<footer>
	<%@ include file="about.jsp" %>
</footer>
</html>