<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %></h2>
    <a href="registerCustomer.jsp">Register Customer</a> |
    <a href="viewCustomer.jsp">View Customers</a> |
    <a href="logout.jsp">Logout</a>
    <style>
   body, h2, a {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Set a gradient background and text color for the entire page */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(to right, #00c6ff, #0072ff); /* Blue gradient */
    color: #fff;
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Style the main heading */
h2 {
    margin-bottom: 20px;
    font-size: 2em;
    font-weight: 700;
}

/* Style the navigation links */
a {
    background: rgba(255, 255, 255, 0.9); /* White background with slight opacity */
    color: #0072ff; /* Blue text color */
    text-decoration: none;
    padding: 10px 20px;
    border-radius: 5px;
    margin: 0 10px;
    display: inline-block;
    font-size: 1em;
    transition: background 0.3s, color 0.3s;
}

a:hover {
    background: #0072ff; /* Blue background on hover */
    color: #fff; /* White text color on hover */
}

/* Center and style the container */
.container {
    background: rgba(255, 255, 255, 0.9); /* White background with slight opacity */
    border-radius: 10px;
    padding: 40px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow for 3D effect */
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Optional: Style for the links container */
.links-container {
    margin-top: 20px;
}
   
    
    </style>
</body>
</html>