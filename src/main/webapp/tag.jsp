<?xml version="1.0" encoding="UTF-8" ?>
<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>
<%@ taglib prefix="ex" uri="WEB-INF/custom.tld"%>
<%@ taglib prefix="ex2" uri="WEB-INF/tags/custom2.tld"%>
<!--  jsp:directive.taglib prefix="ex" uri="WEB-INF/custom.tld"/-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Tag usage</title>
	<link href="gcp/prettify.css" type="text/css" rel="stylesheet" />
	<script src="gcp/run_prettify.js" defer="defer"></script>
	<link href="gcp/prettify.css" type="text/css" rel="stylesheet" />
	<script src="gcp/run_prettify.js" defer="defer"></script>
</head>
<body>
	Tag declation: 
	<?prettify lang=jsp linenums=false?>
	<pre class="prettyprint">&lt;%@ taglib prefix="ex" uri="WEB-INF/custom.tld"%&gt;</pre>

	Empty tag: <ex:hello/><br/> 
	<?prettify lang=jsp linenums=false?>
	<pre class="prettyprint">&lt;ex:hello/&gt;</pre>
	
	Body tag: <ex2:greeting>Lucy</ex2:greeting><br/>
	<?prettify lang=jsp linenums=false?>
	<pre class="prettyprint">&lt;ex2:greeting&gt;Lucy&lt;/ex2:greeting/&gt;</pre>

	Body tag with attribute: <ex2:greeting name="Julie">Romeo</ex2:greeting><br/>
	<?prettify lang=jsp linenums=false?>
	<pre class="prettyprint">&lt;ex2:greeting name="Julie"&gt;Romeo&lt;/ex2:greeting/&gt;</pre>
</body>
</html>