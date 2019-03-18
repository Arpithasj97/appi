package com.dao;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.BooksInfo;

public class BooksDAO {

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

public static void insertData(BooksInfo books,Connection con) {
	
	String sq="insert into BooksInfo values(?,?,?,?,?,?)";
	PreparedStatement p;
	
	try {
		p = con.prepareStatement(sq);
		p.setLong(1,books.getCode());
		p.setString(2,books.getBookName());
		p.setString(3,books.getAuthor());
		p.setString(4,books.getPublication());
		p.setString(5,books.getSubject());
		p.setInt(6,books.getNoOfCopies());
		
		
		p.executeUpdate();
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}

public static ArrayList<BooksInfo> displayData(Connection con){
	
	
	
	try {
		
		String sq="select * from BooksInfo";
		PreparedStatement p;
		p = con.prepareStatement(sq);
		ResultSet rs=p.executeQuery();
		
		ArrayList<BooksInfo> al = new ArrayList<BooksInfo>();
		
		while(rs.next()) {
			BooksInfo book=new BooksInfo();
			
			book.setCode(rs.getInt(1));
			book.setBookName(rs.getString(2));
			book.setAuthor(rs.getString(3));
			book.setPublication(rs.getString(4));
			book.setSubject(rs.getString(5));
			book.setNoOfCopies(rs.getInt(6));
			
			al.add(book);
			
		}

		return al;
		
	} catch (SQLException ebook) {
		// TODO Auto-generated catch block
		ebook.printStackTrace();
		return null;
	}
	
}

}
	