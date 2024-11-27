<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
out.println("Enter the Amount u want to withdraw ,"+bankBean.getUname()+"<br>");
%>
<form action="withdrawamount" method="post">
<input type="text" name="amount" placeholder="Enter Amount"><br>
<button type="submit">Withdraw</button>

</form>
</body>
</html> --%>






<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Of Odisha - Withdraw</title>
<style>
body {
    background-image: url("./bank_image/bank_banner.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    color: #f2f2f2;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 10px 20px;
}

header img {
    height: 60px;
    width: auto;
}

h1 {
    text-align: center;
    font-size: 80px;
    color: #ffffff;
    text-shadow: 2px 2px 5px #000000;
    margin-top: 20px;
}

nav {
    text-align: center;
    background-color: rgba(0, 0, 0, 0.8);
    padding: 15px 0;
    margin-top: 20px;
}

nav a {
    margin: 0 20px;
    text-decoration: none;
    color: #00c3ff;
    font-size: 20px;
    transition: color 0.3s ease-in-out;
}

nav a:hover {
    color: #00ffcc;
}

form {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 50px;
}

input[type="text"] {
    width: 50%;
    padding: 10px;
    font-size: 16px;
    margin-bottom: 15px;
    border: 2px solid #00c3ff;
    border-radius: 5px;
    background-color: #f9f9f9;
}

button {
    padding: 10px 20px;
    font-size: 18px;
    color: #fff;
    background-color: #00c3ff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out;
}

button:hover {
    background-color: #00a3cc;
}

p {
    text-align: center;
    font-size: 20px;
    margin-top: 20px;
    color: #ffffff;
}

footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    text-align: center;
    padding: 10px 0;
    background-color: rgba(0, 0, 0, 0.8);
    color: #ffffff;
    font-size: 14px;
}
</style>
</head>

<body>
    <header>
        <img src="./bank_image/bank_logo.png" alt="Bank Logo">
        <h1>Bank Of Odisha</h1>
    </header>
    <nav>
        <a href="checkbalance">BALANCE</a>
        <a href="deposit">DEPOSIT</a>
        <a href="withdraw">WITHDRAW</a>
        <a href="TransferForm.html">TRANSFER</a>
        <a href="close">CLOSE AC</a>
        <a href="About.html">ABOUT US</a>
        <a href="logout">LOGOUT</a>
    </nav>
    <p>
        <% 
        BankBean bankBean = (BankBean) session.getAttribute("bbean");
        out.println("Enter the amount you want to withdraw, " + bankBean.getUname() + "<br>"); 
        %>
    </p>
    <form action="withdrawamount" method="post">
        <input type="text" name="amount" placeholder="Enter Amount"><br>
        <button type="submit">Withdraw</button>
    </form>
    <footer>
        &copy; 2024 Bank Of Odisha. All Rights Reserved.
    </footer>
</body>
</html> --%>











<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Of Odisha</title>
<style>
body {
    background-image: url("./bank_image/bank_banner.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    color: #f2f2f2;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

h1 {
    text-align: center;
    font-size: 80px;
    color: #ffffff;
    text-shadow: 2px 2px 5px #000000;
    margin-top: 30px;
}

div {
    height: auto;
    width: 100%;
    background-color: rgba(0, 0, 0, 0.8);
    text-align: center;
    padding: 15px 0;
    margin-top: 20px;
}

a {
    margin: 0 20px;
    text-decoration: none;
    color: #00c3ff;
    font-size: 20px;
    transition: color 0.3s ease-in-out;
}

a:hover {
    color: #00ffcc;
}

form {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 30px;
}

input[type="text"] {
    width: 50%;
    padding: 10px;
    font-size: 16px;
    margin-bottom: 15px;
    border: 2px solid #00c3ff;
    border-radius: 5px;
    background-color: #f9f9f9;
}

button {
    padding: 10px 20px;
    font-size: 18px;
    color: #fff;
    background-color: #00c3ff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out;
}

button:hover {
    background-color: #00a3cc;
}

p {
    text-align: center;
    font-size: 18px;
    margin-top: 20px;
    color: #ffffff;
}

footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    text-align: center;
    padding: 10px 0;
    background-color: rgba(0, 0, 0, 0.8);
    color: #ffffff;
    font-size: 14px;
}
</style>
</head>

<body>
    <h1>Bank Of Odisha</h1>
    <div>
        <a href="checkbalance">BALANCE</a>
        <a href="deposit">DEPOSIT</a> 
        <a href="withdraw">WITHDRAW</a> 
        <a href="TransferForm.html">TRANSFER</a>
        <a href="close">CLOSE AC</a>
        <a href="About.html">ABOUT US</a>
        <a href="logout">LOGOUT</a>
    </div>
    <p>
        
        <% 
        BankBean bankBean = (BankBean) session.getAttribute("bbean");
        out.println("Enter the amount you want to withdraw, " + bankBean.getUname() + "<br>"); 
        %>
       
    </p>
    <form action="withdrawamount" method="post">
        <input type="text" name="amount" placeholder="Enter Amount"><br>
        <button type="submit">Withdraw</button>
    </form>
    <footer>
        &copy; 2024 Bank Of Odisha. All Rights Reserved.
    </footer>
</body>
</html>
