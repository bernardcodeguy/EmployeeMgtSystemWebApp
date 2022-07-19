<%@ page import="java.sql.*" %>

<%!
	int del_id = 0;
	int id2 = 0;
	String ins = "";
%>


<% 
	if(request.getParameterMap().containsKey("del_id"))
	{
	     
		del_id = Integer.parseInt(request.getParameter("del_id")); 
	    
	    String url = "jdbc:mysql://localhost:3307/emsdb";
		String username = "root";
		String pass = "1234";
		String sql = "SELECT * FROM education WHERE id="+del_id;
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,pass);
		
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		rs.next();
		
		id2 = rs.getInt("id");
		ins = rs.getString("institution");
		
	}

	

%>

	<input type="hidden" name="del_id" id="del_id"  value= "<%=id2%>" />
                        
     <p>Are you sure you want to delete record?</p> 