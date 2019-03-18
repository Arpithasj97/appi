package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.BooksInfo;
import com.beans.EventsInfo;
import com.dao.BooksDAO;
import com.dao.EventDAO;

/**
 * Servlet implementation class AddEventServlet
 */
@WebServlet("/AddEventServlet")
public class AddEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEventServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection con = EventDAO.getConnection();
		
		
		String e_Name=request.getParameter("e_Name");
		String date=request.getParameter("date");
		String e_MName=request.getParameter("e_MName");
		long code=Long.parseLong(request.getParameter("e_ContactNo"));
		String e_Email=request.getParameter("e_Email");
		String venue=request.getParameter("venue");
		
		
		EventsInfo event= new EventsInfo();
		
		event.setE_Name(e_Name);
		event.setDate(date);
		event.setE_MName(e_MName);
		event.setE_ContactNo(code);
		event.setE_Email(e_Email);
		event.setVenue(venue);
		
		EventDAO.insertData(event, con);
		PrintWriter pw= response.getWriter();
		
		ArrayList<EventsInfo> al= EventDAO.displayData(con);
		request.setAttribute("event", al);
		
		response.setContentType("text/html");
       	pw.println("<h3 style='color:green'>Event Successfully Added</h3>"); 	
       	RequestDispatcher rd= request.getRequestDispatcher("EventList.jsp");
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
