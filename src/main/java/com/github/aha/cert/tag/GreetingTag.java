package com.github.aha.cert.tag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class GreetingTag extends SimpleTagSupport {

	private String name;

	public void setName(String name) {
		this.name = name;
	}

	public void doTag() throws JspException, IOException {
		// build content
		StringWriter sw = new StringWriter();
		getJspBody().invoke(sw);
		if (name != null) {
			sw.write(" & " + name);
		}
		// write content
		getJspContext().getOut().println(sw.toString());
	}

}
