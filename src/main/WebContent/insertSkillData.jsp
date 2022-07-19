<%@ page import="java.sql.*" %>


<%
	int emp_id = Integer.parseInt(request.getParameter("emp_id"));
	String skill_name = request.getParameter("skill_name");
	String yr_exp = request.getParameter("yr_exp");
	
	
	
	
	String url = "jdbc:mysql://localhost:3307/emsdb";
	String username = "root";
	String pass = "1234";
	String sql = "INSERT INTO skill(emp_id,skill_name,yr_exp) VALUES(?,?,?)";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,pass);
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setInt(1, emp_id);
	ps.setString(2, skill_name);
	ps.setString(3, yr_exp);

 	ps.executeUpdate();
	
%>

