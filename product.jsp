

<%-- <c:set var = "productid" scope = "request" value = "${}"/> --%>
<%-- <c:forEach items="${lig}" var="p"> --%>

 

<!-- <div class="card"> -->
<!--   <img src="jeans3.jpg" alt="Denim Jeans" style="width:100%"> -->
<!--   <h1>Tailored Jeans</h1> -->
<!--   <p class="price">$19.99</p> -->
<!--   <p>Some text about the jeans..</p> -->
 
<!--   <p><button>Add to Cart</button></p> -->
<%--   <p  name="productid" >${p.productID}</p> --%>
<!-- </div> -->



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
<table style="border:2px">
<tr>
<th>Product Id</th>
<th>Product Name</th>
<th>Category</th>
<th>Period</th>

<th>Seller Id</th>
<th>Price</th>
<th></th>
</tr>
<c:forEach items="${lig}" var="p">
 <tr>
<td>${p.productID}</td>
<td>${p.productName}</td>
<td>${p.category}</td>
<td>${p.period}</td>

<td>${p.userId}</td>
<td>${p.Price }</td>
<td><form action="./insertOrder" method="POST">
<input type="text" name="productid" value="${p.productID}">
<input type="submit" value="Buy"></form></td>
 </tr>
 
 </c:forEach>
 
 

</table>
</body>
</html>
