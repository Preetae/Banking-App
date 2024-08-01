<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body, h2, form {
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
        h2 {
            margin-bottom: 20px;
            font-size: 2em;
            font-weight: 700;
        }

        /* Center and style the form container */
        form {
            background: rgba(255, 255, 255, 0.9); /* White background with slight opacity */
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow for 3D effect */
            width: 300px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Style for labels */
        label {
            margin: 10px 0 5px;
            font-size: 1em;
            color: #333;
        }

        /* Style for input fields container */
        .input-container {
            width: 100%;
            position: relative;
            margin-bottom: 20px;
        }

        /* Style for icons inside input fields */
        .input-container .fa {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #0072ff;
        }

        /* Style for input fields */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px 10px 10px 40px; /* Add padding for icon space */
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        /* Style for the submit button */
        button[type="submit"] {
            background: #0072ff; /* Blue color */
            border: none;
            color: white;
            padding: 15px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s, transform 0.3s;
        }

        button[type="submit"]:hover {
            background: #005bb5; /* Darker blue */
        }
    </style>
</head>
<body>
    <h2>Admin Login</h2>
    <form action="adminLoginServlet" method="post">
        <div class="input-container">
            <i class="fa fa-user"></i>
            <input type="text" id="username" name="username" placeholder="Enter your username">
        </div>
        <div class="input-container">
            <i class="fa fa-lock"></i>
            <input type="password" id="password" name="password" placeholder="Enter your password">
        </div>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
