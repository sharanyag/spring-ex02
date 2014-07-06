<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Add strategy page</title>
</head>
<body>
<h1>Add strategy page</h1>
<p>Here you can add a new strategy.</p>
<form:form method="POST" commandName="strategy" action="${pageContext.request.contextPath}/strategy/add.html">
<table>
<tbody>
	<tr>
		<td>Name:</td>
		<td><form:input path="name" /></td>
	</tr>
	<tr>
		<td>Type:</td>
		<td><form:input path="type" /></td>
	</tr>
	<tr>
		<td><input type="submit" value="Add" /></td>
		<td></td>
	</tr>
</tbody>
</table>
</form:form>



<h1>List of strategies</h1>
${message}<br/>
<p>Here you can see the list of the strategies, edit them, remove or update.</p>
<table class="table table-striped" border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">ID</th><th width="15%">Name</th><th width="10%">Type</th><th width="10%">Edit</th><th width="10%">Delete</th>
</tr>
</thead>
<tbody>
<c:forEach var="strategy" items="${strategies}">
<tr>
	<td>${strategy.id}</td>
	<td>${strategy.name}</td>
	<td>${strategy.type}</td>
	<td>
	<a href="${pageContext.request.contextPath}/strategy/edit/${strategy.id}.html">Edit</a><br/></td>
	<td>
	<a href="${pageContext.request.contextPath}/strategy/delete/${strategy.id}.html">Delete</a><br/>
	</td>
</tr>
</c:forEach>
</tbody>
</table>

<%-- <p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p> --%>
<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>




</body>
</html>