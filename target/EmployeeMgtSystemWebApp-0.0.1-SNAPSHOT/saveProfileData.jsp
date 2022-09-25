<%@page import="com.javawebapp.ConnectionManager"%>
<%@ page import="java.sql.*" %>


<%
	int empid = Integer.parseInt(request.getParameter("empid"));
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String department = request.getParameter("department");
	String job = request.getParameter("job");
	
	
	 
	String sql = "UPDATE employees SET fname=?, lname=?, department=?, job=? WHERE id=?";
	
	Connection con = ConnectionManager.getConnection();
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, fname);
	ps.setString(2, lname);
	ps.setString(3, department);
	ps.setString(4, job);
	ps.setInt(5, empid);
	
	ps.executeUpdate(); 
	
%>

<%
	out.println(job);
%>


