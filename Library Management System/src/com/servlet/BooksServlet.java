package com.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.BooksInfo;
import com.dao.BooksDAO;

/**
 * Servlet implementation class BooksServlet
 */
@WebServlet("/BooksServlet")
public class BooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BooksServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Connection con=BooksDAO.getConnection();
		
		long code=Long.parseLong(request.getParameter("code"));
		String bookName=request.getParameter("bookName");
		String author=request.getParameter("author");
		String publication=request.getParameter("publication");
		String subject=request.getParameter("subject");
		int noOfCopies=Integer.parseInt(request.getParameter("noOfCopies"));
		
		BooksInfo books= new BooksInfo();
		books.setCode(code);
		books.setBookName(bookName);
		books.setAuthor(author);
		books.setPublication(publication);
		books.setSubject(subject);
		books.setNoOfCopies(noOfCopies);
		
		BooksDAO.insertData(books, con);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
