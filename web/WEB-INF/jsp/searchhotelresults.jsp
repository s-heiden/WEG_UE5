<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
                integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
        <link href="<c:url value="/resources/app.css" />" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-6 col-xs-offset-3">
                    <c:if test = "${hotels == null}">
                        <pre>Warning: $(hotels) is NULL</pre>
                    </c:if>

                    <h3>Alle Hotels</h3>
                    <table class="table">        
                        <tr>
                            <th>Nr.</th>
                            <th>Hotel Name</th>
                            <th>Ort</th>
                            <th>Land</th>
                            <th>Bewertung</th>
                        </tr>         

                        <c:forEach items="${hotels}" var="hotel" varStatus="status">    
                            <tr>
                                <td>${status.count}</td>
                                <td>${hotel.getName()}</td>
                                <td>${hotel.getCity()}</td>
                                <td>${hotel.getCountry()}</td>
                                <td>${hotel.getRating()}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
