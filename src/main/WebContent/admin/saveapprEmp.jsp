<%@ page import="java.sql.*" %>


<%
	int appr_id = Integer.parseInt(request.getParameter("appr_id"));
	double salary = Double.parseDouble(request.getParameter("salary"));	

	String url = "jdbc:mysql://localhost:3307/emsdb";
	String username = "root";
	String pass = "1234";
	String sql = "UPDATE employees SET is_approved=1,salary=? WHERE id=?";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,pass);
	PreparedStatement ps = con.prepareStatement(sql);

	ps.setDouble(1, salary);
	ps.setInt(2, appr_id);
	
	ps.executeUpdate();  
%>