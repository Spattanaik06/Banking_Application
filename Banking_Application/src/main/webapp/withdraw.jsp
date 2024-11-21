<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
BankBean bankBean=(BankBean)session.getAttribute("bbean");
out.println("Enter the Amount u want to withdraw ,"+bankBean.getUname()+"<br>");
%>
<form action="withdrawamount" method="post">
<input type="text" name="amount" placeholder="Enter Amount"><br>
<button type="submit">Withdraw</button>

</form>
</body>
</html>