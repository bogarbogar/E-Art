<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-flow:wrap;
    height: 130vh;
    background-color: #f0f0f0;
}
.topic{
display:flex;
align-items:flex-end;
justify-content:center;
align-items:center;
}



.container {

    background-color: #fff;
    padding: 50px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    width: 600px;
}


.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input[type="email"],
input[type="text"],
textarea {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    padding: 10px 20px;
    background-color: #28a745;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    background-color: #218838;
}

</style>

</head>

<body>
<div class="topic">
<h1 align="center">My Contact</h1><br>
<h2 align="center" class="hed2">Please message me to get a account!</h2>
</div>
<div class="container">
        <h2>Compose Email</h2>
        <form id="emailForm" action="sendEmailServlet" method="post">
            <div class="form-group">
                <label for="to">To:</label>
                <input type="email" id="to" name="to" required>
            </div>
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" required>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="10" required></textarea>
            </div>
            <button type="submit">Send Email</button>
        </form>
    </div>
</body>
</html>
