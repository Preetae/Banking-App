

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterCustomerServlet")
public class RegisterCustomerServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("full_name");
        String address = request.getParameter("address");
        String mobileNo = request.getParameter("mobile_no");
        String emailId = request.getParameter("email_id");
        String accountType = request.getParameter("account_type");
        double initialBalance = Double.parseDouble(request.getParameter("initial_balance"));
        String dateOfBirth = request.getParameter("date_of_birth");
        String idProof = request.getParameter("id_proof");
        String accountNo = generateAccountNo();
        String password = generateTemporaryPassword();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "preethi1234");
            PreparedStatement ps = con.prepareStatement("INSERT INTO Customer (full_name, address, mobile_no, email_id, account_type, initial_balance, date_of_birth, id_proof, account_no, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, fullName);
            ps.setString(2, address);
            ps.setString(3, mobileNo);
            ps.setString(4, emailId);
            ps.setString(5, accountType);
            ps.setDouble(6, initialBalance);
            ps.setDate(7, java.sql.Date.valueOf(dateOfBirth));
            ps.setString(8, idProof);
            ps.setString(9, accountNo);
            ps.setString(10, password);
            ps.executeUpdate();
            
            response.sendRedirect("adminDashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String generateAccountNo() {
        return "ACC" + (int)(Math.random() * 1000000);
    }

    private String generateTemporaryPassword() {
        return "TEMP" + (int)(Math.random() * 10000);
    }
}
