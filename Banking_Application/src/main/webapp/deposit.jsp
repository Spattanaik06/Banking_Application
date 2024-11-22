<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background-image: url("./bank_image/bank_banner.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	
}

h1 {
	text-align: center;
	font-size: 100px;
}
div
{
    height:auto;
    width: auto;
    background-color: black;
}
a {
	 margin-right:100px;
	margin-left:50px;
	
    text-decoration: none;
    color: aliceblue;
}
</style>


</head>

<body>
	<p id="id">
	<h1>Bank Of Odisha</h1>

	<p>
	<div>
		<a href="checkbalance">BALANCE</a>
		<a href="deposit">DEPOSIT</a> 
		<a href="withdraw">WITHDRAW</a> 
		<a href="TransferForm.html">TRANSFER</a>
		<a href="close">CLOSE AC</a>
		<a href="About.html">ABOUT US</a>
		<a href="logout">LOGOUT</a>
  </div>
<%
BankBean bankBean=(BankBean)session.getAttribute("bbean");
out.println("Enter the Amount u want to deposit ,"+bankBean.getUname()+"<br>");
%>
<form action="depositamount" method="post">
<input type="text" name="amount" placeholder="Enter Amount"><br>
<button type="submit">Deposit</button>

</form>
</body>
</html>