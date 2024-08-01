<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Welcome, Customer</h2>
    <%
        String accountNo = (String) session.getAttribute("account_no");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "preethi1234");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE account_no=?");
        ps.setString(1, accountNo);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            out.print("Account No: " + rs.getString("account_no") + "<br>");
            out.print("Balance: " + rs.getDouble("initial_balance") + "<br>");
        }
    %>
    <a href="viewTransaction.jsp">View Transactions</a> |
    <a href="deposit.jsp">Deposit</a> |
    <a href="withdraw.jsp">Withdraw</a> |
    <a href="closeAccount.jsp">Close Account</a> |
    <a href="logout.jsp">Logout</a>
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
    padding: 20px;
}

h2 {
    margin-bottom: 20px;
    font-size: 2.5em;
    font-weight: 700;
}

a {
    background: rgba(255, 255, 255, 0.9); /* White background with slight opacity */
    color: #0072ff; /* Blue text color */
    text-decoration: none;
    padding: 12px 24px;
    border-radius: 5px;
    margin: 10px;
    display: inline-block;
    font-size: 1em;
    transition: background 0.3s, color 0.3s;
}

a:hover {
    background: #0072ff; /* Blue background on hover */
    color: #fff; /* White text color on hover */
}

p {
    margin: 15px 0;
    font-size: 1.2em;
}

.container {
    background: rgba(255, 255, 255, 0.95); /* Slightly opaque background */
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Soft shadow */
    width: 100%;
    max-width: 800px; /* Increased width for better layout */
    box-sizing: border-box;
    margin: 20px auto;
}

/* Style for navigation links to be horizontally aligned */
.container .links {
    display: flex;
    justify-content: center; /* Center the links horizontally *
    
    </style>
</body>
</html>
