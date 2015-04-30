package com.github.aha.cert.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.HttpConstraint;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.ServletSecurity.TransportGuarantee;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/helloA")
@ServletSecurity(@HttpConstraint(rolesAllowed = "Manager", transportGuarantee = TransportGuarantee.NONE))
// @ServletSecurity(httpMethodConstraints = @HttpMethodConstraint(value = "GET", rolesAllowed = "Manager",
// transportGuarantee = TransportGuarantee.NONE))
public class RestrictedHelloServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");

		ServletOutputStream out = response.getOutputStream();
		out.println("Secret servlet name:");
		out.println(request.getServletContext().getServletContextName());
	}
}
