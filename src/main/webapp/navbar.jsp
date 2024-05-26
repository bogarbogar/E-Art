 
  <style >
 body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    padding: 10px 20px 10px;
    height: 60px;
}

.logo a {
    color: white;
    text-decoration: none;
    font-size: 24px;
    font-weight: bold;
}

.nav-links {
    list-style: none;
    display: flex;
    margin: 0;
    padding: 0;
}

.nav-links li {
    margin: 0 15px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
}

.nav-links a {
    color: white;
    text-decoration: none;
    font-size: 18px;
    transition: color 0.3s;
}

.nav-links a:hover {
    color: #ffcc00;
}

.auth-links {
    display: flex;
}

.auth-links a {
    color: white;
    text-decoration: none;
    font-size: 18px;
    margin-left: 15px;
    border: 1px solid white;
    padding: 5px 10px;
    border-radius: 5px;
    transition: background-color 0.3s, color 0.3s;
}

.auth-links a:hover {
    background-color: #ffcc00;
    color: #333;
    
}

  
  </style>    


<nav class="navbar">
        <div class="logo">
            <a href="#">E-Art Gallery</a>
        </div>
        <ul class="nav-links">
            <li><a href="#" class="ho1">Home</a></li>
            <li><a href="#" class="ho1">Categories</a></li>
            <li><a href="#" class="ho1">Contact Us</a></li>
            <li><a href="Admin.jsp" class="ho1">Admin</a></li>
        </ul>
        
        <div class="auth-links">
            <a href="signup.jsp">Sign Up</a>
            <a href="login.jsp">Login</a>
        </div>
    </nav>






