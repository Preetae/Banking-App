<!DOCTYPE html>
<html>
<head>
    <title>Deposit</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Deposit Amount</h2>
    <form action="DepositServlet" method="post">
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount" placeholder="Enter amount"><br><br>
        <input type="submit" value="Deposit">
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
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Soft shadow */
    width: 100%;
    max-width: 400px; /* Adjusted width */
    box-sizing: border-box;
    margin: 0 auto;
    text-align: left;
}

label {
    display: block;
    margin-bottom: 10px;
    font-size: 1.2em;
    color:black;
}

input[type="text"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin-bottom: 20px;
    font-size: 1em;
}

input[type="submit"] {
    background: #0072ff; /* Blue background */
    color: #fff; /* White text */
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 1em;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
}

input[type="submit"]:hover {
    background: #005bb5; /* Darker blue on hover */
    transform: scale(1.05); /* Slightly enlarges button on hover */
}
    
    </style>
</body>
</html>
