<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>

<style>

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background-image:url(img5.jpg);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    display: flex;
    justify-content: right;
    width: 1250px;
    height: 600px;
    backdrop-filter: blur;
}

.form-container {
    background: white;
    padding: 60px;
    backdrop-filter: blur;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 50%;
}

h1 {
    text-align: start;
    margin-bottom: 20px;
}

h3 {
    text-align: center;
}
    
.input-group {
    margin-bottom: 15px;
}

.input-group label {
    display: block;
    margin-bottom: 5px;
}

.input-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    background-color: #0056b3;
}

</style>


<body>
    <div class="container">
        <div class="form-container">
            <h1>Join us</h1>
            <h1>Create your own account</h1>
            <br>
            <form id="register-form" action="SignupServlet" method="post">
                <div class="input-group">
                    <label for="register-username">Username</label>
                    <input type="text" id="register-username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="register-email">Email</label>
                    <input type="email" id="register-email" name="email" required>
                </div>
                <div class="input-group">
                    <label for="register-password">Password</label>
                    <input type="password" id="register-password" name="password" required>
                </div>
                <div class="input-group">
                    <label for="register-contact">Contact</label>
                    <input type="number" id="register-contact" name="contact" required>
                </div>
                <button type="submit">Register</button>
            </form>
            <br>
            <h3>Already have an account?<a href="login.jsp">Log in</a></h3>
        </div>
        </div>
</body>
</html>
