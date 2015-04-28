<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="error_handle.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Simple JSP usage</title>
</head>
<body>
	<%
	// Throw an exception to invoke the error page
	   int x = 1;
	   if (x == 1) {
	      throw new RuntimeException("Error condition!!!");
	   }
	%>
	Not shown ...
</body>
</html>