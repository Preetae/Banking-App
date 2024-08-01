<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Transactions</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Last 10 Transactions</h2>
    <%
        String accountNo = (String) session.getAttribute("account_no");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "preethi1234");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM Transactions WHERE customer_id=(SELECT customer_id FROM Customer WHERE account_no=?) ORDER BY transaction_date DESC LIMIT 10");
        ps.setString(1, accountNo);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            out.print("Date: " + rs.getTimestamp("transaction_date") + ", Amount: " + rs.getDouble("amount") + ", Type: " + rs.getString("type") + "<br>");
        }
    %>
    <a href="customerDashboard.jsp">Back to Dashboard</a>
    <a href="DownloadPDFServlet">download the PDF</a>
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

.transaction-list {
    background: rgba(255, 255, 255, 0.95); /* Slightly opaque background */
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Soft shadow */
    width: 100%;
    max-width: 800px; /* Adjusted width */
    box-sizing: border-box;
    margin: 20px auto;
    text-align: left;
}

.transaction-item {
    padding: 10px 0;
    border-bottom: 1px solid #ddd;
}

.transaction-item:last-child {
    border-bottom: none; /* Remove bottom border for the last item */
}
    
    </style>
</body>
</html>
