<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="text/css" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="CatStyle.css">
<title>Products</title>



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
	
	<a href="welcome.jsp" class="home"><i class="home-btn fa fa-home"></i>
		HOME</a>

	<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/Rohit" user="root" password="1234" />

	<sql:query var="rs" dataSource="${db}">select * from products</sql:query>


	<pre><h1>Products</h1></pre>


	<form action="AddToCart" method="post">

		<c:forEach items="${rs.rows}" var="product">
			<div class="column">
				<div class="row">
					<div class="card">
						<img src="${product.images}" height="300" alt="Denim Jeans"
							style="width: 100%">
						<h2>
							<c:out value="${product.pname}"></c:out>
						</h2>
						<p class="price">
							Price:
							<c:out value="${product.price}"></c:out>
						</p>
						<p>
							Quantity:
							<c:out value="${product.quantity}"></c:out>
							<br>
						</p>
						<p>

								<label class="container">
									<input type="checkbox" name="products" value="${ product.pname}">
									<span class="checkmark"></span>
								 </label> 

						</p>

						<%-- <input type="checkbox" name="products" value="${ product.pname}"><br>
						</p> --%>
					</div>
				</div>
			</div>
		</c:forEach>

		<!-- <input type="submit" value="Add to Cart"> -->
		<a href="AddToCart" target="_parent"><button class="addcart">Add
				To Cart</button></a>
	</form>

</body>
</html>