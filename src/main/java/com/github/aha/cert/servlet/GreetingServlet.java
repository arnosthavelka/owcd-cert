package com.github.aha.cert.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/greeting")
public class GreetingServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getServletContext().getInitParameter("defaultName");
		String paramName = request.getParameter("name");
		if (paramName != null) {
			name = paramName;
		}
		// set value to request
		request.setAttribute("name", name);
		// forward to JSP
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/greeting.jsp");
		dispatcher.forward(request, response);
	}

}
