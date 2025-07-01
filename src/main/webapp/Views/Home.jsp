<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Urban Unity - Society Portal</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", sans-serif;
            background: linear-gradient(to bottom right, #e9f0f5, #cbe2f1);
        }

        .container {
            display: flex;
            width: 1000px;
            height: 600px;
            margin: 50px auto;
            background: #fff;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            border-radius: 15px;
            overflow: hidden;
        }

        .left-panel {
            flex: 2;
            padding: 30px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .form-box {
            background: #f8f9fa;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
        }

        h2 {
            margin: 0 0 15px;
            color: #333;
            font-size: 20px;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 6px 0 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: #fff;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .right-panel {
            flex: 1;
            background-image: url('https://cdn.pixabay.com/photo/2017/03/12/13/41/architecture-2137045_960_720.jpg');
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .overlay {
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            color: white;
            text-align: center;
        }

        .overlay h2 {
            margin-bottom: 20px;
            font-size: 22px;
        }

        .admin-button {
            padding: 10px 20px;
            background-color: #e91e63;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            text-decoration: none;
            cursor: pointer;
        }

        .admin-button:hover {
            background-color: #c2185b;
        }
    </style>
</head>
<body>

<div class="container">

    <!-- Left: Forms -->
    <div class="left-panel">
        <div class="form-box">
            <h2>User Login</h2>
            <form action="${pageContext.request.contextPath}/userLogin" method="post">
                <input type="text" name="username" placeholder="Username" required />
                <input type="password" name="password" placeholder="Password" required />
                <input type="submit" value="Login" />
            </form>
        </div>

        <div class="form-box">
            <h2>User Registration</h2>
            <form action="${pageContext.request.contextPath}/registerUser" method="post">
                <input type="text" name="fullname" placeholder="Full Name" required />
                <input type="email" name="email" placeholder="Email" required />
                <input type="text" name="username" placeholder="Username" required />
                <input type="password" name="password" placeholder="Password" required />
                <input type="submit" value="Register" />
            </form>
        </div>
    </div>

    <!-- Right: Admin Portal -->
    <div class="right-panel">
        <div class="overlay">
            <h2>Admin Portal</h2>
            <a href="${pageContext.request.contextPath}/adminLogin" class="admin-button">Admin Login</a>
        </div>
    </div>

</div>

</body>
</html>
