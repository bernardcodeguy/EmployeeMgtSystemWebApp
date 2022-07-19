<%@ page import="java.sql.*" %>


<%
	int edit_id = Integer.parseInt(request.getParameter("edit_id"));
	
	String skill_name = request.getParameter("skill_name");
	String yr_exp = request.getParameter("yr_exp");
	
	 String url = "jdbc:mysql://localhost:3307/emsdb";
	String username = "root";
	String pass = "1234";
	String sql = "UPDATE skill SET skill_name=?, yr_exp=? WHERE id=?";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,pass);
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, skill_name);
	ps.setString(2, yr_exp);
	ps.setInt(3, edit_id);
	
	ps.executeUpdate(); 
	
%>

<%

	out.println(skill_name);
%>