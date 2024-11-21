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
String msg=(String)request.getAttribute("msg");
out.println(msg);

%>
<%--  <%@include file="LogoutServlet" %>   --%>
</body>
</html>