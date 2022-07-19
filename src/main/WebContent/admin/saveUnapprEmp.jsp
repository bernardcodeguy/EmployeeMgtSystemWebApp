<%@ page import="java.sql.*" %>


<%
	int unappr_id = Integer.parseInt(request.getParameter("unappr_id"));

	String url = "jdbc:mysql://localhost:3307/emsdb";
	String username = "root";
	String pass = "1234";
	String sql = "UPDATE employees SET is_approved = 0, salary=0.00 WHERE id=?";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,pass);
	PreparedStatement ps = con.prepareStatement(sql);

	ps.setInt(1, unappr_id);
	
	ps.executeUpdate();  
%>