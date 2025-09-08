<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>TripWise Summary</title>
    <style>
        body { font-family: Arial, sans-serif; background:#f5f5f5; }
        .container { max-width:600px; margin:auto; padding:20px; background:#fff; border-radius:10px; text-align:center; margin-top:50px;}
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome, ${user.username}!</h1>
    <p>Email: ${user.email}</p>
    <p>Your account has been successfully created or logged in.</p>
    <a href="<c:url value='/'/>">Back to Home</a>
</div>
</body>
</html>
