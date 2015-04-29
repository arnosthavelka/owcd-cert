package com.github.aha.cert.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/greetingA", initParams = @WebInitParam(name = "defaultName", value = "Suzan"))
public class GreetingServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contextInitName = request.getServletContext().getInitParameter("defaultName");
		String servletInitName = getInitParameter("defaultName");
		String paramName = request.getParameter("name");
		String attributeName = (String) request.getAttribute("name");

		String name = contextInitName;
		name = modifyValue(name, servletInitName);
		name = modifyValue(name, paramName);
		name = modifyValue(name, attributeName);

		// set values to request
		request.setAttribute("servletInitName", servletInitName);
		request.setAttribute("paramName", paramName);
		request.setAttribute("name", name);

		// log final value
		log(String.format("Final name=%s", name));

		// forward to JSP
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/greeting.jsp");
		dispatcher.forward(request, response);
	}

	private String modifyValue(String name, String paramName) {
		if (paramName != null) {
			name = paramName;
		}
		return name;
	}

}
