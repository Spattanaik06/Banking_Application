<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table,th,td
{
background:aqua;
border:solid black;


}
</style>
</head>
<body>
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
            AMOUNT
        </th>
        
        <th>
            PHONE
        </th>
    </tr>
    <tr>
        <td> <%=bankBean1.getAccno() %> </td>
        <td> <%=bankBean1.getUname() %> </td>
        <td> <%=bankBean1.getAmount() %> </td>
        <td> <%=bankBean1.getPhno() %> </td>
        
    </tr>
</table>
</body>
</html>