<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 80%;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h1 {
        color: #333;
        text-align: center;
    }
    .contact-info {
        margin: 20px 0;
        padding: 10px;
        border: 1px solid #ddd;
        background-color: #fafafa;
        display: flex; /* Ensures items are aligned horizontally */
        align-items: center; /* Aligns items vertically */
    }
    .contact-info h2 {
        color: #333;
        margin-bottom: 10px;
    }
    .contact-info p {
        color: #555;
        margin: 5px 0;
    }
    .contact-info img {
        margin-left: auto; /* Pushes the image to the right */
        max-width: 200px; /* Adjust width as necessary */
        max-height: 150px; /* Adjust height as necessary */
    }
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="container">
    <h1>Emergency Contact Information</h1>
    <div class="contact-info">
        <div>
            <h2>Ambulance Purpose</h2>
            <p><strong>Driver Name:</strong>   Ran Singh </p>
            <p><strong>Phone Number:</strong> 	+91 7884548829</p>
            <p><strong>Vehicle Number:</strong> 	HR-43C-5565</p>
        </div>
        <img src="img/pickup.jpg" alt="Ambulance Image" width="200px" height="150px">
    </div>
</div>
</body>
</html>
