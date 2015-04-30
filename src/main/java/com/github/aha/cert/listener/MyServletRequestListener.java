package com.github.aha.cert.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class MyServletRequestListener implements ServletRequestListener {

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		sre.getServletContext().log("ServletRequest initialized. Remote IP=" + sre.getServletRequest().getRemoteAddr());

	}

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		sre.getServletContext().log("ServletRequest destroyed. Remote IP=" + sre.getServletRequest().getRemoteAddr());
	}

}
