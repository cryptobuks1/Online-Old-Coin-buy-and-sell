<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="css/header.css" rel="stylesheet" />
  
  
<title>Header</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a href="index" class="navbar-brand">
      <!-- Logo Image -->
      <img src="images/logo.png" width="65"  alt="" class="d-inline-block align-middle mr-2">
    </a>
      
    </div>
    <a class="navbar-brand" style="color: white" href="index" class="headerlink">The Nickel</a>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index" class="headerlink" style="color: white">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" style="color: white" 
      data-toggle="dropdown" href="product" class="headerlink" 
      onMouseOver="this.style.color='yellow'" 
      onMouseOut="this.style.color='white'">Buy Coins <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/product" >Gold Coins</a></li>
          <li><a href="/product">Silver Coins</a></li>
          <li><a href="/product"></a></li>
        </ul>
      </li>
      <li><a href="product" style="color: white" onMouseOver="this.style.color='yellow'" onMouseOut="this.style.color='white'">Buy Coins</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="login" style="color: white" onMouseOver="this.style.color='yellow'" onMouseOut="this.style.color='white'"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="register" style="color: white" class="headerlink" onMouseOver="this.style.color='yellow'" onMouseOut="this.style.color='white'"><span class="glyphicon glyphicon-upload"></span> Sell</a></li>
      
    </ul>
  </div>
</nav>
</body>
</html>