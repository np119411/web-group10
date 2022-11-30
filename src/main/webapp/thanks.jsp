<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Information's Mail</title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
	<h1>Thanks for joining our email list</h1>
	<p>Here is the information that you entered:</p>
	<label>Email:</label>
	<span>${user.email}</span>
	<br>
	<label>First Name:</label>
	<span>${user.firstName}</span>
	<br>
	<label>Last Name:</label>
	<span>${user.lastName}</span>
	<br>
	<p>If you want to enter another email, please click on the button
		below, manythank!</p>

	<form action="<%=request.getContextPath()%>/emailList" method="get">
		<input type="hidden" name="action" value="join"> <input
			type="submit" value="Return">
	</form>
</body>
</html>
