<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<form action="viewproduct" method="post">
<input type="hidden" name="uid" value=<%=session.getAttribute("id") %>>
<input type="submit" value="my products">
</form><br><br>
<form action="addproducts" method="post">
<input type="hidden" name="uid" value=<%=session.getAttribute("id") %>>
<input type="submit" value="add products">
</form><br><br>

<form action="viewuser" method="post">
<input type="hidden" name="uid" value=<%=session.getAttribute("id") %>>
<input type="submit" value="My Profile">
</form><br><br>

<form action="./viewallproduct" method="post">
<input type="hidden" name="uid" value=<%=session.getAttribute("id") %>>
<input type="submit" value="View products">
</form><br><br>

<form action="./viewcart" method="post">
<input type="hidden" name="uid" value=<%=session.getAttribute("id") %>>
<input type="submit" value="My Cart">
</form><br><br>

<a href="logout">log out</a>
</body>
</html>