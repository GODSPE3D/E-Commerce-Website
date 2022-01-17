<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Online Shopping Application</title>


<style>
@import
	url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	outline: none;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	background: rgb(2, 0, 36);
	color: white;
}

/* Product Cards */
.column {
	float: left;
	width: 20%;
	padding: 20px 20px 10px;
}

.row {
	margin: 20px -5px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(255, 192, 0, 0.2);
	max-width: 300px;
	text-align: center;
	font-family: arial;
	border-radius: 20px;
	background-color: black;
	color: white;
}

.price {
	color: grey;
	font-size: 22px;
}

button {
	position: absolute;
	margin: 10px 0;
	display: block;
	border: none;
	outline: 0;
	padding: 12px;
	color: rgb(255, 192, 0);
	background-color: white;
	text-align: center;
	cursor: pointer;
	width: 25%;
	font-size: 18px;
	margin-left: 15px;
	right:1%;
	top: 10%;
	 
	
}

button:hover {
	color: white;
	background-color: rgb(255, 192, 0);
}

a.pmt {
	text-decoration: none;
}

p.subtl {
	font-size: 25px;
}
</style>
</head>
<body>

	<%
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires","0");
	
	
	
	if(session.getAttribute("username")==null ){
		response.sendRedirect("login.jsp");
	}
	%>


	<!-- Product Cards -->
	<pre>
    	<h2>Items in your Cart:</h2> 
     </pre>

	<p style="text-align: right; margin-right: 85px;" class="subtl"><br>Subtotal: ${finAmt}</p>
	
	<a href="CheckOut.jsp" target="_parent" class="pmt"><button class="addcart">Proceed
			to Pay</button></a>


	<c:forEach items="${items}" var="s">
		<div class="column">
			<div class="row">
				<div class="card">
					<img src="${s.img}" height="300" alt="Denim Jeans"
						style="width: 100%">
					<h2>
						<c:out value="${s.name}"></c:out>
					</h2>
					<p class="price">
						Price:
						<c:out value="${s.price}"></c:out>
					</p>
					<p>

						<br>
					</p>
					<p></p>

					<%-- <input type="checkbox" name="products" value="${ product.pname}"><br>
						</p> --%>
				</div>
			</div>
		</div>
	</c:forEach>




</body>
</html>