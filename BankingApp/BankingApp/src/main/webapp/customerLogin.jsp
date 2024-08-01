<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <h2>Customer Login</h2>
    <form action="CustomerLoginServlet" method="post">
        <div class="input-container">
            <i class="fa fa-user"></i>
            <label for="account_no">Account No:</label>
            <input type="text" id="account_no" name="account_no" placeholder="Enter account number">
        </div>
        <div class="input-container">
            <i class="fa fa-lock"></i>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter valid password">
        </div>
        <input type="submit" value="Login">
    </form>
    <style>
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
    margin: 0;
}

h2 {
    margin-bottom: 30px;
    font-size: 2.5em;
    font-weight: 700;
}

form {
    background: rgba(255, 255, 255, 0.95); /* Slightly opaque background */
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); /* Enhanced shadow */
    width: 100%;
    max-width: 400px; /* Adjusted width */
    box-sizing: border-box;
    margin: 0 auto;
}

/* Style for labels */
label {
    font-size: 1.1em;
    color: #333;
    margin-bottom: 8px;
    display: block;
    text-align: left;
}

/* Style for input fields container */
.input-container {
    position: relative;
    margin-bottom: 20px; /* Space between fields */
}

/* Style for icons inside input fields */
.input-container i {
    position: absolute;
    left: 10px; /* Adjust to fit the icon within the input box */
    top: 50%;
    transform: translateY(-50%);
    color: #0072ff;
    font-size: 20px; /* Adjust the size as needed */
    pointer-events: none; /* Ensure clicks on icon don't interfere with input */
}

/* Style for input fields */
input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 30px 5px 5px 10px; /* Adjust padding for icon space */
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    font-size: 16px; /* Adjust font size for better alignment */
    margin-top: 5px; /* Space above the input field */
}

/* Style for submit button */
input[type="submit"] {
    background: #0072ff; /* Blue color */
    border: none;
    color: white;
    padding: 20px 20px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s, transform 0.3s;
    margin-top: 10px; /* Space above the submit button */
}

input[type="submit"]:hover {
    background: #005bb5; /* Darker blue on hover */
    transform: scale(1.05); /* Slightly enlarge button on hover */
}

    
    </style>
</body>
</html>
