package com.github.aha.cert.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

/**
 * Usage:
 * <ul>
 * <li>XML - http://localhost:8080/owcd-cert/greetingX?name=Arny&cheat=true</li>
 * <li>Anotation - http://localhost:8080/owcd-cert/greetingA?name=Arny&cheat=true</li>
 * </ul>
 */
@WebFilter(value = "/greetingA", initParams = @WebInitParam(name = "name", value = "Isabelle"))
public class GreetingFilter implements Filter {

	private String name;

	@Override
	public void init(FilterConfig config) throws ServletException {
		name = config.getInitParameter("name");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
			ServletException {
		String cheatParam = (String) request.getParameter("cheat");
		if (cheatParam != null && Boolean.valueOf(cheatParam)) {
			request.setAttribute("name", name);
		}

		// continue processing
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		// nothing to do
	}

}
