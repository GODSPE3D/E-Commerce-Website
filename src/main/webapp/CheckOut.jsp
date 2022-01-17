<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">



<title>Payments</title>

<style>
body {
	background: rgb(2, 0, 36);
	color: white;
	font-family: 'Poppins', sans-serif;
}

pre {
	font-family: 'Poppins', sans-serif;
}

.row {
	color: black;
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 50px;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 0%;
	padding: 0 20px;
}

.container {
	background-color: #f2f2f2;
	padding: 15px 15px 15px 15px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text] {
	width: 100%;
	margin-bottom: 20px;
	padding: 10px 2px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 5px;
}

.icon {
	margin-bottom: 25px;
	padding: 10px 0;
	font-size: 24px;
}

.btn {
	position: absolute;
	top:120%;
	/* bottom: 10px; */
	left: 25%;
	background-color: #04AA6D;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 50%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: dodgerblue;
}

.fa {
	position: absolute;
}

.fa-cc-mastercard {
	font-size: 1.2em;
}

.fa-cc-visa {
	font-size: 1.2em;
	position: relative;
	left: 45px;
}

 

.fa-paypal {
	font-size: 1.2em;
	position: relative;
	left: 10px;
}
</style>


</head>
<body>
	<pre class="tab">
		<h1>Modes of Payment</h1>
            <input type="radio" onclick="javascript:display(this)"
			name="payment" id="credit" value="1"> Credit / Debit Card  <input
			type="radio" onclick="javascript:display(this)" name="payment"
			id="online" value="2"> Online Payment <input type="radio"
			onclick="javascript:display(this)" name="payment" id="cod" value="3"> Cash on Delivery </pre>
	<!-- Credit/Debit Card-->
	<div id="Credit" style="visibility: hidden">
		<div class="row">
			<div class="container">
				<form>
					<div class="col-50">
						<h3>Payment</h3>
						<label for="fname">Accepted Cards</label>
						<div class="icon">
							<i class="fa fa-cc-mastercard"></i> <i class="fa fa-cc-visa"></i>
						</div>
					</div>
					<div class="col-50">
						<label for="cname">Name on Card</label> <input type="text"
							id="cname" name="cardname" placeholder="John More Doe"> <label
							for="cname">Credit card number</label> <input type="text"
							id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
						<label for="expmonth">Expiration Month</label> <input type="text"
							id="expmonth" name="expmonth" placeholder="September">
					</div>
					<div class="row">
						<div class="col-50">
							<label for="expyear">Expiration Year</label> <input type="text"
								id="expyear" name="expyear" placeholder="2021">
						</div>
						<div class="col-50">
							<label for="cvv">CVV</label> <input type="text" id="cvv"
								name="cvv" placeholder="352">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Online -->
	<div id="Online"
		style="visibility: hidden; position: relative; top: -491px;">
		<div class="row">
			<div class="container">
				<form>
					<div class="col-50">
						<h3>Payment</h3>
						<div class="icon">
							<i class="fa fa-paypal"></i> 
							
						</div>
					</div>
					<div class="col-50">
						<label for="cname"><br>Your will be redirected!</label>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- CoD -->
	<div id="COD"
		style="visibility: hidden; position: relative; top: -698px;">
		<div class="row">
			<div class="container">
				<form>
					<div class="col-50">
						<h3>Payment</h3>
						<label for="fname">Cash on Delivery</label>
					</div>
					<div class="col-50">
						<br>
						<label for="cname">Please give the required amount to our
							employee when your order arrives!</label>
					</div>
				</form>
			</div>
		</div>
	</div>
	<a href="UpdateQ"><input type="submit"
		value="Continue to checkout" class="btn"></a>
	<script src="Payments.js"></script>




</body>
</html>