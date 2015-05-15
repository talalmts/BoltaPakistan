<%-- 
    Document   : test
    Created on : Apr 29, 2015, 2:57:14 PM
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
    <h1>session id = ${sid}</h1>
    <body>
        <form action="login.htm">
First name: <input type="text" name="FirstName" value=""><br>
Last name: <input type="password" name="password1" value=""><br>
<input type="submit" value="Submit">
</form>
        
   
        
        
            ${success} 
            
	   
        
        
        
    </body>
</html>
