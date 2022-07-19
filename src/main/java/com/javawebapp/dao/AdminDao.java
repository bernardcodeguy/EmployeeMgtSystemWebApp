package com.javawebapp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDao {
	
	
public boolean confirmAdmin(String key) {
		
		try {
			String url = "jdbc:mysql://localhost:3307/emsdb";
			String username = "root";
			String pass = "1234";
			String sql = "SELECT * FROM admins WHERE admin_key=?";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,pass);
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, key);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return false;
		
	}
	
	

}
