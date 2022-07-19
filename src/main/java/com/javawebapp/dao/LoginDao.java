package com.javawebapp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mindrot.jbcrypt.BCrypt;

public class LoginDao {

	public Boolean checkCredentials(String email,String password) {
		
		try {
			String url = "jdbc:mysql://localhost:3307/emsdb";
			String username = "root";
			String pass = "1234";
			String sql = "SELECT * FROM employees WHERE email=?";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,pass);
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				
				String pass1 = rs.getString("pass1");
				Boolean match = BCrypt.checkpw(password, pass1);
				
				if(match) {
					return true;
				}
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return false;
		
	}

}
