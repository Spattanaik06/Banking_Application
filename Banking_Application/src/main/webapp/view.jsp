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

table,th,td
{
background:aqua;
border:solid black;


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
BankBean bankBean1=(BankBean)session.getAttribute("bbean");

%>
<table>
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

</body>
</html>