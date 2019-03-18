package com.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.EventsInfo;
import com.dao.EventDAO;


/**
 * Servlet implementation class EventsServlet
 */
@WebServlet("/EventsServlet")
public class EventsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Connection con=EventDAO.getConnection();
		
		String e_Name=request.getParameter("e_name");
		String date=request.getParameter("date");
		String e_MName=request.getParameter("e_mname");
		long e_ContactNo=Long.parseLong(request.getParameter("e_contact"));
		String e_Email=request.getParameter("e_email");
		String venue=request.getParameter("venue");
		
		EventsInfo events= new EventsInfo();
		events.setE_Name(e_Name);;
		events.setDate(date);;
		events.setE_MName(e_MName);;
		events.setE_ContactNo(e_ContactNo);;
		events.setE_Email(e_Email);;
		events.setVenue(venue);;
		
		EventDAO.insertData(events, con);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
