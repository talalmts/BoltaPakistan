<%-- 
    Document   : ComplaintViewAdmin
    Created on : May 14, 2015, 11:45:19 PM
    Author     : Talal Saleem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin View Page</title>
    </head>
    <body>
       <h1>Complaint View</h1>
               
		${mylist.getCid()}
		${mylist.getType()}
                ${mylist.getDescription()}
                ${mylist.getStatus()}
		<a href="status.htm">Status Update</a>
		<br>
    </body>
</html>
