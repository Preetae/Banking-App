<!DOCTYPE html>
<html>
<head>
    <title>Close Account</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Close Account</h2>
    <form action="CloseAccountServlet" method="post">
        <p>Are you sure you want to close your account?</p><br><br>
       <a href="customerLogin.jsp">Yes</a> 
        <a href="customerDashboard.jsp">No</a>
    </form>
    <style>
    body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(to right, #00c6ff, #0072ff); /* Blue gradient */
    color: #fff;
    text-align: center;
    margin: 0;
    padding: 20px;
    height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}p{
color:black;
}

h2 {
    margin-bottom: 30px;
    font-size: 2.5em;
    font-weight: 700;
    color: #fff; /* White text color for heading */
}

form {
    background: rgba(255, 255, 255, 0.95); /* Slightly opaque background */
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Soft shadow */
    width: 100%;
    max-width: 400px; /* Adjusted width */
    box-sizing: border-box;
    margin: 0 auto;
}

label {
    display: block;
    margin-bottom: 20px;
    font-size: 1.2em;
    color: #333; /* Dark grey text color for label */
}

a {
    background: #0072ff; /* Blue background for buttons */
    color: #fff; /* White text color for buttons */
    text-decoration: none;
    padding: 10px 20px;
    border-radius: 5px;
    margin: 10px;
    display: inline-block;
    font-size: 1em;
    transition: background 0.3s, color 0.3s;
}

a:hover {
    background: #0056b3; /* Darker blue on hover */
}

a.yes {
    background: #ff4d4d; /* Red background for Yes */
}

a.yes:hover {
    background: #cc0000; /* Darker red on hover */
}

a.no {
    background: #4caf50; /* Green background for No */
}

a.no:hover {
    background: #388e3c; /* Darker green on hover */
}
    
    </style>
</body>
</html>
