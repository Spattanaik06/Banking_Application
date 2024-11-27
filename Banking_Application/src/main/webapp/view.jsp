<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
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
table {
    width: 80%;
    margin: 30px auto;
    border-collapse: collapse;
    background-color: rgba(0, 0, 0, 0.7);
    color: #ffffff;
    text-align: center;
    font-size: 18px;
    border-radius: 5px;
    overflow: hidden;
}

th, td {
    padding: 15px;
    border: 1px solid #00c3ff;
}

th {
    background-color: #00c3ff;
    color: #000000;
    font-weight: bold;
}

tr:nth-child(even) {
    background-color: rgba(0, 0, 0, 0.5);
}

tr:nth-child(odd) {
    background-color: rgba(0, 0, 0, 0.3);
 }

#id {
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
#tabledata
{
 text-align:center;
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
   <p>
<%
BankBean bankBean1=(BankBean)session.getAttribute("bbean");

%>

<table >
    <tr>
        <th>
            ACCOUNT NO 
        </th>
        <th>
            USERNAME
        </th>
        <th>
            PASSWORD
        </th>
        <th>
            AMOUNT
        </th>
        <th>
            ADDRESS
        </th>
        <th>
            PHONE
        </th>
    </tr>
    <tr>
        <td> <%=bankBean1.getAccno() %> </td>
        <td> <%=bankBean1.getUname() %> </td>
        <td> <%=bankBean1.getPassword() %></td>
        <td> <%=bankBean1.getAmount() %> </td>
        <td> <%=bankBean1.getAddress() %> </td>
        <td> <%=bankBean1.getPhno() %> </td>
        
    </tr>
</table>


<footer>
        &copy; 2024 Bank Of Odisha. All Rights Reserved.
    </footer>
</body>
</html>