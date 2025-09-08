<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register - TripWise</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            width: 400px;
        }
        h2 {
            color: #0077b6;
            margin-bottom: 25px;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: 500;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #0077b6;
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #005f87;
        }
        .link {
            text-align: center;
            margin-top: 10px;
        }
        .link a {
            color: #0077b6;
            text-decoration: none;
        }
        .link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Create Your TripWise Account</h2>
    <form action="<c:url value='/register'/>" method="post">
        <label>Username</label>
        <input type="text" name="username" required/>
        <label>Password</label>
        <input type="password" name="password" required/>
        <label>Email</label>
        <input type="email" name="email" required/>
        <input type="submit" value="Register"/>
    </form>
    <div class="link">
        <a href="<c:url value='/login'/>">Already have an account? Login</a>
    </div>
</div>
</body>
</html>
