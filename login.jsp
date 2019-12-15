<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>
<form action="./loginuser" method="post">
UserName<input type="text" name="uname"><br><br>
password<input type="text" name="upass"><br><br>
Enter Cap<input type="text" name="s"><br><br>

<input type="text" name="country" value=<%=session.getAttribute("s")%> disabled><br>

<input type="submit" value="LogIn">
<a href="forgot">Forgot Password</a> | <a href="register">register</a><br>
</form>
</body>
</html>