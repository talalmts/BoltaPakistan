<%-- 
    Document   : StatusUpdated
    Created on : May 15, 2015, 1:46:05 AM
    Author     : Talal Saleem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint Status Update</title>
    </head>
    <body>
       <h1>Complaint View : </h1>
               
		${mylist.getCid()}
		${mylist.getType()}
                ${mylist.getDescription()}
              Status :  ${mylist.getStatus()}
    </body>
</html>
