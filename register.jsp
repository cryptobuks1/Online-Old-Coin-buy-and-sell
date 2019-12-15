<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:grey;
}
h1{
 color:blue;
}
</style>
</head>
<body>
<form action="./insertuser" method="post">
User Name :<input type="text" name="uname" required="required"><br><br>
Email Id :<input type="text" name="uemail"><br><br>
Mobile :<input type="text" name="umobile" required="required"><br><br>
Password :<input type="text" name="upass" required="required"><br><br>
ConfirmPassword :<input type="text" name="ucpass" required="required">
Date Of Birth <input type="date" name="udob"><br><br>
Gender :<select name="ugender">
<option value=""></option>
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Other">Other</option>

</select><br><br>

Security Question :<select name="usecurity">
<option value="Favorite Color">Favorite Color</option>
<option value="Favorite Game">Favorite Game</option>
<option value="First School">First School</option>
<option value="Favorite Movie">Favorite Movie</option>
<option value="Favorite Song">Favorite Song</option>
</select><br><br>
Answer :<input type="text" name="uanswer"><br><br>

City :<input type="text" name="ucity"><br><br>

<input type="submit" value="submit">
</form>
    
</body>
</html>