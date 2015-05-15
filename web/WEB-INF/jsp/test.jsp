<%-- 
    Document   : test
    Created on : Apr 29, 2015, 2:57:14 PM
    Author     : Talal Saleem
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Successful</h1>
                        
    <h1>End</h1>
    
            <title>Search Page</title>
    </head>
    <body>
        <h1>Search Complaint</h1>
        <form action="test.htm">
            <input type="text" name="Searchcomp" placeholder="Search" value=""><br>
            <input type="submit" value="Submit">
        </form>
        
          <c:forEach items="${mylist}" var="a">
          <form action="ComplaintViewAdmin.htm">
         <input type="hidden" name="Cid" placeholder="Search" value="${a.getCid()}">
         <a> ${a.getCid()}     ${a.getDescription()} 
         <input type="submit" value="View"><a/>
              </form>
	</c:forEach>
        
       department id =  ${department}
    </body>
    </body>
</html>
