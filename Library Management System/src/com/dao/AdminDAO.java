package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beans.StudentsInfo;

public class AdminDAO {

public static Connection getConnection() {
		
		try {
			//load the driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//create the connection
			Connection con = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/db_lib","root","root");
			System.out.println("Connected");
			return con;
		
		
		}
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return null;
		}
			
	}

public static boolean validateUser(String username, String password, Connection con) {
	boolean flag=false;
	
	try {
		
		String sq="select * from users where userID=? and password=?";
		PreparedStatement p;
		p = con.prepareStatement(sq);
		p.setString(1,username);
		p.setString(2,password);
		ResultSet rs=p.executeQuery();
		
		while(rs.next()) {
			flag= true;
			break;
		}
		p.close();
		con.close();
		return flag;
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	
	
}


public static boolean changePassword(String username,String password,Connection con) {
	boolean flag=false;
	try {
		
	String sq1="select * from users where userID=? ";
	PreparedStatement p1;
	p1 = con.prepareStatement(sq1);
	p1.setString(1,username);
		
		ResultSet rs=p1.executeQuery();
		
		while(rs.next()) {
			String sq="update users set password=? where userID=?";
			PreparedStatement p;
			p = con.prepareStatement(sq);
			p.setString(1,password);
			p.setString(2,username);
			
			p.executeUpdate();
			
			flag=true;
		}
		p1.close();
		con.close();
		return flag;
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	
}


}
