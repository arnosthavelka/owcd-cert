<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Simple JSP usage</title>
	<link href="gcp/prettify.css" type="text/css" rel="stylesheet" />
	<script src="gcp/run_prettify.js" defer="defer"></script>
</head>
<body>
	<jsp:scriptlet>
		out.println("Hello Scriptlet!");
	</jsp:scriptlet>
	<?prettify lang=jsp linenums=true?>
	<pre class="prettyprint">
&lt;jsp:scriptlet&gt;
	out.println("Hello Scriptlet!");
&lt;/jsp:scriptlet&gt;
	</pre>
</body>
</html>