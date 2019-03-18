package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beans.FacultyInfo;
import com.beans.StudentsInfo;

public class StudentDAO {

public static Connection getConnection() {
		
		try {
			//load the driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//create the connection
			Connection con = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/db_lib","root","root");
			System.out.println("Student Connected");
			return con;
		
		
		}
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return null;
		}
			
	}

public static void insertData(StudentsInfo stud,Connection con) {
	
	String sq="insert into student values(?,?,?,?,?,?,?,?)";
	PreparedStatement p;
	
	try {
		p = con.prepareStatement(sq);
		p.setString(1,stud.getUsername());
		p.setString(2,stud.getPassword());
		p.setLong(3,stud.getLibId());
		p.setLong(4,stud.getRegNo());
		p.setString(5,stud.getBranch());
		p.setString(7,stud.getSection());
		p.setString(6,stud.getSemester());
		p.setInt(8,stud.getYearOfAdm());
		
		
		p.executeUpdate();
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}

public static boolean validateUser(String username, String password, Connection con) {
	boolean flag=false;
	System.out.println("Student Validation");
	try {
		
		String sq="select * from student where username=? and password=? ";
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
		
	String sq1="select * from student where username=? ";
	PreparedStatement p1;
	p1 = con.prepareStatement(sq1);
	p1.setString(1,username);
		
		ResultSet rs=p1.executeQuery();
		
		while(rs.next()) {
			String sq="update student set password=? where username=?";
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
