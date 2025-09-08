<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - TripWise</title>
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
        input[type="text"], input[type="password"] {
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
        .error {
            color: red;
            margin-bottom: 15px;
            text-align: center;
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
    <h2>Login to TripWise</h2>
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    <form action="<c:url value='/login'/>" method="post">
        <label>Username</label>
        <input type="text" name="username" required/>
        <label>Password</label>
        <input type="password" name="password" required/>
        <input type="submit" value="Login"/>
    </form>
    <div class="link">
        <a href="<c:url value='/register'/>">Don't have an account? Register</a>
    </div>
</div>
</body>
</html>
