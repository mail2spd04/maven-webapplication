<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KK FUNDA Home Page</title>
<link href="images/kkfunda.jpg" rel="icon">
<style>
    body {
        background-color: #f9f9f9;
        font-family: Arial, sans-serif;
        color: #333;
        margin: 0;
        padding: 0;
    }

    header {
        background-color: #003366;
        color: white;
        padding: 20px;
        text-align: center;
    }

    h1, h3 {
        margin: 0 0 10px;
    }

    .content {
        padding: 20px;
    }

    .section-box {
        background-color: #e6f2ff;
        border: 1px solid #99ccff;
        padding: 15px;
        margin: 20px auto;
        width: 80%;
        border-radius: 8px;
    }

    .footer {
        background-color: #003366;
        color: white;
        text-align: center;
        padding: 10px;
        position: relative;
        bottom: 0;
        width: 100%;
    }

    a {
        color: #ffcc00;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    .logo {
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 20px 0;
    }

    .logo img {
        width: 100px;
        margin-right: 20px;
    }

    .contact-info {
        font-weight: bold;
        line-height: 1.6;
    }
</style>
</head>
<body>

<header>
    <h1>Welcome to KK FUNDA - AWS DevOps Pipeline Demo project####</h1>
    <p><strong>Triggered via SCM Polling & Git Webhook</strong></p>
</header>

<div class="content">

    <div class="section-box">
        <h3>Server Side IP Details</h3>
        <%
            String ip = "";
            InetAddress inetAddress = InetAddress.getLocalHost();
            ip = inetAddress.getHostAddress();
        %>
        <p><strong>Server Host Name:</strong> <%= inetAddress.getHostName() %></p>
        <p><strong>Server IP Address:</strong> <%= ip %></p>
    </div>

    <div class="section-box">
        <h3>Client Side IP Details</h3>
        <p><strong>Client IP Address:</strong> <%= request.getRemoteAddr() %></p>
        <p><strong>Client Host Name:</strong> <%= request.getRemoteHost() %></p>
    </div>

    <div class="logo">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
        <div class="contact-info">
            KK FUNDA AWS DevOps<br>
            Martha Halli, Bangalore<br>
            📞 +91-9676831734<br>
            ✉️ <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a><br>
            <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
        </div>
    </div>

    <div class="section-box" style="text-align:center;">
        <p><strong>Service:</strong> <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    </div>
</div>

<div class="footer">
    <p>KK FUNDA Training & Development Center</p>
    <p><small>&copy; 2024 by <a href="https://google.com/">KK FUNDA</a></small></p>
</div>

</body>
</html>
