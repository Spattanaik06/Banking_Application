<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String msg=(String)request.getAttribute("msg");
BankBean bankBean=(BankBean)session.getAttribute("bbean");
out.println(bankBean.getUname()+""+msg);
%>

</body>
</html> --%>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Of Odisha - Message</title>
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

p {
    text-align: center;
    font-size: 20px;
    margin-top: 50px;
    color: #ffffff;
    background-color: rgba(0, 0, 0, 0.7);
    padding: 15px;
    border-radius: 10px;
    width: 50%;
    margin-left: auto;
    margin-right: auto;
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
    <p>
        <% 
        String msg = (String) request.getAttribute("msg");
        BankBean bankBean = (BankBean) session.getAttribute("bbean");
        out.println(bankBean.getUname() + " " + msg); 
        %>
    </p>
    <footer>
        &copy; 2024 Bank Of Odisha. All Rights Reserved.
    </footer>
</body>
</html> --%>







<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Of Odisha - Message</title>
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

p {
    text-align: center;
    font-size: 20px;
    margin-top: 50px;
    color: #ffffff;
    background-color: rgba(0, 0, 0, 0.7);
    padding: 15px;
    border-radius: 10px;
    width: 50%;
    margin-left: auto;
    margin-right: auto;
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
        String msg = (String) request.getAttribute("msg");
        BankBean bankBean = (BankBean) session.getAttribute("bbean");
        out.println(bankBean.getUname() + " " + msg); 
        %>
    </p>
    <footer>
        &copy; 2024 Bank Of Odisha. All Rights Reserved.
    </footer>
</body>
</html>

