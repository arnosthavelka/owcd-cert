package com.github.aha.cert.servlet;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * See http://www.jayway.com/2014/05/16/async-servlets/ (https://github.com/henriklundahl/async-servlet-examples),
 * http://www.javacodegeeks.com/2013/08/async-servlet-feature-of-servlet-3.html
 *
 */
@WebServlet(value = "/async", asyncSupported = true, initParams = {
		@WebInitParam(name = "time", value = "2000", description = "Default processing time [ms]"),
		@WebInitParam(name = "timeout", value = "3000", description = "Default timeout [ms]") })
public class AsyncServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Timer timer;

	public AsyncServlet() {
		timer = new Timer();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final UUID token = UUID.randomUUID();
		log("Request started [token=" + token + "]");

		// Initialize async processing.
		final AsyncContext context = request.startAsync();
		// parse initial parameters/values
		long replyAfterMillis = retrieveValue(request, "time");
		context.setTimeout(retrieveValue(request, "timeout"));
		// start async processing
		final long before = System.currentTimeMillis();
		timer.schedule(new TimerTask() {
			
			@Override
			public void run() {
				log("Async processing started [token=" + token + "]");
				long time = System.currentTimeMillis() - before;
				ServletResponse response = context.getResponse();
				response.setContentType("text/plain");
				response.setCharacterEncoding("UTF-8");
				byte[] entity = ("Replying after " + time + " milliseconds.\n").getBytes(Charset.forName("UTF-8"));
				response.setContentLength(entity.length);
				try {
					response.getOutputStream().write(entity);
					log("Async processing finished [token=" + token + "]");
				} catch (IOException e) {
					e.printStackTrace();
					log("Async processing error [token=" + token + "]", e);
				}
				context.complete();
			}
		}, replyAfterMillis);
		log("Request finished [token=" + token + "]");
	}

	private long retrieveValue(HttpServletRequest req, String paramName) {
		String valueParam = req.getParameter(paramName);
		if (valueParam == null) {
			valueParam = getInitParameter(paramName);
		}
		long value = Long.parseLong(valueParam);
		if (value <= 0)
			value = 1000;
		return value;
	}	
}
