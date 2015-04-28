<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Simple JSP usage</title>
	<link href="gcp/prettify.css" type="text/css" rel="stylesheet" />
	<script src="gcp/run_prettify.js" defer="defer"></script>
</head>
<body>
	<h3>Context params</h3>
	Value context parameter from web.xml: ${initParam.defaultName}
	<?prettify lang=jsp linenums=true?>
	<pre class="prettyprint"><% out.println("${<strong>initParam</strong>.defaultName}"); %></pre>

	<h3>Attribute value</h3>
	Value from model: ${name}
	<?prettify lang=jsp linenums=true?>
	<pre class="prettyprint"><% out.println("${name}"); %></pre>

</body>
</html>