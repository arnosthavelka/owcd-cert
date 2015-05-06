<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.github.aha.cert.exception.MyRuntimeException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Throwing MyException</title>
</head>
<body>
	<%
		// Throw an exception to invoke the error page (mapped in web.xml)
		   int x = 1;
		   if (x == 1) {
		      throw new MyRuntimeException("Error condition!!!");
		   }
	%>
	Not shown ...
</body>
</html>