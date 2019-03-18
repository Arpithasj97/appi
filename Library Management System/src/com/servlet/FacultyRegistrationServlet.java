package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.beans.FacultyInfo;
import com.dao.TeacherDAO;

/**
 * Servlet implementation class FacultyRegistrationServlet
 */
@WebServlet("/FacultyRegistrationServlet")
public class FacultyRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacultyRegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("FacultyRegistrationServlet");
		Connection con=TeacherDAO.getConnection();
		
		String username=request.getParameter("fusername");
		String password=request.getParameter("fpassword");
		long TId=Long.parseLong(request.getParameter("TId"));
		String name=request.getParameter("name");
		String designation=request.getParameter("designation");
		String branch=request.getParameter("branch");
		long contact_no=Long.parseLong(request.getParameter("contact_no"));
		String lectures=request.getParameter("lectures");
		
		FacultyInfo faculty= new FacultyInfo();
		faculty.setUsername(username);
		faculty.setPassword(password);
		faculty.setTId(TId);
		faculty.setName(name);
		faculty.setDesignation(designation);
		faculty.setBranch(branch);
		faculty.setContactNo(contact_no);
		faculty.setLectures(lectures);
		
		PrintWriter pw= response.getWriter();
		TeacherDAO.insertData(faculty, con);
		
		response.setContentType("text/html");
       	pw.println("<h3 style='color:red'>Registered Successfully</h3>"); 	
       	RequestDispatcher rd= request.getRequestDispatcher("index.html");
       	rd.include(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
