package com.github.aha.cert.servlet;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/envParam")
public class EnvironmentServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Resource(name = "VAR1")
	private String param;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");

		ServletOutputStream out = response.getOutputStream();
		out.println("Environment param (from web.xml):");
		out.println(param);
	}
}
