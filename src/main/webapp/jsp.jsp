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
	<h3>&lt;jsp:scriptlet&gt; ¦ &lt;% xyz %&gt;</h3>
	Result: 
	<jsp:scriptlet>
		out.println("AAA");
	</jsp:scriptlet>  ¦
	<% out.println("BBB"); %>
	<?prettify lang=jsp linenums=true?>
	<pre class="prettyprint">
&lt;jsp:scriptlet&gt;
	out.println("Hello Scriptlet!");
&lt;/jsp:scriptlet&gt;</pre>
	<?prettify lang=jsp linenums=true?>
	<pre class="prettyprint">&lt;% out.println("BBB"); %&gt;</pre>
	
	<h3>&lt;jsp:useBean&gt;</h3>
	<jsp:useBean id="foo" class="com.github.aha.cert.dto.Foo">
		<jsp:setProperty name="foo" property="name" value="foo" />
	</jsp:useBean>
	Result: ${foo.name}
	<?prettify lang=jsp linenums=true?>
	<pre class="prettyprint">
&lt;jsp:useBean id="foo" class="com.github.aha.cert.dto.Foo"&gt;
	&lt;jsp:setProperty name="foo" property="name" value="foo" /&gt;
&lt;/jsp:useBean&gt;</pre>
	
	<h3>&lt;jsp:setProperty&gt;</h3>
	<jsp:setProperty name="foo" property="name" value="aha" />
	Result: ${foo.name}
	<?prettify lang=jsp linenums=true?>
	<pre class="prettyprint">
&lt;jsp:setProperty name="foo" property="name" value="aha" &gt;</pre>
</body>
</html>