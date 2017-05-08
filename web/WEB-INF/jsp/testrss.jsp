<%-- 
    Document   : testrss
    Created on : 08.05.2017, 22:11:59
    Author     : Katharina
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <c:forEach var="feed" items="${feedList}">
            <h1>Feed: ${feed.description}</h1>

            <br/>

            <h2>messages</h2>
            <ul>

                    <c:forEach var="message" items="${feed.getEntries()}">
                            <li>${message.title}</li>
                    </c:forEach>

            </ul>
        </c:forEach>  
    </body>
</html>
