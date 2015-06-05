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
    <body>
        
              <c:forEach items="${complaintList}" var="a">
		${a.getCid()} 
                ${a.getDepartment().getDid()}
		${a.getType()}
		${a.getDescription()}
		${a.getLaunchname()}
		<br>
	</c:forEach>
        
        
        
        
        
    </body>
</html>
