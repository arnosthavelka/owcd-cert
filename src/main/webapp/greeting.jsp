<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Greetings</title>
</head>
<body>
	<h3>Init params</h3>
	context param (from web.xml): ${initParam.defaultName}<br/>
	servlet param (from @WebInitParam): ${servletInitName}<br/>

	<h3>Name values</h3>
	Request param (from the client): ${paramName}<br/>
	Final value (from model): ${name}

</body>
</html>