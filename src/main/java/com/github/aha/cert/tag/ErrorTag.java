package com.github.aha.cert.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ErrorTag extends SimpleTagSupport {

	public void doTag() throws JspException, IOException {
		throw new JspException("Ooups!");
	}

}
