<?xml version="1.0" encoding="UTF-8" ?>
<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ex" uri="WEB-INF/custom.tld"%>
<!--  jsp:directive.taglib prefix="ex" uri="WEB-INF/custom.tld"/-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>JSTL error handling</title>
	<link href="gcp/prettify.css" type="text/css" rel="stylesheet" />
	<script src="gcp/run_prettify.js" defer="defer"></script>
</head>
<body>
	<h3>For-each (with delimiting values)</h3>
	Result: 
	<c:forTokens items="Ann,Bob,Charlie" var="name" delims=",">
		<c:out value="${name}"/>
	</c:forTokens>	
	
	<?prettify lang=jsp linenums=true?>
	<pre class="prettyprint">
&lt;c:forTokens items="Ann,Bob,Charlie" var="name" delims=","&gt;
	&lt;c:out value="${name}"/&gt;
&lt;/c:forTokens&gt;</pre>

	<h3>Error handling</h3>
	<c:catch var="e">
		<ex:error />
	</c:catch>
	Got exception: ${e.message}
	
	<?prettify lang=jsp linenums=true?>
	<pre class="prettyprint">
&lt;c:catch var="e"&gt;
	&lt;ex:error /&gt;
&lt;/c:catch&gt;
Got exception: ${'${e.message}'}</pre>
	
</body>
</html>