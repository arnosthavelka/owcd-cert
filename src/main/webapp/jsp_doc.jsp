<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.1">
	<jsp:directive.page contentType="text/html" />
	<h1>Hello</h1>
	<jsp:scriptlet>
		for (int i = 0; i &lt; 5; i++) {
			out.println("World");
		}
	</jsp:scriptlet>
	<jsp:text>!!!</jsp:text>
</jsp:root>