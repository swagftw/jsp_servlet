<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="process.jsp">  
	<input type="text" name="uname" value="Name..." onclick="this.value=''"/><br/>  
	<input type="text" name="urollno"  value="Roll No..." onclick="this.value=''"/><br/>
	<input type="text" name="ubranch" value="Branch..." onclick="this.value=''"/><br/>    
	<input type="Password" name="upass"  value="Password..." onclick="this.value=''"/><br/>  
	<input type="submit" value="register"/>  
	</form>
</body>
</html>