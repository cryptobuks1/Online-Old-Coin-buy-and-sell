<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="paymentsuccess" method="post">

<input type="hidden" name="uid" value=<%=request.getParameter("uid") %>>
<input type="hidden" name="price" value="${d}" >
Price <input type="text" name="pricep" value="${d}" disabled>
<input type="submit" value="buy">
</form>
</body>
</html>