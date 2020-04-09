<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Process</title>
</head>
<body>
	<%@page import="database.Register"%>  
	<jsp:useBean id="obj" class="database.User"/>  
	  
	<jsp:setProperty property="*" name="obj"/>  
		<%  
	int status=Register.register(obj);  
	if(status>0)  
	out.print("You are successfully registered");  
	  %>  
</body>
</html>