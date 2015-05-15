<%-- 
    Document   : Search
    Created on : May 13, 2015, 3:58:10 PM
    Author     : Talal Saleem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <h1>Search</h1>
<form action="Search.htm">
 <input type="text" name="Search1" placeholder="Search" value=""><br>
<input type="submit" value="Submit">
</form>
        
          <c:forEach items="${mylist}" var="a">
          <form action="ComplaintView.htm">
         <input type="hidden" name="Cid" placeholder="Search" value="${a.getCid()}">
         <a> ${a.getCid()}     ${a.getDescription()} 
         <input type="submit" value="View"><a/>
              </form>
	</c:forEach>
        
    </body>
</html>
