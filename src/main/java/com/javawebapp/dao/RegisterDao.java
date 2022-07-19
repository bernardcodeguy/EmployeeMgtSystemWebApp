package com.javawebapp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.javawebapp.Employee;

public class RegisterDao {
	private String url = "jdbc:mysql://localhost:3307/emsdb";
	private String username = "root";
	private String pass = "1234";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	
	
	public Connection getConnection() throws SQLException {
		
		Connection con = DriverManager.getConnection(url,username,pass);
		
		return con;
		
	}
	
	
	public String insert(Employee employee) throws SQLException {
		loadDriver(dbDriver);		
		Connection con = getConnection();	
		String result = "Data entry successfull";
		String sql = "insert into employees(fname,lname,email,pass1,pass2,department,job) VALUES(?,?,?,?,?,?,?)";	
		PreparedStatement ps;
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, employee.getFname());
			ps.setString(2, employee.getLname());
			ps.setString(3, employee.getEmail());
			ps.setString(4, employee.getPass1());
			ps.setString(5, employee.getPass2());
			ps.setString(6, employee.getDepartment());
			ps.setString(7, employee.getJob());
			
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data entry unsuccessfull";
		}
		
		return result;
		
	}
	
	
}
