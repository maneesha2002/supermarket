<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Contact Us - G Supermarket</title>
    <%@include file="all_component/allCss.jsp" %>
    <style type="text/css">
        /* Your existing styles here */
        /* Add specific styles for the contact form */
        .contact-form-container {
            margin-top: 50px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .contact-form-container h1 {
            text-align: center;
            color: #333333;
            margin-bottom: 20px;
        }
        .contact-form-container form {
            display: flex;
            flex-direction: column;
        }
        .contact-form-container input[type="text"],
        .contact-form-container input[type="email"],
        .contact-form-container textarea {
            margin-bottom: 10px;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        .contact-form-container input[type="submit"] {
            padding: 10px;
            border: none;
            background-color: #dc3545;
            color: white;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <%@include file="all_component/navbar.jsp" %>

    <!-- Contact Form Section -->
    <div class="container contact-form-container">
        <h1>Contact Us</h1>
        <form action="sendEmail.jsp" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>

            <input type="submit" value="Send Email">
        </form>
    </div>

    <%@include file="all_component/footer.jsp" %>
</body>
</html>
