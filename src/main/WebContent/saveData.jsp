<%@ page import="java.sql.*" %>


<%
	int edit_id = Integer.parseInt(request.getParameter("edit_id"));
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String department = request.getParameter("department");
	String job = request.getParameter("job");
	
	
	String url = "jdbc:mysql://localhost:3307/emsdb";
	String username = "root";
	String pass = "1234";
	String sql = "UPDATE employees SET fname=?, lname=?, department=?, job=? WHERE id=?";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,pass);
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, fname);
	ps.setString(2, lname);
	ps.setString(3, department);
	ps.setString(4, job);
	ps.setInt(5, edit_id);
	
	ps.executeUpdate();
	
%>


