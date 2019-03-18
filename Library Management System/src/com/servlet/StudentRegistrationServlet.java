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
import com.beans.StudentsInfo;
import com.dao.StudentDAO;

/**
 * Servlet implementation class StudentRegistrationServlet
 */
@WebServlet("/StudentRegistrationServlet")
public class StudentRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("Student Servlet");
		Connection con=StudentDAO.getConnection();
		
		String username=request.getParameter("susername");
		String password=request.getParameter("spassword");
		long libID=Long.parseLong(request.getParameter("libID"));
		long regNo=Long.parseLong(request.getParameter("regNo"));
		String branch=request.getParameter("branch");
		String section=request.getParameter("section");
		String semester=request.getParameter("semester");
		int yearOfAdm=Integer.parseInt(request.getParameter("yearOfAdm"));
		
		StudentsInfo student= new StudentsInfo();
		student.setUsername(username);
		student.setPassword(password);
		student.setLibId(libID);
		student.setRegNo(regNo);
		student.setBranch(branch);
		student.setSection(section);
		student.setSemester(semester);
		student.setYearOfAdm(yearOfAdm);
		
		PrintWriter pw= response.getWriter();
		StudentDAO.insertData(student, con);
		
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
