<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
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
	<h3>Simple stacktrace (via JSP scriptlets):</h3> 
	<?prettify lang=jsp linenums=false?>
	<pre class="prettyprint">&lt;% exception.printStackTrace(response.getWriter()); %&gt;</pre>
	<?prettify lang=jsp linenums=false?>
	<pre class="prettyprint">&lt;% exception.printStackTrace(new java.io.PrintWriter(out)); %&gt;</pre>
		
	<% exception.printStackTrace(new java.io.PrintWriter(out)); %>

	<h3>Formatted stacktrace (via EL):</h3>
	<h4>Exception: ${pageContext.exception.message}</h4> <!-- or ${requestScope["javax.servlet.error.exception"].message} -->
	<c:forEach items="${pageContext.exception.stackTrace}" var="stackTrace">
    	${stackTrace}<br/> <%-- or <c:out value="${element}" /> --%>
	</c:forEach>

</body>
</html>