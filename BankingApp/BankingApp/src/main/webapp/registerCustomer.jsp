<!DOCTYPE html>
<html>
<head>
    <title>Register Customer</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Register Customer</h2>
    <form action="RegisterCustomerServlet" method="post">
        <label for="full_name">Full Name:</label>
        <input type="text" id="full_name" name="full_name" placeholder="Enter your Name"><br><br>
        <label for="address">Address:</label>
        <textarea id="address" name="address" placeholder="Enter your address"></textarea><br><br>
        <label for="mobile_no">Mobile No:</label>
        <input type="text" id="mobile_no" name="mobile_no" placeholder="Enter your number"><br><br>
        <label for="email_id">Email ID:</label>
        <input type="text" id="email_id" name="email_id" placeholder="Enter valid Mail_id"><br><br>
        <label for="account_type">Account Type:</label>
        <select id="account_type" name="account_type" >
            <option value="Saving">Saving</option>
            <option value="Current">Current</option>
         </select><br><br>
        <label for="initial_balance">Initial Balance:</label>
        <input type="text" id="initial_balance" name="initial_balance"placeholder="Enter initial amount"><br><br>
        <label for="date_of_birth">Date of Birth:</label>
        <input type="date" id="date_of_birth" name="date_of_birth"><br><br>
        <label for="id_proof">ID Proof:</label>
        <input type="text" id="id_proof" name="id_proof" placeholder="Enter your id_proof"><br><br>
        <button type="submit" class="hover">Register</button> 
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
    margin-bottom: 30px; /* Increased margin at the bottom to provide more space */
    font-size: 2.5em;
    font-weight: 700;
}

form {
    background: rgba(255, 255, 255, 0.95); /* Slightly more opaque background */
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); /* Enhanced shadow for better depth */
    width: 100%;
    max-width: 600px; /* Adjusted max width for better fit */
    box-sizing: border-box;
    margin: 0 auto; /* Center form horizontally */
    overflow: auto; /* Allow scrolling if content exceeds the form height */
    padding-bottom: 40px; /* Added padding at the bottom */
}

label {
    font-size: 1.1em;
    color: #333;
    margin-bottom: 8px;
    display: block;
    text-align: left; /* Align text to the left */
}

input[type="text"],
input[type="date"],
select,
textarea {
    width: calc(100% - 20px); /* Full width minus padding */
    padding: 10px;
    margin-bottom: 15px; /* Reduced margin for better spacing */
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

textarea {
    min-height: 100px; /* Minimum height for textarea */
    resize: vertical; /* Allow vertical resizing */
}

button[type="submit"] {
    background: #0072ff; /* Blue color */
    border: none;
    color: white;
    padding: 15px 25px; /* Increased padding for better click area */
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s, transform 0.3s;
}

button[type="submit"]:hover {
    background: #005bb5; /* Darker blue on hover */
    transform: scale(1.05); /* Slightly enlarge button on hover */
}
        
        </style>
        </body>
        </html>