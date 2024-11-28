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

input {
    width: 150%;
    padding: 10px;
    font-size: 16px;
    margin-bottom: 15px;
    border: 2px solid #00c3ff;
    border-radius: 5px;
    background-color: #f9f9f9;
}

#subbutton {
    padding: 10px 20px;
    font-size: 18px;
    color: #fff;
    background-color: #00c3ff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out;
    
}

 #subbutton:hover {
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

#button
{
	padding: 0;
    font-size: 18px;
    color: #fff;
    background-color: #00c3ff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out;
    
}

#reg
{
     padding: 10px 20px;
    background-color: #00c3ff;
    font-size: 18px;
    color: #fff;
    
    border-radius: 5px;
    cursor: pointer;
     transition: background-color 0.3s ease-in-out;
}

#reg:hover {
     background-color: #00a3cc;
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
		<a href="checkbalance">BALANCE</a>
		<a href="deposit">DEPOSIT</a> 
		<a href="withdraw">WITHDRAW</a> 
		<a href="TransferForm.html">TRANSFER</a>
		<a href="close">CLOSE AC</a>
		<a href="About.html">ABOUT US</a>
		<a href="logout">LOGOUT</a>
		
	</nav>	
    </div> 
   
   <p id="msg">
<%
String msg=(String)request.getAttribute("msg");
out.println(msg);
%>
</p>

<form action="transfer" method="post">
<p>
	<table>
	<tr>
	<td>
	Account No. :
	</td>
	<td>
	<input type="text" name="accno">
	</td>
	</tr>
	<tr>
	<td>
	USER NAME :
	</td>
	<td>
	<input type="text" name="uname">
	</td>
	</tr>
	<tr>
	<td>PASSWORD :
	</td>
	<td>
	<input type="password" name="password">
	</td>
	</tr>
	<tr>
	<td>
	TARGET ACC NO :
	</td>
	<td>
	<input type="text" name="taccno">
	</td>
	</tr>
	<tr>
	<td>
	AMOUNT :
	</td>
	<td>
	<input type="text" name="amount">
	</td>
	</tr>
	<tr>
	<td>
	</td>
	<td>
	<button id="subbutton" type="submit">SUBMIT</button>
	</td>
	<td>
	  <a  id = "reg" href="TransferForm.html">CLEAR</a>
	</tr>
	</table>
</p>
</form>
<footer>
        &copy; 2024 Bank Of Odisha. All Rights Reserved.
    </footer>
</body>
</html>