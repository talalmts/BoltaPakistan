<%-- 
    Document   : status
    Created on : May 15, 2015, 12:01:20 AM
    Author     : Talal Saleem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Upadating Complaint</h1>
         
        <form action="StatusUpdated.htm">
            <select name="status1">
                <option value="In-Progress">In-Progress</option>
                <option value="None">None</option>
                <option value="Invalid">Invalid</option>
                <option value="Complete">Completed</option>
            </select>
        <input type="submit" value="Update">
        </form>
        
    </body>
</html>
