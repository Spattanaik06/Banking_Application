<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    /* background-color: rgba(0, 0, 0, 0.8); */
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
nav
{
background-color: black;
width:auto;
height:35px;
padding-top:10px;
}
 #msg {
   color:black;
   background-color: #ffffff;
   width:450px;
   margin-left:650px;

} 
</style>
</head>

<body>
	<p id="id">
	<h1>Bank Of Odisha</h1>

	<p>
	<div>
	<nav>
		<a href="Register.html">NEW ACCOUNT</a> 
		<a href="checkbalance">BALANCE</a>
		<a href="deposit">DEPOSIT</a> 
		<a href="withdraw">WITHDRAW</a> 
		<a href="TransferForm.html">TRANSFER</a>
		<a href="close">CLOSE AC</a>
		<a href="About.html">ABOUT US</a>
		
	</nav>	
    </div>
    <p id="msg">
	<%
	
	out.println("you are Logged out from our Site..."+"<br>");
	
	%>
	</p>
	
	<footer>
        &copy; 2024 Bank Of Odisha. All Rights Reserved.
    </footer>
</body>
</html>