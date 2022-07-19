<%@ page import="java.sql.*" %>


<%


	int del_id = Integer.parseInt(request.getParameter("del_id"));

	String url = "jdbc:mysql://localhost:3307/emsdb";
	String username = "root";
	String pass = "1234";
	String sql = "DELETE FROM education WHERE id=?";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,pass);
	PreparedStatement ps = con.prepareStatement(sql);

	ps.setInt(1, del_id);
	
	ps.executeUpdate();
%>
