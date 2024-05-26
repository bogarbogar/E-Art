<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
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
    background-attchment:local;
    display: flex;
    justify-content: left;
    align-items: center;
    height: 100vh;
}

.container {
    display: flex;
    margin-left:35px;
    justify-content: right;
    position:fixed;
    width: 1200px;
    height: 600px;
    max-width: 1200px;
    margin: 0% right;
    
}

.form-container {
    background: white;
    padding: 60px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 50%;
    background: transparent;
  backdrop-filter: blur(10px);
}

h1 {
    text-align: start;
    margin-bottom: 20px;
    color:white;
}

h3 {
    text-align: center;
    color:white;
}
h4 {
    text-align: start;
    color:white;
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
            <h1>Welcome Back!</h1>
            <h1>Login to your account</h1>
            <h4>It's nice to see you again..</h4>
            <br><br>
            <form id="login-form" action="LoginServlet" method="post">
                <div class="input-group">
                    <label for="login-username">UserID</label>
                    <input type="text" id="login-username" name="userid" required>
                </div>
                <div class="input-group">
                    <label for="login-password">Password</label>
                    <input type="password" id="login-password" name="password" required>
                </div><br>
                <button type="submit">Login</button>
            </form>
            <% if(request.getParameter("error") != null) { %>
        <p style="color:red;">Invalid userid or password</p>
    <% } %>
            <br><br>
            <h3>Dont't have an account?<a href="request.jsp">Click here</a></h3>
        </div>
    </div>
    
</body>
</html>
