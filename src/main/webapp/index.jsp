<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Email's Information</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<h1>Join our mail list</h1>
	<p>Enter your information below!</p>
	<form action="<%=request.getContextPath()%>/emailList" method="post">
		<input type="hidden" name="action" value="add"> <label>Email:
		</label> <input type="email" name="email" required><br> <label>First
			Name: </label> <input type="text" name="firstName" required><br>

		<label>Last Name: </label> <input type="text" name="lastName" required><br>

		<label>&nbsp;</label> <input type="submit" value="Join Now"
			id="submit"><br>
	</form>
</body>
</html>