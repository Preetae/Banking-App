<!DOCTYPE html>
<html>
<head>
    <title>Bank Application</title>
    <link rel="stylesheet" href="login.css" type="text/css">
</head>
<body>
    <h1>Welcome to Bank Application</h1>
    <div class="container">
    <form action="adminLogin.jsp" method="get">
        <input type="submit" value="Admin Login" class="log">
    </form>
    <br>
    <form action="customerLogin.jsp" method="get">
        <input type="submit" value="Customer Login" class="log">
    </form>
    </div>
    <style>
    /* Reset some default styles */
body, h1, form {
    margin: 0;
    padding: 10px;
    box-sizing: border-box;
}

/* Set a gradient background and text color for the entire page */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(to right, #00c6ff, #0072ff); /* Blue gradient */
    color: #fff;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Style the main heading */
h1 {
    margin-bottom: 20px;
    font-size: 2.5em;
    font-weight: 700;
}

/* Center and style the container */
.container {
    background: rgba(255, 255, 255, 0.9); /* White background with slight opacity */
    border-radius: 10px;
    padding: 40px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow for 3D effect */
    width: 300px;
}

/* Style for forms and buttons */
form {
    margin: 20px 0;
}

input[type="submit"] {
    background: #0072ff; /* Blue color */
    border: none;
    color: white;
    padding: 15px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s, transform 0.3s;
}

input[type="submit"]:hover {
    background: #005bb5; /* Darker blue */
 
    
    </style>
    
</body>
</html>