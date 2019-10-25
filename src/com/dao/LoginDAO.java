package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.UserModel;



public class LoginDAO {
	
	String url = "jdbc:mysql://localhost:3306/neon";
	String username = "root";
	String pwd = "root";
	
	public UserModel check(String uname, String password) {
		UserModel model = new UserModel();
		try {
			// This will load the MySQL driver, each DB has its own driver
            Class.forName("com.mysql.jdbc.Driver");
            // Setup the connection with the DB
            Connection connect = DriverManager.getConnection(url, username, pwd);
            PreparedStatement statement = connect.prepareStatement("select * from login where uname = ? and pass = ?");
            statement.setString(1, uname);
            statement.setString(2, password);
            
            ResultSet rs = statement.executeQuery();
            
            if(rs.next()) {
            	String name = rs.getString(1);
            	String pass = rs.getString(2);
            	
            	model.setUname(name);
            	model.setPassword(password);
            }
            
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return model;
	}

}
