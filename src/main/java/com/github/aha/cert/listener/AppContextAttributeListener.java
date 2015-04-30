package com.github.aha.cert.listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class AppContextAttributeListener implements ServletContextAttributeListener {

	@Override
	public void attributeAdded(ServletContextAttributeEvent scab) {
		scab.getServletContext().log("ServletContext attribute added:{" + scab.getName() + "," + scab.getValue() + "}");
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent scab) {
		scab.getServletContext().log(
				"ServletContext attribute remplaced:{" + scab.getName() + "," + scab.getValue() + "}");
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent scab) {
		scab.getServletContext().log("ServletContext attribute removed:{" + scab.getName());
	}

}
