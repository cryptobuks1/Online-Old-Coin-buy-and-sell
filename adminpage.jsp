<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int id=(int)session.getAttribute("id"); %>
<form action="viewproduct" method="post">
<input type="hidden" name="uid" value=<%=id %>>
<input type="submit" value="my products">
</form><br><br>

<form action="addadminproducts" method="post">
<input type="hidden" name="uid" value=<%=session.getAttribute("id") %>>
<input type="submit" value="add product">
</form><br><br>

<form action="viewusers" method="post">
<input type="hidden" name="uid" value=<%=session.getAttribute("id") %>>
<input type="submit" value="View Users">
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