
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

@WebServlet("/test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*
		 * String url = "jdbc:mysql://localhost:3307/emsdb"; String username = "root";
		 * String pass = "1234"; String sql =
		 * "SELECT id FROM employees ORDER BY id DESC LIMIT 1"; int id = 0; String msg =
		 * "";
		 * 
		 * try { Class.forName("com.mysql.cj.jdbc.Driver"); Connection con =
		 * DriverManager.getConnection(url,username,pass); Statement st =
		 * con.createStatement(); ResultSet rs = st.executeQuery(sql); if(rs.next()) {
		 * id = rs.getInt("id"); msg = "Hello World "+id;
		 * 
		 * }else { id = 1; }
		 * 
		 * 
		 * } catch (Exception e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 * 
		 * 
		 * 
		 * String var = String.format("%07d", id+1);
		 * 
		 * String empid = "EMP"+var; response.getWriter().print(empid);
		 * 
		 * 
		 * String url1 = "jdbc:mysql://localhost:3307/emsdb"; String username1 = "root";
		 * String pass1 = "1234"; String sql1 =
		 * "SELECT id FROM employees ORDER BY id DESC LIMIT 1"; int id1 = 0; String msg1
		 * = "";
		 */

		String pass = hashPassword("Hellothere");

		response.getWriter().println(pass);

		String pass2 = hashPassword("Hellothere");
		String pass3 = "Hellothere";
		
		response.getWriter().println(pass2);

		
		  Boolean check = BCrypt.checkpw(pass3, pass2);
		 
		 response.getWriter().println(check);
		 

	}

	private String hashPassword(String plainTextPassword) {
		return BCrypt.hashpw(plainTextPassword, BCrypt.gensalt());
	}

}
